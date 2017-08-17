-- ËÍĞÅÈÎÎñ(ËùÓĞÕâÒ»ÀàĞÍ¶¼Ê¹ÓÃÕâ¸öLUA£¬ĞŞ¸ÄÇë×¢ÒâÍ¨ÓÃĞÔ)

MOD_EVENT = 006672

x006668_g_duanyanqiId = 002016 --[tx43452]

x006668_g_IsMissionOkFail = 0							-- ÈÎÎñÍê³É±ê¼Ç
x006668_g_SongXinFlag = 1									-- ËÍĞÅÍê³É±ê¼Ç

-- °´ÕÕË³Ğò´æ´¢Ò»Ğ©Éæ¼°µ½¿Í»§¶ËÈÎÎñÄ¿±êÏÔÊ¾µÄ¶¯Ì¬ĞÅÏ¢
-- ¹æÔò£ºÔÚÈÎºÎÇé¿öÏÂ£¬Ã¿Ò»ÖÖ¿ÉÄÜËæ»úµÄÀàĞÍ×î¶àÖ»ÓĞÒ»¸öËæ»úÏî
-- ¼´Í¬Ê±×î¶àÖ»ÄÜÓµÓĞ 1 ¸öËæ»ú NPC£¨¹ÖÎï£©¡¢1 ¸öËæ»úÎïÆ·ºÍ 1 ¸öËæ»úÕäÊŞ
-- Î»ÖÃ°´ÕÕÓÅÏÈË³Ğò´æ´¢£¬ÀıÈçÈç¹ûÓĞËæ»ú NPC£¬ÔòËæ»ú NPC Õ¼¾İµÚÒ»¸öÈÎÎñÊı¾İ
-- ·ñÔòËæ»úÎïÆ·Õ¼¾İµÚÒ»¸öÈÎÎñÊı¾İ£¬ÒÀ´ËÀàÍÆ
-- ¸ÃÖµ×îºÃ²»ÒªĞŞ¸Ä£¬¼´Ê¹ÒªĞŞ¸ÄÒ²ÒªºÍ¿Í»§¶ËµÄ½âÎö²¿·Ö£¨SetTableMissionInfo£©Í¬Ê±ĞŞ¸Ä
x006668_g_StrForePart = 5

--ÈÎÎñ¶Î·ÖÀàÁĞ±í_MissType	1.É±¹ÖÈÎÎñ	2.ËÍĞÅÈÎÎñ	3.Ì½Ë÷ÈÎÎñ	4.Ñ°ÎïÈÎÎñ	5.»¤ËÍÈÎÎñ
x006668_g_MissionTypeList	=	{ {StartIdx = 1000000, EndIdx = 1009999, ScriptId = 006666},
															{StartIdx = 1010000, EndIdx = 1019999, ScriptId = 006668},
															{StartIdx = 1020000, EndIdx = 1029999, ScriptId = 006669},
															{StartIdx = 1030000, EndIdx = 1039999, ScriptId = 006667},
															{StartIdx = 1050000, EndIdx = 1059999, ScriptId = 006671} }

--**********************************
-- »ñÈ¡¶¯Ì¬ÈÎÎñÄ¿±ê NPC µÄ´æ´¢Î»ÖÃ
-- Èç¹ûÊÇ¾²Ì¬ÈÎÎñÄ¿±ê NPC£¬Ôò·µ»Ø -1
--**********************************
function x006668_GetTNpcStoreLoc( sceneId, selfId, targetId, missionIndex )
	local _, _, isTargetDynamic = TGetTargetNpcInfo( missionIndex )

	if not isTargetDynamic or isTargetDynamic ~= 1 then					-- ¸Ã NPC ÊÇ¾²Ì¬ NPC
		return -1
	end

	return x006668_g_StrForePart
end

--**********************************
-- »ñÈ¡¶¯Ì¬ÈÎÎñÄ¿±ê NPC µÄ NPCID
-- Èç¹ûÊÇ¾²Ì¬ÈÎÎñÄ¿±ê NPC£¬Ôò·µ»Ø -1
--**********************************
function x006668_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
	local loc = x006668_GetTNpcStoreLoc( sceneId, selfId, targetId, missionIndex )
	if loc == -1 then
		return -1
	end

	local missionId = TGetMissionIdByIndex( missionIndex )
	local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
	return GetMissionParam( sceneId, selfId, misIndex, loc )
