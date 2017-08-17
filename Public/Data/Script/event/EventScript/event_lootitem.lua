--É±¹ÖµôÂäÈÎÎñ(ËùÓÐÕâÒ»ÀàÐÍ¶¼Ê¹ÓÃÕâ¸öLUA£¬ÐÞ¸ÄÇë×¢ÒâÍ¨ÓÃÐÔ)

MOD_EVENT = 006672

--½Å±¾ºÅ
x006667_g_scriptId = 006667

x006667_g_duanyanqiId = 002016 --[tx43452]

x006667_g_StrForePart = 5
x006667_g_IsMissionOkFail = 0							-- ÈÎÎñÍê³É±ê¼Ç

--ÈÎÎñ¶Î·ÖÀàÁÐ±í_MissType	1.É±¹ÖÈÎÎñ	2.ËÍÐÅÈÎÎñ	3.Ì½Ë÷ÈÎÎñ	4.Ñ°ÎïÈÎÎñ	5.»¤ËÍÈÎÎñ
x006667_g_MissionTypeList	=	{ {StartIdx = 1000000, EndIdx = 1009999, ScriptId = 006666},
															{StartIdx = 1010000, EndIdx = 1019999, ScriptId = 006668},
															{StartIdx = 1020000, EndIdx = 1029999, ScriptId = 006669},
															{StartIdx = 1030000, EndIdx = 1039999, ScriptId = 006667},
															{StartIdx = 1050000, EndIdx = 1059999, ScriptId = 006671} }

--**********************************
-- »ñÈ¡¶¯Ì¬ÈÎÎñÄ¿±ê NPC µÄ´æ´¢Î»ÖÃ
-- Èç¹ûÊÇ¾²Ì¬ÈÎÎñÄ¿±ê NPC£¬Ôò·µ»Ø -1
--**********************************
function x006667_GetTNpcStoreLoc( sceneId, selfId, targetId, missionIndex )
	return -1
end

--**********************************
-- »ñÈ¡¶¯Ì¬ÈÎÎñÄ¿±ê NPC µÄ NPCID
-- Èç¹ûÊÇ¾²Ì¬ÈÎÎñÄ¿±ê NPC£¬Ôò·µ»Ø -1
--**********************************
function x006667_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
	return -1
end

--**********************************
-- »ñÈ¡¶¯Ì¬ÈÎÎñÎïÆ·µÄ ItemIndex
-- Èç¹ûÊÇ¾²Ì¬ÈÎÎñÎïÆ·£¬Ôò·µ»Ø -1
--**********************************
function x006667_GetTItemStoreLoc( sceneId, selfId, targetId, missionIndex )
	local _, _, dynamicFlag = TGetLootItemInfo( missionIndex )

	if not dynamicFlag or dynamicFlag ~= 1 then
		return -1
	end

	local nOffset = 0
	if x006667_GetTNpcStoreLoc( sceneId, selfId, targetId, missionIndex ) ~= -1 then
		nOffset = nOffset + 1
	end

	return x006667_g_StrForePart + nOffset
end

