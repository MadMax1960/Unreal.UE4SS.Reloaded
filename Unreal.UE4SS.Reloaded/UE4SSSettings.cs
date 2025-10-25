using System;
using System.Globalization;
using System.IO;
using System.Text;
using Reloaded.Mod.Interfaces;
using UE4SSReloaded.Configuration;

namespace UE4SSReloaded;

internal sealed class UE4SSSettings
{
    private readonly IModLoader _modLoader;
    private readonly IModConfig _modConfig;
    private readonly ILogger _logger;

    public UE4SSSettings(IModLoader modLoader, IModConfig modConfig, ILogger logger)
    {
        _modLoader = modLoader;
        _modConfig = modConfig;
        _logger = logger;
    }

    public void Write(Config config)
    {
        try
        {
            var modDirectory = _modLoader.GetDirectoryForModId(_modConfig.ModId);
            var settingsDirectory = Path.Combine(modDirectory, "");
            var settingsPath = Path.Combine(settingsDirectory, "UE4SS-settings.ini");

            Directory.CreateDirectory(settingsDirectory);

            var content = BuildSettings(config);
            File.WriteAllText(settingsPath, content, Encoding.UTF8);
        }
        catch (Exception ex)
        {
            _logger.WriteLine($"[{_modConfig.ModId}] Failed to write UE4SS-settings.ini: {ex}");
        }
    }

