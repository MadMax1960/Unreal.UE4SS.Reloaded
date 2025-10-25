using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;
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
    public void RefreshConfig()
    {
        try
        {
            var modDirectory = _modLoader.GetDirectoryForModId(_modConfig.ModId);
            var modsRootDirectory = Directory.GetParent(modDirectory)?.FullName;
            if (string.IsNullOrEmpty(modsRootDirectory) || !Directory.Exists(modsRootDirectory))
            {
                _logger.WriteLine($"[{_modConfig.ModId}] Unable to locate mods directory at '{modsRootDirectory}'.");
                return;
            }

            var blueprintFolders = new SortedSet<string>(StringComparer.OrdinalIgnoreCase);

            foreach (var modPath in Directory.EnumerateDirectories(modsRootDirectory))
            {
                if (!DependsOnCurrentMod(modPath))
                    continue;

                var gameBlueprintFolder = BlueprintGameDirectoryMap.GetBlueprintRootFolderName();
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

    private bool DependsOnCurrentMod(string modDirectory)
    {
        var configPath = Path.Combine(modDirectory, "ModConfig.json");
        if (!File.Exists(configPath))
            return false;

        try
        {
            using var stream = File.OpenRead(configPath);
            using var document = JsonDocument.Parse(stream);

            if (document.RootElement.TryGetProperty("ModDependencies", out var dependencies) &&
                dependencies.ValueKind == JsonValueKind.Array)
            {
                foreach (var dependency in dependencies.EnumerateArray())
                {
                    if (dependency.ValueKind == JsonValueKind.String &&
                        dependency.GetString() is { } dependencyId &&
                        dependencyId.Equals(_modConfig.ModId, StringComparison.OrdinalIgnoreCase))
                    {
                        return true;
                    }
                }
            }
        }
        catch (Exception ex)
        {
            _logger.WriteLine($"[{_modConfig.ModId}] Failed to inspect dependencies for '{configPath}': {ex.Message}");
        }

        return false;
    }
}