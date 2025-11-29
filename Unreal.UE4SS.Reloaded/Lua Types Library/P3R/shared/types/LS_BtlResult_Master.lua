---@meta

---@class USequenceDirector_C : ULevelSequenceDirector
---@field UberGraphFrame FPointerToUberGraphFrame
local USequenceDirector_C = {}

---@param BtlEventAssistant ABP_BtlEventAssistant_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_13(BtlEventAssistant) end
---@param BtlEventAssistant ABP_BtlEventAssistant_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_12(BtlEventAssistant) end
---@param BtlEventAssistant ABP_BtlEventAssistant_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_11(BtlEventAssistant) end
---@param BCD_PartyMember1 ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_10(BCD_PartyMember1) end
---@param BCD_PartyMember1 ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_9(BCD_PartyMember1) end
---@param BCD_Invoke ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_8(BCD_Invoke) end
---@param BCD_PartyMember3 ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_7(BCD_PartyMember3) end
---@param BCD_PartyMember2 ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_6(BCD_PartyMember2) end
---@param BCD_PartyMember3 ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_5(BCD_PartyMember3) end
---@param BCD_PartyMember3 ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_4(BCD_PartyMember3) end
---@param BCD_PartyMember2 ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_3(BCD_PartyMember2) end
---@param BCD_PartyMember1 ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_2(BCD_PartyMember1) end
---@param BCD_Invoke ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_1(BCD_Invoke) end
---@param BCD_Invoke ABP_BtlPerformer_C
function USequenceDirector_C:SequenceEvent__ENTRYPOINTSequenceDirector_0(BCD_Invoke) end
---@param BCD_Invoke ABP_BtlPerformer_C
function USequenceDirector_C:BCD_Invoke_Event_0(BCD_Invoke) end
---@param BCD_Invoke ABP_BtlPerformer_C
---@param Bind boolean
function USequenceDirector_C:BCD_Invoke_Event_1(BCD_Invoke, Bind) end
---@param BCD_Invoke ABP_BtlPerformer_C
---@param Interp_Time float
---@param Radius float
---@param Height_Ratio float
---@param Rotate_Degree float
---@param TargetType EBtlEventAreaType
function USequenceDirector_C:BCD_Invoke_Event_3(BCD_Invoke, Interp_Time, Radius, Height_Ratio, Rotate_Degree, TargetType) end
---@param BCD_PartyMember1 ABP_BtlPerformer_C
---@param Bind boolean
function USequenceDirector_C:BCD_PartyMember1_Event_0(BCD_PartyMember1, Bind) end
---@param BCD_PartyMember2 ABP_BtlPerformer_C
---@param Bind boolean
function USequenceDirector_C:BCD_PartyMember2_Event_0(BCD_PartyMember2, Bind) end
---@param BCD_PartyMember3 ABP_BtlPerformer_C
---@param Bind boolean
function USequenceDirector_C:BCD_PartyMember3_Event_0(BCD_PartyMember3, Bind) end
---@param BCD_PartyMember3 ABP_BtlPerformer_C
---@param Anim_ID EBtlAnimationType
---@param Blend float
function USequenceDirector_C:BCD_PartyMember3_Event_1(BCD_PartyMember3, Anim_ID, Blend) end
---@param BCD_Invoke ABP_BtlPerformer_C
---@param Bind boolean
function USequenceDirector_C:BCD_Invoke_Event_2(BCD_Invoke, Bind) end
---@param BCD_Invoke ABP_BtlPerformer_C
---@param Anim_ID EBtlAnimationType
---@param Blend float
function USequenceDirector_C:BCD_Invoke_Event_4(BCD_Invoke, Anim_ID, Blend) end
---@param BCD_PartyMember1 ABP_BtlPerformer_C
---@param Anim_ID EBtlAnimationType
---@param Blend float
function USequenceDirector_C:BCD_PartyMember1_Event_2(BCD_PartyMember1, Anim_ID, Blend) end
---@param BCD_PartyMember2 ABP_BtlPerformer_C
---@param Anim_ID EBtlAnimationType
---@param Blend float
function USequenceDirector_C:BCD_PartyMember2_Event_2(BCD_PartyMember2, Anim_ID, Blend) end
---@param BCD_PartyMember3 ABP_BtlPerformer_C
---@param Anim_ID EBtlAnimationType
---@param Blend float
function USequenceDirector_C:BCD_PartyMember3_Event_2(BCD_PartyMember3, Anim_ID, Blend) end
---@param BCD_Invoke ABP_BtlPerformer_C
---@param Anim_ID EBtlAnimationType
---@param Blend float
function USequenceDirector_C:BCD_Invoke_Event_5(BCD_Invoke, Anim_ID, Blend) end
---@param BCD_PartyMember1 ABP_BtlPerformer_C
---@param Anim_ID EBtlAnimationType
---@param Blend float
function USequenceDirector_C:BCD_PartyMember1_Event_3(BCD_PartyMember1, Anim_ID, Blend) end
---@param BCD_PartyMember2 ABP_BtlPerformer_C
---@param Anim_ID EBtlAnimationType
---@param Blend float
function USequenceDirector_C:BCD_PartyMember2_Event_3(BCD_PartyMember2, Anim_ID, Blend) end
---@param BCD_PartyMember3 ABP_BtlPerformer_C
---@param Anim_ID EBtlAnimationType
---@param Blend float
function USequenceDirector_C:BCD_PartyMember3_Event_3(BCD_PartyMember3, Anim_ID, Blend) end
---@param BCD_PartyMember1 ABP_BtlPerformer_C
---@param Bind boolean
function USequenceDirector_C:BCD_PartyMember1_Event_4(BCD_PartyMember1, Bind) end
---@param BCD_PartyMember1 ABP_BtlPerformer_C
---@param AnimId EBtlSceneAnimationType
---@param AnimID_Next EBtlSceneAnimationType
function USequenceDirector_C:BCD_PartyMember1_Event_5(BCD_PartyMember1, AnimId, AnimID_Next) end
---@param BCD_PartyMember2 ABP_BtlPerformer_C
---@param AnimId EBtlSceneAnimationType
---@param AnimID_Next EBtlSceneAnimationType
function USequenceDirector_C:BCD_PartyMember2_Event_4(BCD_PartyMember2, AnimId, AnimID_Next) end
---@param BCD_PartyMember3 ABP_BtlPerformer_C
---@param AnimId EBtlSceneAnimationType
---@param AnimID_Next EBtlSceneAnimationType
function USequenceDirector_C:BCD_PartyMember3_Event_4(BCD_PartyMember3, AnimId, AnimID_Next) end
---@param BCD_Invoke ABP_BtlPerformer_C
---@param AnimId EBtlSceneAnimationType
---@param AnimID_Next EBtlSceneAnimationType
function USequenceDirector_C:BCD_Invoke_Event_7(BCD_Invoke, AnimId, AnimID_Next) end
---@param BtlEventAssistant ABP_BtlEventAssistant_C
function USequenceDirector_C:BtlEventAssistant_Event_0(BtlEventAssistant) end
---@param BtlEventAssistant ABP_BtlEventAssistant_C
function USequenceDirector_C:BtlEventAssistant_Event_1(BtlEventAssistant) end
---@param BtlEventAssistant ABP_BtlEventAssistant_C
---@param ID int32
function USequenceDirector_C:BtlEventAssistant_Event_2(BtlEventAssistant, ID) end
---@param EntryPoint int32
function USequenceDirector_C:ExecuteUbergraph_SequenceDirector(EntryPoint) end


