-- Í¨ÓÃÉú»î¼¼ÄÜÂß¼­½Å±¾
-- ½Å±¾ºÅ
x701601_g_ScriptId = 701601

-- ×°±¸ÔÊÐíÏâÇ¶toÕ ðµ ±¦Ê¯ÀàÐÍ±í
x701601_g_EquipGemTable = {}

x701601_g_EquipGemCost = {}

x701601_g_EnergyCostTbl = {}
-- ²É¿ó
x701601_g_EnergyCostTbl[ABILITY_CAIKUANG] = {
	3,4,5,6,7,8,9,10,11,12,13,14
}

-- ²ÉÒ©
x701601_g_EnergyCostTbl[ABILITY_CAIYAO] = {
	3,4,5,6,7,8,9,10,11,12,13,14
}
-- ÖÖÖ²
x701601_g_EnergyCostTbl[ABILITY_ZHONGZHI] = {
	10,10,10,20,20,20,30,30,30,30,30,30

}

---------------------------------------------------------------------
---------------------------------------------------------------------


-- ¼ÆËã²úÆ·Æ·ÖÊ
function x701601_CalcQuality(sceneId, RecipeLevel, AbilityLevel, AbilityMaxLevel, ItemIndex)
	-- Ëæ»ú³ömµt cáiÊý [0, 49]
	--Quality = random(0, 49)
	--return Quality
	if IsEquipItem(ItemIndex) == 1 then
		local lEquipPoint = GetItemEquipPoint(ItemIndex)
		local	lEquipLevel = GeEquipReqLevel(ItemIndex)
		if(lEquipPoint == -1) then
			return random(0, 49)
		elseif 	lEquipPoint == HEQUIP_WEAPON then
			return (lEquipLevel/10)-1
		elseif 	lEquipPoint == HEQUIP_CAP then
			return 20+(lEquipLevel/10)-1
		elseif 	lEquipPoint == HEQUIP_ARMOR then
			return 10+(lEquipLevel/10)-1
		elseif 	lEquipPoint == HEQUIP_CUFF then
			return 40+(lEquipLevel/10)-1
		elseif 	lEquipPoint == HEQUIP_BOOT then
			return 30+(lEquipLevel/10)-1
		elseif 	lEquipPoint == HEQUIP_SASH then
			return 20+(lEquipLevel/10)-1
		elseif 	lEquipPoint == HEQUIP_RING then
			return 30+(lEquipLevel/10)-1
		elseif 	lEquipPoint == HEQUIP_NECKLACE then
			return 40+(lEquipLevel/10)-1
		end
	end
	return	random(0, 49)
end

---------------------------------------------------------------------
---------------------------------------------------------------------


-- Åä·½ºÏ³É½áÊøÊ±toÕ ðµ ÊìÁ·¶ÈÔö³¤
function x701601_GainExperience(sceneId, selfId, AbilityID, RecipeLevel)
	-- Éú»î¼¼ÄÜc¤p±ð
	local AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, AbilityID)
	local MinLevelDisparity = 0
	local MaxLevelDisparity = 1
	local ExpGain = 0

	if AbilityLevel < 1 or AbilityLevel > 12 then
		return
	end

	--old
	--if AbilityID == ABILITY_PENGREN then
	--	ExpLimit = LEVELUP_ABILITY_PENGREN[AbilityLevel].AbilityExpLimitTop
	--elseif AbilityID == ABILITY_DIAOYU then
	--	ExpLimit = LEVELUP_ABILITY_DIAOYU[AbilityLevel].AbilityExpLimitTop
	--elseif AbilityID == ABILITY_ZHONGZHI then
	--	ExpLimit = LEVELUP_ABILITY_ZHONGZHI[AbilityLevel].AbilityExpLimitTop
	--elseif AbilityID == ABILITY_CAIYAO then
	--	ExpLimit = LEVELUP_ABILITY_CAIYAO[AbilityLevel].AbilityExpLimitTop
	--elseif AbilityID == ABILITY_ZHIYAO then
	--	ExpLimit = LEVELUP_ABILITY_ZHIYAO[AbilityLevel].AbilityExpLimitTop
	--elseif AbilityID == ABILITY_CAIKUANG then
	--	ExpLimit = LEVELUP_ABILITY_CAIKUANG[AbilityLevel].AbilityExpLimitTop
	--elseif AbilityID == ABILITY_ZHUZAO then
	--	ExpLimit = LEVELUP_ABILITY_ZHUZAO[AbilityLevel].AbilityExpLimitTop
	--elseif AbilityID == ABILITY_FENGREN then
	--	ExpLimit = LEVELUP_ABILITY_FENGREN[AbilityLevel].AbilityExpLimitTop
	--elseif AbilityID == ABILITY_GONGYI then
	--	ExpLimit = LEVELUP_ABILITY_GONGYI[AbilityLevel].AbilityExpLimitTop
	--elseif AbilityID == ABILITY_XIANGQIAN then
	--	ExpLimit = LEVELUP_ABILITY_XIANGQIAN[AbilityLevel].AbilityExpLimitTop
	--else
	--	ExpLimit = LEVELUP_ABILITY_MENPAI[AbilityLevel].AbilityExpLimitTop
	--end
	--new
	local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(AbilityID, AbilityLevel);
	if ret and ret == 1 then
		ExpLimit = currentLevelAbilityExpTop;
	end

	ExpNow = GetAbilityExp(sceneId, selfId, AbilityID)

	if ExpLimit <= ExpNow then
		return
	end

	LevelDisparity = AbilityLevel - RecipeLevel
	if LevelDisparity < 0 then
		LevelDisparity = 0
	end

	if LevelDisparity <= MinLevelDisparity then
		ExpGain = 100
	elseif LevelDisparity <= MaxLevelDisparity then
		ExpGain = 100 / (LevelDisparity - MinLevelDisparity + 1)
	end

	Exp = ExpGain + ExpNow

	if Exp > ExpLimit then
		Exp = ExpLimit
	end

	SetAbilityExp(sceneId, selfId, AbilityID, Exp)
	--Msg2Player(sceneId,selfId,"ÊìÁ·¶ÈÔö¼Óµ½"..floor(Exp/100)..".",MSG2PLAYER_PARA)