end

--**********************************
-- »ñÈ¡¶¯Ì¬ÈÎÎñÎïÆ·µÄ ItemIndex
-- Èç¹ûÊÇ¾²Ì¬ÈÎÎñÎïÆ·£¬Ôò·µ»Ø -1
--**********************************
function x006668_GetTItemStoreLoc( sceneId, selfId, targetId, missionIndex )
	local ItemCount, _, _, _, _, _, _, _, _, _, _, _, _, Item, Count, bGiveFlag = TGetSongXinInfo( missionIndex )

	if not Item or Item <= 0 then
		return -1
	end

	local nOffset = 0
	if x006668_GetTNpcStoreLoc( sceneId, selfId, targetId, missionIndex ) ~= -1 then
		nOffset = nOffset + 1
	end

	return x006668_g_StrForePart + nOffset
end

--**********************************
-- »ñÈ¡¶¯Ì¬ÈÎÎñÎïÆ·µÄ ItemIndex
-- Èç¹ûÊÇ¾²Ì¬ÈÎÎñÎïÆ·£¬Ôò·µ»Ø -1
--**********************************
function x006668_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )
	local loc = x006668_GetTItemStoreLoc( sceneId, selfId, targetId, missionIndex )
	if loc == -1 then
		return -1
	end

	local missionId = TGetMissionIdByIndex( missionIndex )
	local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
	return GetMissionParam( sceneId, selfId, misIndex, loc )
end

--**********************************
-- ¿Û³ıÈÎÎñÎïÆ·£¬³É¹¦·µ»Ø 1£¬Ê§°Ü·µ»Ø 0
--**********************************
function x006668_TakeOutMissionItem( sceneId, selfId, missionIndex )
	local ItemCount = 0
	local item, count, bGiveFlag = 1, 2, 3

	-- Mission Items
	local mi = { { -1, 0, 0 }, { -1, 0, 0 }, { -1, 0, 0 }, { -1, 0, 0 }, { -1, 0, 0 }, }

	local itemList = {}

	ItemCount, mi[1][1], mi[1][2], mi[1][3], mi[2][1], mi[2][2], mi[2][3], mi[3][1], mi[3][2], mi[3][3],
		mi[4][1], mi[4][2], mi[4][3], mi[5][1], mi[5][2], mi[5][3] = TGetSongXinInfo( missionIndex )

	if ItemCount > 0 then
		-- mi[5][1], mi[5][2], mi[5][3] ÊÇËæ»úÎïÆ·Ïî
		if mi[5][item] > 0 then
			-- mi[5][item] µÄ×ª»»
			mi[5][item] = GetOneMissionItem( mi[5][item] )
			tinsert( itemList, { mi[5][item], mi[5][count] } )
			ItemCount = ItemCount - 1
		end																-- ÒÔÏÂ¶ÁÈ¡¹Ì¶¨ÈÎÎñÎïÆ·

		for i = 1, ItemCount do
			tinsert( itemList, { mi[i][item], mi[i][count] } )
		end

		for i = 1, getn( itemList ) do
			if itemList[i][item] > 0 then
				if LuaFnGetAvailableItemCount( sceneId, selfId, itemList[i][item] ) < itemList[i][count] then
					return 0
				end
			end
		end

		for i = 1, getn( itemList ) do
			if itemList[i][item] > 0 then
				LuaFnDelAvailableItem( sceneId, selfId, itemList[i][item], itemList[i][count] )
			end
		end
	end

	return 1
end

