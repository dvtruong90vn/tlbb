-- Ë«±¶¾­ÑéÊ±¼äÒ©Ë®
-- ÏûºÄÒ»¸öÒ©Ë®£¬

--½Å±¾ºÅ
x300039_g_scriptId = 300039
x300039_g_ItemId = 30008002
x300039_g_ItemId_1 = 30008027
x300039_g_ItemId_2 = 30505214

x300039_g_BuffPalyer_25 = 60
x300039_g_BuffAll_15 = 62
x300039_g_BuffPet_25 = 61
x300039_g_BuffPet_2 = 53

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300039_OnDefaultEvent( sceneId, selfId, nItemIndex)

	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300039_g_BuffPalyer_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Trên ngß¶i các hÕ ğã t°n tÕi th¶i gian nhân ğôi kinh nghi®m quá cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300039_g_BuffAll_15) == 1   then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x300039_g_scriptId);
			UICommand_AddInt(sceneId,nItemIndex)
			UICommand_AddString(sceneId,"EatMe");
			UICommand_AddString(sceneId,"Trên ngß¶i các hÕ ğã t°n tÕi th¶i gian nhân ğôi kinh nghi®m, mu¯n xác nh§n sØ døng chång?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)

		return
	end
	
	x300039_UseItem( sceneId, selfId, nItemIndex)
	
end

function x300039_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300039_EatMe( sceneId, selfId, nItemIndex)
	x300039_UseItem( sceneId, selfId, nItemIndex)
end

--**********************************
-- 
--**********************************
function x300039_UseItem( sceneId, selfId, nItemIndex)
	-- ÏÈ¼ì²âÕâ¸ö nItemIndex µÄÎïÆ·ÊÇ²»ÊÇºÍµ±Ç°µÄ¶ÔÓ¦£¬
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nItemIndex)
	if nItemId ~= x300039_g_ItemId and nItemId ~= x300039_g_ItemId_1 and nItemId ~= x300039_g_ItemId_2 then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m b¸ l²i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--1£¬¿´Íæ¼ÒÊÇ²»ÊÇµ±Ç°µÄÉíÉÏµÄË«±¶¾­ÑéÊ±¼äÊÇ¶àÉÙ£¬Èç¹û´ïµ½ÉÏÏŞ£¬¾Í²»ÄÜÊ¹ÓÃ
	local nCurHaveTime = DEGetMoneyTime(sceneId, selfId)
	
	if nCurHaveTime >= 99*60*60   then
		BeginEvent(sceneId)
			AddText(sceneId,"Trß¾c m¡t, th¶i gian kinh nghi®m g¤p ğôi mà các hÕ sØ døng Thiên linh ğan có ğßşc ğã ğªn mÑc gi¾i hÕn.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--·ûºÏÊ¹ÓÃÕâ¸öÎïÆ·µÄÌõ¼ş£¬
	local ret = EraseItem(sceneId, selfId, nItemIndex)
		
	-- ÏÖÔÚÊ±¼ä
	local nCurTime = LuaFnGetCurrentTime()

	if ret == 1    then
		DESetMoneyTime(sceneId, selfId, nCurHaveTime + 3600 )
		
		-- Èç¹ûÍæ¼Òµ±Ç°µÄË«±¶¾­ÑéÊ±¼äÊÇ±»¶³½áµÄ£¬¸øÍæ¼ÒÒ»¸öÌáÊ¾
		if 1 == DEIsLock(sceneId, selfId)  then
			DESetLock( sceneId, selfId, 0 )
			BeginEvent(sceneId)
				AddText(sceneId,"Th¶i gian nhân ğôi kinh nghi®m mà các hÕ ğóng bång ğã ğßşc giäi ğông, và ğßşc tång thêm 1 gi¶ th¶i gian nhân ğôi kinh nghi®m.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
		else
			BeginEvent(sceneId)
				AddText(sceneId,"SØ døng nhân ğôi kinh nghi®m trong 1 gi¶.")
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