    private static string BuildSettings(Config config)
    {
        var sb = new StringBuilder();
        sb.AppendLine("[Overrides]");
        sb.AppendLine("; Path to the 'Mods' folder");
        sb.AppendLine("; Default: <dll_directory>/Mods");
        sb.AppendLine($"ModsFolderPath = {config.ModsFolderPath}");
        sb.AppendLine();
        sb.AppendLine("[General]");
        sb.AppendLine("EnableHotReloadSystem = " + BoolToNumeric(config.EnableHotReloadSystem));
        sb.AppendLine();
        sb.AppendLine("; Whether the cache system for AOBs will be used.");
        sb.AppendLine("; Default: 1");
        sb.AppendLine("UseCache = " + BoolToNumeric(config.UseCache));
        sb.AppendLine();
        sb.AppendLine("; Whether caches will be invalidated if ue4ss.dll has changed");
        sb.AppendLine("; Default: 1");
        sb.AppendLine("InvalidateCacheIfDLLDiffers = " + BoolToNumeric(config.InvalidateCacheIfDllDiffers));
        sb.AppendLine();
        sb.AppendLine("; The number of seconds the scanner will scan for before giving up");
        sb.AppendLine("; Default: 30");
        sb.AppendLine("SecondsToScanBeforeGivingUp = " + FormatInt(config.SecondsToScanBeforeGivingUp));
        sb.AppendLine();
        sb.AppendLine("; Whether to create UObject listeners in GUObjectArray to create a fast cache for use instead of iterating GUObjectArray.");
        sb.AppendLine("; Setting this to false can help if you're experiencing a crash on startup.");
        sb.AppendLine("; Default: true");
        sb.AppendLine("bUseUObjectArrayCache = " + BoolToTrueFalse(config.UseUObjectArrayCache));
        sb.AppendLine();
        sb.AppendLine("[EngineVersionOverride]");
        sb.AppendLine("MajorVersion = " + config.EngineMajorVersion);
        sb.AppendLine("MinorVersion = " + config.EngineMinorVersion);
        sb.AppendLine("; True if the game is built as Debug, Development, or Test.");
        sb.AppendLine("; Default: false");
        sb.AppendLine("DebugBuild = " + BoolToTrueFalse(config.DebugBuild));
        sb.AppendLine();
        sb.AppendLine("[ObjectDumper]");
        sb.AppendLine("; Whether to force all assets to be loaded before dumping objects");
        sb.AppendLine("; WARNING: Can require multiple gigabytes of extra memory");
        sb.AppendLine("; WARNING: Is not stable & will crash the game if you load past the main menu after dumping");
        sb.AppendLine("; Default: 0");
        sb.AppendLine("LoadAllAssetsBeforeDumpingObjects = " + BoolToNumeric(config.LoadAllAssetsBeforeDumpingObjects));
        sb.AppendLine();
        sb.AppendLine("[CXXHeaderGenerator]");
        sb.AppendLine("; Whether to property offsets and sizes");
        sb.AppendLine("; Default: 1");
        sb.AppendLine("DumpOffsetsAndSizes = " + BoolToNumeric(config.DumpOffsetsAndSizes));
        sb.AppendLine();
        sb.AppendLine("; Whether memory layouts of classes and structs should be accurate");
        sb.AppendLine("; This must be set to 1, if you want to use the generated headers in an actual C++ project");
        sb.AppendLine("; When set to 0, padding member variables will not be generated");
        sb.AppendLine("; NOTE: A VALUE OF 1 HAS NO PURPOSE YET! MEMORY LAYOUT IS NOT ACCURATE EITHER WAY!");
        sb.AppendLine("; Default: 0");
        sb.AppendLine("KeepMemoryLayout = " + BoolToNumeric(config.KeepMemoryLayout));
        sb.AppendLine();
        sb.AppendLine("; Whether to force all assets to be loaded before generating headers");
        sb.AppendLine("; WARNING: Can require multiple gigabytes of extra memory");
        sb.AppendLine("; WARNING: Is not stable & will crash the game if you load past the main menu after dumping");
        sb.AppendLine("; Default: 0");
        sb.AppendLine("LoadAllAssetsBeforeGeneratingCXXHeaders = " + BoolToNumeric(config.LoadAllAssetsBeforeGeneratingCxxHeaders));
        sb.AppendLine();
        sb.AppendLine("[UHTHeaderGenerator]");
        sb.AppendLine("; Whether to skip generating packages that belong to the engine");
        sb.AppendLine("; Some games make alterations to the engine and for those games you might want to set this to 0");
        sb.AppendLine("; Default: 0");
        sb.AppendLine("IgnoreAllCoreEngineModules = " + BoolToNumeric(config.IgnoreAllCoreEngineModules));
        sb.AppendLine();
        sb.AppendLine("; Whether to skip generating the \"Engine\" and \"CoreUObject\" packages");
        sb.AppendLine("; Default: 0");
        sb.AppendLine("IgnoreEngineAndCoreUObject = " + BoolToNumeric(config.IgnoreEngineAndCoreUObject));
        sb.AppendLine();
        sb.AppendLine("; Whether to force all UFUNCTION macros to have \"BlueprintCallable\"");
        sb.AppendLine("; Note: This will cause some errors in the generated headers that you will need to manually fix");
        sb.AppendLine("; Default: 1");
        sb.AppendLine("MakeAllFunctionsBlueprintCallable = " + BoolToNumeric(config.MakeAllFunctionsBlueprintCallable));
        sb.AppendLine();
        sb.AppendLine("; Whether to force all UPROPERTY macros to have \"BlueprintReadWrite\"");
        sb.AppendLine("; Also forces all UPROPERTY macros to have \"meta=(AllowPrivateAccess=true)\"");
        sb.AppendLine("; Default: 1");
        sb.AppendLine("MakeAllPropertyBlueprintsReadWrite = " + BoolToNumeric(config.MakeAllPropertyBlueprintsReadWrite));
        sb.AppendLine();
        sb.AppendLine("; Whether to force UENUM macros on enums to have 'BlueprintType' if the underlying type was implicit or uint8");
        sb.AppendLine("; Note: This also forces the underlying type to be uint8 where the type would otherwise be implicit");
        sb.AppendLine("; Default: 1");
        sb.AppendLine("MakeEnumClassesBlueprintType = " + BoolToNumeric(config.MakeEnumClassesBlueprintType));
        sb.AppendLine();
        sb.AppendLine("; Whether to force \"Config = Engine\" on all UCLASS macros that use either one of:");
        sb.AppendLine("; \"DefaultConfig\", \"GlobalUserConfig\" or \"ProjectUserConfig\"");
        sb.AppendLine("; Default: 1");
        sb.AppendLine("MakeAllConfigsEngineConfig = " + BoolToNumeric(config.MakeAllConfigsEngineConfig));
        sb.AppendLine();
        sb.AppendLine("[Debug]");
        sb.AppendLine("; Whether to enable the external UE4SS debug console.");
        sb.AppendLine("ConsoleEnabled = " + BoolToNumeric(config.ConsoleEnabled));
        sb.AppendLine("GuiConsoleEnabled = " + BoolToNumeric(config.GuiConsoleEnabled));
        sb.AppendLine("GuiConsoleVisible = " + BoolToNumeric(config.GuiConsoleVisible));
        sb.AppendLine();
        sb.AppendLine("; Multiplier for Font Size within the Debug Gui");
        sb.AppendLine("; Default: 1");
        sb.AppendLine("GuiConsoleFontScaling = " + FormatFloat(config.GuiConsoleFontScaling));
        sb.AppendLine();
        sb.AppendLine("; The API that will be used to render the GUI debug window.");
        sb.AppendLine("; Valid values (case-insensitive): dx11, d3d11, opengl");
        sb.AppendLine("; Default: opengl");
        sb.AppendLine("GraphicsAPI = " + FormatGraphicsApi(config.GraphicsApi));
        sb.AppendLine();
        sb.AppendLine("; The method with which the GUI will be rendered.");
        sb.AppendLine("; Valid values (case-insensitive):");
        sb.AppendLine("; ExternalThread: A separate thread will be used.");
        sb.AppendLine("; EngineTick: The UEngine::Tick function will be used.");
        sb.AppendLine("; GameViewportClientTick: The UGameViewportClient::Tick function will be used.");
        sb.AppendLine("; Default: ExternalThread");
        sb.AppendLine("RenderMode = " + FormatRenderMode(config.RenderMode));
        sb.AppendLine();
        sb.AppendLine("[Threads]");
        sb.AppendLine("; The number of threads that the sig scanner will use (not real cpu threads, can be over your physical & hyperthreading max)");
        sb.AppendLine("; If the game is modular then multi-threading will always be off regardless of the settings in this file");
        sb.AppendLine("; Min: 1");
        sb.AppendLine("; Max: 4294967295");
        sb.AppendLine("; Default: 8");
        sb.AppendLine("SigScannerNumThreads = " + FormatUint(config.SigScannerNumThreads));
        sb.AppendLine();
        sb.AppendLine("; The minimum size that a module has to be in order for multi-threading to be enabled");
        sb.AppendLine("; This should be large enough so that the cost of creating threads won't out-weigh the speed gained from scanning in multiple threads");
        sb.AppendLine("; Min: 0");
        sb.AppendLine("; Max: 4294967295");
        sb.AppendLine("; Default: 16777216");
        sb.AppendLine("SigScannerMultithreadingModuleSizeThreshold = " + FormatUint(config.SigScannerMultithreadingModuleSizeThreshold));
        sb.AppendLine();
        sb.AppendLine("[Memory]");
        sb.AppendLine("; The maximum memory usage (in percentage, see Task Manager %) allowed before asset loading (when LoadAllAssetsBefore* is 1) cannot happen.");
        sb.AppendLine("; Once this percentage is reached, the asset loader will stop loading and whatever operation was in progress (object dump, or cxx generator) will continue.");
        sb.AppendLine("; Default: 85");
        sb.AppendLine("MaxMemoryUsageDuringAssetLoading = " + FormatInt(config.MaxMemoryUsageDuringAssetLoading));
        sb.AppendLine();
        sb.AppendLine("[Hooks]");
        sb.AppendLine("HookProcessInternal = " + BoolToNumeric(config.HookProcessInternal));
        sb.AppendLine("HookProcessLocalScriptFunction = " + BoolToNumeric(config.HookProcessLocalScriptFunction));
        sb.AppendLine("HookInitGameState = " + BoolToNumeric(config.HookInitGameState));
        sb.AppendLine("HookLoadMap = " + BoolToNumeric(config.HookLoadMap));
        sb.AppendLine("HookCallFunctionByNameWithArguments = " + BoolToNumeric(config.HookCallFunctionByNameWithArguments));
        sb.AppendLine("HookBeginPlay = " + BoolToNumeric(config.HookBeginPlay));
        sb.AppendLine("HookLocalPlayerExec = " + BoolToNumeric(config.HookLocalPlayerExec));
        sb.AppendLine("HookAActorTick = " + BoolToNumeric(config.HookAActorTick));
        sb.AppendLine("HookEngineTick = " + BoolToNumeric(config.HookEngineTick));
        sb.AppendLine("HookGameViewportClientTick = " + BoolToNumeric(config.HookGameViewportClientTick));
        sb.AppendLine("FExecVTableOffsetInLocalPlayer = " + config.FExecVTableOffsetInLocalPlayer);
        sb.AppendLine();
        sb.AppendLine("[CrashDump]");
        sb.AppendLine("EnableDumping = " + BoolToNumeric(config.EnableDumping));
        sb.AppendLine("FullMemoryDump = " + BoolToNumeric(config.FullMemoryDump));
        sb.AppendLine();
        sb.AppendLine("[ExperimentalFeatures]");
        return sb.ToString();
    }

    private static string BoolToNumeric(bool value) => value ? "1" : "0";

    private static string BoolToTrueFalse(bool value) => value ? "true" : "false";

    private static string FormatFloat(float value) => value.ToString("0.######", CultureInfo.InvariantCulture);

    private static string FormatInt(int value) => value.ToString(CultureInfo.InvariantCulture);

    private static string FormatUint(uint value) => value.ToString(CultureInfo.InvariantCulture);

    private static string FormatGraphicsApi(Config.GraphicsApiOption option) => option switch
    {
        Config.GraphicsApiOption.Dx11 => "dx11",
        Config.GraphicsApiOption.D3d11 => "d3d11",
        _ => "opengl"
    };

    private static string FormatRenderMode(Config.RenderModeOption option) => option switch
    {
        Config.RenderModeOption.EngineTick => "EngineTick",
        Config.RenderModeOption.GameViewportClientTick => "GameViewportClientTick",
        _ => "ExternalThread"
    };
}