--**********************************
-- ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x006668_OnDefaultEvent( sceneId, selfId, targetId, missionIndex )		-- µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )
	local _, missionInfo, missionContinue = TGetMissionDesc( missionIndex )
	local npcId = -1
	local itemIndex = -1

	-- ·¢ËÍÈÎÎñĞèÇóµÄĞÅÏ¢
	if IsHaveMission( sceneId, selfId, missionId ) > 0 then
		local _, targetNPCName, isTargetDynamic, targetDuologue = TGetTargetNpcInfo( missionIndex )
		local _, completeNpcName = TGetCompleteNpcInfo( missionIndex )
		local szNpcName = GetName( sceneId, targetId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )

		-- Èç¹ûÈÎÎñÄ¿±ê NPC ºÍÈÎÎñÍê³É NPC ²»ÊÇÍ¬Ò»¸öÈË
		if targetNPCName ~= completeNpcName then
			local bAchieveMission = 0

			-- Èç¹ûµ±Ç° NPC ÊÇÈÎÎñÄ¿±ê NPC
			if not isTargetDynamic or isTargetDynamic ~= 1 then			-- ¸Ã NPC ÊÇ¾²Ì¬ NPC
				if szNpcName == targetNPCName then
					bAchieveMission = 1
				end
			else
				npcId = x006668_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
				local _, strNpcName = GetNpcInfoByNpcId(sceneId, npcId )
				if strNpcName == szNpcName then
					bAchieveMission = 1
				end
			end

			-- ÔòÈÎÎñÍê³É£¬²¢ÏÔÊ¾ÈÎÎñÄ¿±ê NPC ¶Ô°×
			if bAchieveMission == 1 then
				-- Èç¹ûĞèÒªÈÎÎñÎïÆ·£¬²¢ÇÒÄÜ¹»É¾³ı£¬Ôò³É¹¦
				if x006668_TakeOutMissionItem( sceneId, selfId, missionIndex ) == 1 then
					-- ÏÔÊ¾Ä¿±ê NPC Ëæ»ú¶Ô»°
					local strText = CallScriptFunction( MOD_EVENT, "GetRandomDuologue", sceneId, missionIndex, targetDuologue )
					if strText ~= "" then
						itemIndex = x006668_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )
						strText = CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, strText, npcId, itemIndex, "" )
						x006668_NotifyFailBox( sceneId, selfId, targetId, strText )
					end
					
					if (missionIndex >= 1010243 and missionIndex <= 1010250) or
						 (missionIndex >= 1010402 and missionIndex <= 1010409) or
						 (missionIndex >= 1018000 and missionIndex <= 1018033) or
						 (missionIndex >= 1018050 and missionIndex <= 1018084) or
						 (missionIndex >= 1018100 and missionIndex <= 1018155) or
						 (missionIndex >= 1018200 and missionIndex <= 1018235) or
						 (missionIndex >= 1018300 and missionIndex <= 1018311) or
						 (missionIndex >= 1018350 and missionIndex <= 1018352) or
						 (missionIndex >= 1018360 and missionIndex <= 1018367) or
						 (missionIndex >= 1018400 and missionIndex <= 1018455) or
						 (missionIndex >= 1018500 and missionIndex <= 1018504) or
						 (missionIndex >= 1018530 and missionIndex <= 1018541) or
						 (missionIndex >= 1018560 and missionIndex <= 1018566) then
							BeginEvent( sceneId )
								AddText( sceneId, "Møc tiêu nhi®m vø ğã ğÕt ğßşc!" )
							EndEvent( sceneId )
							DispatchMissionTips( sceneId, selfId )
					end
			

					SetMissionByIndex( sceneId, selfId, misIndex, x006668_g_IsMissionOkFail, 1 )
					return
				end
			end
		elseif GetMissionParam( sceneId, selfId, misIndex, x006668_g_IsMissionOkFail ) ~= 1 then
			-- Èç¹ûÈÎÎñÄ¿±ê NPC ºÍÈÎÎñÍê³É NPC ÊÇÍ¬Ò»¸öÈË£¬²¢ÇÒÕâ¸ö¼Ò»ï»¹Ã»ÓĞÍê³ÉÈÎÎñ
			if x006668_TakeOutMissionItem( sceneId, selfId, missionIndex ) == 1 then
				SetMissionByIndex( sceneId, selfId, misIndex, x006668_g_IsMissionOkFail, 1 )
			end
		end

		-- Èç¹ûµ±Ç° NPC ÊÇÈÎÎñÍê³É NPC£¬Ôò°´ÕÕÔ­ÓĞÁ÷³ÌÏÔÊ¾ÈÎÎñ¶Ô°×ÒÔ¼°Ìá½»ÈÎÎñ
		if completeNpcName == szNpcName then
			local bHaveContinue = TIsHaveContinue( missionIndex )

			if bHaveContinue <= 0 then									-- Ö±½ÓÌøµ½Íê³É½çÃæ
				x006668_OnContinue( sceneId, selfId, targetId, missionIndex )
			else														-- ×ªµ½Continue½çÃæ
				local bDone = x006668_CheckSubmit( sceneId, selfId, missionIndex )
				npcId = x006668_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
				itemIndex = x006668_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )

				BeginEvent( sceneId )
					AddText( sceneId, missionName )
					AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionContinue, npcId, itemIndex, "" ) )
				EndEvent( )
				DispatchMissionDemandInfo( sceneId, selfId, targetId, missionIndex, missionId, bDone )
			end
		end
	elseif CallScriptFunction( MOD_EVENT, "CheckAccept", sceneId, selfId, missionIndex ) > 0 then
		local _, acceptNpcName = TGetAcceptNpcInfo( missionIndex )
		if acceptNpcName == "" then										-- Ëæ»úÈÎÎñ£¬×Ô¶¯½ÓÈ¡
			if x006668_OnAccept( sceneId, selfId, targetId, missionIndex ) ~= 1 then
				return
			end

			npcId = x006668_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
			itemIndex = x006668_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )
		end

		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, missionName )
			AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionInfo, npcId, itemIndex, "" ) )
			CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex, selfId )
		EndEvent( )

		if acceptNpcName == "" then										-- Ëæ»úÈÎÎñ£¬×Ô¶¯½ÓÈ¡
			DispatchEventList( sceneId, selfId, targetId )
		else
			DispatchMissionInfo( sceneId, selfId, targetId, missionIndex, missionId )
		end
	end
