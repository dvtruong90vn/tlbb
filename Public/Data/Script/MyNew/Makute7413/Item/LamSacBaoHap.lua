--********************--
x887781_g_scriptId = 887781
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x887781_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x887781_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x887781_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x887781_OnConditionCheck(sceneId,selfId)

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
function x887781_OnDeplete(sceneId,selfId)
	
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
function x887781_OnActivateOnce(sceneId,selfId)
	--********************--
	local TanTrangBi = {10223141, 10223142, 10223143, 10223144, 10223145, 10223146, 10223147, 10223148, 10223149, 10223150, 10223181, 10223182, 10223183, 10223184, 10223185, 10223186, 10223187, 10223188, 10223189, 10223190, 10223221, 10223222, 10223223, 10223224, 10223225, 10223226, 10223227, 10223228, 10223229, 10223230, 10223261, 10223262, 10223263, 10223264, 10223265, 10223266, 10223267, 10223268, 10223269, 10223270}
	local ThuCuoiSieuCap = {10141854, 10141855, 10141856, 10141857, 10141863, 10141868, 10141871, 10141873, 10141877, 10141894, 10141895}
	local KimTamTi = 20310166
	local Ngoc6GK = 50621002
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
function x887781_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
