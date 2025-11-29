using System;
using System.Collections.Generic;
using System.IO;
using UE4SSReloaded.Configuration;

namespace UE4SSReloaded;

internal static class GameDirectoryMap
{
    internal sealed record GameConfiguration(
        string BlueprintRootFolderName,
        string? EngineMajorVersion,
        string? EngineMinorVersion,
        IReadOnlyCollection<string> AdditionalLuaModRelativePaths);

    private const string DefaultBlueprintRootFolderName = "P3R";

    private static readonly GameConfiguration DefaultConfiguration = new(DefaultBlueprintRootFolderName, null, null, Array.Empty<string>());

    private static readonly IReadOnlyDictionary<string, GameConfiguration> ExecutableToGameConfiguration =
        new Dictionary<string, GameConfiguration>(StringComparer.OrdinalIgnoreCase)
        {
            ["P3R.exe"] = new("P3R", "4", "27", new[] { Path.Combine("Lua Types Library", "P3R") }),
        };

    public static string GetBlueprintRootFolderName()
    {
        return GetGameConfiguration().BlueprintRootFolderName;
    }

    public static IReadOnlyCollection<string> GetAdditionalLuaModFolders(string baseDirectory)
    {
        var gameConfiguration = GetGameConfiguration();

        if (gameConfiguration.AdditionalLuaModRelativePaths.Count == 0)
            return Array.Empty<string>();

        var absolutePaths = new List<string>(gameConfiguration.AdditionalLuaModRelativePaths.Count);

        foreach (var relativePath in gameConfiguration.AdditionalLuaModRelativePaths)
        {
            if (string.IsNullOrWhiteSpace(relativePath))
                continue;

            absolutePaths.Add(Path.Combine(baseDirectory, relativePath));
        }

        return absolutePaths;
    }

    public static void ApplyConfigOverrides(Config config)
    {
        var gameConfiguration = GetGameConfiguration();

        if (!string.IsNullOrWhiteSpace(gameConfiguration.EngineMajorVersion))
            config.EngineMajorVersion = gameConfiguration.EngineMajorVersion;

        if (!string.IsNullOrWhiteSpace(gameConfiguration.EngineMinorVersion))
            config.EngineMinorVersion = gameConfiguration.EngineMinorVersion;
    }

    private static GameConfiguration GetGameConfiguration()
    {
        var executableName = GetExecutableName();
        if (string.IsNullOrEmpty(executableName))
            return DefaultConfiguration;

        if (ExecutableToGameConfiguration.TryGetValue(executableName, out var gameConfiguration))
            return gameConfiguration;

        var executableNameWithoutExtension = Path.GetFileNameWithoutExtension(executableName);
        if (!string.IsNullOrEmpty(executableNameWithoutExtension) &&
            ExecutableToGameConfiguration.TryGetValue(executableNameWithoutExtension, out gameConfiguration))
        {
            return gameConfiguration;
        }

        if (!string.IsNullOrEmpty(executableNameWithoutExtension))
            return new GameConfiguration(executableNameWithoutExtension, null, null, Array.Empty<string>());

        return DefaultConfiguration;
    }

    private static string? GetExecutableName()
    {
        if (!string.IsNullOrEmpty(Environment.ProcessPath))
            return Path.GetFileName(Environment.ProcessPath);

        var friendlyName = AppDomain.CurrentDomain.FriendlyName;
        return string.IsNullOrEmpty(friendlyName) ? null : Path.GetFileName(friendlyName);
    }
}
