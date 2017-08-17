--********************--
x887779_g_scriptId = 887779
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x887779_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x887779_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x887779_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x887779_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId) ~= 1 then
		return 0
	end
	--********************--

	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x887779_OnDeplete(sceneId,selfId)
	
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
function x887779_OnActivateOnce(sceneId,selfId)
	--********************--
	local DMP = 0
	local ItemID = LuaFnGetItemIndexOfUsedItem(sceneId, selfId)
	if ItemID == 31000102 then
		DMP = 1000
	elseif ItemID == 31000103 then
		DMP = 2000
	elseif ItemID == 31000104 then
		DMP = 5000
	elseif ItemID == 31000105 then
		DMP = 10000
	elseif ItemID == 31000106 then
		DMP = 20000
	elseif ItemID == 31000107 then
		DMP = 50000
	elseif ItemID == 31000108 then
		DMP = 100000
	elseif ItemID == 31000109 then
		DMP = 200000
	elseif ItemID == 31000110 then
		DMP = 500000
	end
	--********************--
	local RemainDMP = GetHumanMenpaiPoint(sceneId,selfId)
	SetHumanMenpaiPoint(sceneId,selfId,RemainDMP + DMP)
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Các hÕ ðã nh§n ðßþc "..DMP.." DP")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x887779_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
