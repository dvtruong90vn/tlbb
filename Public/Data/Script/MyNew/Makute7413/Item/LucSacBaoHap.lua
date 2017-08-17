--********************--
x887784_g_scriptId = 887784
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x887784_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x887784_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x887784_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x887784_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId) ~= 1 then
		return 0
	end
	--********************--
	local bag1 = LuaFnGetPropertyBagSpace(sceneId,selfId)
	local bag2 = LuaFnGetMaterialBagSpace(sceneId,selfId)
	if bag1 < 4 then
		BeginEvent(sceneId)
			AddText(sceneId,"Hãy s¡p xªp lÕi 4 ô tr¯ng trong túi ðÕo cø nhé!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	if bag2 < 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"Hãy s¡p xªp lÕi 2 ô tr¯ng trong túi nguyên li®u nhé!")
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
function x887784_OnDeplete(sceneId,selfId)
	
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
function x887784_OnActivateOnce(sceneId,selfId)
	--********************--
	local TanTrangBi = {10223171, 10223172, 10223173, 10223174, 10223175, 10223176, 10223177, 10223178, 10223179, 10223180, 10223211, 10223212, 10223213, 10223214, 10223215, 10223216, 10223217, 10223218, 10223219, 10223220, 10223251, 10223252, 10223253, 10223254, 10223255, 10223256, 10223257, 10223258, 10223259, 10223260, 10223291, 10223292, 10223293, 10223294, 10223295, 10223296, 10223297, 10223298, 10223299, 10223300}
	local ThuCuoiSieuCap = {10141854, 10141855, 10141856, 10141857, 10141863, 10141868, 10141871, 10141873, 10141877, 10141894, 10141895}
	local KimTamTi = 20310166
	local Ngoc6GK = 50621004
	local PhieuDP5K = 31000104
	
	TryRecieveItem(sceneId, selfId, TanTrangBi[random(1,40)], 1)
	TryRecieveItem(sceneId, selfId, TanTrangBi[random(1,40)], 1)
	TryRecieveItem(sceneId, selfId, ThuCuoiSieuCap[random(1,11)], 1)
	for i = 1, 50 do
		TryRecieveItem(sceneId, selfId, KimTamTi, 1)
	end
	TryRecieveItem(sceneId, selfId, Ngoc6GK, 1)
	TryRecieveItem(sceneId, selfId, PhieuDP5K, 1)
	--********************--
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
function x887784_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
