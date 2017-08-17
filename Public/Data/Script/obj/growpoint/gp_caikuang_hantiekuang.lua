--Éú³¤ ði¬m
--¶ÔÓ¦Éú»î¼¼ÄÜ: ²É¿ó	²É¿ó¼¼ÄÜtoÕ ðµ ±àºÅ7
--º®Ìú¿ó
--½Å±¾ºÅ710001
--º®Ìú¿óÊ¯1	0.6		2	0.3		3	0.1		ÂÌ±¦Ê¯1%
--ÒÔ20%¸ÅÂÊ ði¬mµ½¸±²úÆ·20103016,20103028,20103040,20103052 ÖÐtoÕ ðµ mµt ÖÖ,ÊýÁ¿1	0.6		2	0.3		3	0.1
--µÈc¤p1

--Ã¿´Î´ò¿ª±Ø¶¨ ðÕt ðßþctoÕ ðµ ²úÆ·
x710004_g_MainItemId = 20103004
--¿ÉÄÜ ði¬mµ½toÕ ðµ ²úÆ·
x710004_g_SubItemId = 50113003
--¸±²úÆ·
x710004_g_Byproduct = {20103016,20103028,20103040,20103052}
--C¥n ¼¼ÄÜId
x710004_g_AbilityId = 7
--C¥n ¼¼ÄÜµÈc¤p
x710004_g_AbilityLevel = 4


--Éú³Éº¯Êý¿ªÊ¼************************************************************************
--Ã¿cáiItemBoxÖÐ×î¶à10cáiÎïÆ·
function 		x710004_OnCreate(sceneId,growPointType,x,y)
	--·ÅÈëItemBoxÍ¬Ê±·ÅÈëmµt cáiÎïÆ·
	targetId  = ItemBoxEnterScene(x,y,growPointType,sceneId, QUALITY_MUST_BE_CHANGE, 1,x710004_g_MainItemId)	--Ã¿cáiÉú³¤ ði¬m×îÉÙÄÜ ði¬mµ½mµt cáiÎïÆ·,ÕâÀïÖ±½Ó·ÅÈëitemboxÖÐmµt cái
	-- ðÕt ðßþc1~100toÕ ðµ Ëæ»úÊý,ÓÃÀ´·ÅÈëÖ÷²úÆ·ºÍ¸±²úÆ·ÒÔ¼°´ÎÒª²úÆ·(±¦Ê¯)
	--Ö÷²úÆ·1~60²»·Å,61~90·Å1cái,91~100·Å2cái
	--¸±²úÆ·1~12·Å1cái,13~18·Å2cái,19~20·Å3cái
	--´ÎÒª²úÆ·(±¦Ê¯)1·Å1cái
	local ItemCount = random(1,100)
	if ItemCount >= 61 and ItemCount <= 90 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x710004_g_MainItemId)
	elseif ItemCount >= 91 and ItemCount <= 100 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,2,x710004_g_MainItemId,x710004_g_MainItemId)
	end
	--·ÅÈë´ÎÒª²úÆ·
	if ItemCount == 1 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x710004_g_SubItemId)
	end
	--·ÅÈë¸±²úÆ·
	if ItemCount >= 51 and ItemCount <= 70 then
		local ByproductId = random(1,4)
		if ItemCount >= 51 and ItemCount <= 62 then
			AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x710004_g_Byproduct[ByproductId])
		elseif ItemCount >= 63 and ItemCount <= 68 then
			AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,2,x710004_g_Byproduct[ByproductId],x710004_g_Byproduct[ByproductId])
		elseif ItemCount >= 69 and ItemCount <= 70 then
			AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,3,x710004_g_Byproduct[ByproductId],x710004_g_Byproduct[ByproductId],x710004_g_Byproduct[ByproductId])
		end
	end
end
--Éú³Éº¯Êý½áÊø**********************************************************************


--´ò¿ªÇ°º¯Êý¿ªÊ¼&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
function	 x710004_OnOpen(sceneId,selfId,targetId)
--Tr· v«ÀàÐÍ
-- 0 ±íÊ¾´ò¿ª³É¹¦
	ABilityID		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,ABilityID)
	res = x710004_OpenCheck(sceneId,selfId,ABilityID,AbilityLevel)
	return res
	end
--´ò¿ªÇ°º¯Êý½áÊø&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


--»ØÊÕº¯Êý¿ªÊ¼########################################################################
function	 x710004_OnRecycle(sceneId,selfId,targetId)
	-- Ôö¼ÓÊìÁ·¶È
		ABilityID	=	GetItemBoxRequireAbilityID(sceneId,targetId)
	CallScriptFunction(ABILITYLOGIC_ID, "GainExperience", sceneId, selfId, ABilityID, x710004_g_AbilityLevel)
		--Tr· v«1,Éú³¤ ði¬m»ØÊÕ
		return 1
end
--»ØÊÕº¯Êý½áÊø########################################################################



--´ò¿ªºóº¯Êý¿ªÊ¼@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x710004_OnProcOver( sceneId, selfId, targetId )
	local ABilityID = GetItemBoxRequireAbilityID( sceneId, targetId )
	CallScriptFunction( ABILITYLOGIC_ID, "EnergyCostCaiJi", sceneId, selfId, ABilityID, x710004_g_AbilityLevel )
	return 0
end
--´ò¿ªºóº¯Êý½áÊø@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x710004_OpenCheck(sceneId,selfId,AbilityId,AbilityLevel)
	--¼ì²éÉú»î¼¼ÄÜµÈc¤p
	if AbilityLevel<x710004_g_AbilityLevel then
		return OR_NO_LEVEL
	end
	--¼ì²éTinhÁ¦
	if GetHumanEnergy(sceneId,selfId)< (floor(x710004_g_AbilityLevel * 1.5 +2) * 2) then
		return OR_NOT_ENOUGH_ENERGY
	end
	return OR_OK
end