--**********************************
-- »ñÈ¡¶¯Ì¬ÈÎÎñÎïÆ·µÄ ItemIndex
-- Èç¹ûÊÇ¾²Ì¬ÈÎÎñÎïÆ·£¬Ôò·µ»Ø -1
--**********************************
function x006667_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )
	local loc = x006667_GetTItemStoreLoc( sceneId, selfId, targetId, missionIndex )
	if loc == -1 then
		return -1
	end

	local missionId = TGetMissionIdByIndex( missionIndex )
	local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
	return GetMissionParam( sceneId, selfId, misIndex, loc )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x006667_OnDefaultEvent( sceneId, selfId, targetId, missionIndex )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )
	local npcId = -1
	local itemIndex = -1

	local _, missionInfo, missionContinue = TGetMissionDesc( missionIndex )

	--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢
	if IsHaveMission( sceneId, selfId, missionId ) > 0 then
		--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢
		npcId = x006667_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
		itemIndex = x006667_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )
		
		
		BeginEvent( sceneId )
			AddText( sceneId, missionName )
			AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionContinue, npcId, itemIndex, "" ) )
		EndEvent( )
		local bDone = x006667_CheckSubmit( sceneId, selfId, missionIndex )		
		DispatchMissionDemandInfo( sceneId, selfId, targetId, missionIndex, missionId, bDone )
	elseif CallScriptFunction( MOD_EVENT, "CheckAccept", sceneId, selfId, missionIndex ) > 0 then
		local _, acceptNpcName = TGetAcceptNpcInfo( missionIndex )
		if acceptNpcName == "" then										-- Ëæ»úÈÎÎñ£¬×Ô¶¯½ÓÈ¡
			if x006667_OnAccept( sceneId, selfId, targetId, missionIndex ) ~= 1 then
				return
			end

			npcId = x006667_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
			itemIndex = x006667_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )
		end
		
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, missionName )
			AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionInfo, npcId, itemIndex, "" ) )
			CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex, selfId )
		EndEvent( )

		if acceptNpcName == "" then										-- Ëæ»úÈÎÎñ£¬×Ô¶¯½ÓÈ¡
						
			local _, _, dynamicFlag = TGetLootItemInfo( missionIndex )
			
			-- PrintStr("dynamicFlag ="..dynamicFlag)
			
			if dynamicFlag ~= 2 then				
				DispatchEventList( sceneId, selfId, targetId )
				
				local LogInfo	= format( "[XunWu]Old..Accept:( sceneId=%d, GUID=%0X ), missionIndex=%d",
													sceneId,
													LuaFnObjId2Guid( sceneId, selfId ),
													missionIndex )
				MissionLog(sceneId, LogInfo)
				
			else
				local a, b, c, rowidx = TGetLootItemInfo( missionIndex )	
				-- PrintStr("rowidx ="..rowidx)
				
				if rowidx < 1 then
					return 0
				end
				
				local groupcnt = GetMissionGroupCount( sceneId, rowidx )
				-- PrintStr("groupcnt ="..groupcnt)			
				
				if groupcnt < 1 then
					return 0
				end
				
				local groupid = random(groupcnt)
				-- PrintStr("groupid ="..groupid)
				
				if groupid < 1 then
					return 0
				end
				
				local groupitemcnt = GetMissionItemCount( sceneId, rowidx, groupid )
				-- PrintStr("groupitemcnt ="..groupitemcnt)
				
				if groupitemcnt < 1 then
					return 0
				end
						
				local nitemid = 0
				local nitemname = 0
				
				local ItemNameList = ""
				for i = 1, groupitemcnt do
					nitemid = GetMissionGroupItemID( sceneId, rowidx, groupid, i-1 )
					nitemname = GetItemName( sceneId, nitemid )
					ItemNameList = ItemNameList..nitemname
					
					if i ~= groupitemcnt then
						ItemNameList = ItemNameList.."!"
					end
					-- PrintStr("itemid ="..nitemid)
					-- PrintStr("itemname ="..nitemname)
				end		
				
				-- PrintStr("ItemNameList ="..ItemNameList)
						
				--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
				BeginEvent( sceneId )
					AddText( sceneId, missionName )
					AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionInfo, npcId, itemIndex, ItemNameList ) )
					CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex, selfId )
				EndEvent( )
				
				DispatchEventList( sceneId, selfId, targetId )
				
				local LogInfo	= format( "[XunWu]New..Accept:( sceneId=%d, GUID=%0X ), missionIndex=%d, groupitemcnt=%d, groupid=%d, rowidx=%d",
													sceneId,
													LuaFnObjId2Guid( sceneId, selfId ),
													missionIndex,
													groupitemcnt,
													groupid,
													rowidx )
				MissionLog(sceneId, LogInfo)
				
				local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
				-- PrintStr("misIndex ="..misIndex)
				SetMissionByIndex( sceneId, selfId, misIndex, 4, groupitemcnt )
				SetMissionByIndex( sceneId, selfId, misIndex, 6, groupid )
				SetMissionByIndex( sceneId, selfId, misIndex, 7, rowidx )
			end
		else
			-- PrintStr("acceptNpcName != NULL")
			DispatchMissionInfo( sceneId, selfId, targetId, missionIndex, missionId )
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x006667_OnEnumerate( sceneId, selfId, targetId, missionIndex )
	CallScriptFunction( MOD_EVENT, "DoEnumerate", sceneId, selfId, targetId, missionIndex )
end

