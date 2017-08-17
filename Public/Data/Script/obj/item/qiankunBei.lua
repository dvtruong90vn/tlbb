-- 300057
-- ¸ÉÀ¤±­ Ê¹ÓÃ

--½Å±¾ºÅ
x300057_g_scriptId = 300057

x300057_g_ItemId = 30008033

x300057_g_BuffId = 8500
x300057_g_BuffId_1 = 57

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300057_OnDefaultEvent( sceneId, selfId, nItemIndex )

	-- Èç¹ûÉíÉÏÓÐ 8500 »òÕß 57 ºÅBUFF ¾Í²»ÄÜÔÙ³ÔÕâ¸öÒ©
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300057_g_BuffId) == 1 or
		 LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300057_g_BuffId_1) == 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"Chï có th¬ ðþi sau khi hi®u quä tñ ðµng nh£t v§t ph¦m m¤t m¾i có th¬ sØ døng.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	x300057_UseItem( sceneId, selfId, nItemIndex)
end

function x300057_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
-- 
--**********************************
function x300057_UseItem( sceneId, selfId, nItemIndex)
	
	-- ÏÈ¼ì²âÕâ¸ö nItemIndex µÄÎïÆ·ÊÇ²»ÊÇºÍµ±Ç°µÄ¶ÔÓ¦£¬
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nItemIndex)
	if nItemId ~= x300057_g_ItemId   then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m ðã b¸ höng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ¿ÛÒ»¸öÒ©
	local ret = EraseItem(sceneId, selfId, nItemIndex)

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300057_g_BuffId, 100 )
		--BeginEvent(sceneId)
		--	AddText(sceneId,"ÄúÔö¼ÓÁËÒ»¸öÐ¡Ê±µÄ³èÎïË«±¶¾­ÑéÊ±¼ä¡£")
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m không th¬ sØ døng.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end


