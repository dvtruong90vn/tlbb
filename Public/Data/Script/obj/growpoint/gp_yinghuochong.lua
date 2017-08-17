--Éú³¤ ği¬m
--Ó©»ğ³æ
--½Å±¾ºÅ712527
--Ë®¾§¿óÊ¯1	0.6		2	0.3		3	0.1		ğ©Ê¯1%
--ÒÔ20%¸ÅÂÊ ği¬mµ½¸±²úÆ·20103019,20103031,20103043,20103055 ÖĞtoÕ ğµ mµt ÖÖ,ÊıÁ¿1	0.6		2	0.3		3	0.1
--µÈc¤p1

--Ã¿´Î´ò¿ª±Ø¶¨ ğÕt ğßşctoÕ ğµ ²úÆ·
x712527_g_MainItemId = 30501104
--¿ÉÄÜ ği¬mµ½toÕ ğµ ²úÆ·
x712527_g_SubItemId = 30501105
--¸±²úÆ·
x712527_g_Byproduct = {20103019,20103031,20103043,20103055}
--C¥n ¼¼ÄÜId
x712527_g_AbilityId = 7
--C¥n ¼¼ÄÜµÈc¤p
x712527_g_AbilityLevel = 0


--Éú³Éº¯Êı¿ªÊ¼************************************************************************
--Ã¿cáiItemBoxÖĞ×î¶à10cáiÎïÆ·
function 		x712527_OnCreate(sceneId,growPointType,x,y)
	--·ÅÈëItemBoxÍ¬Ê±·ÅÈëmµt cáiÎïÆ·
	targetId  = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,1,x712527_g_MainItemId)	--Ã¿cáiÉú³¤ ği¬m×îÉÙÄÜ ği¬mµ½mµt cáiÎïÆ·,ÕâÀïÖ±½Ó·ÅÈëitemboxÖĞmµt cái
	-- ğÕt ğßşc1~100toÕ ğµ Ëæ»úÊı,ÓÃÀ´·ÅÈëÖ÷²úÆ·ºÍ¸±²úÆ·ÒÔ¼°´ÎÒª²úÆ·(±¦Ê¯)
	--Ö÷²úÆ·1~60²»·Å,61~90·Å1cái,91~100·Å2cái
	--¸±²úÆ·1~12·Å1cái,13~18·Å2cái,19~20·Å3cái
	--´ÎÒª²úÆ·(±¦Ê¯)1·Å1cái
	local ItemCount = random(1,4);
	for n = 1, ItemCount do
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x712527_g_MainItemId)
	end
	
	--·ÅÈë´ÎÒª²úÆ·
	if random(1,9) == 1 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x712527_g_SubItemId)
	end
end
--Éú³Éº¯Êı½áÊø**********************************************************************


--´ò¿ªÇ°º¯Êı¿ªÊ¼&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
function	 x712527_OnOpen(sceneId,selfId,targetId)
--Tr· v«ÀàĞÍ
-- 0 ±íÊ¾´ò¿ª³É¹¦
	ABilityID		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,ABilityID)
	res = x712527_OpenCheck(sceneId,selfId,ABilityID,AbilityLevel)
	return res
	end
--´ò¿ªÇ°º¯Êı½áÊø&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


--»ØÊÕº¯Êı¿ªÊ¼########################################################################
function	 x712527_OnRecycle(sceneId,selfId,targetId)
	-- Ôö¼ÓÊìÁ·¶È
		ABilityID	=	GetItemBoxRequireAbilityID(sceneId,targetId)
	CallScriptFunction(ABILITYLOGIC_ID, "GainExperience", sceneId, selfId, ABilityID, x712527_g_AbilityLevel)
		--Tr· v«1,Éú³¤ ği¬m»ØÊÕ
		return 1
end
--»ØÊÕº¯Êı½áÊø########################################################################



--´ò¿ªºóº¯Êı¿ªÊ¼@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x712527_OnProcOver( sceneId, selfId, targetId )
	--local ABilityID = GetItemBoxRequireAbilityID( sceneId, targetId )
	--CallScriptFunction( ABILITYLOGIC_ID, "EnergyCostCaiJi", sceneId, selfId, ABilityID, x712527_g_AbilityLevel )
	return 0
end
--´ò¿ªºóº¯Êı½áÊø@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x712527_OpenCheck(sceneId,selfId,AbilityId,AbilityLevel)
	--¼ì²éÉú»î¼¼ÄÜµÈc¤p
	if AbilityLevel<x712527_g_AbilityLevel then
		return OR_NO_LEVEL
	end
	--¼ì²éTinhÁ¦
	--if GetHumanEnergy(sceneId,selfId)< (floor(x712527_g_AbilityLevel * 1.5 +2) * 2) then
	--	return OR_NOT_ENOUGH_ENERGY
	--end
	return OR_OK
end

--mµt ´Î´´½¨¶àcái±¦ÏätoÕ ğµ Íê³Éº¯Êı¿ªÊ¼****************************************************
function x712527_OnTickCreateFinish( sceneId, growPointType, tickCount )
	--if(strlen(x712508_g_TickCreate_Msg) > 0) then
	--	--2006-8-22 14:37 µÈ´ıÏş½¡toÕ ğµ server¶Ô»°Æ½Ì¨
	--	print( sceneId .. " Trß¶ng cänh s¯ "..x712508_g_TickCreate_Msg)
	--end
end
--mµt ´Î´´½¨¶àcái±¦ÏätoÕ ğµ Íê³Éº¯Êı½áÊø****************************************************
