-- ±¦Ê¯ÏâÇ¶

-- ½Å±¾ºÅ
x701614_g_scriptId = 701614

-- Ó²ÐÔÉè¶¨µÄ×°±¸×î´ó¿ÉÏâÇ¶±¦Ê¯Êý
x701614_g_MaxEquipGemCount = 3

-- ×°±¸ÔÊÐíÏâÇ¶µÄ±¦Ê¯ÀàÐÍ±í
x701614_g_EquipGemTable = {}
x701614_g_EquipGemTable[HEQUIP_WEAPON] = { 1, 2, 3, 4, 21 }
x701614_g_EquipGemTable[HEQUIP_CAP] = { 11, 12, 13, 14 }
x701614_g_EquipGemTable[HEQUIP_ARMOR] = { 11, 12, 13, 14 }
x701614_g_EquipGemTable[HEQUIP_CUFF] = { 11, 12, 13, 14 }
x701614_g_EquipGemTable[HEQUIP_BOOT] = { 11, 12, 13, 14 }
x701614_g_EquipGemTable[HEQUIP_SASH] = { 11, 12, 13, 14 }
x701614_g_EquipGemTable[HEQUIP_RING] = { 1, 2, 3, 4, 21 }
x701614_g_EquipGemTable[HEQUIP_NECKLACE] = { 1, 2, 3, 4, 11, 12, 13, 14, 21 }
x701614_g_EquipGemTable[HEQUIP_RING_2] = { 1, 2, 3, 4, 21 }
x701614_g_EquipGemTable[HEQUIP_CHARM] = { 1, 2, 3, 4, 21 }
x701614_g_EquipGemTable[HEQUIP_CHARM_2] = { 1, 2, 3, 4, 21 }
x701614_g_EquipGemTable[HEQUIP_WRIST] = {1, 2, 3, 4, 21  }
x701614_g_EquipGemTable[HEQUIP_SHOULDER] = { 11, 12, 13, 14 }
x701614_g_EquipGemTable[HEQUIP_DARK] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
x701614_g_EquipGemTable[HEQUIP_WUHUN] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
x701614_g_EquipGemTable[HEQUIP_DRESS] = { 13, 31, 32, 33 }
x701614_g_EquipGemTable[HEQUIP_RIDER] = { 1, 2, 3, 4, 21 }

x701614_g_EquipGemTable[HEQUIP_BAG] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
x701614_g_EquipGemTable[HEQUIP_BOX] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }

-- ÏâÇ¶²»Í¬µÈ¼¶±¦Ê¯µÄ½ðÇ®ÏûºÄ±í
x701614_g_EquipGemCost = {}
x701614_g_EquipGemCost[1] = 5000
x701614_g_EquipGemCost[2] = 6000
x701614_g_EquipGemCost[3] = 7000
x701614_g_EquipGemCost[4] = 8000
x701614_g_EquipGemCost[5] = 9000
x701614_g_EquipGemCost[6] = 10000
x701614_g_EquipGemCost[7] = 11000
x701614_g_EquipGemCost[8] = 12000
x701614_g_EquipGemCost[9] = 13000

-- ±¦Ê¯ÏâÇ¶·û±í
x701614_g_AssisMat = { { idx = 30900009, odds = 50 }, { idx = 30900010, odds = 100 } }

-- ±¦Ê¯Ç¿»¯·û
x701614_g_FastenMat = 30900011

x701614_GemEmbed_four_ID = {
														50113004,50213004,50313004,50413004,50513004,50613004,50713004,50813004,50913004,50113006,
														50213006,50313006,50413006,50513006,50613006,50713006,50813006,50913006
													}		

--**********************************************************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************************************************
function x701614_OnDefaultEvent( sceneId, selfId, targetId )
end

--**********************************************************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************************************************
function x701614_OnEnumerate( sceneId, selfId, targetId )
end

--**********************************************************************
-- ÅÐ¶ÏÊÇ·ñ±¦Ê¯
--**********************************************************************
function x701614_IsGem( itemIndex )
	if floor( itemIndex / 10000000 ) == 5 then
		return 1
	end

	return 0
end