end

---------------------------------------------------------------------------

--¼ì²éÄ³ÏîÉú»î¼¼ÄÜÐúng·ñC¥n Éýc¤p(¸ù¾ÝÊìÁ·¶È×Ô¶¯Éýc¤p)
--AbilityID Ö¸Éú»î¼¼ÄÜ ID
--
function	x701601_CheckAbilityLevel(sceneId,selfId,AbilityID)
	--Íæ¼Ò¼Ó¹¤¼¼ÄÜtoÕ ðµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, AbilityID)
	--Íæ¼Ò¼Ó¹¤¼¼ÄÜtoÕ ðµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, AbilityID)
	Flag = 0

	if AbilityLevel<=10 then
		if AbilityLevel*10<ExpPoint then
			Flag = 1
		end
	elseif AbilityLevel<=20 then
		if (10*10 + (AbilityLevel-10)*20)<ExpPoint then
			Flag = 1
		end
	--elseif ...
	end

	if Flag>0 then
		SetHumanAbilityLevel(sceneId, selfId, AbilityID, AbilityLevel+1)
		AddText(sceneId, selfId, 0, "KÛ nång cuµc s¯ng ðã ðßþc thång c¤p!")
	end

end

function	x701601_TooManyGems(sceneId,selfId, EquipPos)
	GemCount = GetGemEmbededCount(sceneId, selfId, EquipPos)

	if GemCount<3 then
		return 0
	end

	--Tr· v« 1 ±íÊ¾±¦Ê¯ÏâÇ¶ÊýÁ¿ÒÑÂú
	return 1
end

--±¦Ê¯ÏâÇ¶½Ó¿Ú Gaoqi: ÒÔÇ°ÌÆÅôtoÕ ðµ ´úÂë,¾­¹ýºú·±ÐÞ¸Ä¹ýºó,ÏÖTÕi Õâ¶Î´úÂëÒÑ¾­·ÏÆú
--GemIndex ±¦Ê¯¶ÔÓ¦toÕ ðµ ÎïÆ·Î¨mµt ºÅ(ItemIndex)
--selfId Ö¸ºÏ³ÉÎïÆ·toÕ ðµ Íæ¼Ò
--Tr· v«Öµ 0:³É¹¦,ÆäËûth¤t bÕi 1:±¦Ê¯ÏûÊ§ 2:×°±¸ÏûÊ§ 3:±¦Ê¯×°±¸¶¼ÏûÊ§ 4:TinhÁ¦²»×ã
function	x701601_EmbedProc(sceneId,selfId, EquipBagIndex, GemIndex, MatIndex1, MatIndex2)
	--Íæ¼Ò¼Ó¹¤¼¼ÄÜtoÕ ðµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_XIANGQIAN)
	--Íæ¼Ò¼Ó¹¤¼¼ÄÜtoÕ ðµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_XIANGQIAN)
	--±¦Ê¯µÈc¤p(1~8)
	GemQual = GetItemQuality(GemIndex)
	--±¦Ê¯Àà±ð
	GemType = GetItemIndex(GemIndex)

	--ÓÐ¶à´ó¼¸ÂÊÉú³É,¼¸ÂÊËã·¨¿ÉÒÔ½øÐÐÐÞ¸Ä
	--odds = 90 - (GemQual - 1) * 5
	odds = 25
	if MatIndex1 == 30900009 then --µÍc¤p±¦Ê¯ÏâÇ¶·û
		odds = 50
	end
	if MatIndex1 == 30900010 then --¸ßc¤p±¦Ê¯ÏâÇ¶·û
		odds = 75
	end
	rand = random(100)


	-- ¼ÆËãTinhÁ¦ÏûºÄ
	EnergyCost = GemQual * 2 + 1
	MyNewEnergy = GetHumanEnergy( sceneId, selfId ) - EnergyCost
	if MyNewEnergy < 0 then
		return 4
	end

	--ÏûºÄ½ðÇ®
	local GemCount = GetGemEmbededCount(sceneId, selfId, EquipBagIndex)
	local need_money = x701601_g_EquipGemCost[GemQual]
	if GemCount == 1 then
		need_money = need_money * 2
	elseif GemCount == 2 then
		need_money = need_money * 3
	end
	local ret = LuaFnCostMoney( sceneId, selfId, need_money )
	if ret ~= 1 then
