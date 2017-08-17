-- ÕäÊÞ¼¼ÄÜÉý¼¶

-- ½Å±¾ºÅ
x311112_g_ScriptId = 311112;
x311112_g_NumText_Main = 1					-- ½ÓÈÎÎñµÄÑ¡Ïî

--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x311112_OnDefaultEvent(sceneId, selfId, targetId)
	local numText = GetNumText()
	
	if numText == x311112_g_NumText_Main then
		--x311112_NotifyFailTips(sceneId, selfId, "good...")
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19823 )	--µ÷ÓÃÕäÊÞ¼¼ÄÜÉý¼¶½çÃæ
	end
	
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x311112_OnEnumerate(sceneId, selfId, targetId)
	AddNumText(sceneId, x311112_g_ScriptId, "Thång c¤p kÛ nång trân thú" , 6, x311112_g_NumText_Main);
end

--**********************************
--ÕäÊÞÉý³¬¼¶¼¼ÄÜ
--**********************************
function x311112_PetSkillLevelup( sceneId, selfId, petHid, petLid, skillindex, ItemIndexInBag )
	local checkAvailable = LuaFnIsPetAvailableByGUIDNoPW(sceneId, selfId, petHid, petLid);
	if checkAvailable and checkAvailable == 1 then
		local SkillID,SkillLevelUpID,ConsumeGoodsID,ConsumeMoney,IsBroadCast = GetPetSkillLevelupTbl(sceneId, selfId, petHid, petLid, skillindex)
		if not SkillID or not SkillLevelUpID or not ConsumeGoodsID or not ConsumeMoney or not IsBroadCast or SkillID == -1 then
			x311112_NotifyFailTips(sceneId, selfId, "#{JNHC_81015_03}")
			return
		end
		
		local itemid = LuaFnGetItemTableIndexByIndex(sceneId, selfId, ItemIndexInBag) --»ñÈ¡ÎïÆ·ID
		local ItemInfo = GetBagItemTransfer(sceneId, selfId, ItemIndexInBag)
		if itemid ~= ConsumeGoodsID then --Èç¹ûConsumeGoodsIDÎª0ËµÃ÷¿ÉÄÜÊÇ²ß»®Íü¼ÇÅäÏûºÄÎïÆ·IDÁË£¬Ò²²»ÄÜÍ¨¹ý
			x311112_NotifyFailTips(sceneId, selfId, "#{JNHC_81015_04}")
			return
		end
		
		local havemoney = GetMoney(sceneId, selfId)
		local haveJiaoZi = GetMoneyJZ(sceneId, selfId)
		if havemoney+haveJiaoZi < ConsumeMoney then
			x311112_NotifyFailTips(sceneId, selfId, "#{JNHC_81015_08}")
			return
		end
		
		--¿Û³ý½ðÇ®
		if ConsumeMoney > 0 then
			local jz, jb = LuaFnCostMoneyWithPriority(sceneId, selfId, ConsumeMoney)
			if jz == -1 then
				x311112_NotifyFailTips(sceneId, selfId, "Không ðü Ngân Lßþng")
				return
			end
		end
		
		--ÏûºÄÎïÆ·
		if EraseItem(sceneId, selfId, ItemIndexInBag) ~= 1 then
			x311112_NotifyFailTips(sceneId, selfId, "Không ðü s¯ lßþng Luy®n H°n Ðan cüa kÛ nång tß½ng Ñng")
			return
		end
		
		LuaFnPetSkillUp(sceneId, selfId, petHid, petLid, skillindex, SkillLevelUpID)
		x311112_NotifyFailTips(sceneId, selfId, "Thång c¤p kÛ nång thành công!")
		AuditPetSkillLevelUpAndCompound(sceneId, selfId, 1, ConsumeGoodsID)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		
		if IsBroadCast == 1 then
			local szPetTrans = GetPetTransString(sceneId, selfId, petHid, petLid)
			--local message = format("#H#{_INFOUSR%s}#{J_09}#{_INFOMSG%s}#{J_10}#{_INFOMSG%s}#{J_11}#G%s#P£¡",LuaFnGetName(sceneId, selfId),szPetTrans,ItemInfo,GetSkillName(SkillLevelUpID))--[tx43999]
			BroadMsgByChatPipe(sceneId, selfId, message, 4);
		end
		
	else
		x311112_NotifyFailTips(sceneId, selfId, "#{JNHC_81015_05}")
	end
end

