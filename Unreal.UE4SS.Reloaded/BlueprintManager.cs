using System;
using System.Collections.Generic;
using System.IO;
using Reloaded.Mod.Interfaces;
using Reloaded.Mod.Interfaces.Internal;

namespace UE4SSReloaded;

internal sealed class BlueprintManager
{
    private readonly IModLoader _modLoader;
    private readonly IModConfig _modConfig;
    private readonly ILogger _logger;
    private readonly string _outputPath;
    private readonly SortedDictionary<string, SortedSet<string>> _modBlueprintFolders = new(StringComparer.OrdinalIgnoreCase);
    private readonly SortedSet<string> _blueprintFolders = new(StringComparer.OrdinalIgnoreCase);

    public BlueprintManager(IModLoader modLoader, IModConfig modConfig, ILogger logger)
    {
        _modLoader = modLoader;
        _modConfig = modConfig;
        _logger = logger;

        var modDirectory = _modLoader.GetDirectoryForModId(_modConfig.ModId);
        _outputPath = Path.Combine(modDirectory, "Mods", "BPModLoaderMod", "Scripts", "config.txt");
    }

    public void Initialize()
    {
        _modBlueprintFolders.Clear();
        _blueprintFolders.Clear();
        WriteConfig();
    }

    public void HandleModLoaded(IModConfigV1 modConfig)
    {
        try
        {
            if (!DependsOnCurrentMod(modConfig))
                return;

            var modDirectory = _modLoader.GetDirectoryForModId(modConfig.ModId);
            var gameBlueprintFolder = GameDirectoryMap.GetBlueprintRootFolderName();
            var blueprintRoot = Path.Combine(modDirectory, "UnrealEssentials", gameBlueprintFolder, "Content", "Mods");

            if (!Directory.Exists(blueprintRoot))
                return;

            var foldersForMod = new SortedSet<string>(StringComparer.OrdinalIgnoreCase);

            foreach (var blueprintDirectory in Directory.EnumerateDirectories(blueprintRoot))
            {
                var folderName = Path.GetFileName(blueprintDirectory.TrimEnd(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar));
                if (!string.IsNullOrWhiteSpace(folderName))
                    foldersForMod.Add(folderName);
            }

            _modBlueprintFolders[modConfig.ModId] = foldersForMod;
            RefreshBlueprintFolders();
            WriteConfig();
        }
        catch (Exception ex)
        {
            _logger.WriteLine($"[{_modConfig.ModId}] Failed to refresh BPModLoader config for '{modConfig.ModId}': {ex}");
        }
    }

    public void HandleModUnloaded(IModConfigV1 modConfig)
    {
        if (_modBlueprintFolders.Remove(modConfig.ModId))
        {
            RefreshBlueprintFolders();
            WriteConfig();
        }
    }

    private void RefreshBlueprintFolders()
    {
        _blueprintFolders.Clear();

        foreach (var folders in _modBlueprintFolders.Values)
        {
            foreach (var folder in folders)
            {
                _blueprintFolders.Add(folder);
            }
        }
    }

    private void WriteConfig()
    {
        Directory.CreateDirectory(Path.GetDirectoryName(_outputPath)!);
        File.WriteAllLines(_outputPath, _blueprintFolders);
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