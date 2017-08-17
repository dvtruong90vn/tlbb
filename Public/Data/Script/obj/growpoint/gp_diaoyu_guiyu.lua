--Éú³¤ ği¬m
--¶ÔÓ¦Éú»î¼¼ÄÜ: µöÓã	µöÓã¼¼ÄÜtoÕ ğµ ±àºÅ9
--öÙÓã
--½Å±¾ºÅ712010
--öÙÓã100%
--µÈc¤p1

--Ã¿´Î´ò¿ª±Ø¶¨ ğÕt ğßşctoÕ ğµ ²úÆ·
x712010_g_MainItemId = 20102010
--¿ÉÄÜ ği¬mµ½toÕ ğµ ²úÆ·
--g_SubItemId = 20304005
--C¥n ¼¼ÄÜId
x712010_g_AbilityId = 9
--C¥n ¼¼ÄÜµÈc¤p
x712010_g_AbilityLevel = 10


function 	x712010_OnCreate(sceneId,growPointType,x,y)
	ItemCount = 0-- ÎïÆ·ÊıÁ¿
	ItemBoxId = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,ItemCount)	--º¯Êıµ÷ÓÃ
end

function	 x712010_OnOpen(sceneId,selfId,targetId)
	--¼ì²éµöÓã¼¼ÄÜµÈc¤p
	AbilityId		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,AbilityId)
	if AbilityLevel<x712010_g_AbilityLevel then
		return OR_NO_LEVEL
	end

	-- ğÕt ğßşcËæ»úÊı,ÉèÖÃmµt ´Îµöµ½ÓãtoÕ ğµ Ê±¼ä
	x712010_g_FishTime = random(80000)+20000	-- ğÕt ğßşcmµt cái20-100 giâyÖ®¼ätoÕ ğµ Ëæ»úÊı
	--x712010_g_FishTime = random(8000)+2000	-- ğÕt ğßşcmµt cái2-10 giâyÖ®¼ätoÕ ğµ Ëæ»úÊı
	SetAbilityOperaTime(sceneId,selfId,x712010_g_FishTime)	--ÉèÖÃmµt ´Îµöµ½ÓãtoÕ ğµ Ê±¼ä
	--SetAbilityOperaRobotTime(sceneId, selfId,g_totaltime)	--°ÑÀÛ¼ÆÊ±¼ä¸¶¸ø...
	
	return OR_OK

end

function	x712010_OnProcOver(sceneId,selfId,targetId)
   
	ret_1 = TryRecieveItem(sceneId,selfId,x712010_g_MainItemId,QUALITY_MUST_BE_CHANGE)
	if ret_1 > 0 then					-->0±íÊ¾ÎïÆ·³É¹¦·ÅÈë±³°üÖĞ
		Msg2Player(sceneId,selfId,"Äãµöµ½mµt ÌõöÙÓã.",MSG2PLAYER_PARA)
		-- Ôö¼ÓÊìÁ·¶È
		ABilityID	=	GetItemBoxRequireAbilityID(sceneId,targetId)
		CallScriptFunction(ABILITYLOGIC_ID, "GainExperience", sceneId, selfId, ABilityID, x712010_g_AbilityLevel)
	elseif ret_1 == -1 then
		Msg2Player(sceneId,selfId,"±³°üÒÑÂú",MSG2PLAYER_PARA)
	end
	return 0
end
