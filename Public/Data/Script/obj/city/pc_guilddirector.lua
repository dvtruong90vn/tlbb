--³ÇÊÐNPC
--ÑÃÒÛ

x805009_g_scriptId = 805009
x805009_g_BuildingID1 = 0

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x805009_g_eventList = { 600035, 600040 }

-- ÈÎÎñ¼¯ÊÂ¼þ ID ÁÐ±í£¬ÕâÀàÊÂ¼þ°üº¬×ÓÊÂ¼þ
x805009_g_eventSetList = { 600035, 600040 }

--¹ÙÆ±ÀàÐÍID
x805009_g_TicketItemIdx	=	40002000

-- ÒøÆ±ID
x805009_g_Yinpiao = 40002000


-- ¹±Ï×¶¼³ÆºÅ
x805009_g_GuildContriTitle = 
{
	{ currName="",	nextId=242, needContri=250, 	name=".Quan Nµi H¥u"},
	{ currName=".Quan Nµi H¥u",	nextId=243, needContri=750, 	name=".Ðình H¥u"},
	{ currName=".Ðình H¥u", 	nextId=244, needContri=1500, 	name=".Hß½ng H¥u"},
	{ currName=".Hß½ng H¥u", 	nextId=245, needContri=3000, 	name=".Huy®n H¥u"},
	{ currName=".Huy®n H¥u", 	nextId=246, needContri=7500, 	name=".Qu§n H¥u"},
	{ currName=".Qu§n H¥u", 	nextId=247, needContri=15000, 	name=".Huy®n Công"},
	{ currName=".Huy®n Công", 	nextId=248, needContri=30000, 	name=".Qu§n Công"},
	{ currName=".Qu§n Công", 	nextId=249, needContri=60000, 	name=".Qu¯c Công"},
	{ currName=".Qu¯c Công", 	nextId=250, needContri=125000, 	name=".Qu§n Vß½ng"},
	{ currName=".Qu§n Vß½ng", 	nextId=251, needContri=250000, 	name=".Thân Vß½ng"}
}


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x805009_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if(Humanguildid == cityguildid) then
--		if CityGetSelfCityID( sceneId, selfId ) == sceneId then
			AddText( sceneId, "Sñ vø l¾n nhö trong bang, có c¥n ta giúp gì huynh không? huynh ð® 1 nhà không c¥n khách sáo." )

			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ½¨Öþµ½Ò»¼¶", 6, 1 )
			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ½¨Öþµ½¶þ¼¶", 6, 2 )
			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ½¨Öþµ½Èý¼¶", 6, 3 )
			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ½¨Öþµ½ËÄ¼¶", 6, 4 )
			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ½¨Öþµ½Îå¼¶", 6, 5 )

			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ³¡¾°µ½Ò»¼¶", 6, 6 )
			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ³¡¾°µ½¶þ¼¶", 6, 7 )
			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ³¡¾°µ½Èý¼¶", 6, 8 )
			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ³¡¾°µ½ËÄ¼¶", 6, 9 )
			--AddNumText( sceneId, x805009_g_scriptId, "ÉèÖÃ³¡¾°µ½Îå¼¶", 6, 10 )

			--AddNumText( sceneId, x805009_g_scriptId, "µ÷ÕûÁùÂÊ·½Ïò", 6, 13 )
			AddNumText( sceneId, x805009_g_scriptId, "Thiªt l§p/ki¬m tra tin nh¡n trên mÕng", 6, 22 )
			AddNumText( sceneId, x805009_g_scriptId, "Xây dñng thành th¸", 6, 12 )
			AddNumText( sceneId, x805009_g_scriptId, "Nghiên cÑu thành th¸", 6, 14 )

			for i, eventId in x805009_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			--AddNumText( sceneId, x805009_g_scriptId, "°ï»á»ÕÕÂ", 6, 15 )
			--AddNumText( sceneId, x805009_g_scriptId, "»ñµÃÅÜÉÌ¹ÙÆ±", 7, 16 )
			--AddNumText( sceneId, x805009_g_scriptId, "½»»ØÅÜÉÌ¹ÙÆ±", 7, 17 )
			AddNumText( sceneId, x805009_g_scriptId, "Con ðß¶ng thß½ng nghi®p", 12, 18 )
			AddNumText( sceneId, x805009_g_scriptId, "Gi¾i thi®u nha huy®n", 11, 19 )
			AddNumText( sceneId, x805009_g_scriptId, "Gi¾i thi®u nhi®m vø xây dñng", 11, 20 )
			AddNumText( sceneId, x805009_g_scriptId, "Gi¾i thi®u nhi®m vø nghiên cÑu", 11, 21 )
			AddNumText( sceneId, x805009_g_scriptId, "#{BGCH_8829_02}", 11, 25 )--¹ØÓÚ¶Ò»»°ï¹±ÅÆ
			AddNumText( sceneId, x805009_g_scriptId, "Xin tr· thành Bang chü", 6, 23 )
			AddNumText( sceneId, x805009_g_scriptId, "#{SQBZ_090205_01}", 11, 26 )
			--AddNumText( sceneId, x805009_g_scriptId, "»Øµ½ÂåÑô", 9, 11 )
			--AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090219_02}", 9, 27 )
			--AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090219_03}", 9, 28 )
			AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090226_10}", 9, 29 )
			local currGuildContriSum = CityGetAttr(sceneId, selfId, 15);
			local currGuildContriTitle = GetGuildContriTitle(sceneId, selfId);
			local guildName = LuaFnGetGuildName(sceneId, selfId);
			for i, titleItem in x805009_g_GuildContriTitle do
				if currGuildContriTitle == "" then
					currGuildContriTitle = guildName
				end
				if currGuildContriTitle == guildName..titleItem.currName then
					AddNumText( sceneId, x805009_g_scriptId, "Thång chÑc là "..titleItem.name, 6, 30 )
					break;
				end
			end
			
			AddNumText( sceneId, x805009_g_scriptId, "#{BGCH_8829_01}", 6, 24 )--½«°ï¹±¶Ò»»³É°ï¹±ÅÆ

		else
			local PlayerGender = GetSex( sceneId, selfId )
			local rank

			if PlayerGender == 0 then
				rank = "Næ hi®p"
			elseif PlayerGender == 1 then
				rank = "ÐÕi hi®p"
			else
				rank = "V¸ này"
			end

			AddText( sceneId, "" .. rank .. "M£t trông lÕ l¡m, ta là chü quän cüa b±n thành, có vi®c gì ta có th¬ tiªp ðãi khách lÕ." )
		end

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x805009_OnDefaultEvent( sceneId, selfId, targetId )
	x805009_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÅÐ¶ÏÄ³¸öÊÂ¼þÊÇ·ñ¿ÉÒÔÍ¨¹ý´Ë NPC Ö´ÐÐ
