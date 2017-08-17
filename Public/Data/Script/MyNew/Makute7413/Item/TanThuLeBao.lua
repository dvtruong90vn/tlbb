--********************--
x887789_g_scriptId = 887789
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x887789_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x887789_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x887789_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x887789_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId) ~= 1 then
		return 0
	end
	--********************--
	local bag1 = LuaFnGetPropertyBagSpace(sceneId,selfId)
	if bag1 < 19 then
		BeginEvent(sceneId)
			AddText(sceneId,"Hãy s¡p xªp lÕi 19 ô tr¯ng trong túi ðÕo cø nhé!")
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
function x887789_OnDeplete(sceneId,selfId)
	
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
function x887789_OnActivateOnce(sceneId,selfId)
	--********************--
	TryRecieveItem(sceneId, selfId, 10224851, 1)
	TryRecieveItem(sceneId, selfId, 10224852, 1)
	TryRecieveItem(sceneId, selfId, 10224853, 1)
	TryRecieveItem(sceneId, selfId, 10224854, 1)
	TryRecieveItem(sceneId, selfId, 10224855, 1)
	TryRecieveItem(sceneId, selfId, 10224856, 1)
	TryRecieveItem(sceneId, selfId, 10224857, 1)
	TryRecieveItem(sceneId, selfId, 10224858, 1)
	TryRecieveItem(sceneId, selfId, 10224859, 1)
	TryRecieveItem(sceneId, selfId, 10224860, 1)
	TryRecieveItem(sceneId, selfId, 10224861, 1)
	TryRecieveItem(sceneId, selfId, 10224862, 1)
	TryRecieveItem(sceneId, selfId, 10224863, 1)
	TryRecieveItem(sceneId, selfId, 10224863, 1)
	TryRecieveItem(sceneId, selfId, 10224864, 1)
	TryRecieveItem(sceneId, selfId, 10224864, 1)
	TryRecieveItem(sceneId, selfId, 10224865, 1)
	TryRecieveItem(sceneId, selfId, 10224866, 1)
	TryRecieveItem(sceneId, selfId, 10224867, 1)

	local MenpaiPoint = GetHumanMenpaiPoint(sceneId,selfId)
	SetHumanMenpaiPoint(sceneId,selfId,MenpaiPoint + 10000000)
	AddMoney(sceneId,selfId,50000000)
	--********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	BeginEvent(sceneId)
		AddText(sceneId,"M· bäo hþp thành công, hãy xem lÕi tay näi cüa các hÕ.")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	return 1
	--********************--
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x887789_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