end

--**********************************
-- ÁĞ¾ÙÊÂ¼ş
--**********************************
function x006668_OnEnumerate( sceneId, selfId, targetId, missionIndex )
	CallScriptFunction( MOD_EVENT, "DoEnumerate", sceneId, selfId, targetId, missionIndex )
end

--**********************************
-- Ñ¡ÖĞ
--**********************************
function x006668_OnLockedTarget( sceneId, selfId, targetId, missionIndex )
	local targetNpcId = x006668_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
	local targetNPCName

	if targetNpcId ~= -1 then
		_, targetNPCName = GetNpcInfoByNpcId(sceneId, targetNpcId )
	else
		_, targetNPCName = TGetTargetNpcInfo( missionIndex )
	end

	local szNpcName = GetName( sceneId, targetId )
	local _, completeNpcName = TGetCompleteNpcInfo( missionIndex )
	if szNpcName == targetNPCName then
		local missionId = TGetMissionIdByIndex( missionIndex )
		local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
		if completeNpcName ~= targetNPCName and GetMissionParam( sceneId, selfId, misIndex, x006668_g_IsMissionOkFail ) == 1 then
			return															-- ÒÑ¾­Íê³ÉÁË¾Í²»ÔÙ¶Ô»°ÁË
		end
		
		--if completeNpcName == targetNPCName then
			SetMissionByIndex( sceneId, selfId, misIndex, x006668_g_SongXinFlag, 1 )
		--end
	end

	if szNpcName == targetNPCName or szNpcName == completeNpcName then
		-- ÕÒ¶ÔÈË¿©
		local missionName = TGetMissionName( missionIndex )
		-- ÊÇ·ñÎªÑ­»·ÈÎÎñ
		if TIsMissionRoundable( missionIndex ) == 1 then
			TAddNumText( sceneId, missionIndex, missionName, 4, -1 )
		else
			TAddNumText( sceneId, missionIndex, missionName, 2, -1 )
		end
		TDispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