--**********************************
--ÁéÊÞµ¤ºÏ³É¹¦ÄÜ
--**********************************
function x311112_PetMedicineHC( sceneId, selfId, ItemIndex1, ItemIndex2, ItemIndex3, ItemIndex4, ItemIndex5)
	if not ItemIndex1 or not ItemIndex2 or not ItemIndex3 or not ItemIndex4 or not ItemIndex5 then
		return
	end
	
	-- ²»ÔÊÐíÓÐÖØ¸´µÄItemIndex1³öÏÖ added by dun.liu 2009.2.5
	if ScriptGlobal_IsUniqueNumberTable({ItemIndex1, ItemIndex2, ItemIndex3, ItemIndex4, ItemIndex5}) == 0 then
		return
	end
	
	local itemindex = {}
	local itemid = LuaFnGetItemTableIndexByIndex(sceneId, selfId, ItemIndex1) --»ñÈ¡ÎïÆ·ID
	local afteritemID,money = GetPetMedicineHCTbl(sceneId, itemid)
	itemindex[1] = ItemIndex1
	itemindex[2] = ItemIndex2
	itemindex[3] = ItemIndex3
	itemindex[4] = ItemIndex4
	itemindex[5] = ItemIndex5
	--PrintStr(" itemid "..itemid.." afteritemID "..afteritemID.." money "..money)
	
	--±íÀïÃæÃ»ÓÐµÄ¾Í²»ÊÇÁéÊÞµ¤
	if not afteritemID or not money or afteritemID == -100 then
		x311112_NotifyFailTips(sceneId, selfId, "#{JNHC_81015_13}")
		return
	end
	
	--±íÀïÃæÓÐµ«ÊÇºÏ³ÉºóIDÊÇ-1µÄ±íÊ¾ÔÝ²»¿ª·ÅµÄ£¬Ä¿Ç°ºÏ³É×î¸ß¿ª·Åµ½2¼¶ºÏ3¼¶
	if afteritemID == -1 then
		x311112_NotifyFailTips(sceneId, selfId, "#{JNHC_81015_14}")
		return
	end
	
	--ÊÇ·ñÍ¬ÖÖÀàÐÍ²¢ÇÒµÈ¼¶ÏàÍ¬µÄÁéÊÞµ¤
	for i = 2, 5 do
		if LuaFnGetItemTableIndexByIndex(sceneId, selfId, itemindex[i]) ~= itemid then
			x311112_NotifyFailTips(sceneId, selfId, "#{JNHC_81015_15}")
			return
		end
	end
	
	--ÊÇ·ñ½ðÇ®×ã¹»£¬Îª0ËµÃ÷ÊÇÃ»ÓÐ½ðÇ®ÒªÇó
	local havemoney = GetMoney(sceneId, selfId)
	local haveJiaoZi = GetMoneyJZ(sceneId, selfId)
	if money > 0 and havemoney+haveJiaoZi < money then
		x311112_NotifyFailTips(sceneId, selfId, "#{JNHC_81015_18}#{_EXCHG"..money.."}¡£")
		return
	end
	
	--¿Û³ý½ðÇ®£¬Îª0ËµÃ÷ÊÇÃ»ÓÐ½ðÇ®ÒªÇó
	if money > 0 then
		local jz, jb = LuaFnCostMoneyWithPriority(sceneId, selfId, money)
		if jz == -1 then
			x311112_NotifyFailTips(sceneId, selfId, "Không ðü ngân lßþng")
			return
		end
	end
	
	local needBind = 0
	--¿Û³ýÎïÆ·
	for i = 1, 5 do
		if LuaFnGetItemBindStatus( sceneId, selfId, itemindex[i] ) == 1 then
			needBind = 1
		end
		--LuaFnItemBind( sceneId, selfId, itemindex[i] )
		if LuaFnEraseItem(sceneId, selfId, itemindex[i]) ~= 1 then
			x311112_NotifyFailTips(sceneId, selfId, "Không ðü s¯ lßþng Luy®n H°n Ðan tß½ng Ñng")
			return
		end
	end
	
	--¸øÎïÆ·
	local BagIndex = TryRecieveItem( sceneId, selfId, afteritemID, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		if needBind == 1 then
			LuaFnItemBind( sceneId, selfId, BagIndex )
		end
		x311112_NotifyFailTips(sceneId, selfId, "Thång c¤p kÛ nång thành công!")
		AuditPetSkillLevelUpAndCompound(sceneId, selfId, 2, afteritemID)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
		LuaFnSendAbilitySuccessMsg( sceneId, selfId, -1, -1, afteritemID )		-- ÌáÊ¾Éú³ÉÎï
	end
	
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x311112_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
