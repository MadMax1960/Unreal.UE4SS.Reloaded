using System;
using System.Collections.Generic;
using System.IO;
using Reloaded.Mod.Interfaces;

namespace UE4SSReloaded;
internal sealed class BlueprintManager
{
    private readonly IModLoader _modLoader;
    private readonly IModConfig _modConfig;
    private readonly ILogger _logger;
    private readonly string _outputPath;

    public BlueprintManager(IModLoader modLoader, IModConfig modConfig, ILogger logger)
    {
        _modLoader = modLoader;
        _modConfig = modConfig;
        _logger = logger;

        var modDirectory = _modLoader.GetDirectoryForModId(_modConfig.ModId);
        _outputPath = Path.Combine(modDirectory, "Mods", "BPModLoaderMod", "Scripts", "config.txt");
    }
    public void RefreshConfig(IEnumerable<string> enabledDependencyModDirectories)
    {
        try
        {
            var blueprintFolders = new SortedSet<string>(StringComparer.OrdinalIgnoreCase);

            foreach (var modPath in enabledDependencyModDirectories)
            {
                var gameBlueprintFolder = GameDirectoryMap.GetBlueprintRootFolderName();
                var blueprintRoot = Path.Combine(modPath, "UnrealEssentials", gameBlueprintFolder, "Content", "Mods");
                if (!Directory.Exists(blueprintRoot))
                    continue;

                foreach (var blueprintDirectory in Directory.EnumerateDirectories(blueprintRoot))
                {
                    var folderName = Path.GetFileName(blueprintDirectory.TrimEnd(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar));
                    if (!string.IsNullOrWhiteSpace(folderName))
                        blueprintFolders.Add(folderName);
                }
            }

            Directory.CreateDirectory(Path.GetDirectoryName(_outputPath)!);
            File.WriteAllLines(_outputPath, blueprintFolders);
        }
        catch (Exception ex)
        {
            _logger.WriteLine($"[{_modConfig.ModId}] Failed to refresh BPModLoader config: {ex}");
        }
    }
}