-- ½ÓÊÜ£¬·µ»Ø 1 ±íÊ¾½ÓÈ¡³É¹¦£¬·ñÔò±íÊ¾Ê§°Ü
--**********************************
function x006668_OnAccept( sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )
	local ItemCount = 0

	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÒÑ¾­Íê³É¹ıÕâ¸öÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, missionId ) > 0
	 and TIsMissionRoundable( missionIndex ) ~= 1 then
		return 0
	end

	if CallScriptFunction( MOD_EVENT, "CheckAccept", sceneId, selfId, missionIndex ) <= 0 then
		return 0
	end

	local strText

	-- ¼ì²âÊÇ·ñÈÎÎñÒÑ¾­´ïµ½ 20 ¸ö£¬Èç¹ûµ½ÁË£¬Ôò²»ÄÜ½Ó
	if GetMissionCount( sceneId, selfId ) >= 20 then
		strText = "#YDanh sách nhi®m vø#W: cüa các hÕ ğã ğ¥y r°i"
		-- x006668_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		return 0
	end

	local item, count, bGiveFlag = 1, 2, 3
	-- Mission Items
	local mi = { { -1, 0, 0 }, { -1, 0, 0 }, { -1, 0, 0 }, { -1, 0, 0 }, { -1, 0, 0 }, }

	ItemCount, mi[1][1], mi[1][2], mi[1][3], mi[2][1], mi[2][2], mi[2][3], mi[3][1], mi[3][2], mi[3][3],
		mi[4][1], mi[4][2], mi[4][3], mi[5][1], mi[5][2], mi[5][3] = TGetSongXinInfo( missionIndex )

	local bAddItem = 0

	if ItemCount > 0 then
		BeginAddItem( sceneId )

		-- mi[5][1], mi[5][2], mi[5][3] ÊÇËæ»úÎïÆ·Ïî
		if mi[5][item] > 0 then
			-- mi[5][item] µÄ×ª»»ÔÚÕâÀïÒ»¶¨Òª×ö£¬ÒòÎªÒÔºóÒªÓÃµ½
			mi[5][item] = GetOneMissionItem( mi[5][item] )

			if mi[5][bGiveFlag] > 0 then
				AddItem( sceneId, mi[5][item], mi[5][count] )
				bAddItem = 1
			end

			ItemCount = ItemCount - 1
		end																-- ÒÔÏÂ¶ÁÈ¡¹Ì¶¨ÈÎÎñÎïÆ·

		for i = 1, ItemCount do
			if mi[i][bGiveFlag] > 0 then
				AddItem( sceneId, mi[i][item], mi[i][count] )
				bAddItem = 1
			end
		end

		if bAddItem > 0 then
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then
				strText = "#YHành Trang nhi®m vø#W cüa các hÕ ğã ğ¥y"
				-- x006668_NotifyFailTips( sceneId, selfId, strText )
				Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
				return 0
			end
		end
	end

	local ret = AddMission( sceneId, selfId, missionId, missionIndex, 0, 0, 0 )	-- kill¡¢area¡¢item
	if ret ~= 1 then
		return 0
	end

	SetMissionEvent( sceneId, selfId, missionId, 4 )

	local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
	local targetNpcStoreLocation, itemStoreLocation
	local _, targetNPCName, isTargetDynamic = TGetTargetNpcInfo( missionIndex )

	-- Èç¹ûµ±Ç° NPC ÊÇÈÎÎñÄ¿±ê NPC
	targetNpcStoreLocation = x006668_GetTNpcStoreLoc( sceneId, selfId, targetId, missionIndex )
	if targetNpcStoreLocation ~= -1 then					-- ¸Ã NPC ÊÇ¶¯Ì¬ NPC
		local nNpcId, _, _, nScene, nPosX, nPosZ = GetOneMissionNpc( tonumber(targetNPCName) )
		SetMissionByIndex( sceneId, selfId, misIndex, targetNpcStoreLocation, nNpcId )
	end

	-- Èç¹ûµ±Ç°ÈÎÎñÎïÆ·ÊÇ¶¯Ì¬
	itemStoreLocation = x006668_GetTItemStoreLoc( sceneId, selfId, targetId, missionIndex )
	if itemStoreLocation ~= -1 then
		SetMissionByIndex( sceneId, selfId, misIndex, itemStoreLocation, mi[5][item] )
	end

	if bAddItem > 0 then
		AddItemListToHuman( sceneId, selfId )
	end

	strText = "#YTiªp nh§n #W" .. missionName
	-- x006668_NotifyFailTips( sceneId, selfId, strText )
	Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	return 1
end

