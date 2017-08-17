-- ´óË«±¶¾­ÑéÊ±¼äÒ©Ë®
-- ÏûºÄÒ»¸öÒ©Ë®£¬

--½Å±¾ºÅ
x300048_g_scriptId = 300048
x300048_g_ItemId = 30008017

x300048_g_BuffPalyer_25 = 60
x300048_g_BuffAll_15 = 62
x300048_g_BuffPet_25 = 61
x300048_g_BuffPet_2 = 53

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300048_OnDefaultEvent( sceneId, selfId, nItemIndex )

	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300048_g_BuffPalyer_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Trên ngß¶i các hÕ ğã t°n tÕi th¶i gian nhân ğôi kinh nghi®m quá cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300048_g_BuffAll_15) == 1   then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x300048_g_scriptId);
			UICommand_AddInt(sceneId,nItemIndex)
			UICommand_AddString(sceneId,"EatMe");
			UICommand_AddString(sceneId,"Trên ngß¶i các hÕ ğã t°n tÕi th¶i gian nhân ğôi kinh nghi®m, mu¯n xác nh§n sØ døng chång?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)

		return
	end
	
	x300048_UseItem( sceneId, selfId, nItemIndex)

end

function x300048_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300048_EatMe( sceneId, selfId, nItemIndex)
	x300048_UseItem( sceneId, selfId, nItemIndex)
end


--**********************************
-- 
--**********************************
function x300048_UseItem( sceneId, selfId, nItemIndex)
	-- ÏÈ¼ì²âÕâ¸ö nItemIndex µÄÎïÆ·ÊÇ²»ÊÇºÍµ±Ç°µÄ¶ÔÓ¦£¬
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300048_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m b¸ höng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--1£¬¿´Íæ¼ÒÊÇ²»ÊÇµ±Ç°µÄÉíÉÏµÄË«±¶¾­ÑéÊ±¼äÊÇ¶àÉÙ£¬Èç¹û´ïµ½ÉÏÏŞ£¬¾Í²»ÄÜÊ¹ÓÃ
	local nCurHaveTime = DEGetMoneyTime(sceneId, selfId)
	
	if nCurHaveTime >= 95*60*60   then
		BeginEvent(sceneId)
			AddText(sceneId,"Thiên Linh Ğan cao c¤p mà các hÕ sØ døng ğ¬ thu ğßşc th¶i gian nhân ğôi kinh nghi®m ğã ğÕt mÑc cñc hÕn.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ·ûºÏÊ¹ÓÃÕâ¸öÎïÆ·µÄÌõ¼ş£¬
	local ret = EraseItem(sceneId, selfId, nItemIndex)
	
	-- ÏÖÔÚÊ±¼ä
	local nCurTime = LuaFnGetCurrentTime()

	if ret == 1    then
		DESetMoneyTime(sceneId, selfId, nCurHaveTime + 3600*5 )
		
		-- Èç¹ûÍæ¼Òµ±Ç°µÄË«±¶¾­ÑéÊ±¼äÊÇ±»¶³½áµÄ£¬¸øÍæ¼ÒÒ»¸öÌáÊ¾
		if 1 == DEIsLock(sceneId, selfId)  then
			DESetLock( sceneId, selfId, 0 )
			BeginEvent(sceneId)
				AddText(sceneId,"Th¶i gian nhân ğôi kinh nghi®m mà các hÕ ğóng bång ğã ğßşc giäi ğông, và ğßşc tång thêm 5 gi¶ th¶i gian nhân ğôi kinh nghi®m.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ tång thêm 5 gi¶ th¶i gian nhân ğôi kinh nghi®m.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m không th¬ sØ døng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
	
	-- Í¬²½Êı¾İµ½¿Í»§¶Ë
	SendDoubleExpToClient(sceneId,selfId)
	
end

