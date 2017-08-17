-- ³èÎïË«±¶¾­ÑéÊ±¼äÒ©Ë®
-- ÏûºÄÒ»¸öÒ©Ë®£¬Îª³èÎïÌá¹©Ò»¸öÐ¡Ê±Ë«±¶¾­ÑéÊ±¼ä

--½Å±¾ºÅ
x300040_g_scriptId = 300040
x300040_g_ItemId = 30008003
x300040_g_ItemId_1 = 30008028

x300040_g_BuffId = 53

x300040_g_BuffPalyer_25 = 60
x300040_g_BuffAll_15 = 62
x300040_g_BuffPet_25 = 61
x300040_g_BuffPet_2 = 53

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300040_OnDefaultEvent( sceneId, selfId, nItemIndex )

	-- Èç¹ûÉíÉÏÓÐ2.5µÄ£¬¾Í²»ÈÃ³Ô
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300040_g_BuffPet_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Trên ngß¶i các hÕ ðã t°n tÕi th¶i gian nhân ðôi kinh nghi®m quá cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ÓÐÏàÍ¬µÄ£¬Ò²²»ÈÃÔÙ³Ô
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300040_g_BuffPet_2) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðang sØ døng dßþc li®u nhân ðôi kinh nghi®m, vui lòng sau khi m¤t hi®u quä hãy sØ døng tiªp.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	x300040_UseItem( sceneId, selfId, nItemIndex)
end

function x300040_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300040_EatMe( sceneId, selfId, nItemIndex)
	x300040_UseItem( sceneId, selfId, nItemIndex)
end

--**********************************
-- 
--**********************************
function x300040_UseItem( sceneId, selfId, nItemIndex)
	
	-- ÏÈ¼ì²âÕâ¸ö nItemIndex µÄÎïÆ·ÊÇ²»ÊÇºÍµ±Ç°µÄ¶ÔÓ¦£¬
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nItemIndex)
	if nItemId ~= x300040_g_ItemId and nItemId ~= x300040_g_ItemId_1   then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m b¸ höng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ¿ÛÒ»¸öÒ©
	local ret = EraseItem(sceneId, selfId, nItemIndex)

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300040_g_BuffId, 100 )
		BeginEvent(sceneId)
			AddText(sceneId,"SØ døng nhân ðôi kinh nghi®m cho thú nuôi trong 1 gi¶.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m không th¬ sØ døng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end

