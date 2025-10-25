using System.ComponentModel;
using UE4SSReloaded.Template.Configuration;

namespace UE4SSReloaded.Configuration;

public class Config : Configurable<Config>
{
    [Category("Logging")]
    [DisplayName("Print UE4SS Log to Console")]
    [Description("When enabled, the contents of UE4SS.log are mirrored to the Reloaded-II console.")]
    [DefaultValue(true)]
    public bool EnableLogPrinter { get; set; } = true;

    [Category("Overrides")]
    [DisplayName("Mods Folder Path Override")]
    [Description("Path to the 'Mods' folder. Leave empty to use the default: <dll_directory>/Mods.")]
    [DefaultValue("")]
    public string ModsFolderPath { get; set; } = string.Empty;

    [Category("General")]
    [DisplayName("Enable Hot Reload System")]
    [Description("Whether the hot reload system should be enabled.")]
    [DefaultValue(true)]
    public bool EnableHotReloadSystem { get; set; } = true;

    [Category("General")]
    [DisplayName("Use Cache")]
    [Description("Whether the cache system for AOBs will be used.")]
    [DefaultValue(true)]
    public bool UseCache { get; set; } = true;

    [Category("General")]
    [DisplayName("Invalidate Cache If DLL Differs")]
    [Description("Invalidate caches if the UE4SS DLL has changed.")]
    [DefaultValue(true)]
    public bool InvalidateCacheIfDllDiffers { get; set; } = true;

    [Category("General")]
    [DisplayName("Seconds To Scan Before Giving Up")]
    [Description("The number of seconds the scanner will scan for before giving up.")]
    [DefaultValue(30)]
    public int SecondsToScanBeforeGivingUp { get; set; } = 30;

    [Category("General")]
    [DisplayName("Use UObject Array Cache")]
    [Description("Create UObject listeners in GUObjectArray to create a fast cache instead of iterating GUObjectArray.")]
    [DefaultValue(true)]
    public bool UseUObjectArrayCache { get; set; } = true;

    [Category("Engine Version Override")]
    [DisplayName("Major Version Override")]
    [Description("Override the detected engine major version. Leave blank to auto-detect.")]
    [DefaultValue("")]
    public string EngineMajorVersion { get; set; } = string.Empty;

    [Category("Engine Version Override")]
    [DisplayName("Minor Version Override")]
    [Description("Override the detected engine minor version. Leave blank to auto-detect.")]
    [DefaultValue("")]
    public string EngineMinorVersion { get; set; } = string.Empty;

    [Category("Engine Version Override")]
    [DisplayName("Debug Build")]
    [Description("True if the game is built as Debug, Development, or Test.")]
    [DefaultValue(false)]
    public bool DebugBuild { get; set; } = false;

    [Category("Object Dumper")]
    [DisplayName("Load All Assets Before Dumping Objects")]
    [Description("Whether to force all assets to be loaded before dumping objects.")]
    [DefaultValue(false)]
    public bool LoadAllAssetsBeforeDumpingObjects { get; set; } = false;

    [Category("CXX Header Generator")]
    [DisplayName("Dump Offsets And Sizes")]
    [Description("Whether to dump property offsets and sizes.")]
    [DefaultValue(true)]
    public bool DumpOffsetsAndSizes { get; set; } = true;

    [Category("CXX Header Generator")]
    [DisplayName("Keep Memory Layout")]
    [Description("Whether memory layouts of classes and structs should be accurate.")]
    [DefaultValue(false)]
    public bool KeepMemoryLayout { get; set; } = false;

    [Category("CXX Header Generator")]
    [DisplayName("Load All Assets Before Generating CXX Headers")]
    [Description("Whether to force all assets to be loaded before generating headers.")]
    [DefaultValue(false)]
    public bool LoadAllAssetsBeforeGeneratingCxxHeaders { get; set; } = false;

    [Category("UHT Header Generator")]
    [DisplayName("Ignore All Core Engine Modules")]
    [Description("Whether to skip generating packages that belong to the engine.")]
    [DefaultValue(false)]
    public bool IgnoreAllCoreEngineModules { get; set; } = false;

    [Category("UHT Header Generator")]
    [DisplayName("Ignore Engine And CoreUObject")]
    [Description("Whether to skip generating the 'Engine' and 'CoreUObject' packages.")]
    [DefaultValue(false)]
    public bool IgnoreEngineAndCoreUObject { get; set; } = false;

    [Category("UHT Header Generator")]
    [DisplayName("Make All Functions Blueprint Callable")]
    [Description("Force all UFUNCTION macros to have 'BlueprintCallable'.")]
    [DefaultValue(true)]
    public bool MakeAllFunctionsBlueprintCallable { get; set; } = true;

    [Category("UHT Header Generator")]
    [DisplayName("Make All Property Blueprints Read/Write")]
    [Description("Force all UPROPERTY macros to have 'BlueprintReadWrite' and 'meta=(AllowPrivateAccess=true)'.")]
    [DefaultValue(true)]
    public bool MakeAllPropertyBlueprintsReadWrite { get; set; } = true;

    [Category("UHT Header Generator")]
    [DisplayName("Make Enum Classes Blueprint Type")]
    [Description("Force UENUM macros on enums to have 'BlueprintType' when the underlying type is implicit or uint8.")]
    [DefaultValue(true)]
    public bool MakeEnumClassesBlueprintType { get; set; } = true;

