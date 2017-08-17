--********************--
x887782_g_scriptId = 887782
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x887782_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x887782_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x887782_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x887782_OnConditionCheck(sceneId,selfId)

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
function x887782_OnDeplete(sceneId,selfId)
	
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
function x887782_OnActivateOnce(sceneId,selfId)
	--********************--
	local TanTrangBi = {10223151, 10223152, 10223153, 10223154, 10223155, 10223156, 10223157, 10223158, 10223159, 10223160, 10223191, 10223192, 10223193, 10223194, 10223195, 10223196, 10223197, 10223198, 10223199, 10223200, 10223231, 10223232, 10223233, 10223234, 10223235, 10223236, 10223237, 10223238, 10223239, 10223240, 10223271, 10223272, 10223273, 10223274, 10223275, 10223276, 10223277, 10223278, 10223279, 10223280}
	local ThuCuoiSieuCap = {10141854, 10141855, 10141856, 10141857, 10141863, 10141868, 10141871, 10141873, 10141877, 10141894, 10141895}
	local KimTamTi = 20310166
	local Ngoc6GK = 50621003
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
function x887782_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
