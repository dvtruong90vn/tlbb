-- ÈËÎï2.5¾­ÑéÊ±¼äÒ©Ë®

--½Å±¾ºÅ
x300046_g_scriptId = 300046
x300046_g_ItemId = 30008014
x300046_g_BuffId = 60

x300046_g_BuffPalyer_25 = 60
x300046_g_BuffAll_15 = 62
x300046_g_BuffPet_25 = 61
x300046_g_BuffPet_2 = 53

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300046_OnDefaultEvent( sceneId, selfId, nItemIndex )

	-- Èç¹ûÓÐ×Ô¼º£¬¾Í²»ÈÃÔÙ³Ô
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300046_g_BuffPalyer_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðang sØ døng dßþc li®u nhân ðôi kinh nghi®m, vui lòng sau khi m¤t hi®u quä hãy sØ døng tiªp.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- Èç¹ûÍæ¼ÒÉíÉÏÓÐ Ë«±¶¾­ÑéÊ±¼ä  £¬ÌáÊ¾Íæ¼ÒÒª²»Òª³Ô
	local nCurHaveTime = DEGetMoneyTime(sceneId, selfId)
	if nCurHaveTime > 0  and  DEIsLock(sceneId, selfId)~=1  then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x300046_g_scriptId);
			UICommand_AddInt(sceneId,nItemIndex)
			UICommand_AddString(sceneId,"EatMe");
			UICommand_AddString(sceneId,"Trên ngß¶i các hÕ ðã t°n tÕi th¶i gian nhân ðôi kinh nghi®m, mu¯n xác nh§n sØ døng chång?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300046_g_BuffAll_15) == 1   then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x300046_g_scriptId);
			UICommand_AddInt(sceneId,nItemIndex)
			UICommand_AddString(sceneId,"EatMe");
			UICommand_AddString(sceneId,"Trên ngß¶i các hÕ ðã t°n tÕi th¶i gian nhân ðôi kinh nghi®m, mu¯n xác nh§n thay ð±i chång?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	x300046_UseItem( sceneId, selfId, nItemIndex)
end

function x300046_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300046_EatMe( sceneId, selfId, nItemIndex)
	x300046_UseItem( sceneId, selfId, nItemIndex)
end

--**********************************
-- 
--**********************************
function x300046_UseItem( sceneId, selfId, nItemIndex)
	-- ÏÈ¼ì²âÕâ¸ö nItemIndex µÄÎïÆ·ÊÇ²»ÊÇºÍµ±Ç°µÄ¶ÔÓ¦£¬
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300046_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m ðã b¸ höng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ¿ÛÒ»¸öÒ©
	local ret = EraseItem(sceneId, selfId, nItemIndex)

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300046_g_BuffId, 100 )
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ tång 2.5 kinh nghi®m nhân v§t trong 1 gi¶.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m không th¬ sØ døng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end

