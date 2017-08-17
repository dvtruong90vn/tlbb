--Éú³¤ ği¬m
--¶ÔÓ¦Éú»î¼¼ÄÜ: µöÓã	µöÓã¼¼ÄÜtoÕ ğµ ±àºÅ9
--Çïµ¶Óã
--½Å±¾ºÅ712018
--Çïµ¶Óã100%
--µÈc¤p1

--Ã¿´Î´ò¿ª±Ø¶¨ ğÕt ğßşctoÕ ğµ ²úÆ·
x712018_g_MainItemId = 20102018
--¿ÉÄÜ ği¬mµ½toÕ ğµ ²úÆ·
--g_SubItemId = 20304005
--C¥n ¼¼ÄÜId
x712018_g_AbilityId = 9
--C¥n ¼¼ÄÜµÈc¤p
x712018_g_AbilityLevel = 6


function 	x712018_OnCreate(sceneId,growPointType,x,y)
	ItemCount = 0-- ÎïÆ·ÊıÁ¿
	ItemBoxId = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,ItemCount)	--º¯Êıµ÷ÓÃ
end

function	 x712018_OnOpen(sceneId,selfId,targetId)
	--¼ì²éµöÓã¼¼ÄÜµÈc¤p
	AbilityId		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,AbilityId)
	if AbilityLevel<x712018_g_AbilityLevel then
		return OR_NO_LEVEL
	end

	-- ğÕt ğßşcËæ»úÊı,ÉèÖÃmµt ´Îµöµ½ÓãtoÕ ğµ Ê±¼ä
	x712018_g_FishTime = random(80000)+20000	-- ğÕt ğßşcmµt cái20-100 giâyÖ®¼ätoÕ ğµ Ëæ»úÊı
	--x712018_g_FishTime = random(8000)+2000	-- ğÕt ğßşcmµt cái2-10 giâyÖ®¼ätoÕ ğµ Ëæ»úÊı
	SetAbilityOperaTime(sceneId,selfId,x712018_g_FishTime)	--ÉèÖÃmµt ´Îµöµ½ÓãtoÕ ğµ Ê±¼ä
	--SetAbilityOperaRobotTime(sceneId, selfId,g_totaltime)	--°ÑÀÛ¼ÆÊ±¼ä¸¶¸ø...
	
	return OR_OK

end

function	x712018_OnProcOver(sceneId,selfId,targetId)
   
	ret_1 = TryRecieveItem(sceneId,selfId,x712018_g_MainItemId,QUALITY_MUST_BE_CHANGE)
	if ret_1 > 0 then					-->0±íÊ¾ÎïÆ·³É¹¦·ÅÈë±³°üÖĞ
		Msg2Player(sceneId,selfId,"Äãµöµ½mµt ÌõÇïµ¶Óã.",MSG2PLAYER_PARA)
		-- Ôö¼ÓÊìÁ·¶È
		ABilityID	=	GetItemBoxRequireAbilityID(sceneId,targetId)
		CallScriptFunction(ABILITYLOGIC_ID, "GainExperience", sceneId, selfId, ABilityID, x712018_g_AbilityLevel)
	elseif ret_1 == -1 then
		Msg2Player(sceneId,selfId,"±³°üÒÑÂú",MSG2PLAYER_PARA)
	end
	return 0
end