    [Category("UHT Header Generator")]
    [DisplayName("Make All Configs Engine Config")]
    [Description("Force 'Config = Engine' on applicable UCLASS macros that use certain config specifiers.")]
    [DefaultValue(true)]
    public bool MakeAllConfigsEngineConfig { get; set; } = true;

    [Category("Debug")]
    [DisplayName("Console Enabled")]
    [Description("Enable the external UE4SS debug console.")]
    [DefaultValue(true)]
    public bool ConsoleEnabled { get; set; } = true;

    [Category("Debug")]
    [DisplayName("GUI Console Enabled")]
    [Description("Enable the GUI console overlay.")]
    [DefaultValue(true)]
    public bool GuiConsoleEnabled { get; set; } = true;

    [Category("Debug")]
    [DisplayName("GUI Console Visible")]
    [Description("Whether the GUI console is visible by default.")]
    [DefaultValue(true)]
    public bool GuiConsoleVisible { get; set; } = true;

    [Category("Debug")]
    [DisplayName("GUI Console Font Scaling")]
    [Description("Multiplier for font size within the debug GUI.")]
    [DefaultValue(1.0f)]
    public float GuiConsoleFontScaling { get; set; } = 1.0f;

    public enum GraphicsApiOption
    {
        Dx11,
        D3d11,
        Opengl
    }

    [Category("Debug")]
    [DisplayName("Graphics API")]
    [Description("The API used to render the GUI debug window (dx11, d3d11, opengl).")]
    [DefaultValue(GraphicsApiOption.Opengl)]
    public GraphicsApiOption GraphicsApi { get; set; } = GraphicsApiOption.Opengl;

    public enum RenderModeOption
    {
        ExternalThread,
        EngineTick,
        GameViewportClientTick
    }

    [Category("Debug")]
    [DisplayName("Render Mode")]
    [Description("Method used to render the GUI (ExternalThread, EngineTick, GameViewportClientTick).")]
    [DefaultValue(RenderModeOption.ExternalThread)]
    public RenderModeOption RenderMode { get; set; } = RenderModeOption.ExternalThread;

    [Category("Threads")]
    [DisplayName("Sig Scanner Number Of Threads")]
    [Description("Number of threads the signature scanner will use.")]
    [DefaultValue(8u)]
    public uint SigScannerNumThreads { get; set; } = 8;

    [Category("Threads")]
    [DisplayName("Sig Scanner Multithreading Module Size Threshold")]
    [Description("Minimum module size for multithreading to be enabled.")]
    [DefaultValue(16777216u)]
    public uint SigScannerMultithreadingModuleSizeThreshold { get; set; } = 16777216;

    [Category("Memory")]
    [DisplayName("Max Memory Usage During Asset Loading")]
    [Description("Maximum memory usage percentage allowed before asset loading is paused when forced loading is enabled.")]
    [DefaultValue(85)]
    public int MaxMemoryUsageDuringAssetLoading { get; set; } = 85;

    [Category("Hooks")]
    [DisplayName("Hook ProcessInternal")]
    [Description("Enable the ProcessInternal hook.")]
    [DefaultValue(true)]
    public bool HookProcessInternal { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("Hook ProcessLocalScriptFunction")]
    [Description("Enable the ProcessLocalScriptFunction hook.")]
    [DefaultValue(true)]
    public bool HookProcessLocalScriptFunction { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("Hook InitGameState")]
    [Description("Enable the InitGameState hook.")]
    [DefaultValue(true)]
    public bool HookInitGameState { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("Hook LoadMap")]
    [Description("Enable the LoadMap hook.")]
    [DefaultValue(true)]
    public bool HookLoadMap { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("Hook CallFunctionByNameWithArguments")]
    [Description("Enable the CallFunctionByNameWithArguments hook.")]
    [DefaultValue(true)]
    public bool HookCallFunctionByNameWithArguments { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("Hook BeginPlay")]
    [Description("Enable the BeginPlay hook.")]
    [DefaultValue(true)]
    public bool HookBeginPlay { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("Hook LocalPlayer Exec")]
    [Description("Enable the LocalPlayer Exec hook.")]
    [DefaultValue(true)]
    public bool HookLocalPlayerExec { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("Hook AActor Tick")]
    [Description("Enable the AActor Tick hook.")]
    [DefaultValue(true)]
    public bool HookAActorTick { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("Hook Engine Tick")]
    [Description("Enable the Engine Tick hook.")]
    [DefaultValue(true)]
    public bool HookEngineTick { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("Hook GameViewportClient Tick")]
    [Description("Enable the GameViewportClient Tick hook.")]
    [DefaultValue(true)]
    public bool HookGameViewportClientTick { get; set; } = true;

    [Category("Hooks")]
    [DisplayName("FExec VTable Offset In LocalPlayer")]
    [Description("Overrides the FExec vtable offset in LocalPlayer. Hex values supported (e.g. 0x28).")]
    [DefaultValue("0x28")]
    public string FExecVTableOffsetInLocalPlayer { get; set; } = "0x28";

    [Category("Crash Dump")]
    [DisplayName("Enable Dumping")]
    [Description("Enable crash dump generation.")]
    [DefaultValue(true)]
    public bool EnableDumping { get; set; } = true;

    [Category("Crash Dump")]
    [DisplayName("Full Memory Dump")]
    [Description("Generate full memory dumps instead of minidumps.")]
    [DefaultValue(false)]
    public bool FullMemoryDump { get; set; } = false;
}

public class ConfiguratorMixin : ConfiguratorMixinBase
{
}