--**********************************
--½ÓÊÜ
--**********************************
function x006667_OnAccept( sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )

	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÒÑ¾­Íê³É¹ýÕâ¸öÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, missionId ) > 0
	 and TIsMissionRoundable( missionIndex ) ~= 1 then
		return 0
	end

	-- ÔÙ´Î¼ì²âÍæ¼ÒÊÇ²»ÊÇÄÜ¹»½ÓÊÜÕâ¸öÈÎÎñ
	if CallScriptFunction( MOD_EVENT, "CheckAccept", sceneId, selfId, missionIndex )  <= 0  then
		return 0
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId, selfId, missionId, missionIndex, 1, 0, 1 )
	if ret <= 0 then
		Msg2Player( sceneId, selfId, "#YDanh sách nhi®m vø#W cüa các hÕ ðã ð¥y", MSG2PLAYER_PARA )
		return 0
	end

	--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïµÄ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
	local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )		--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖÐµÄÐòÁÐºÅ
	SetMissionByIndex( sceneId, selfId, misIndex, x006667_g_IsMissionOkFail, 0 )	--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚÒ»Î»ÖÃ0	µÚÒ»Î»ÊÇÍê³É/Ê§°ÜÇé¿ö

	-- Èç¹û½»ÈÎÎñµÄÈË²»ÊÇ½ÓÈÎÎñµÄÈË
	local nscene1, name1 = TGetAcceptNpcInfo( missionIndex )
	local nscene2, name2 = TGetCompleteNpcInfo( missionIndex )
	if name1 ~= name2 then
		SetMissionEvent( sceneId, selfId, missionId, 4 )
	end

	-- Èç¹ûµ±Ç°ÈÎÎñÎïÆ·ÊÇ¶¯Ì¬
	local itemStoreLocation = x006667_GetTItemStoreLoc( sceneId, selfId, targetId, missionIndex )
	if itemStoreLocation ~= -1 then
		local _, _, _, item = TGetLootItemInfo( missionIndex )
		-- ×ª»» item ºÅ
		item = GetOneMissionItem( item )
		SetMissionByIndex( sceneId, selfId, misIndex, itemStoreLocation, item )
	end

	Msg2Player( sceneId, selfId, "#YTiªp nh§n#W " .. missionName, MSG2PLAYER_PARA )
	return 1
end

