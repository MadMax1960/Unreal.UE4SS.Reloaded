---@meta

---@class FNiagaraCompileEvent
---@field Severity FNiagaraCompileEventSeverity
---@field Message FString
---@field ShortDescription FString
---@field bDismissable boolean
---@field NodeGuid FGuid
---@field PinGuid FGuid
---@field StackGuids TArray<FGuid>
local FNiagaraCompileEvent = {}



---@class FNiagaraDataInterfaceGPUParamInfo
---@field DataInterfaceHLSLSymbol FString
---@field DIClassName FString
---@field GeneratedFunctions TArray<FNiagaraDataInterfaceGeneratedFunction>
local FNiagaraDataInterfaceGPUParamInfo = {}



---@class FNiagaraDataInterfaceGeneratedFunction
local FNiagaraDataInterfaceGeneratedFunction = {}


---@class FSimulationStageMetaData
---@field SimulationStageName FName
---@field IterationSource FName
---@field bSpawnOnly boolean
---@field bWritesParticles boolean
---@field bPartialParticleUpdate boolean
---@field OutputDestinations TArray<FName>
---@field MinStage int32
---@field MaxStage int32
local FSimulationStageMetaData = {}



---@class UNiagaraScriptBase : UObject
local UNiagaraScriptBase = {}