--**********************************
function x805009_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805009_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805009_g_eventSetList do
			if CallScriptFunction( findId, "IsInEventList", sceneId, selfId, eventId ) == 1 then
				bValid = 1
				break
			end
		end
	end

	return bValid
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x805009_OnEventRequest( sceneId, selfId, targetId, eventId )
	-- ´¦ÀíÕý³£µÄÊÂ¼þÁÐ±íÖÐµÄÊÂ¼þ
	if x805009_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	end

	-- ´¦Àí±¾½Å±¾×Ô´øÊÂ¼þ£¬ËïÓêÐ´µÄ£¬Î´×÷ÐÞ¸Ä
	if GetNumText() == 1 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 0)
	elseif GetNumText() == 2 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 1)
	elseif GetNumText() == 3 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 2)
	elseif GetNumText() == 4 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 3)
	elseif GetNumText() == 5 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 4)
	elseif GetNumText() == 6 then
		CitySetLevel(sceneId, selfId, sceneId, 0)
	elseif GetNumText() == 7 then
		CitySetLevel(sceneId, selfId, sceneId, 1)
	elseif GetNumText() == 8 then
		CitySetLevel(sceneId, selfId, sceneId, 2)
	elseif GetNumText() == 9 then
		CitySetLevel(sceneId, selfId, sceneId, 3)
	elseif GetNumText() == 10 then
		CitySetLevel(sceneId, selfId, sceneId, 4)
	elseif GetNumText() == 11 then
		-- Èç¹ûÍæ¼ÒÕýÔÚÅÜÉÌ£¬¾Í²»ÈÃÍæ¼ÒÊ¹ÓÃÕâ¸ö¹¦ÄÜ
		if GetItemCount(sceneId, selfId, x805009_g_Yinpiao)>=1  then
			BeginEvent( sceneId )
				AddText( sceneId, "Trên ngß¶i các hÕ có ngân phiªu, ðang chÕy tr¯n nþ! Ta không th¬ giúp các hÕ." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		--NewWorld(sceneId, selfId, 0, 144, 98)
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0,239,239)

	elseif GetNumText() == 12 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ³ÇÊÐÄÚÕþ½çÃæ
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 100)
	elseif GetNumText() == 13 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ³ÇÊÐ·¢Õ¹Ç÷ÊÆ½çÃæ
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 101)
	elseif GetNumText() == 14 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ³ÇÊÐÑÐ¾¿½çÃæ
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 102)
	elseif GetNumText() == 15 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ°ï»á´óÆì½çÃæ
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 103)
	elseif GetNumText() == 18 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ³ÇÊÐÉÌÒµÂ·Ïß½çÃæ
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 105)
	elseif GetNumText() == 16 then
		--»ñµÃ¹ÙÆ±£¬¹Ø±Õ£¬ÒÆµ½ÒøÐÐnpc´¦

		--ÊÇ·ñÊÇ±¾°ï³ÉÔ±
		local guildid 		= GetHumanGuildID(sceneId,selfId)
		local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)

		if(guildid ~= cityguildid) then
				BeginEvent(sceneId)
					strText = "Các hÕ không phäi là ngß¶i cüa bang hµi, nhi®m vø cüa bang hµi không ti®n nói ra."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--ÊÇ·ñÊÇÉÌÈË»ò°ïÖ÷
		local	guildpos = GetGuildPos(sceneId, selfId)
		if ((guildpos ~= GUILD_POSITION_COM) and (guildpos ~= GUILD_POSITION_CHIEFTAIN)) then
				BeginEvent(sceneId)
					strText = "Xin l²i, chï có quan chÑc thß½ng nghi®p ho£c bang chü m¾i có th¬ l¤y ðßþc quan phiªu."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--¼¶±ðÊÇ·ñ¹»
		local level = GetLevel(sceneId, selfId)
		if(level<40) then
				BeginEvent(sceneId)
					strText = "V¸ huynh ð® này bây gi¶ mà kinh doanh, có l¨ h½i s¾m mµt chút. Hay là ðþi ðªn c¤p 40 r°i quay lÕi tìm ta, nhß thª s¨ t¯t h½n."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		local curMoney = 0
		local maxMoney = 0

		if level>=40 and level<55 then
			curMoney = 20000
			maxMoney = 100000
		elseif level>=55 and level<69 then
			curMoney = 30000
			maxMoney = 150000
		elseif level>=70 and level<84 then
			curMoney = 40000
			maxMoney = 250000
		elseif level>=85 and level<100 then
			curMoney = 50000
			maxMoney = 300000
		end

		--ÊÇ·ñÓÐÒøÆ±
		local	bagpos = GetBagPosByItemSn(sceneId, selfId, x805009_g_TicketItemIdx)

		if bagpos ~= -1	then
				BeginEvent(sceneId)
					strText = "Xin l²i, các hÕ chï ðßþc l¤y mµt t¶ quan phiªu thôi."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return

		elseif bagpos == -1 then

				--°ïÅÉ×Ê½ðÊÇ·ñ¹»¿ª³öÒ»ÕÅÒøÆ±µÄ
				local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY)
				if GuildMoney <= curMoney then
						BeginEvent(sceneId)
							strText = "Quî cüa bang phái không ðü ð¬ xu¤t ngân phiªu cho các hÕ."
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
				end

				BeginAddItem( sceneId )
				AddItem( sceneId, x805009_g_TicketItemIdx, 1 )
				ret = EndAddItem( sceneId, selfId )
				if ret > 0 then
					AddItemListToHuman(sceneId,selfId )
					bagpos = GetBagPosByItemSn(sceneId, selfId, x805009_g_TicketItemIdx)
					--¸ù¾ÝËùÔÚ³¡¾°,ÎïÆ·ÀàÐÍ»ñµÃÓ¦¸ÃµÄÎïÆ·¼ÛÖµ
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_CUR_MONEY_START, TICKET_ITEM_PARAM_CUR_MONEY_TYPE, curMoney)
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MONEY_TYPE, maxMoney)
					CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*curMoney)
					LuaFnRefreshItemInfo(sceneId, selfId, bagpos)
					BeginEvent(sceneId)
						strText = "R¤t t¯t r¤t t¯t, t¶ ngân phiªu này các hÕ tÕm th¶i có th¬ c¥m ði, giúp b±n bang kiªm thêm mµt ít ti«n, công lao không nhö ðâu."
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				else
					BeginEvent(sceneId)
						strText = "Túi xách ðã ð¥y, không th¬ tiªp nh§n thêm nhi®m vø"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				end
		end

	elseif GetNumText() == 17 then
		--½»»ØÒøÆ±£¬¹Ø±Õ£¬ÒÆµ½ÒøÐÐnpc´¦

		--ÊÇ·ñÊÇ±¾°ï³ÉÔ±
		local guildid 		= GetHumanGuildID(sceneId, selfId)
		local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)

		if(guildid ~= cityguildid) then
				BeginEvent(sceneId)
					strText = "Các hÕ không phäi là ngß¶i cüa b±n bang.."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--ÊÇ·ñÊÇÉÌÈË»ò°ïÖ÷
		local	guildpos = GetGuildPos(sceneId, selfId)
		if ( (guildpos ~= GUILD_POSITION_COM) and (guildpos ~= GUILD_POSITION_CHIEFTAIN) ) then
				BeginEvent(sceneId)
					strText = "Xin l²i, chï có quan chÑc thß½ng nghi®p ho£c bang chü m¾i có th¬ trä ðßþc ngân phiªu."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--¼¶±ðÊÇ·ñ¹»
		local level = GetLevel(sceneId, selfId)
		if(level<40) then
				BeginEvent(sceneId)
					strText = "V¸ huynh ð® này bây gi¶ mà kinh doanh, có l¨ h½i s¾m mµt chút.."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		local	bagpos = GetBagPosByItemSn(sceneId, selfId, x805009_g_TicketItemIdx)
		if bagpos ~= -1	then
			local	TicketMoney = GetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_CUR_MONEY_START, TICKET_ITEM_PARAM_CUR_MONEY_TYPE)
			local	MaxTicketMoney = GetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MONEY_TYPE)
			if TicketMoney ~= 0 then

				if TicketMoney < MaxTicketMoney	then
						BeginEvent(sceneId)
							strText = "Ngân phiªu cüa các hÕ không nh§n ðßþc s¯ ti«n ðáng phäi nh§n, tiªp tøc ði kiªm ti«n ði."
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
						return
				end

				CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, 50)
				CityChangeAttr(sceneId, selfId, GUILD_MONEY, TicketMoney*0.9)
				AddMoney(sceneId, selfId, TicketMoney*0.1)
				AddExp(sceneId, selfId, 20000)
				local ReturnType = DelItem(sceneId, selfId, x805009_g_TicketItemIdx, 1)
				if ReturnType == 0 then
					BeginEvent(sceneId)
						strText = "Không th¬ xóa ngân phiªu"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return
				else
					BeginEvent(sceneId)
						strText = "Xóa ngân phiªu thành công"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return
				end

			else
				BeginEvent(sceneId)
					strText = "Xin l²i, ngân phiªu cüa các hÕ không có ti«n"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
		else
			BeginEvent(sceneId)
				strText = "Xin l²i, các hÕ không có ngân phiªu"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	elseif GetNumText() == 19 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_XianYa}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 20 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_Build}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 21 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_Research}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 22 then
		local guildpos = GetGuildPos( sceneId, selfId )
		if guildpos ~= GUILD_POSITION_ASS_CHIEFTAIN and guildpos ~= GUILD_POSITION_CHIEFTAIN then
			--Èç¹û²»ÊÇ°ïÖ÷»ò¸±°ïÖ÷Ôò´ò¿ª²é¿´ÁôÑÔ½çÃæ....
			
			--×¼±¸´ò¿ª²é¿´ÁôÑÔ½çÃæ....(µÈ´ýLeaveWord¸üÐÂ....)
			--UI½Å±¾²»»áÖ±½Ó´ò¿ª½çÃæ¶øÊÇÏòWorldÇëÇó°ï»áÁôÑÔ(¸üÐÂ±¾µØ°ï»áÁôÑÔ)....
			--µ±¿Í»§¶ËµÄLeaveWord±»¸üÐÂºó»á·¢ËÍUIÏûÏ¢....µ½ÄÇÊ±²é¿´ÁôÑÔ½çÃæ²Å»á´ò¿ª....
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19841120 )
			return
		else
			--Èç¹ûÊÇ°ïÖ÷»ò¸±°ïÖ÷Ôò´ò¿ªÉèÖÃÁôÑÔ½çÃæ....
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19840424 )
			return
		end
		
	elseif GetNumText() == 23 then
		GuildPromoteToChief(sceneId, selfId)
		
	--½«°ï¹±¶Ò»»³É°ï¹±ÅÆ
	elseif GetNumText() == 24 then
	
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19821 )

	--¹ØÓÚ¶Ò»»°ï¹±ÅÆ
	elseif GetNumText() == 25 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{BGCH_8829_05}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	
	--¹ØÓÚÉêÇë³ÉÎª°ïÖ÷
	elseif GetNumText() == 26 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SQBZ_090205_02}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

 --»Øµ½´óÀí
	elseif GetNumText() == 27 then
		if GetItemCount(sceneId, selfId, x805009_g_Yinpiao)>=1  then
			BeginEvent( sceneId )
				AddText( sceneId, "Trên ngß¶i các hÕ có ngân phiªu, ðang chÕy tr¯n nþ! Ta không th¬ giúp các hÕ." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		--NewWorld(sceneId, selfId, 0, 144, 98)
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 2,181,120)
		
	--»Øµ½ËÕÖÝ
	elseif GetNumText() == 28 then
		if GetItemCount(sceneId, selfId, x805009_g_Yinpiao)>=1  then
			BeginEvent( sceneId )
				AddText( sceneId, "Trên ngß¶i các hÕ có ngân phiªu, ðang chÕy tr¯n nþ! Ta không th¬ giúp các hÕ." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		--NewWorld(sceneId, selfId, 0, 144, 98)
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1,325,264)
	elseif GetNumText() == 29 then
		BeginEvent( sceneId )
		AddText( sceneId, "#{BHCS_090226_11}" )
		AddNumText( sceneId, x805009_g_scriptId, "Quay v« LÕc Dß½ng", 9, 11 )
		AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090219_02}", 9, 27 )
		AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090219_03}", 9, 28 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	--°ï»á¹±Ï×¶È³ÆºÅ
	elseif GetNumText() == 30 then
		
		local currGuildContriSum = CityGetAttr(sceneId, selfId, 15);
		local currGuildContriTitle = GetGuildContriTitle(sceneId, selfId);
		local guildName = LuaFnGetGuildName(sceneId, selfId);
		
		for i, titleItem in x805009_g_GuildContriTitle do
			if currGuildContriTitle == "" then
				currGuildContriTitle = guildName
			end
			if currGuildContriTitle == guildName..titleItem.currName then	
				local playerName = GetName(sceneId, selfId);

				if currGuildContriSum < titleItem.needContri then
					local strTip = "#R"..playerName.."#W! Mu¯n thång chÑc #G"..guildName..titleItem.name.."#W c¥n ði¬m c¯ng hiªn là #G"..titleItem.needContri.."#W ði¬m! Các hÕ chßa ðü, hãy c¯ g¡ng h½n nØa.";
					BeginEvent( sceneId )
						AddText( sceneId, strTip )
					EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
				
				AwardGuildContriTitle( sceneId, selfId, guildName..titleItem.name);
				SetCurTitle( sceneId, selfId, 38, 0 );
				LuaFnDispatchAllTitle( sceneId, selfId )
				
				local strTip = "Chúc m×ng #R"..playerName.."#W Tr· thành thành viên Bang hµi #G"..guildName..titleItem.name.."#W! Ð¬ Bang hµi hßng th¸ch xin hãy c¯ g¡ng."
				
				--Ôö¼ÓÌØÐ§
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
		
				local sMessage = format("@*;SrvMsg;GLD:#WB±n bang #R#{_INFOUSR%s}#W vì b±n bang l§p ðßþc công l¾n, ban cho chÑc vø #G%s#W!#R#{_INFOUSR%s}#W hãy tiªp tøc c¯ g¡ng!", playerName, guildName..titleItem.name ,playerName);	
	    		BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
			
			
				sMessage = format("#W#{_INFOUSR%s} vì #G%s#W không ng×ng c¯ g¡ng, ban cho chÑc vø: #G%s#W!", playerName,guildName, guildName..titleItem.name );
				BroadMsgByChatPipe(sceneId, selfId, sMessage, 4);
		
				BeginEvent( sceneId )
					AddText( sceneId, strTip )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				
				break;
			end
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x805009_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805009_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805009_NotifyFailTips( sceneId, selfId, "Ngß½i hi®n không th¬ nh§n nhi®m vø này" )
		elseif ret == -2 then
			x805009_NotifyFailTips( sceneId, selfId, "Không th¬ tiªp nh§n nhi«u nhi®m vø" )
		end

		return
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x805009_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805009_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805009_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x805009_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805009_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x805009_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805009_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x805009_OnDie( sceneId, selfId, killerId )
end