--**********************************************************************
-- ½øÐÐ±¦Ê¯ÏâÇ¶
-- ³ÌÐòÖÐµ÷ÓÃ
--**********************************************************************
function x701614_GemEmbed( sceneId, selfId, GemBagIndex, EquipBagIndex, MatBagIndex1, MatBagIndex2 )
	local gemIdx, equipIdx, matIdx1, matIdx2 = -1, -1, -1, -1
	local odds = 25														-- ³É¹¦ÂÊ
	local szTransferItem = ""
	local	GemIsBind = 0;
	local EquipIsBind = 0;
	local CharmIsBind = 0;
	local OddsIsBind = 0;

	
	--!!
	if(LuaFnGetItemBindStatus( sceneId, selfId, GemBagIndex ) == 1) then
		GemIsBind = 1;
	end
	
	local itemTableIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, EquipBagIndex )
	-- ñÒÉÙÎ¢£¬2008.7.1¡£ÖØÂ¥½ä¡¢ÖØÂ¥ÓñµÄ»úÖÆÐÞ¸Ä£º1¡¢¿ÉÒÔ´ò¿×£»2¡¢¿ÉÒÔÏâÇ¶±¦Ê¯£¬µ«Ö»ÄÜÏâÇ¶²»°ó¶¨µÄ±¦Ê¯
	if(GemIsBind == 1) then
	  	if(itemTableIndex == 10422016 or itemTableIndex == 10423024) then
	  		return OR_STUFF_LACK
	  	end
	end
	
	if(LuaFnGetItemBindStatus( sceneId, selfId, EquipBagIndex ) == 1) then
		EquipIsBind = 1;
	end
  
  if MatBagIndex1 ~= -1 then
     if(LuaFnGetItemBindStatus( sceneId, selfId, MatBagIndex1 ) == 1) then
		    CharmIsBind = 1;
	   end
	end
	
	if MatBagIndex2 ~= -1 then
	   if(LuaFnGetItemBindStatus( sceneId, selfId, MatBagIndex2 ) == 1) then
		    OddsIsBind = 1;
		 end
	end
	
	
	-- ÅÐ¶Ï±¦Ê¯ºÏ·¨ÐÔ
	if LuaFnIsItemAvailable( sceneId, selfId, GemBagIndex ) < 1 then	-- Ê¹ÓÃÓÐÎÊÌâµÄÎïÆ·ÔòÍË³öÁ÷³Ì
		return OR_STUFF_LACK
	else
		gemIdx = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemBagIndex )
		szTransferItem = GetBagItemTransfer(sceneId,selfId,GemBagIndex)
		if x701614_IsGem( gemIdx ) == 0 then
			return OR_STUFF_LACK
		end
	end

	-- ÅÐ¶Ï×°±¸ºÏ·¨ÐÔ
	local equipType = LuaFnGetBagEquipType( sceneId, selfId, EquipBagIndex )
	if LuaFnIsItemLocked( sceneId, selfId, EquipBagIndex ) ~= 0
	or equipType == -1 then												-- Ê¹ÓÃÓÐÎÊÌâµÄÎïÆ·ÔòÍË³öÁ÷³Ì
		return OR_STUFF_LACK
	else
		equipIdx = LuaFnGetItemTableIndexByIndex( sceneId, selfId, EquipBagIndex )
	end
	
	-- ÅÐ¶ÏÊÇ·ñ»¹¿ÉÒÔÏâÇ¶¸ü¶à±¦Ê¯
	local equipMaxGemCount = GetBagGemCount( sceneId, selfId, EquipBagIndex )
	local equipEmbededGemCount = GetGemEmbededCount( sceneId, selfId, EquipBagIndex )

	--modi:lbyÊÇ·ñ¿ÉÒÔÏâÇ¶
	if equipMaxGemCount > equipEmbededGemCount and equipEmbededGemCount >= x701614_g_MaxEquipGemCount then

		return OR_GEM_EMBED_LACK
	end
	
	if equipMaxGemCount <= equipEmbededGemCount or equipEmbededGemCount >= x701614_g_MaxEquipGemCount then
		return OR_GEM_SLOT_LACK
	end

	
	
	-- ÅÐ¶ÏºÍ×°±¸ÉÏµÄÏÖÓÐ±¦Ê¯ÊÇ·ñÓÐ³åÍ»
	local gemEmbededIdx = -1
	local gemType = LuaFnGetItemType( gemIdx )
	for i = 0, equipMaxGemCount - 1 do
		gemEmbededIdx = GetGemEmbededType( sceneId, selfId, EquipBagIndex, i )
		if gemEmbededIdx ~= -1 then
			-- ¶Ô±ÈÁ½¿Å±¦Ê¯µÄÀàÐÍ£¨±¦Ê¯´óÀà£©
			if gemType == LuaFnGetItemType( gemEmbededIdx ) then
				return OR_GEM_CONFLICT
			end
		end
	end

	-- ÅÐ¶Ï±¦Ê¯ºÍ×°±¸µÄÆ¥ÅäÐÔ
	if not x701614_g_EquipGemTable[equipType] then
		return OR_GEM_NOT_FIT_EQUIP
	end

	local passFlag = 0
	for i, gt in x701614_g_EquipGemTable[equipType] do
		if gt == gemType then
			passFlag = 1
			break
		end
	end

	if passFlag == 0 then
		return OR_GEM_NOT_FIT_EQUIP
	end

	-- ÅÐ¶Ï¸¨Öú²ÄÁÏµÄÓÐÐ§ÐÔ
	if MatBagIndex1 == -1 or LuaFnIsItemAvailable( sceneId, selfId, MatBagIndex1 ) < 1 then
		MatBagIndex1 = -1
	else
		local findFlag = 0
		matIdx1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, MatBagIndex1 )
		for i, matInfo in x701614_g_AssisMat do
			if matInfo.idx == matIdx1 then
				findFlag = 1
				odds = matInfo.odds
				break
			end
		end

		if findFlag == 0 then													-- Õâ¸ö¶«Î÷²»ÊÇÏâÇ¶·û
			MatBagIndex1 = -1
			matIdx1 = -1
		end
	end
	
	-- ±ØÐëÏâÇ¶·û
	if MatBagIndex1 == -1 then
		return OR_GEM_NEED_STUFF
	end

	if MatBagIndex2 == -1 or LuaFnIsItemAvailable( sceneId, selfId, MatBagIndex2 ) < 1 then
		MatBagIndex2 = -1
	else
		matIdx2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, MatBagIndex2 )

		if matIdx2 ~= x701614_g_FastenMat then											-- Õâ¸ö¶«Î÷²»ÊÇÇ¿»¯·û
			MatBagIndex2 = -1
			matIdx2 = -1
		end
	end

	-- ÅÐ¶Ï½ðÇ®ÊýÁ¿
	local gemQual = GetItemQuality( gemIdx )
	local cost = x701614_g_EquipGemCost[gemQual]
	if not cost then
		cost = 0
	end

	-- µÚÒ»¸ö¿×Ô­¼Û£¬ÏâÇ¶µÚ¶þ¸ö¿×ÊÕ·Ñ¡Á2£¬ÏâÇ¶µÚÈý¸ö¿×ÊÕ·Ñ¡Á3
	cost = cost * ( equipEmbededGemCount + 1 )

	-- °´ÕÕ¹æÔò½øÐÐÏûºÄ
	-- ²»¹Ü³É¹¦Ê§°Ü¶¼ÏûºÄ½ðÇ®¡¢ÌØÊâ²ÄÁÏ
	if GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId) < cost then
		return OR_NOTENOUGH_MONEY
	end
	local ret1, ret2 = LuaFnCostMoneyWithPriority( sceneId, selfId, cost )
	if ret1 == -1 then
		return OR_NOTENOUGH_MONEY
	end

	if MatBagIndex1 > -1 then
		LuaFnEraseItem( sceneId, selfId, MatBagIndex1 )
	end

	if MatBagIndex2 > -1 then
		LuaFnEraseItem( sceneId, selfId, MatBagIndex2 )
	end

	-- Èç¹û³É¹¦
	local randRet = LuaFnGemEmbedRandom();
	if odds >= randRet then
		local ret = GemEnchasing( sceneId, selfId, GemBagIndex, EquipBagIndex )
		if ret and ret == 0 then
		
			if(GemIsBind == 1 or CharmIsBind == 1 or OddsIsBind == 1) then
				LuaFnItemBind( sceneId, selfId, EquipBagIndex);
			end
		
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
			LuaFnSendAbilitySuccessMsg( sceneId, selfId, 3, -1, equipIdx )

			local name = GetName( sceneId, selfId )

			local szTransferEquip = GetBagItemTransfer( sceneId, selfId, EquipBagIndex )
			local message = format("#W#{_INFOUSR%s}#H ðã mang #W#{_INFOMSG%s}#H tß½ng khäm 1 viên #W#{_INFOMSG%s}#H, làm cho nång lñc trang b¸ nâng cao!", name, szTransferEquip, szTransferItem);
			
			--¹«¸æ¾«¼ò£¬Ð¡ÓÚ3¼¶µÄ±¦Ê¯ÏâÇ¶²»·¢¹«¸æÏûÏ¢
			if (gemQual >= 3) then
				BroadMsgByChatPipe( sceneId, selfId, message, 4 )
			end

			--[ÖØ¸´ÌáÊ¾]
			--x701614_MsgBox( sceneId, selfId, "#Y¹§Ï²Äã£¬ÏâÇ¶³É¹¦£¡" )
			--Add Log
			LogInfo	= format( "[EMBED]: sceneId=%d, GUID=%0X, bSuc=%d, idOldGem=%d, idEqp=%d, idMat0=%d, idMat1=%d, idNewGem=%d",
				sceneId,
				LuaFnObjId2Guid( sceneId, selfId ),
				1,
				gemIdx,
				equipIdx,
				matIdx1,
				matIdx2,
				gemIdx )
			WriteDebugLog( sceneId, selfId, LogInfo )
		end
	-- Èç¹ûÊ§°Ü
	else
		-- Èç¹ûÍæ¼ÒÓÐ±¦Ê¯Ç¿»¯·û£¬ÏâÇ¶Ê§°ÜÖ®ºó±¦Ê¯½«»á½µM=1¼¶£¬Îª0¾ÍÏûÊ§¡£
		local qualDec			= 1
		local	gemIdx_new	= -1

		-- Èç¹ûÍæ¼ÒÃ»ÓÐ±¦Ê¯Ç¿»¯·û£¬ÄÇÃ´ÏâÇ¶Ê§°ÜÖ®ºó±¦Ê¯½«»á½µN=2¼¶£¬Îª0¾ÍÏûÊ§¡£
		if MatBagIndex2 == -1 then
			qualDec = qualDec + 1
		end

		LuaFnEraseItem( sceneId, selfId, GemBagIndex )

		if gemQual - qualDec > 0 then
			gemIdx_new = gemIdx - 100000 * qualDec
			local GemBagIndex = LuaFnTryRecieveItem( sceneId, selfId, gemIdx_new, QUALITY_MUST_BE_CHANGE )
			if(GemIsBind == 1 or CharmIsBind == 1 or OddsIsBind == 1) then
				LuaFnItemBind(sceneId, selfId, GemBagIndex)
			end
			x701614_MsgBox( sceneId, selfId, "#YTh§t không may, khäm nÕm th¤t bÕi bäo thÕch th¤t bÕi. ÐÆng c¤p "..qualDec.." giäm xu¯ng mµt b§t." )
		else
			x701614_MsgBox( sceneId, selfId, "#YTh§t không may, khäm nÕm th¤t bÕi, bäo thÕch ðã b¸ vÞ" )
		end
		--Add Log
		LogInfo	= format( "[EMBED]: sceneId=%d, GUID=%0X, bSuc=%d, idOldGem=%d, idEqp=%d, idMat0=%d, idMat1=%d, idNewGem=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),
			0,
			gemIdx,
			equipIdx,
			matIdx1,
			matIdx2,
			gemIdx_new )
		WriteDebugLog( sceneId, selfId, LogInfo )
		
		if(GemIsBind == 1 or CharmIsBind == 1 or OddsIsBind == 1) then
			LuaFnItemBind( sceneId, selfId, EquipBagIndex);
		end

		return OR_FAILURE
	end

	-- °´ÕÕ³É¹¦ÂÊ½øÐÐºÏ³É
	return OR_OK