--**********************************
--·ÅÆú
--**********************************
function x006667_OnAbandon( sceneId, selfId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
	local a = { { name = "", flag = 0, item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 } }

	local killDataCount = 0
	killDataCount, a[1].name, a[1].flag, a[1].item, a[1].pro, a[1].ct, a[2].name, a[2].item, a[2].pro, a[2].ct,
		a[3].name, a[3].item, a[3].pro, a[3].ct, a[4].name, a[4].item, a[4].pro, a[4].ct, a[5].name, a[5].item,
		a[5].pro, a[5].ct = TGetLootItemInfo( missionIndex )

	local newItemIndex = x006667_GetTargetItemIndex( sceneId, selfId, -1, missionIndex )
	if newItemIndex ~= -1 then
		a[1].item = newItemIndex
	end

	for i = 1, killDataCount do
		DelItem( sceneId, selfId, a[i].item, a[i].ct )
	end

	-- ³Í·££¬¿Û³ý¹ØÏµÖµ
	CallScriptFunction( MOD_EVENT, "PunishRelationShip", sceneId, selfId, missionIndex )

	-- ³Í·££¬Ò»¶ÎÊ±¼ä²»ÈÃ½ÓÈÎÎñ
	CallScriptFunction( MOD_EVENT, "AcceptTimeLimit", sceneId, selfId, missionIndex )

	DelMission( sceneId, selfId, missionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x006667_OnContinue( sceneId, selfId, targetId, missionIndex )
	
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )
	local missionTarget, _, _, missionComplete = TGetMissionDesc( missionIndex )
	local npcId = x006667_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
	local itemIndex = x006667_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )

	local _, _, dynamicFlag = TGetLootItemInfo( missionIndex )
			
	-- PrintStr("dynamicFlag ="..dynamicFlag)
			
	if dynamicFlag ~= 2 then
		BeginEvent( sceneId )
			AddText( sceneId, missionName )
		--[tx43452]			
			--AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionComplete, npcId, itemIndex, "" ) )
			--AddText( sceneId, "#{M_MUBIAO}#r" )
			--AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionTarget, npcId, itemIndex, "" ) )
			local ret = CallScriptFunction(x006667_g_duanyanqiId, "NPCTalkOnFirstSubmission", sceneId, selfId, missionIndex, 0 )
			if ret == 0 then					
				AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionComplete, npcId, itemIndex, "" ) )
				AddText( sceneId, "#{M_MUBIAO}#r" )
				AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionTarget, npcId, itemIndex, "" ) )
			end	
		--[/tx43452]				
			CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex, selfId )
		EndEvent( )
		
		DispatchMissionContinueInfo( sceneId, selfId, targetId, missionIndex, missionId )
	else
		local missionId = TGetMissionIdByIndex( missionIndex )
		
		if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
			return 0
		end
		
		local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
		local nitemcnt = GetMissionParam( sceneId, selfId, misIndex, 4 )
		local ngroupid = GetMissionParam( sceneId, selfId, misIndex, 6 )
		local nrowidx  = GetMissionParam( sceneId, selfId, misIndex, 7 )
		-- PrintStr("nitemcnt ="..nitemcnt)
		-- PrintStr("ngroupid ="..ngroupid)
		-- PrintStr("nrowidx ="..nrowidx)
		
		if nitemcnt < 1 or ngroupid < 1 or nrowidx < 1 then
			return 0
		end
		
		local nitemid = 0
		local nitemname = "" 
		
		local ItemNameList = ""
		for i = 1, nitemcnt do
			nitemid = GetMissionGroupItemID( sceneId, nrowidx, ngroupid, i-1 )
			nitemname = GetItemName( sceneId, nitemid )
			ItemNameList = ItemNameList..nitemname
			
			if i ~= nitemcnt then
				ItemNameList = ItemNameList.."!"
			end
			-- PrintStr("itemid ="..nitemid)
			-- PrintStr("itemname ="..nitemname)
		end		
		
		-- PrintStr("ItemNameList ="..ItemNameList)
		
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, missionName )			
			-- AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionComplete, npcId, itemIndex, "" ) )
			AddText( sceneId, "#{M_MUBIAO}#r" )
			AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionTarget, npcId, itemIndex, ItemNameList ) )
			-- CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex, selfId )
		EndEvent( )
		
		local bDone = 2		
		DispatchMissionDemandInfo( sceneId, selfId, targetId, missionIndex, missionId, bDone )
		-- DispatchMissionContinueInfo( sceneId, selfId, targetId, missionIndex, missionId )
	end
	
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x006667_CheckSubmit( sceneId, selfId, missionIndex )
	
	-- ¿´µÃµ½µÄÎïÆ·ÊÇ²»ÊÇÈÎÎñÐèÒªµÄ
	local _, _, dynamicFlag = TGetLootItemInfo( missionIndex )
	-- PrintStr("dynamicFlag ="..dynamicFlag)
	if dynamicFlag ~= 2 then
		local a = { { name = "", flag = 0, item = 0, pro = 0, ct = 0 },
					{ name = "", item = 0, pro = 0, ct = 0 },
					{ name = "", item = 0, pro = 0, ct = 0 },
					{ name = "", item = 0, pro = 0, ct = 0 },
					{ name = "", item = 0, pro = 0, ct = 0 } }
	
		local killDataCount = 0
		killDataCount, a[1].name, a[1].flag, a[1].item, a[1].pro, a[1].ct, a[2].name, a[2].item, a[2].pro, a[2].ct,
			a[3].name, a[3].item, a[3].pro, a[3].ct, a[4].name, a[4].item, a[4].pro, a[4].ct, a[5].name, a[5].item,
			a[5].pro, a[5].ct = TGetLootItemInfo( missionIndex )
	
		local newItemIndex = x006667_GetTargetItemIndex( sceneId, selfId, -1, missionIndex )
		if newItemIndex ~= -1 then
			a[1].item = newItemIndex
		end
	
		local bGetAllFlag = 1
		local nItemNum
	
		for i = 1, killDataCount do
			-- »ñµÃµ±Ç°Íæ¼ÒÓµÓÐÕâ¸öÎïÆ·µÄÎïÆ·Êý
			nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, a[i].item )
	
			if a[i].ct > nItemNum then
				bGetAllFlag = 0
			end
		end
	
		return bGetAllFlag
	else
	
		local missionId = TGetMissionIdByIndex( missionIndex )
		
		if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
			return 0
		end
		
		local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
		local nitemcnt = GetMissionParam( sceneId, selfId, misIndex, 4 )
		local ngroupid = GetMissionParam( sceneId, selfId, misIndex, 6 )
		local nrowidx  = GetMissionParam( sceneId, selfId, misIndex, 7 )
		-- PrintStr("nitemcnt ="..nitemcnt)
		-- PrintStr("ngroupid ="..ngroupid)
		-- PrintStr("nrowidx ="..nrowidx)
		
		if nitemcnt < 1 or ngroupid < 1 or nrowidx < 1 then
			return 0
		end
				
		for i = 1, nitemcnt do
			local itemid = GetMissionGroupItemID( sceneId, nrowidx, ngroupid, i-1 )
			local itemcnt = LuaFnGetAvailableItemCount( sceneId, selfId, itemid )
			-- PrintStr("itemid ="..itemid)
			-- PrintStr("itemcnt ="..itemcnt)
			
			if itemcnt > 0 then
				return 1
			end		
			
		end		
		
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x006667_OnSubmit( sceneId, selfId, targetId, selectRadioId, missionIndex )
	
	if x006667_CheckSubmit( sceneId, selfId, missionIndex ) > 0 then
		local missionId = TGetMissionIdByIndex( missionIndex )
		local missionName = TGetMissionName( missionIndex )

		-- °²È«ÐÔ¼ì²â
		-- 1!¼ì²âÍæ¼ÒÊÇ²»ÊÇÓÐÕâ¸öÈÎÎñ
		if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
			return
		end

		-- 2!ÆäËû¼ì²â
		-- ·¢½±¼ì²â
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

		if ItemCount > 0 then											-- Òþ²Ø½±Àø
			for i = 1, ItemCount do
				if mi[i][item] > 0 then
					AddItem( sceneId, mi[i][item], mi[i][count] )
					nAddItemNum = nAddItemNum + 1
				end
			end
		end

		if CallScriptFunction(x006667_g_duanyanqiId, "OnAddRewards", sceneId, selfId, missionIndex) == 1 then--[tx43452]
			nAddItemNum = nAddItemNum + 1			
		end--[/tx43452]
		local ret = EndAddItem( sceneId, selfId )
		if ret <= 0 then
			x006667_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
			return
		end

		--É¾³ýÈÎÎñÖÐÌá½»µÄÎïÆ·
		local _, _, dynamicFlag = TGetLootItemInfo( missionIndex )
	
		if dynamicFlag ~= 2 then		
			local a = { { name = "", flag = 0, item = 0, pro = 0, ct = 0 },
						{ name = "", item = 0, pro = 0, ct = 0 },
						{ name = "", item = 0, pro = 0, ct = 0 },
						{ name = "", item = 0, pro = 0, ct = 0 },
						{ name = "", item = 0, pro = 0, ct = 0 } }
	
			local killDataCount = 0
			killDataCount, a[1].name, a[1].flag, a[1].item, a[1].pro, a[1].ct, a[2].name, a[2].item, a[2].pro, a[2].ct,
				a[3].name, a[3].item, a[3].pro, a[3].ct, a[4].name, a[4].item, a[4].pro, a[4].ct, a[5].name, a[5].item,
				a[5].pro, a[5].ct = TGetLootItemInfo( missionIndex )
	
			local newItemIndex = x006667_GetTargetItemIndex( sceneId, selfId, -1, missionIndex )
			if newItemIndex ~= -1 then
				a[1].item = newItemIndex
			end
	
			local LogInfo	= format( "[XunWu]Old..Submit:( sceneId=%d, GUID=%0X ), missionIndex=%d",
													sceneId,
													LuaFnObjId2Guid( sceneId, selfId ),
													missionIndex )
			MissionLog(sceneId, LogInfo)
	
			for i = 1, killDataCount do
				LuaFnDelAvailableItem( sceneId, selfId, a[i].item, a[i].ct )
			end
		else
			
			local LogInfo	= format( "[XunWu]New..Submit:( sceneId=%d, GUID=%0X ), missionIndex=%d, selectRadioId=%d",
													sceneId,
													LuaFnObjId2Guid( sceneId, selfId ),
													missionIndex,
													selectRadioId )
			MissionLog(sceneId, LogInfo)
			local ItemType = GetItemClass( selectRadioId )											-- »ñµÃÌá½»ÎïÆ·µÄClass
			
			local ItemPos = 0
			local startpos = 0
			while (ItemPos ~= -1)do
				ItemPos = LuaFnGetItemPosByItemDataID(sceneId, selfId, selectRadioId, startpos)
				if (ItemPos == -1) then																						--Ã»ÕÒµ½
					break
				end
				
				startpos = ItemPos+1																							--´ÓÏÂÒ»¸öÎ»ÖÃ¿ªÊ¼ÕÒ
				
				if (LuaFnIsItemAvailable( sceneId, selfId, ItemPos ) ~= 0) then		--ÊÇ·ñËø¶¨
					if ItemType == 1 then																						-- ÊÇ·ñÊôÓÚ¿ÉÒÔ¼ø¶¨µÄÎïÆ·
						if LuaFnIsJudgeApt(sceneId, selfId, ItemPos) == 1 then				--ÊÇ·ñ¼ø¶¨¹ý
							break																												--¼ø¶¨¹ý²ÅÄÜ¿Û³ý
						end
					else
						break;																												--²»¿É¼ø¶¨ÎïÆ·Ö»ÒªAvailable¾Í¿ÉÒÔ¿Û³ý
					end
				end
			end
			if (ItemPos == -1) then
				x006667_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )					
				return 0
			end
			
			local isdelitem  = 0
			if ItemType == 1 then
				isdelitem =	EraseItem(sceneId, selfId, ItemPos)													--ÐèÒª¼ø¶¨µÄ°´Î»ÖÃÉ¾³ý
			else	
				isdelitem =	LuaFnDelAvailableItem( sceneId, selfId, selectRadioId, 1 )	--²»ÐèÒª¼ø¶¨µÄ°´ÎïÆ·É¾³ý£¨ÕâÀïÈç¹ûÖ±½ÓEraseItem¶ÑµþÎïÆ·»á³öÎÊÌâ£©
			end
			
			if isdelitem == 0 then
				x006667_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )					
				return 0
			end
						
		end

		-- Ìí¼Ó½±ÀøÎïÆ·
		if nAddItemNum > 0 then
			AddItemListToHuman( sceneId, selfId )
		end

		-- Ìí¼ÓÈÎÎñ½±Àø
		local awardMoney = TGetAwardMoney( missionIndex )
		if awardMoney > 0 then
			AddMoney( sceneId, selfId, awardMoney, missionId, missionIndex )
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
			CallScriptFunction(x006667_g_duanyanqiId, "OnMissionSubmitionSuccess", sceneId, selfId, targetId, missionIndex) --[tx43452]	
		elseif mdLocation == MD_RELATION_MUWANQING then --zchw
			CallScriptFunction(002010, "OnModEvent_Submit", sceneId, selfId, targetId, missionIndex)
		end

		DelMission( sceneId, selfId, missionId )
		-- ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId, selfId, missionId )
		local strText = "#Y" .. missionName .. " nhi®m vø ðã hoàn thành!"
		x006667_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
		
		-- »ñµÃºóÐøÈÎÎñµÄIndex
		local NextMissIndex = GetNextMissionIndex( missionIndex )

		for i, MissType in x006667_g_MissionTypeList do
			if MissType.ScriptId ~= nil and MissType.ScriptId ~= 0 then
				if NextMissIndex ~= 0 and NextMissIndex >= MissType.StartIdx and NextMissIndex <= MissType.EndIdx then
					local missionId = TGetMissionIdByIndex( NextMissIndex )
					local szNpcName = GetName( sceneId, targetId )
					local AcceptNpcScene, AcceptNpcName = TGetAcceptNpcInfo( NextMissIndex )

					if sceneId == AcceptNpcScene and szNpcName == AcceptNpcName then
						if MissType.ScriptId == x006667_g_scriptId then
							if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
								x006667_OnDefaultEvent( sceneId, selfId, targetId, NextMissIndex )
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
function x006667_OnKillObject( sceneId, selfId, objdataId, objId, missionIndex )	--²ÎÊýÒâË¼£º³¡¾°ºÅ!Íæ¼ÒobjId!¹ÖÎï±íÎ»ÖÃºÅ!¹ÖÎïobjId
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )

	local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )

	local a = { { name = "", flag = 0, item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 } }

	local killDataCount = 0
	killDataCount, a[1].name, a[1].flag, a[1].item, a[1].pro, a[1].ct, a[2].name, a[2].item, a[2].pro, a[2].ct,
		a[3].name, a[3].item, a[3].pro, a[3].ct, a[4].name, a[4].item, a[4].pro, a[4].ct, a[5].name, a[5].item,
		a[5].pro, a[5].ct = TGetLootItemInfo( missionIndex )

	local monsterName = GetMonsterNamebyDataId( objdataId )
	for i = 1, killDataCount do
		if monsterName == a[i].name then
			local num = GetMonsterOwnerCount( sceneId, objId )				--È¡µÃÕâ¸ö¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨µÄÈËÊý
			for j = 0, num - 1 do
				local humanObjId = GetMonsterOwnerID( sceneId, objId, j )	--È¡µÃÓµÓÐ·ÖÅäÈ¨µÄÈËµÄobjId
				if IsHaveMission( sceneId, humanObjId, missionId ) > 0 then	--Èç¹ûÕâ¸öÈËÓµÓÐÈÎÎñ
					if GetItemCount( sceneId, humanObjId, a[i].item ) < a[i].ct then
						-- ÐèÒª¼ÆËã¸ÅÂÊ
						local nPro = random( 100 )
						if nPro <= a[i].pro then
							AddMonsterDropItem( sceneId, objId, humanObjId, a[i].item )	--¸øÕâ¸öÈËÈÎÎñµÀ¾ß(µÀ¾ß»á³öÏÖÔÚÊ¬Ìå°üÀï)
						end
					end
				end
			end
		end
	end
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x006667_OnItemChanged( sceneId, selfId, itemdataId, missionIndex )
	-- ¿´µÃµ½µÄÎïÆ·ÊÇ²»ÊÇÈÎÎñÐèÒªµÄ
	local a = { { name = "", flag = 0, item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 },
				{ name = "", item = 0, pro = 0, ct = 0 } }

	local killDataCount = 0
	killDataCount, a[1].name, a[1].flag, a[1].item, a[1].pro, a[1].ct, a[2].name, a[2].item, a[2].pro, a[2].ct,
		a[3].name, a[3].item, a[3].pro, a[3].ct, a[4].name, a[4].item, a[4].pro, a[4].ct, a[5].name, a[5].item,
		a[5].pro, a[5].ct = TGetLootItemInfo( missionIndex )

	local newItemIndex = x006667_GetTargetItemIndex( sceneId, selfId, -1, missionIndex )
	if newItemIndex ~= -1 then
		a[1].item = newItemIndex
	end

	local bGetAllFlag = 1
	local nItemNum, strText

	for i = 1, killDataCount do
		nItemNum = GetItemCount( sceneId, selfId, a[i].item )

		if a[i].ct > nItemNum then
			bGetAllFlag = 0
		end

		if itemdataId == a[i].item then
			-- »ñµÃµ±Ç°Íæ¼ÒÓµÓÐÕâ¸öÎïÆ·µÄÎïÆ·Êý

			-- Ö»ÓÐÔÚÎïÆ·¸öÊýÐ¡ÓÚÐèÒª»òÕßµÈÓÚÐèÒªµÄÊ±ºò²ÅÏÔÊ¾
			if a[i].ct >= nItemNum then
				strText = format( "Các hÕ nh§n ðßþc #{_ITEM%s} %d/%d", a[i].item, nItemNum, a[i].ct )
				x006667_NotifyFailTips( sceneId, selfId, strText )
			end
		end
	end

	if bGetAllFlag == 1 then
		local missionId = TGetMissionIdByIndex( missionIndex )
		local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
		SetMissionByIndex( sceneId, selfId, misIndex, x006667_g_IsMissionOkFail, 1 )
	end
