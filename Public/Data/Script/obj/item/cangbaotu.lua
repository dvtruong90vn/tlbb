--Ê¹ÓÃ²Ø±¦Í¼

--½Å±¾ºÅ
x300022_g_scriptId = 300022

x300022_g_ItemId = 30000000

x300022_g_NpcScriptID = 807001

x300022_g_DefaultCorpseDataId = 3510

x300022_g_ChengxiongdatuScriptId = 229020

x300022_g_DiaorubaozangScriptId = 229021

x300022_g_minValue = 1000000
x300022_g_maxValue = 10000000

x300022_g_MissionIndex10 = 24
x300022_g_MissionIndex20 = 43
x300022_g_MissionIndex30 = 44
x300022_g_MissionIndex40 = 45
x300022_g_MissionIndex50 = 46
x300022_g_MissionIndex60 = 47
x300022_g_MissionIndex70 = 48
x300022_g_MissionIndex80 = 49
x300022_g_MissionIndex90 = 50

--g_ItemTable = {
--							{sn=30001001, name="ÐÐÑªÉ¢"},
--							{sn=30002007, name="ÏÉµ¤ÇïÔÂ"},
--							{sn=30007003, name="ÍõÄ¸ÏÉµ¤"},
--							{sn=30101017, name="½È×Ó"},
--							{sn=30402016, name="¸ß¼¶¼ÓËÙ¼¼ÄÜÊé"},
--							{sn=30505004, name="ÑÌ»¨"},
--							{sn=30505001, name="ËÙÐÐÐ¬"},
--							{sn=30701009, name="×øÆï£º°×»¢"},
--							{sn=30701007, name="×øÆï£ºÂ¹"}
--							}


x300022_g_CorpseMonsterPosTable = {
													{x=104, z=221},
													{x=104, z=201},
													{x=79, z=222}
													}

x300022_g_SceneMapDefine = {	
										{sceneId=18,	sceneName="NhÕn Nam",	CorpseMonsterId=3512},
										{sceneId=19,	sceneName="NhÕn B¡c",	CorpseMonsterId=3513},
										{sceneId=20,	sceneName="Thäo Nguyên",	CorpseMonsterId=3515},
										{sceneId=21,	sceneName="Liêu Tây",	CorpseMonsterId=3516},
										{sceneId=22,	sceneName="Trß¶ng BÕch S½n",	CorpseMonsterId=3518},
										{sceneId=23,	sceneName="Hoàng Long Phü",	CorpseMonsterId=3519},
										{sceneId=24,	sceneName="Nhî Häi",	CorpseMonsterId=3511},
										{sceneId=25,	sceneName="Thß½ng S½n",	CorpseMonsterId=3513},
										{sceneId=26,	sceneName="ThÕch Lâm",	CorpseMonsterId=3514},
										{sceneId=27,	sceneName="Ng÷c Khê",	CorpseMonsterId=3516},
										{sceneId=28,	sceneName="Nam Chiêu",	CorpseMonsterId=3517},
										{sceneId=29,	sceneName="Miêu Cß½ng",	CorpseMonsterId=3518},
										{sceneId=30,	sceneName="Tây H°",	CorpseMonsterId=3511},
										{sceneId=31,	sceneName="Long Tuy«n",	CorpseMonsterId=3512},
										{sceneId=32,	sceneName="Ng÷c Khê",	CorpseMonsterId=3516},
										{sceneId=33,	sceneName="Võ Di",	CorpseMonsterId=3515},
										{sceneId=34,	sceneName="Mai Lînh",	CorpseMonsterId=3517},
										{sceneId=35,	sceneName="QuÏnh Châu",	CorpseMonsterId=3518},
									}
								 
x300022_g_GhoulMonsterTable = {
												{level=11, id=3520},{level=21, id=3521},
												{level=31, id=3522},{level=41, id=3523},
												{level=51, id=3524},{level=61, id=3525},
												{level=71, id=3526},{level=81, id=3527},
												{level=91, id=3528},{level=101, id=3529},
											}									 
									 
