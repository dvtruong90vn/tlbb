--********************--
x887776_g_scriptId = 887776
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x887776_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x887776_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x887776_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x887776_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId) ~= 1 then
		return 0
	end
	--********************--
	local CongLuc = GetMissionData(sceneId, selfId, XIULIAN_GONGLI)
	if CongLuc == 100 then
		BeginEvent(sceneId)
			AddText(sceneId,"Công lñc ðã ðÕt 100/100, không c¥n sØ døng thêm Công Lñc Ðan")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x887776_OnDeplete(sceneId,selfId)
	
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
function x887776_OnActivateOnce(sceneId,selfId)
	--********************--
	SetMissionData(sceneId, selfId, XIULIAN_GONGLI, 100)
	--********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	BeginEvent(sceneId)
		AddText(sceneId,"SØ døng Công Lñc Ðan thành công, công lñc hi®n tÕi là 100/100")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	return 1
	--********************--
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x887776_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