--**********************************
-- ·ÅÆú
--**********************************
function x006668_OnAbandon( sceneId, selfId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )
	local ItemCount = 0
	local item, count, bGiveFlag = 1, 2, 3

	-- É¾³ıÈÎÎñÎïÆ·
	local mi = { { -1, 0, 0 }, { -1, 0, 0 }, { -1, 0, 0 }, { -1, 0, 0 }, { -1, 0, 0 }, }

	ItemCount, mi[1][1], mi[1][2], mi[1][3], mi[2][1], mi[2][2], mi[2][3], mi[3][1], mi[3][2], mi[3][3],
		mi[4][1], mi[4][2], mi[4][3], mi[5][1], mi[5][2], mi[5][3] = TGetSongXinInfo( missionIndex )

	if ItemCount > 0 then
		-- mi[5][1], mi[5][2], mi[5][3] ÊÇËæ»úÎïÆ·Ïî
		if mi[5][item] > 0 then
			-- mi[5][item] µÄ×ª»»
			mi[5][item] = GetOneMissionItem( mi[5][item] )
			LuaFnDelAvailableItem( sceneId, selfId, mi[5][item], mi[5][count] )
			ItemCount = ItemCount - 1
		end																-- ÒÔÏÂ¶ÁÈ¡¹Ì¶¨ÈÎÎñÎïÆ·

		for i = 1, ItemCount do
			if mi[i][item] > 0 then
				LuaFnDelAvailableItem( sceneId, selfId, mi[i][item], mi[i][count] )
			end
		end
	end

	-- ³Í·££¬¿Û³ı¹ØÏµÖµ
	CallScriptFunction( MOD_EVENT, "PunishRelationShip", sceneId, selfId, missionIndex )

	-- ³Í·££¬Ò»¶ÎÊ±¼ä²»ÈÃ½ÓÈÎÎñ
	CallScriptFunction( MOD_EVENT, "AcceptTimeLimit", sceneId, selfId, missionIndex )

	-- É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
	DelMission( sceneId, selfId, missionId )
end