--**********************************
--µÃµ½itemµÄ²ÎÊýÐÅÏ¢
--**********************************
function x300022_GetItemParam(sceneId, selfId, BagPos)							
	--local BagPos = GetBagPosByItemSn(sceneId, selfId, x300022_g_ItemId)
	--PrintNum(BagPos)
	local targetsceneId = GetBagItemParam(sceneId, selfId, BagPos, 1, 1)
	--PrintNum(targetsceneId)
	local targetX = GetBagItemParam(sceneId, selfId, BagPos, 3, 1)
	--PrintNum(targetX)
  local targetZ = GetBagItemParam(sceneId, selfId, BagPos, 5, 1)
  --PrintNum(targetZ)
  local r = GetBagItemParam(sceneId, selfId, BagPos, 7, 1)
  return targetsceneId, targetX, targetZ, r
end

--**********************************
--ÍÚµ½ÒøÁ½ --OK
--**********************************
function x300022_DiscoverMoney(sceneId, selfId)
		--PrintStr("DiscoverMoney...")
		local Bonus = random(x300022_g_maxValue-x300022_g_minValue) + x300022_g_minValue
		local str = "Các hÕ ðào ðßþc #{_MONEY" .. tostring(Bonus) .. "}"
		AddMoney(sceneId, selfId, Bonus)
		Msg2Player(  sceneId, selfId, str, MSG2PLAYER_PARA )
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
end

--**********************************
--ÓöµÁÄ¹Ôô --OK
--**********************************
function x300022_DiscoverGhoulMonster(sceneId, selfId)
	local humanLevel = LuaFnGetLevel(sceneId, selfId)
	local dataId = x300022_g_GhoulMonsterTable[1].id
	local ct = getn(x300022_g_GhoulMonsterTable)
	for i=1, ct do
		if humanLevel >= x300022_g_GhoulMonsterTable[i].level then
			if i+1 <= ct then
				if humanLevel < x300022_g_GhoulMonsterTable[i+1].level then
					dataId = x300022_g_GhoulMonsterTable[i].id
					break
				end	
			end	
		end
	end

	local aifile = random(10)
	local x, z = GetWorldPos(sceneId, selfId)
	local MonsterId = LuaFnCreateMonster(sceneId, dataId, x, z-2, 0, aifile, -1)
	SetLevel(sceneId, MonsterId, humanLevel+(random(2)-random(2)) )
	SetCharacterDieTime(sceneId, MonsterId, 60*60000)

	local strTitle, strName = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "CreateTitleAndName_ForCangBaoTu", sceneId, selfId)
	SetCharacterTitle(sceneId, MonsterId, strTitle)
	SetCharacterName(sceneId, MonsterId, strName)			

		
	BeginEvent(sceneId)		
		AddText(sceneId, "C¦n th§n! B÷n ÐÕo Mµ Ti¬u T£c kìa...");
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--»ñµÃÎïÆ· --OK
--**********************************
function x300022_DiscoverItem(sceneId, selfId)
	
		--tableIndex = random(9)
		--ItemSn = g_ItemTable[tableIndex].sn
		--ItemName = g_ItemTable[tableIndex].name
		--PrintStr("DiscoverItem...")
		local ItemSn, ItemName, _, bBroadCast
		local playerLevel = LuaFnGetLevel(sceneId, selfId)
		if playerLevel <= 10 then
		 ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex10)
		elseif  playerLevel <= 20 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex20)
		elseif  playerLevel <= 30 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex30)
		elseif  playerLevel <= 40 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex40)
		elseif  playerLevel <= 50 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex50)
		elseif  playerLevel <= 60 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex60)
		elseif  playerLevel <= 70 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex70)
		elseif  playerLevel <= 80 then
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex80)
		else
			ItemSn, ItemName, _, bBroadCast = GetOneMissionBonusItem(x300022_g_MissionIndex90)
		end
		
		BeginAddItem(sceneId)
			AddItem( sceneId, ItemSn, 1 )
		local canAdd = EndAddItem(sceneId,selfId)
		
		if canAdd > 0 then
			--½±ÀøÍ³¼Æ
			local itemName;
			_,itemName,_ = GetItemInfoByItemId(ItemSn)
			LuaFnAuditItemCreate(sceneId,selfId,1,ItemSn,itemName," Ðào báu v§t ")

		AddItemListToHuman(sceneId,selfId)
		local strText = format("Các hÕ ðã nh§n ðßþc %s", ItemName)
		
		BeginEvent(sceneId)
			AddText(sceneId, strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local PlayName = GetName(sceneId,selfId)
		local x, z = GetWorldPos(sceneId,selfId)

		local _, sceneName = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "GetScenePosInfo", sceneId,sceneId)
		ItemName = GetItemTransfer(sceneId,selfId,0)
		strText = format("#W#{_INFOUSR%s}#PTÕi #G%s#P ðang ðào bäo v§t thì may m¡n nh£t ðßþc #W#{_INFOMSG%s}", PlayName, sceneName, ItemName)
		--PrintNum(bBroadCast)
			BroadMsgByChatPipe(sceneId, selfId, strText, bBroadCast)
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Tay näi cüa ngß½i ðã ð¥y!")
			EndEvent()	
			DispatchMissionTips(sceneId, selfId)
			return 0
		end	
		return 1