function x805009_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--°ï¹±½çÃæUI 19821 Banggong Exchangeµ÷ÓÃµ½ÕâÀï
--**********************************
function x805009_BanggongExchange( sceneId, selfId, nvalue ) --Õâ¸öÊÇÍæ¼ÒÊäÈëÖµ£¬Êµ¼ÊµÄ¿Û³ýÖµ»¹ÒªÔÚ´Ë»ù´¡ÉÏ+10%µÄË°ÂÊ
	local haveBangGong = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT)
	
	--ÊÇ·ñ°²È«Ê±¼ä£¬Õâ¸öÅÐ¶Ïº¯ÊýÀïÃæ×Ô¼ºÓÐÌáÊ¾ÐÅÏ¢£¬²»ÐèÒªÕâÀïÐ´ÌáÊ¾ÐÅÏ¢
	if IsPilferLockFlag(sceneId, selfId) <= 0 then
		return
	end
	
	--ÊäÈëÊÇ·ñ³¬¹ýÒÑÓÐÊýÁ¿
	if nvalue > haveBangGong then
		x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8829_03}")
		return
	end
	
	--°ï¹±ÅÆµÄ×î´ó¶î¶È²»ÄÜ³¬¹ý200¡£
	if nvalue > 200 then
		x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8922_25}")
		return
	end
	
	--°ï¹±ÅÆµÄ×îÐ¡¶î¶È²»ÄÜµÍÓÚ10¡£
	if nvalue < 10 then
		x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8922_26}")
		return
	end
	
	local totalvalue = floor( nvalue*0.1 ) + nvalue

	--¼ÓÉÏË°ÂÊÖ®ºóÊÇ·ñÓÐ×ã¹»°ï¹±
	if totalvalue > haveBangGong then
		x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8922_27}")
		return
	end
	
	--µÀ¾ßÀ¸ÊÇ·ñÓÐ¿Õ¼ä
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) <= 0 then
		x805009_NotifyFailTips( sceneId, selfId, "#{SJQM_8819_20}")
		return
	end
	
	local ret = CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, -totalvalue)
	if ret == 1 then
		local BagIndex = TryRecieveItem( sceneId, selfId, 30900050, QUALITY_MUST_BE_CHANGE )
		local roleBangPaiID = GetHumanGuildID(sceneId, selfId)
		
		if BagIndex ~= -1 then
			SetBagItemParam(sceneId, selfId, BagIndex, 4, 2, roleBangPaiID) --°ïÅÉID
			SetBagItemParam(sceneId, selfId, BagIndex, 8, 2, nvalue) --°ï¹±ÊýÖµ
			LuaFnRefreshItemInfo( sceneId, selfId, BagIndex )
			x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8829_10}"..nvalue.."#{BGCH_8829_11}")
		else
			x805009_NotifyFailTips( sceneId, selfId, "L²i tÕo v§t ph¦m")
		end
	else
		x805009_NotifyFailTips( sceneId, selfId, "Kh¤u tr× th¤t bÕi")
	end
	
end