--**********************************
-- ¼ÌĞø
--**********************************
function x006668_OnContinue( sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )
	local missionTarget, _, _, missionComplete = TGetMissionDesc( missionIndex )
	local npcId = x006668_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
	local itemIndex = x006668_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )

	BeginEvent( sceneId )
		AddText( sceneId, missionName )
		--[tx43452]
			--AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionComplete, npcId, itemIndex, "" ) )
			--AddText( sceneId, "#{M_MUBIAO}#r" )
			--AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionTarget, npcId, itemIndex, "" ) )
			--CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex, selfId )	
		local ret = CallScriptFunction(x006668_g_duanyanqiId, "NPCTalkOnFirstSubmission", sceneId, selfId, missionIndex, 0 )
		if ret == 0 then
			AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionComplete, npcId, itemIndex, "" ) )
			AddText( sceneId, "#{M_MUBIAO}#r" )
			AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionTarget, npcId, itemIndex, "" ) )
			CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex, selfId )		
		end
		--[/tx43452]
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, missionIndex, missionId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x006668_CheckSubmit( sceneId, selfId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )

	local bComplete = GetMissionParam( sceneId, selfId, misIndex, x006668_g_IsMissionOkFail )
	if bComplete == 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x006668_OnSubmit( sceneId, selfId, targetId, selectRadioId, missionIndex )
	-- ¼ì²âÊÇ²»ÊÇÂú×ãÍê³ÉÈÎÎñµÄÌõ¼ş
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )

	if IsHaveMission( sceneId, selfId, missionId ) > 0 then
		if x006668_CheckSubmit( sceneId, selfId, missionIndex ) ~= 1 then
			return 0
		end

		local ItemCount, nAddItemNum = 0, 0
		local item, count = 1, 2
		local mi = { { -1, 0 }, { -1, 0 }, { -1, 0 }, { -1, 0 }, { -1, 0 } }

		-- ³¢ÊÔÔö¼Ó½±ÀøÎïÆ·
		BeginAddItem( sceneId )
		ItemCount, mi[1][1], mi[1][2], mi[2][1], mi[2][2], mi[3][1], mi[3][2],
			mi[4][1], mi[4][2], mi[5][1], mi[5][2] = TGetAwardItem( missionIndex )

		if ItemCount > 0 then											-- ¹Ì¶¨½±Àø
			for i = 1, ItemCount do
				if mi[i][item] > 0 then
					AddItem( sceneId, mi[i][item], mi[i][count] )
					nAddItemNum = nAddItemNum + 1
				end
			end
		end

		ItemCount, mi[1][1], mi[1][2], mi[2][1], mi[2][2], mi[3][1], mi[3][2],
			mi[4][1], mi[4][2], mi[5][1], mi[5][2] = TGetRadioItem( missionIndex )

		if ItemCount > 0 then											-- Ñ¡Ôñ½±Àø
			for i = 1, ItemCount do
				if mi[i][item] > 0 and mi[i][item] == selectRadioId then
					AddItem( sceneId, mi[i][item], mi[i][count] )
					nAddItemNum = nAddItemNum + 1
					break
				end
			end
		end

		ItemCount, mi[1][1], mi[1][2], mi[2][1], mi[2][2], mi[3][1], mi[3][2],
			mi[4][1], mi[4][2], mi[5][1], mi[5][2] = TGetHideItem( missionIndex )

		if ItemCount > 0 then											-- Òş²Ø½±Àø
			for i = 1, ItemCount do
				if mi[i][item] > 0 then
					AddItem( sceneId, mi[i][item], mi[i][count] )
					nAddItemNum = nAddItemNum + 1
				end
			end
		end
		
		if CallScriptFunction(x006668_g_duanyanqiId, "OnAddRewards", sceneId, selfId, missionIndex) == 1 then--[tx43452]
			nAddItemNum = nAddItemNum + 1			
		end--[/tx43452]
		
		local ret = EndAddItem( sceneId, selfId )
		if ret <= 0 then
			x006668_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
			return
		end

		if nAddItemNum > 0 then
			AddItemListToHuman( sceneId, selfId )
		end

		-- Ìí¼ÓÈÎÎñ½±Àø
		local awardMoney = TGetAwardMoney( missionIndex )
		if awardMoney > 0 then
			AddMoney( sceneId, selfId, awardMoney )
		end

		local awardExp = TGetAwardExp( missionIndex )
		if awardExp > 0 then
			LuaFnAddExp( sceneId, selfId, awardExp )
		end

		-- ½±Àø¹ØÏµÖµ
		CallScriptFunction( MOD_EVENT, "RewardRelationShip", sceneId, selfId, missionIndex, targetId )

		local mdLocation, _, _ = TGetRelationShipAwardInfo( missionIndex );
		if mdLocation == MD_RELATION_AZHU then
			CallScriptFunction(005001, "OnModEvent_Submit", sceneId, selfId, targetId, missionIndex)
		elseif mdLocation == MD_RELATION_DUANYANQING then
			CallScriptFunction(x006668_g_duanyanqiId, "OnMissionSubmitionSuccess", sceneId, selfId, targetId, missionIndex) --[tx43452]
		elseif mdLocation == MD_RELATION_MUWANQING then --zchw
			CallScriptFunction(002010, "OnModEvent_Submit", sceneId, selfId, targetId, missionIndex)				
		end

		DelMission( sceneId, selfId, missionId )
		-- ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId, selfId, missionId )

		local strText = "#Y" .. missionName .. " nhi®m vø ğã hoàn thành!"
		x006668_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
		
		-- »ñµÃºóĞøÈÎÎñµÄIndex
		local NextMissIndex = GetNextMissionIndex( missionIndex )

		for i, MissType in x006668_g_MissionTypeList do
			if MissType.ScriptId ~= nil and MissType.ScriptId ~= 0 then
				if NextMissIndex ~= 0 and NextMissIndex >= MissType.StartIdx and NextMissIndex <= MissType.EndIdx then
					local missionId = TGetMissionIdByIndex( NextMissIndex )
					local szNpcName = GetName( sceneId, targetId )
					local AcceptNpcScene, AcceptNpcName = TGetAcceptNpcInfo( NextMissIndex )

					if sceneId == AcceptNpcScene and szNpcName == AcceptNpcName then
						if MissType.ScriptId == 006668 then
							if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
								x006668_OnDefaultEvent( sceneId, selfId, targetId, NextMissIndex )
							end
						else
							if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
								CallScriptFunction( MissType.ScriptId, "OnDefaultEvent", sceneId, selfId, targetId, NextMissIndex )
							end
						end
					end
					
					break;
				end
			end
		end
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x006668_OnKillObject( sceneId, selfId, objdataId, objId, missionIndex )	-- ²ÎÊıÒâË¼£º³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId

end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x006668_OnItemChanged( sceneId, selfId, itemdataId )

end

--**********************************
-- ¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x006668_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖĞ¼äĞÅÏ¢ÌáÊ¾
--**********************************
function x006668_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