end

--**********************************
--¸ù¾Ý³¡¾°IdµÃ³ö¶ÔÓ¦µÄ¹ÖÎïµÄID
--**********************************
function x300022_GetDataIDbySceneID(sceneId)
		for i, SceneMapInfo in x300022_g_SceneMapDefine do
			if SceneMapInfo.sceneId == sceneId then
				return SceneMapInfo.CorpseMonsterId
			end
		end
		return x300022_g_DefaultCorpseDataId
end

--**********************************
--·Å³ö½©Ê¬
--**********************************
function x300022_DiscoverCorpseMonster(sceneId, selfId)

		local corpseMonsterId = x300022_GetDataIDbySceneID(sceneId)
		for i=1, 10 do
			local _, sceneName, x, z, _ = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "GetScenePosInfo", sceneId,sceneId)
			--ÖÁÉÙ±£Ö¤ÔÚÍæ¼ÒÉí±ß³öÏÖÒ»¸ö¶á±¦ÂíÔô
			if i == 1 then
				x, z = GetWorldPos(sceneId,selfId)
				x = x + 2
			end	
			
			corpseMonsterId = corpseMonsterId or x300022_g_DefaultCorpseDataId
			local aifile = random(10)
			local MonsterId = LuaFnCreateMonster(sceneId, corpseMonsterId, x, z, 0, aifile, x300022_g_NpcScriptID)
			SetCharacterDieTime(sceneId, MonsterId, 60*60000)
			--ÉèÖÃ¶Ô¹ÖÎªÓÑºÃµÄ Ä¿Ç°ÊÇ0ºÅÊÇÓÑºÃµÄ£¬Èç¹ûÓÐÈË¸Ä±äÁËÏàÓ¦µÄÊÆÁ¦ÉùÍûÄÇÎÒ¾Í²ÒÁË£¡£¡:-(((
			SetUnitReputationID(sceneId, selfId, MonsterId, 0)
			local  monsterLevel = GetLevel(sceneId, MonsterId)
			SetLevel(sceneId, MonsterId, monsterLevel+i-1)
			--Èç¹û¹ÖÎïµÄ×î´óµÈ¼¶³¬¹ýÍæ¼Ò×î´óµÈ¼¶ÉÏÏÞ£¬Ôò¹ÖÎïµÈ¼¶µÈÓÚÍæ¼Ò×î´óµÈ¼¶ÉÏÏÞ
			local PlayerMaxLevel = GetHumanMaxLevelLimit()
			if monsterLevel+i-1 > PlayerMaxLevel then
				SetLevel(sceneId, MonsterId, PlayerMaxLevel)
			end
		end
		
		BeginEvent(sceneId)
			AddText(sceneId, "Thä b÷n ÐoÕt Bäo Mã T£c");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local _, sceneName = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "GetScenePosInfo", sceneId,sceneId)
		
		local playerName = GetName(sceneId,selfId)
		local strText = format("#W#{_INFOUSR%s}#P Trong lúc ðào bäo v§t không mai b¸ lµ thông tin, tÕi #G%s#P dçn ðªn 1 tên #{_BOSS48}. Giang h° chi sî chï c¥n ði tiêu di®t b÷n Mã t£c, s¨ có th¬ nh§n ðßþc Bäo tàng cüa Mã t£c!", 
					playerName, sceneName)

		BroadMsgByChatPipe(sceneId, selfId, strText, 4)

end

--**********************************
--µôÈë±¦²Ø
--**********************************
function x300022_DiscoverInstance(sceneId, selfId)
		BeginEvent(sceneId)
			AddText(sceneId, "Ðªn Huy®t Mµ");
			CallScriptFunction(x300022_g_DiaorubaozangScriptId, "MakeCopyScene",sceneId, selfId, 0)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
end

--**********************************
--ÔâÓö»ú¹Ø --OK
--**********************************
function x300022_DiscoverTrap(sceneId, selfId)
		local nHp = GetHp(sceneId, selfId)
		local nMp = GetHp(sceneId, selfId)
		local nHp = nHp * 0.3 --0.05
		local nMp = nMp * 0.3 --0.05
		
		if nHp < 1 then
			nHp = 1
		end
		if nMp < 1 then
			nMp = 1
		end
		
		SetHp(sceneId, selfId, nHp)
		SetMp(sceneId, selfId, nMp)
		
		BeginEvent(sceneId)
			AddText(sceneId, "Ðøng phäi c½ quan");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
end

--**********************************
--Ä¬ÈÏÊÂ¼þ
--**********************************
function x300022_OnDefaultEvent( sceneId, selfId, BagPos)
	--PrintStr("cangbaotu...x300022_OnDefaultEvent...")
	
	--Î´Âú30¼¶Ê±ÇáÉæ±¦²Ø¿ÖÓÐÐÔÃüÖ®ÓÝ°¡
	if GetLevel(sceneId, selfId) < 30 then
		BeginEvent(sceneId)
			AddText(sceneId, "ÐÆng c¤p chßa ðÕt 30 mà khinh su¤t mò vào kho báu e tính mÕng chÆng lành.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
		return
	end	
	
	-- /////////////////////////////////////////////////////////////////
	-- ÏÈÈ¡³öÎïÆ·ÖÐÊý¾Ý£¬Èç¹ûÊÇÄ¬ÈÏÖµ0ÔòËµÃ÷ÊÇµÚÒ»´ÎÊ¹ÓÃ£¬Á¢¼´Éú³ÉÊý¾Ý
	-- Èç¹ûÒÑ¾­ÓÐÊý¾ÝÔòÊ²Ã´¶¼²»×ö
	local targetSceneId, targetX, targetZ, r = x300022_GetItemParam(sceneId, selfId, BagPos)
	if targetSceneId==nil or targetSceneId<=0
		or targetX==nil or targetX<=0
		or targetZ==nil or targetZ<=0
		or r==nil or r<=0 then
		--PrintStr("the first time .... nil nil nil")
		--Á¢¼´Éú³ÉÊý¾Ý
		CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "ProduceItemParamData", sceneId, selfId, BagPos)
		--ÖØÐÂ»ñÈ¡ÎïÆ·Êý¾Ý
		targetSceneId, targetX, targetZ, r = x300022_GetItemParam(sceneId, selfId, BagPos)
	end
	-- ÓÐÐ©BT ÎÒÃÇÔÙ×öÒ»´Î¼ì²â
	if targetSceneId==nil or targetSceneId<=0
		or targetX==nil or targetX<=0
		or targetZ==nil or targetZ<=0
		or r==nil or r<=0 then
		--PrintStr("the second time .... nil nil nil")
		--Á¢¼´Éú³ÉÊý¾Ý
		CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "ProduceItemParamData", sceneId, selfId, BagPos)
		--ÖØÐÂ»ñÈ¡ÎïÆ·Êý¾Ý
		targetSceneId, targetX, targetZ, r = x300022_GetItemParam(sceneId, selfId, BagPos)
	end
	--Èç¹û²»ÔÚÖ¸¶¨µÄ³¡¾°, Ö¸¶¨µÄ×ø±ê¾Íµ¯³ö¶Ô»°¿òÌáÊ¾Íæ¼ÒÈ¥ÄÄ¶ùÄÄ¶ùÄÄ¶ù
	local sceneName = CallScriptFunction(x300022_g_ChengxiongdatuScriptId, "GetSceneName", sceneId, selfId, targetSceneId)
	-- /////////////////////////////////////////////////////////////////
	
	--local sceneName = GetSceneName(targetSceneId)
	--PrintStr(sceneName)
	local strText = format("Các hÕ phäi ðªn % stoÕ ðµ [%d,%d] m¾i có th¬ sØ døng", sceneName, targetX, targetZ)
	
	--È¡µÃÍæ¼Òµ±Ç°×ø±ê
	local PlayerX = GetHumanWorldX(sceneId, selfId)
	local PlayerZ = GetHumanWorldZ(sceneId, selfId)
	--¼ÆËãÍæ¼ÒÓëÄ¿±êµãµÄ¾àÀë
	local Distance = floor(sqrt((targetX-PlayerX)*(targetX-PlayerX)+(targetZ-PlayerZ)*(targetZ-PlayerZ)))
	--print(PlayerX,PlayerZ)

	if targetSceneId ~= sceneId or Distance > r then
		--print(sceneId,selfId,targetId)
		BeginEvent(sceneId)
			AddText(sceneId, strText);
			AddText(sceneId, "#e00f000Nh¡c nhö:#e000000 có lúc bän ð° kho báu ðßþc xu¤t hi®n tÕi #gfff0f0Bän ð° cao h½n ðÆng c¤p cüa bÕn hi®n tÕi #g000000. ÐÆng c¤p cüa quái v§t trên nhæng hình này khá cao, #gfff0f0xin hãy c¦n th§n#g000000, các hÕ có th¬ bán bän ð° kho báu cho nhæng ngß¶i ch½i khác ho£c giæ lÕi ð¬ tiªp tøc dùng sau khi thång c¤p.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)

		--test code begin
		--EraseItem( sceneId, selfId, BagPos )
		--test cod end
		return
	end	
	
	--É¾³ý¸ÃÎïÆ·
	if LuaFnIsItemAvailable(sceneId, selfId, BagPos) <= 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "V§t ph¦m cüa các hÕ hi®n không dùng ðßþc ho£c ðã b¸ khóa.")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)	
		return	
	end	
	
	--PrintStr("begin random...")
	--Èç¹ûÔÚÊ¹ÓÃ·¶Î§, ÔòËæ»ú´¥·¢ÒÔÏÂÊÂ¼þ
	local ret = random(100)
	if ret < 30 then --ÍÚµ½ÒøÁ½
		x300022_DiscoverCorpseMonster(sceneId, selfId)
	elseif ret < 40 then --·Å³ö½©Ê¬
		x300022_DiscoverCorpseMonster(sceneId, selfId)
	elseif ret < 80 then --»ñµÃÎïÆ·
		x300022_DiscoverCorpseMonster(sceneId, selfId)
		if retval == 0 then
		  --¼ÇÂ¼Í³¼ÆÐÅÏ¢
	    LuaFnAuditWaBao(sceneId, selfId)
			return
		end
	elseif ret < 85 then --ÓöµÁÄ¹Ôô
		x300022_DiscoverCorpseMonster(sceneId, selfId)
	elseif ret < 95 then --µôÈë±¦²Ø
		x300022_DiscoverCorpseMonster(sceneId, selfId)
	else --ÔâÓö»ú¹Ø
		x300022_DiscoverCorpseMonster(sceneId, selfId)
	end
	
  EraseItem( sceneId, selfId, BagPos )
	
	--¼ÇÂ¼Í³¼ÆÐÅÏ¢
	LuaFnAuditWaBao(sceneId, selfId)
		
end

function x300022_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