--		BeginEvent(sceneId)
--		AddText(sceneId,"Không ðü ngân lßþng..");
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
		return 4 --´úÂëÀïÃæÃ»ÓÐÏà¹Ø¶¨Òå
	end

	-- ÏûºÄTinhÁ¦
	SetHumanEnergy( sceneId, selfId, MyNewEnergy )

	if odds>rand then
		--Ôö¼ÓÊìÁ·¶È
		--x701601_GainExperience(sceneId, selfId, ABILITY_XIANGQIAN, GemQual)
		return 0 --ÏâÇ¶³É¹¦
	else
		if MatIndex2 == 30900011 then --±¦Ê¯Ç¿»¯·û
			if GemQual <= 1 then
				return 1 --±¦Ê¯Ã»ÁË
			else
				return 5 --±¦Ê¯½µ1c¤p
			end
		else
			if GemQual <= 2 then
				return 1 --±¦Ê¯Ã»ÁË
			else
				return 6 --±¦Ê¯½µ2c¤p
			end
		end
	end
end

--±¦Ê¯ÏâÇ¶Ê±ÅÐ¶ÏÁ½cái±¦Ê¯Ðúng·ñ³åÍ»
--Gem1SerialNumber ±¦Ê¯toÕ ðµ ÐòÁÐºÅ
--Gem2SerialNumber ±¦Ê¯toÕ ðµ ÐòÁÐºÅ
--Tr· v«Öµ true ±íÊ¾³åÍ»,false ±íÊ¾²»³åÍ»
function	x701601_IsGemConflict(sceneId, Gem1SerialNumber, Gem2SerialNumber)
	-- ði¬mµ½ÎïÆ·toÕ ðµ ÀàÐÍ(±¦Ê¯´óÀà)
	return (LuaFnGetItemType(Gem1SerialNumber) == LuaFnGetItemType(Gem2SerialNumber))
end

function	x701601_IsGemFitEquip(sceneId, selfId, GemSerialNum, EquipBagIndex)
	EquipType = LuaFnGetBagEquipType(sceneId, selfId, EquipBagIndex)
	GemType = LuaFnGetItemType(GemSerialNum)
	GemQual = GetItemQuality(GemSerialNum)
	GemCount = GetGemEmbededCount(sceneId, selfId, EquipBagIndex)
	if GemQual <= 0 or GemQual > 9 then
		return 0
	end
	local need_money = x701601_g_EquipGemCost[GemQual]
	if GemCount == 1 then
		need_money = need_money * 2
	elseif GemCount == 2 then
		need_money = need_money * 3
	end
	
	local money = GetMoney( sceneId, selfId )
	if money < need_money then
		return 0
	end

--Ã¿cái¿×µ±ÖÐtoÕ ðµ ÏâÇ¶toÕ ðµ ±¦Ê¯±ØÐë²»Í¬ÀàÐÍ	
	local i
	for i=0, GemCount-1 do
		GemEmbededType = GetGemEmbededType(sceneId, selfId, EquipBagIndex, i)
		if GemEmbededType == GemType then
			return 0
		end
	end
	
	if EquipType == -1 then
		return 0
	end

	for i, gem in x701601_g_EquipGemTable[EquipType] do
		if gem == GemType then
			return 1
		end
	end

	return 0
end

--²É¼¯ÀàÉú»î¼¼ÄÜtoÕ ðµ TinhÁ¦ÏûºÄ´¦Àí
function x701601_CalcEnergyCostCaiJi(sceneId, selfId, AbilityID, BaseLevel)
	if not x701601_g_EnergyCostTbl[AbilityID] then
		return
	end

	local energyCost = x701601_g_EnergyCostTbl[AbilityID][BaseLevel]
	if not energyCost then
		energyCost = 0
	end

	return energyCost
end

