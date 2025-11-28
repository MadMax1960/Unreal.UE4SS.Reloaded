using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.InteropServices;
using Reloaded.Hooks.ReloadedII.Interfaces;
using Reloaded.Mod.Interfaces;
using UE4SSReloaded.Template;
using UE4SSReloaded.Configuration;
using Reloaded.Mod.Interfaces.Internal;

namespace UE4SSReloaded;

/// <summary>
/// Your mod logic goes here.
/// </summary>
public partial class Mod : ModBase // <= Do not Remove.
{
    /// <summary>
    /// Provides access to the mod loader API.
    /// </summary>
    private readonly IModLoader _modLoader;

    /// <summary>
    /// Provides access to the Reloaded.Hooks API.
    /// </summary>
    /// <remarks>This is null if you remove dependency on Reloaded.SharedLib.Hooks in your mod.</remarks>
    private readonly IReloadedHooks? _hooks;

    /// <summary>
    /// Provides access to the Reloaded logger.
    /// </summary>
    private readonly ILogger _logger;

    /// <summary>
    /// Entry point into the mod, instance that created this class.
    /// </summary>
    private readonly IMod _owner;

    /// <summary>
    /// Provides access to this mod's configuration.
    /// </summary>
    private Config _configuration;

    /// <summary>
    /// The configuration of the currently executing mod.
    /// </summary>
    private readonly IModConfig _modConfig;

    /// <summary>
    /// Responsible for generating BPModLoader configuration data.
    /// </summary>
    private readonly BlueprintManager _blueprintManager;

    /// <summary>
    /// Responsible for configuring Lua mod search paths.
    /// </summary>
    private readonly LuaLoader _luaLoader;

    private readonly HashSet<string> _enabledDependencyModDirectories = new(StringComparer.OrdinalIgnoreCase);

    private IReadOnlyCollection<string> _luaModFolders = Array.Empty<string>();

    /// <summary>
    /// Mirrors UE4SS log output into the Reloaded-II console.
    /// </summary>
    private readonly LogPrinter _logPrinter;

    /// <summary>
    /// Writes UE4SS configuration settings to disk.
    /// </summary>
    private readonly UE4SSSettings _settings;

    [LibraryImport("UE4SS.dll", EntryPoint = "setup_mod")]
    private static partial void SetupMod([MarshalAs(UnmanagedType.LPWStr)] string str);

    public Mod(ModContext context)
    {
        _modLoader = context.ModLoader;
        _hooks = context.Hooks;
        _logger = context.Logger;
        _owner = context.Owner;
        _configuration = context.Configuration;
        _modConfig = context.ModConfig;

        GameDirectoryMap.ApplyConfigOverrides(_configuration);

        _blueprintManager = new BlueprintManager(_modLoader, _modConfig, _logger);
        _luaLoader = new LuaLoader(_modConfig, _logger);

        var modDirectory = _modLoader.GetDirectoryForModId(context.ModConfig.ModId);

        _settings = new UE4SSSettings(_modLoader, _modConfig, _logger);
        RefreshDependencyConfigs();
        var ue4ssDllPath = Path.Combine(modDirectory, "UE4SS.dll");
        var dll = NativeLibrary.Load(ue4ssDllPath);

        _logPrinter = new LogPrinter(_logger, Path.GetDirectoryName(ue4ssDllPath) ?? modDirectory, _modConfig.ModId);
        _logPrinter.SetEnabled(_configuration.EnableLogPrinter);

        _modLoader.ModLoading += (v1, configV1) =>
        {
            var modDirectory = _modLoader.GetDirectoryForModId(configV1.ModId);
            var ue4SsDirectory = Path.Combine(modDirectory, "UE4SS");
            if (Directory.Exists(ue4SsDirectory))
            {
                SetupMod(ue4SsDirectory);
            }

            TrackEnabledDependencyMod(configV1, modDirectory);
            RefreshDependencyConfigs();
        };

        _modLoader.ModUnloading += (v1, configV1) =>
        {
            if (configV1.ModId.Equals(_modConfig.ModId, StringComparison.OrdinalIgnoreCase))
            {
                NativeLibrary.Free(dll);
                _logPrinter.Dispose();
            }

            _enabledDependencyModDirectories.Remove(_modLoader.GetDirectoryForModId(configV1.ModId));
            RefreshDependencyConfigs();
        };
    }

    #region Standard Overrides
    public override void ConfigurationUpdated(Config configuration)
    {
        // Apply settings from configuration.
        // ... your code here.
        _configuration = configuration;
        _logger.WriteLine($"[{_modConfig.ModId}] Config Updated: Applying");
        _logPrinter.SetEnabled(_configuration.EnableLogPrinter);
        GameDirectoryMap.ApplyConfigOverrides(_configuration);
        RefreshDependencyConfigs();
    }
    #endregion

    #region For Exports, Serialization etc.
#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
    public Mod() { }
#pragma warning restore CS8618
    #endregion

    private void RefreshDependencyConfigs()
    {
        _luaModFolders = _luaLoader.RefreshConfig(_enabledDependencyModDirectories);
        _blueprintManager.RefreshConfig(_enabledDependencyModDirectories);
        _settings.Write(_configuration, _luaModFolders);
    }

    private void TrackEnabledDependencyMod(IModConfigV1 config, string modDirectory)
    {
        if (!config.ModDependencies.Contains(_modConfig.ModId))
            return;

        _enabledDependencyModDirectories.Add(modDirectory);
    }
}