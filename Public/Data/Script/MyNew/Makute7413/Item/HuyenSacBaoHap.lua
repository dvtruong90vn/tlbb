--********************--
x887783_g_scriptId = 887783
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x887783_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x887783_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x887783_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x887783_OnConditionCheck(sceneId,selfId)

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
function x887783_OnDeplete(sceneId,selfId)
	
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
function x887783_OnActivateOnce(sceneId,selfId)
	--********************--
	local TanTrangBi = {10223161, 10223162, 10223163, 10223164, 10223165, 10223166, 10223167, 10223168, 10223169, 10223170, 10223201, 10223202, 10223203, 10223204, 10223205, 10223206, 10223207, 10223208, 10223209, 10223210, 10223241, 10223242, 10223243, 10223244, 10223245, 10223246, 10223247, 10223248, 10223249, 10223250, 10223281, 10223282, 10223283, 10223284, 10223285, 10223286, 10223287, 10223288, 10223289, 10223290}
	local ThuCuoiSieuCap = {10141854, 10141855, 10141856, 10141857, 10141863, 10141868, 10141871, 10141873, 10141877, 10141894, 10141895}
	local KimTamTi = 20310166
	local Ngoc6GK = 50621001
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
function x887783_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