--²É¼¯ÀàÉú»î¼¼ÄÜtoÕ ðµ TinhÁ¦ÏûºÄ´¦Àí
function x701601_EnergyCostCaiJi(sceneId, selfId, AbilityID, BaseLevel)
	local energyCost = x701601_CalcEnergyCostCaiJi(sceneId, selfId, AbilityID, BaseLevel)

	if energyCost > 0 then
		local curEnergy = GetHumanEnergy( sceneId, selfId )
		curEnergy = curEnergy - energyCost
		if curEnergy < 0 then
			curEnergy = 0
		end

		--ÉèÖÃÏûºÄºótoÕ ðµ TinhÁ¦
		SetHumanEnergy( sceneId, selfId, curEnergy )
	end
end

--ÖÖÖ²¼¼ÄÜtoÕ ðµ TinhÁ¦ÏûºÄ´¦Àí
function x701601_EnergyCostZhongZhi(sceneId, selfId, AbilityID, BaseLevel)
	x701601_EnergyCostCaiJi(sceneId, selfId, AbilityID, BaseLevel)
end

--ÖÆÒ©¼¼ÄÜ»îÁ¦ÏûºÄ
function x701601_VigorCostZhiYao( sceneId, selfId, AbilityID, RecipeLevel )
	local cost = 0

	if RecipeLevel < 8 then
		cost = 5 + 5 * RecipeLevel
	else
		cost = 40
	end

	return cost
end

--Åëâ¿¼¼ÄÜ»îÁ¦ÏûºÄ
function x701601_VigorCostPengRen( sceneId, selfId, AbilityID, RecipeLevel )
	local cost = 0

	if RecipeLevel < 8 then
		cost = 5 + 5 * RecipeLevel
	else
		cost = 40
	end

	return cost
end

--´òÔì¼¼ÄÜ»îÁ¦ÏûºÄ
function x701601_VigorCostDazao( sceneId, selfId, AbilityID, RecipeLevel )
	local cost = 0

	cost = 5 + 15 * RecipeLevel

	return cost
end

--±¦Ê¯Õª³ý½Ó¿Ú
--Tr· v«Öµ 0:³É¹¦(µÍc¤p±¦Ê¯Õª³ý·û) 1:ÎÞ´Ë×°±¸ 2:±¦Ê¯Î»ÖÃ´íÎó 3:×°±¸ÉÏÃ»ÓÐ±¦Ê¯ 4:×°±¸·Ç·¨ 8:C¥n ±¦Ê¯Õª³ý·û 9:³É¹¦(¸ßc¤p±¦Ê¯Õª³ý·û)
function	x701601_ReomveProc(sceneId,selfId, EquipIndex, GemIndex, MatIndex)
	local equip_point = LuaFnGetBagEquipType(sceneId,selfId, EquipIndex)
	if equip_point == -1 then
		return 1
	end
	
	local gem_type = GetGemEmbededType(sceneId,selfId, EquipIndex, GemIndex)
	if gem_type == 0 then
		return 3
	end
	if gem_type == -1 then
		return 4
	end
	local gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, MatIndex )
	
	if gem_index == 30900012 then  --µÍc¤p±¦Ê¯Õª³ý·û
		return 0
	elseif (gem_index >= 30900036 and gem_index <= 30900044) then  --¸ßc¤p±¦Ê¯Õª³ý·û
		return 9
	else
	  return 8
	end

end

--±¦Ê¯Õª³ý½Ó¿Ú
--±¦Ê¯Õª³ýºótoÕ ðµ Ïà¹Ø´¦Àí(·¢ËÍÊÀ½ç¹«¸æ)
function	x701601_SplitGemSucceed(sceneId,selfId, EquipPos, GemPos, MatPos)

    --Ôö¼ÓÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
		
    local CharmId = LuaFnGetItemTableIndexByIndex( sceneId, selfId, MatPos )
    --´óÓÚµÈÓÚ3c¤pÒÔÉÏ¸ßc¤p±¦Ê¯Õª³ý·ûÊ¹ÓÃÕª³ý³É¹¦·¢³öÊÀ½ç¹«¸æ
    if (CharmId >= 30900038 and CharmId <= 30900044) then  --¸ßc¤p±¦Ê¯Õª³ý·û
		   local PlayerName = GetName(sceneId,selfId)
		   local GemInfo = GetBagItemTransfer( sceneId, selfId, GemPos )
		   local MatInfo = GetBagItemTransfer( sceneId, selfId, MatPos )
	     str = format( "#H#{_INFOUSR%s} c¥m #{_INFOMSG%s} mi®ng l¦m b¦m, chï th¤y #{_INFOMSG%s} Ch§m rãi bong ra t×ng mãng, Nhßng lÕi không h« t±n thß½ng, Th§t sñ là cñc ph¦m chi phù.", PlayerName, MatInfo, GemInfo)
	     BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	  end

end
