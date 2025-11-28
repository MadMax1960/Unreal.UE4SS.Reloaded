using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;
using Reloaded.Mod.Interfaces;

namespace UE4SSReloaded;

internal sealed class LuaLoader
{
    private readonly IModLoader _modLoader;
    private readonly IModConfig _modConfig;
    private readonly ILogger _logger;

    public LuaLoader(IModLoader modLoader, IModConfig modConfig, ILogger logger)
    {
        _modLoader = modLoader;
        _modConfig = modConfig;
        _logger = logger;
    }

    public IReadOnlyCollection<string> RefreshConfig()
    {
        try
        {
            var modDirectory = _modLoader.GetDirectoryForModId(_modConfig.ModId);
            var modsRootDirectory = Directory.GetParent(modDirectory)?.FullName;
            if (string.IsNullOrEmpty(modsRootDirectory) || !Directory.Exists(modsRootDirectory))
            {
                _logger.WriteLine($"[{_modConfig.ModId}] Unable to locate mods directory at '{modsRootDirectory}'.");
                return Array.Empty<string>();
            }

            var luaFolders = new SortedSet<string>(StringComparer.OrdinalIgnoreCase);

            foreach (var modPath in Directory.EnumerateDirectories(modsRootDirectory))
            {
                if (!DependsOnCurrentMod(modPath))
                    continue;

                var luaDirectory = Path.Combine(modPath, "Lua");
                if (!Directory.Exists(luaDirectory))
                    continue;

                luaFolders.Add(luaDirectory);
            }

            return luaFolders;
        }
        catch (Exception ex)
        {
            _logger.WriteLine($"[{_modConfig.ModId}] Failed to refresh Lua config: {ex}");
            return Array.Empty<string>();
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
