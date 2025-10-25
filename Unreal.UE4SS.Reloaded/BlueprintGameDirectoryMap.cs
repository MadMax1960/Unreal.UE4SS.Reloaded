
using System;
using System.Collections.Generic;
using System.IO;

namespace UE4SSReloaded;

internal static class BlueprintGameDirectoryMap
{
    private const string DefaultBlueprintRootFolderName = "P3R";

    private static readonly IReadOnlyDictionary<string, string> ExecutableToBlueprintRootFolder =
        new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase)
        {
            ["P3R.exe"] = "P3R",
        };

    public static string GetBlueprintRootFolderName()
    {
        var executableName = GetExecutableName();
        if (string.IsNullOrEmpty(executableName))
            return DefaultBlueprintRootFolderName;

        if (ExecutableToBlueprintRootFolder.TryGetValue(executableName, out var blueprintFolder))
            return blueprintFolder;

        var executableNameWithoutExtension = Path.GetFileNameWithoutExtension(executableName);
        if (!string.IsNullOrEmpty(executableNameWithoutExtension) &&
            ExecutableToBlueprintRootFolder.TryGetValue(executableNameWithoutExtension, out blueprintFolder))
        {
            return blueprintFolder;
        }

        if (!string.IsNullOrEmpty(executableNameWithoutExtension))
            return executableNameWithoutExtension;

        return DefaultBlueprintRootFolderName;
    }

    private static string? GetExecutableName()
    {
        if (!string.IsNullOrEmpty(Environment.ProcessPath))
            return Path.GetFileName(Environment.ProcessPath);

        var friendlyName = AppDomain.CurrentDomain.FriendlyName;
        return string.IsNullOrEmpty(friendlyName) ? null : Path.GetFileName(friendlyName);
    }
}