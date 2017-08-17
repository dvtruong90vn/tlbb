--Éú³¤ ði¬m
--¶ÔÓ¦Éú»î¼¼ÄÜ: ²ÉÒ©	²É¿ó¼¼ÄÜtoÕ ðµ ±àºÅ8
--²ÔÊõ
--½Å±¾ºÅ710514
--²ÔÊõ1	0.6		2	0.3		3	0.1		Ð«×Ó1	0.12	2	0.06	3	0.02
--µÈc¤p1

--Ã¿´Î´ò¿ª±Ø¶¨ ðÕt ðßþctoÕ ðµ ²úÆ·
x710514_g_MainItemId = 20101012
--¿ÉÄÜ ði¬mµ½toÕ ðµ ²úÆ·
x710514_g_SubItemId = 20304009
--C¥n ¼¼ÄÜId
x710514_g_AbilityId = 8
--C¥n ¼¼ÄÜµÈc¤p
x710514_g_AbilityLevel = 5


--Éú³Éº¯Êý¿ªÊ¼************************************************************************
--Ã¿cáiItemBoxÖÐ×î¶à10cáiÎïÆ·
function 		x710514_OnCreate(sceneId,growPointType,x,y)
	--·ÅÈëItemBoxÍ¬Ê±·ÅÈëmµt cáiÎïÆ·
	targetId  = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,1,x710514_g_MainItemId)	--Ã¿cáiÉú³¤ ði¬m×îÉÙÄÜ ði¬mµ½mµt cáiÎïÆ·,ÕâÀïÖ±½Ó·ÅÈëitemboxÖÐmµt cái
	-- ðÕt ðßþc1~100toÕ ðµ Ëæ»úÊý,ÓÃÀ´·ÅÈëÖ÷²úÆ·ºÍ¸±²úÆ·
	--Ö÷²úÆ·1~60²»·Å,61~90·Å1cái,91~100·Å2cái
	--¸±²úÆ·1~12·Å1cái,13~18·Å2cái,19~20·Å3cái
	local ItemCount = random(1,100)
	if ItemCount >= 61 and ItemCount <= 90 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x710514_g_MainItemId)
	elseif ItemCount >= 91 and ItemCount <= 100 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,2,x710514_g_MainItemId,x710514_g_MainItemId)
	end
	--·ÅÈë´ÎÒª²úÆ·
	if ItemCount >= 1 and ItemCount <= 12 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x710514_g_SubItemId)
	elseif ItemCount >= 13 and ItemCount <= 18 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,2,x710514_g_SubItemId,x710514_g_SubItemId)
	elseif ItemCount >= 19 and ItemCount <= 20 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,3,x710514_g_SubItemId,x710514_g_SubItemId,x710514_g_SubItemId)
	end
end
--Éú³Éº¯Êý½áÊø**********************************************************************


--´ò¿ªÇ°º¯Êý¿ªÊ¼&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
function	 x710514_OnOpen(sceneId,selfId,targetId)
--Tr· v«ÀàÐÍ
-- 0 ±íÊ¾´ò¿ª³É¹¦
	ABilityID		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,ABilityID)
	res = x710514_OpenCheck(sceneId,selfId,ABilityID,AbilityLevel)
	return res
	end
--´ò¿ªÇ°º¯Êý½áÊø&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


--»ØÊÕº¯Êý¿ªÊ¼########################################################################
function	 x710514_OnRecycle(sceneId,selfId,targetId)
	-- Ôö¼ÓÊìÁ·¶È
		ABilityID	=	GetItemBoxRequireAbilityID(sceneId,targetId)
	CallScriptFunction(ABILITYLOGIC_ID, "GainExperience", sceneId, selfId, ABilityID, x710514_g_AbilityLevel)
		--Tr· v«1,Éú³¤ ði¬m»ØÊÕ
		return 1
end
--»ØÊÕº¯Êý½áÊø########################################################################



--´ò¿ªºóº¯Êý¿ªÊ¼@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x710514_OnProcOver( sceneId, selfId, targetId )
	local ABilityID = GetItemBoxRequireAbilityID( sceneId, targetId )
	CallScriptFunction( ABILITYLOGIC_ID, "EnergyCostCaiJi", sceneId, selfId, ABilityID, x710514_g_AbilityLevel )
	return 0
end
--´ò¿ªºóº¯Êý½áÊø@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x710514_OpenCheck(sceneId,selfId,AbilityId,AbilityLevel)
	--¼ì²éÉú»î¼¼ÄÜµÈc¤p
	if AbilityLevel<x710514_g_AbilityLevel then
		return OR_NO_LEVEL
	end
	--¼ì²éTinhÁ¦
	if GetHumanEnergy(sceneId,selfId)< (floor(x710514_g_AbilityLevel * 1.5 +2) * 2) then
		return OR_NOT_ENOUGH_ENERGY
	end
	return OR_OK
end
