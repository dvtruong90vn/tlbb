--********************--
x887775_g_scriptId = 887775
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x887775_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x887775_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x887775_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x887775_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId) ~= 1 then
		return 0
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x887775_OnDeplete(sceneId,selfId)
	
	--********************--
	if LuaFnDepletingUsedItem(sceneId,selfId) > 0 then
		return 1
	end
	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function x887775_OnActivateOnce(sceneId,selfId)
	local DuocTran = {}
		DuocTran[38000945] = {200}
		DuocTran[38000946] = {1000}
		DuocTran[38000947] = {10000}
		DuocTran[38000948] = {200}
		DuocTran[38000949] = {1000}
		DuocTran[38000950] = {10000}
		DuocTran[38000951] = {50000}
		DuocTran[38000952] = {50000}

	--********************--
	local DuocTranId = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local Exp_Now = GetMissionData(sceneId, selfId, SHENDING_EXP)
	local Exp_Add = DuocTran[DuocTranId][1]
	
	if Exp_Now == -1 then
		SetMissionData(sceneId, selfId, SHENDING_EXP, Exp_Add)
	else
		SetMissionData(sceneId, selfId, SHENDING_EXP, Exp_Add + Exp_Now)
	end
	
	DuocTranNow = GetMissionData(sceneId, selfId, SHENDING_EXP)
	--********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	BeginEvent(sceneId)
		AddText(sceneId,"SØ døng Ðan Dßþc thành công, dßþc tr¥n hi®n tÕi là "..DuocTranNow)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	return 1
	--********************--
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x887775_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
