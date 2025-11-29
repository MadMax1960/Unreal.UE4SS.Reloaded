using System;
using System.Collections.Generic;
using System.IO;
using Reloaded.Mod.Interfaces;
using Reloaded.Mod.Interfaces.Internal;

namespace UE4SSReloaded;

internal sealed class LuaLoader
{
    private readonly IModLoader _modLoader;
    private readonly IModConfig _modConfig;
    private readonly ILogger _logger;

    private readonly SortedSet<string> _luaFolders = new(StringComparer.OrdinalIgnoreCase);
    private readonly Dictionary<string, string> _modLuaFolders = new(StringComparer.OrdinalIgnoreCase);

    public LuaLoader(IModLoader modLoader, IModConfig modConfig, ILogger logger, IEnumerable<string> initialLuaFolders)
    {
        _modLoader = modLoader;
        _modConfig = modConfig;
        _logger = logger;

        foreach (var folder in initialLuaFolders)
        {
            if (!string.IsNullOrWhiteSpace(folder))
                _luaFolders.Add(folder);
        }
    }

    public IReadOnlyCollection<string> GetLuaFolders()
        => _luaFolders;

    public void HandleModLoaded(IModConfigV1 modConfig)
    {
        try
        {
            if (!DependsOnCurrentMod(modConfig))
                return;

            var modDirectory = _modLoader.GetDirectoryForModId(modConfig.ModId);
            var luaDirectory = Path.Combine(modDirectory, "Lua");

            if (!Directory.Exists(luaDirectory))
                return;

            _modLuaFolders[modConfig.ModId] = luaDirectory;
            _luaFolders.Add(luaDirectory);
        }
        catch (Exception ex)
        {
            _logger.WriteLine($"[{_modConfig.ModId}] Failed to register Lua folder for '{modConfig.ModId}': {ex}");
        }
    }

    public void HandleModUnloaded(IModConfigV1 modConfig)
    {
        if (_modLuaFolders.Remove(modConfig.ModId, out var luaDirectory))
        {
            _luaFolders.Remove(luaDirectory);
        }
    }

    private bool DependsOnCurrentMod(IModConfigV1 modConfig)
    {
        var dependencies = modConfig.ModDependencies ?? Array.Empty<string>();

        foreach (var dependency in dependencies)
        {
            if (dependency.Equals(_modConfig.ModId, StringComparison.OrdinalIgnoreCase))
                return true;
        }

        return false;
    }
}