end

--**********************************
--ÐÅÏ¢ÌáÊ¾
--**********************************
function x701614_MsgBox( sceneId, selfId, str )

	--ÐÑÄ¿ÌáÊ¾
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
	--ÆµµÀÌáÊ¾
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )

end


																						
--**********************************************************************
-- ½øÐÐµÚËÄ¸ö±¦Ê¯ÏâÇ¶
-- ³ÌÐòÖÐµ÷ÓÃ
--**********************************************************************
function x701614_GemEmbed_Four( sceneId, selfId, GemBagIndex, EquipBagIndex, MatBagIndex1, MatBagIndex2 )
	local gemIdx, equipIdx, matIdx1, matIdx2 = -1, -1, -1, -1
	local odds = 25														-- ³É¹¦ÂÊ
	local szTransferItem = ""
	local	GemIsBind = 0;
	local EquipIsBind = 0;
	local CharmIsBind = 0;
	local OddsIsBind = 0;
	local IsRedGem = 0;	
	--!!
	
	if(LuaFnGetItemBindStatus( sceneId, selfId, GemBagIndex ) == 1) then
		GemIsBind = 1;
	end
	
	local itemTableIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, EquipBagIndex )
	-- ñÒÉÙÎ¢£¬2008.7.1¡£ÖØÂ¥½ä¡¢ÖØÂ¥ÓñµÄ»úÖÆÐÞ¸Ä£º1¡¢¿ÉÒÔ´ò¿×£»2¡¢¿ÉÒÔÏâÇ¶±¦Ê¯£¬µ«Ö»ÄÜÏâÇ¶²»°ó¶¨µÄ±¦Ê¯
	if(GemIsBind == 1) then
	  	if(itemTableIndex == 10422016 or itemTableIndex == 10423024) then
	  		return OR_STUFF_LACK
	  	end
	end
	
	if(LuaFnGetItemBindStatus( sceneId, selfId, EquipBagIndex ) == 1) then
		EquipIsBind = 1;
	end
  
  if MatBagIndex1 ~= -1 then
     if(LuaFnGetItemBindStatus( sceneId, selfId, MatBagIndex1 ) == 1) then
		    CharmIsBind = 1;
	   end
	end
	
	if MatBagIndex2 ~= -1 then
	   if(LuaFnGetItemBindStatus( sceneId, selfId, MatBagIndex2 ) == 1) then
		    OddsIsBind = 1;
		 end
	end
	
	
	-- ÅÐ¶Ï±¦Ê¯ºÏ·¨ÐÔ
	if LuaFnIsItemAvailable( sceneId, selfId, GemBagIndex ) < 1 then	-- Ê¹ÓÃÓÐÎÊÌâµÄÎïÆ·ÔòÍË³öÁ÷³Ì
		return OR_STUFF_LACK
	else
		gemIdx = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemBagIndex )
		szTransferItem = GetBagItemTransfer(sceneId,selfId,GemBagIndex)
		
		if x701614_IsGem( gemIdx ) == 0 then
			return OR_STUFF_LACK
		end
		
	end

	-- ÅÐ¶Ï×°±¸ºÏ·¨ÐÔ
	local equipType = LuaFnGetBagEquipType( sceneId, selfId, EquipBagIndex )
	
	if LuaFnIsItemLocked( sceneId, selfId, EquipBagIndex ) ~= 0	or equipType == -1 then												-- Ê¹ÓÃÓÐÎÊÌâµÄÎïÆ·ÔòÍË³öÁ÷³Ì
		return OR_STUFF_LACK
	else
		equipIdx = LuaFnGetItemTableIndexByIndex( sceneId, selfId, EquipBagIndex )
	end
	
	-- ÅÐ¶ÏÊÇ·ñ»¹¿ÉÒÔÏâÇ¶¸ü¶à±¦Ê¯
	local equipMaxGemCount = GetBagGemCount( sceneId, selfId, EquipBagIndex )
	local equipEmbededGemCount = GetGemEmbededCount( sceneId, selfId, EquipBagIndex )


	if equipMaxGemCount < 4 then --´ò¿×Êý²»ÄÜÐ¡ÓÚ4¸ö
		return OR_GEM_NO_FOUR_SLOT
	end 
		
	if equipEmbededGemCount > 3 then --ÏâÇ¶±¦Ê¯²»ÄÜ´óÓÚ3
		return OR_GEM_ENCHASE_FOUR
	end
		
	if equipEmbededGemCount < 3 then --ÏâÇ¶±¦Ê¯²»ÄÜÐ¡ÓÚ3
		return OR_GEM_MUST_ENCHASE_THREE
	end
	

	
	-- Èç¹ûÊÇÑª¾«Ê¯»òÕßºì±¦Ê¯£¬Ôò·ÅÈëÊ§°Ü
	for i, Data in x701614_GemEmbed_four_ID do
		if x701614_GemEmbed_four_ID[i] == gemIdx then
				
			IsRedGem = 1
		end
	end
		 
	if IsRedGem == 1 then
	 	return OR_GEM_NOT_ENCHASE
	end
	 
	
	-- ÅÐ¶Ï±¦Ê¯ºÍ×°±¸µÄÆ¥ÅäÐÔ
	if not x701614_g_EquipGemTable[equipType] then
		return OR_GEM_NOT_FIT_EQUIP
	end

	
	local gemType = LuaFnGetItemType( gemIdx )
	
	local passFlag = 0
	for i, gt in x701614_g_EquipGemTable[equipType] do
		if gt == gemType then
			passFlag = 1
			break
		end
	end

	if passFlag == 0 then
		return OR_GEM_NOT_FIT_EQUIP
	end


	
	-- ÅÐ¶Ï¸¨Öú²ÄÁÏµÄÓÐÐ§ÐÔ
	if MatBagIndex1 == -1 or LuaFnIsItemAvailable( sceneId, selfId, MatBagIndex1 ) < 1 then
		MatBagIndex1 = -1
	else
		local findFlag = 0
		matIdx1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, MatBagIndex1 )
		for i, matInfo in x701614_g_AssisMat do
			if matInfo.idx == matIdx1 then
				findFlag = 1
				odds = matInfo.odds
				break
			end
		end

		if findFlag == 0 then													-- Õâ¸ö¶«Î÷²»ÊÇÏâÇ¶·û
			MatBagIndex1 = -1
			matIdx1 = -1
		end
	end
	
	-- ±ØÐëÏâÇ¶·û
	if MatBagIndex1 == -1 then
		return OR_GEM_NEED_STUFF
	end

	if MatBagIndex2 == -1 or LuaFnIsItemAvailable( sceneId, selfId, MatBagIndex2 ) < 1 then
		MatBagIndex2 = -1
	else
		matIdx2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, MatBagIndex2 )

		if matIdx2 ~= x701614_g_FastenMat then											-- Õâ¸ö¶«Î÷²»ÊÇÇ¿»¯·û
			MatBagIndex2 = -1
			matIdx2 = -1
		end
	end

	-- ÅÐ¶Ï½ðÇ®ÊýÁ¿
	local gemQual = GetItemQuality( gemIdx )
	local cost = x701614_g_EquipGemCost[gemQual]
	if not cost then
		cost = 0
	end

	-- µÚÒ»¸ö¿×Ô­¼Û£¬ÏâÇ¶µÚ¶þ¸ö¿×ÊÕ·Ñ¡Á2£¬ÏâÇ¶µÚÈý¸ö¿×ÊÕ·Ñ¡Á3
	cost = cost * ( equipEmbededGemCount + 1 )

	local PlayerMoney = GetMoney( sceneId, selfId ) +  GetMoneyJZ(sceneId, selfId)  --½»×ÓÆÕ¼° Vega
	if PlayerMoney < cost then
		return OR_NOTENOUGH_MONEY
	end
	-- °´ÕÕ¹æÔò½øÐÐÏûºÄ
	-- ²»¹Ü³É¹¦Ê§°Ü¶¼ÏûºÄ½ðÇ®¡¢ÌØÊâ²ÄÁÏ
	local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, cost )      --½»×ÓÆÕ¼° Vega
	if ret < 0 then
		return OR_NOTENOUGH_MONEY
	end

	if MatBagIndex1 > -1 then
		LuaFnEraseItem( sceneId, selfId, MatBagIndex1 )
	end

	if MatBagIndex2 > -1 then
		LuaFnEraseItem( sceneId, selfId, MatBagIndex2 )
	end

	-- Èç¹û³É¹¦
	local randRet = LuaFnGemEmbedRandom();
	if odds >= randRet then
		local ret = GemEnchasing( sceneId, selfId, GemBagIndex, EquipBagIndex )
		if ret and ret == 0 then
		
			if(GemIsBind == 1 or CharmIsBind == 1 or OddsIsBind == 1) then
				LuaFnItemBind( sceneId, selfId, EquipBagIndex);
			end
		
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
			LuaFnSendAbilitySuccessMsg( sceneId, selfId, 3, -1, equipIdx )

			local name = GetName( sceneId, selfId )

			local szTransferEquip = GetBagItemTransfer( sceneId, selfId, EquipBagIndex )
			local message = format("#W#{_INFOUSR%s}#H ðã mang #W#{_INFOMSG%s}#H tß½ng khäm 1 viên #W#{_INFOMSG%s}#H, làm cho nång lñc trang b¸ nâng cao.", name, szTransferEquip, szTransferItem);
			BroadMsgByChatPipe( sceneId, selfId, message, 4 )

			--[ÖØ¸´ÌáÊ¾]
			--x701614_MsgBox( sceneId, selfId, "#Y¹§Ï²Äã£¬ÏâÇ¶³É¹¦£¡" )
			--Add Log
			LogInfo	= format( "[EMBED]: sceneId=%d, GUID=%0X, bSuc=%d, idOldGem=%d, idEqp=%d, idMat0=%d, idMat1=%d, idNewGem=%d",
				sceneId,
				LuaFnObjId2Guid( sceneId, selfId ),
				1,
				gemIdx,
				equipIdx,
				matIdx1,
				matIdx2,
				gemIdx )
			WriteDebugLog( sceneId, selfId, LogInfo )
		end
	-- Èç¹ûÊ§°Ü
	else
		-- Èç¹ûÍæ¼ÒÓÐ±¦Ê¯Ç¿»¯·û£¬ÏâÇ¶Ê§°ÜÖ®ºó±¦Ê¯½«»á½µM=1¼¶£¬Îª0¾ÍÏûÊ§¡£
		local qualDec			= 1
		local	gemIdx_new	= -1

		-- Èç¹ûÍæ¼ÒÃ»ÓÐ±¦Ê¯Ç¿»¯·û£¬ÄÇÃ´ÏâÇ¶Ê§°ÜÖ®ºó±¦Ê¯½«»á½µN=2¼¶£¬Îª0¾ÍÏûÊ§¡£
		if MatBagIndex2 == -1 then
			qualDec = qualDec + 1
		end

		LuaFnEraseItem( sceneId, selfId, GemBagIndex )

		if gemQual - qualDec > 0 then
			gemIdx_new = gemIdx - 100000 * qualDec
			local GemBagIndex = LuaFnTryRecieveItem( sceneId, selfId, gemIdx_new, QUALITY_MUST_BE_CHANGE )
			if(GemIsBind == 1 or CharmIsBind == 1 or OddsIsBind == 1) then
				LuaFnItemBind(sceneId, selfId, GemBagIndex)
			end
			x701614_MsgBox( sceneId, selfId, "#YTh§t không may, khäm nÕm th¤t bÕi bäo thÕch th¤t bÕi. ÐÆng c¤p "..qualDec.." giäm xu¯ng mµt b§t." )
		else
			x701614_MsgBox( sceneId, selfId, "#YTh§t không may, khäm nÕm th¤t bÕi, bäo thÕch ðã b¸ vÞ" )
		end
		--Add Log
		LogInfo	= format( "[EMBED]: sceneId=%d, GUID=%0X, bSuc=%d, idOldGem=%d, idEqp=%d, idMat0=%d, idMat1=%d, idNewGem=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),
			0,
			gemIdx,
			equipIdx,
			matIdx1,
			matIdx2,
			gemIdx_new )
		WriteDebugLog( sceneId, selfId, LogInfo )
		
		if(GemIsBind == 1 or CharmIsBind == 1 or OddsIsBind == 1) then
			LuaFnItemBind( sceneId, selfId, EquipBagIndex);
		end

		return OR_FAILURE
	end

	-- °´ÕÕ³É¹¦ÂÊ½øÐÐºÏ³É
	return OR_OK
end
