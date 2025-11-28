using System;
using System.Collections.Generic;
using System.IO;
using Reloaded.Mod.Interfaces;

namespace UE4SSReloaded;

internal sealed class LuaLoader
{
    private readonly IModConfig _modConfig;
    private readonly ILogger _logger;

    public LuaLoader(IModConfig modConfig, ILogger logger)
    {
        _modConfig = modConfig;
        _logger = logger;
    }

    public IReadOnlyCollection<string> RefreshConfig(IEnumerable<string> enabledDependencyModDirectories)
    {
        try
        {
            var luaFolders = new SortedSet<string>(StringComparer.OrdinalIgnoreCase);

            foreach (var modPath in enabledDependencyModDirectories)
            {
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
}