end

function x006667_OnLockedTarget( sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )
	local szNpcName = GetName( sceneId, targetId )
	local nScene, szName = TGetCompleteNpcInfo( missionIndex )
	if szNpcName == szName then
		-- ÕÒ¶ÔÈË¿©
		-- ÊÇ·ñÎªÑ­»·ÈÎÎñ
		if TIsMissionRoundable( missionIndex ) == 1 then
			TAddNumText( sceneId, missionIndex, missionName, 4, -1 )
		else
			TAddNumText( sceneId, missionIndex, missionName, 2, -1 )
		end
		TDispatchEventList( sceneId, selfId, targetId )
		return 1
	end

	return 0
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x006667_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

-- ÈÎÎñÎïÆ·Ìá½»½çÃæ
function x006667_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, petindex, missionIndex )
		
	if scriptId ~= x006667_g_scriptId then
		x006667_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )					
		return 0
	end
	
	local index = 0
	local ItemID = 0	
	
	for i=1, 3 do
		if i == 1 then
			index = index1
		elseif i == 2 then
			index = index2
		elseif i == 3 then
			index = index3
		else
			index = index1
		end
		
		if index < 100 then	
			ItemID = LuaFnGetItemTableIndexByIndex(sceneId, selfId, index)
			-- ¼ì²âÎïÆ·ÊÇ·ñ·ûºÏÈÎÎñÌá½»ÒªÇó
			
			-- ÎïÆ·ÊÇ·ñËø¶¨
			if LuaFnIsItemAvailable( sceneId, selfId, index ) == 0 then
				break
			end
									
			local missionId = TGetMissionIdByIndex( missionIndex )
		
			if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
				return 0
			end
		
			local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )
			local nitemcnt = GetMissionParam( sceneId, selfId, misIndex, 4 )
			local ngroupid = GetMissionParam( sceneId, selfId, misIndex, 6 )
			local nrowidx  = GetMissionParam( sceneId, selfId, misIndex, 7 )
			-- PrintStr("nitemcnt ="..nitemcnt)
			-- PrintStr("ngroupid ="..ngroupid)
			-- PrintStr("nrowidx ="..nrowidx)
			
			if nitemcnt < 1 or ngroupid < 1 or nrowidx < 1 then
				return 0
			end
			
			local submitcnt = 0			
			local ItemNameList = ""
			for i = 1, nitemcnt do
				local nitemid = GetMissionGroupItemID( sceneId, nrowidx, ngroupid, i-1 )
				local itemcnt = LuaFnGetAvailableItemCount( sceneId, selfId, nitemid )
				local nitemname = GetItemName( sceneId, nitemid )
				ItemNameList = ItemNameList..nitemname
			
				if i ~= nitemcnt then
					ItemNameList = ItemNameList.."!"
				end
				-- PrintStr("nitemid ="..nitemid)
				-- PrintStr("itemcnt ="..itemcnt)
				if itemcnt > 0 and ItemID == nitemid then
					submitcnt = submitcnt + 1
				end
			end
				
			if submitcnt > 0 then
			
				local ItemType = GetItemClass( ItemID )				-- »ñµÃÌá½»ÎïÆ·µÄClass
			
				if ItemType == 1 then													-- ÊÇ·ñÊôÓÚ¿ÉÒÔ¼ø¶¨µÄÎïÆ·
					
					-- ÎïÆ·ÊÇ·ñ¼ø¶¨
					if LuaFnIsJudgeApt(sceneId, selfId, index) ~= 1 then					
						BeginEvent(sceneId)
							AddText(sceneId, "Cái này trang b¸ thuµc tính cùng tß ch¤t còn chßa t¯t, có l¨ nó là nh¤t ki®n thiên hÕ #Gcñc ph¦m#W! Ta c¥n trang b¸ Toàn mÛ!")
						EndEvent( )
						DispatchEventList( sceneId, selfId, targetId )
						return 0
					end
							
				end
			
				local res = x006667_OnSubmit( sceneId, selfId, targetId, ItemID, missionIndex )
				
				if res == 0 then
					x006667_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )					
					return 0
				end
				
				local missionName = TGetMissionName( missionIndex )
				local npcId = x006667_GetTargetNpcId( sceneId, selfId, targetId, missionIndex )
				local missionTarget, _, _, missionComplete = TGetMissionDesc( missionIndex )
				local itemIndex = x006667_GetTargetItemIndex( sceneId, selfId, targetId, missionIndex )
				--·¢ËÍÈÎÎñÌá½»Ê±ÏÔÊ¾µÄÐÅÏ¢
				BeginEvent( sceneId )
					AddText( sceneId, missionName )				
				--[tx43452]
					--AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionComplete, npcId, itemIndex, "" ) )
					local ret = CallScriptFunction(x006667_g_duanyanqiId, "NPCTalkOnFirstSubmission", sceneId, selfId, missionIndex, 1 )
					if ret == 0 then					
						AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionComplete, npcId, itemIndex, "" ) )
					end	
				--[/tx43452]			
					-- AddText( sceneId, "#{M_MUBIAO}#r" )
					-- AddText( sceneId, CallScriptFunction( MOD_EVENT, "FormatDuologue", sceneId, selfId, missionTarget, npcId, itemIndex, ItemNameList ) )
					-- CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex, selfId )
				EndEvent( )
									
				DispatchEventList( sceneId, selfId, targetId )
			
				return 1
			else
				x006667_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )					
				BeginEvent(sceneId)
					AddText(sceneId, "Ðây ðúng là v§t ph¦m ta c¥n tìm!")
					EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
				
				return 0
			end
			
		end
		
	end
	
	x006667_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )					
	return 0
			
end
