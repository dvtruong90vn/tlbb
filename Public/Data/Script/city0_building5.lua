--Thành ph¯ NPC
--½ð¿â

x805012_g_scriptId=805012
x805012_g_BuildingID6 = 3

--ÒøÆ±ÀàÐÍID
x805012_g_TicketItemIdx	=	40002000
x805012_g_OutDateTicketItemIdx	=	40000000
x805012_g_MerchandiseRate = 1.5
-- ½»¹ÙÆ±toÕ ðµ ½±Àø±ÈÀý
x805012_g_GuildRate = 1.00		-- °ïÅÉ ðÕt ðßþctoÕ ðµ ×Ê½ð»Ø±¨100%
x805012_g_PlayerRate = 0.20		-- cáiÈË ðÕt ðßþctoÕ ðµ ×Ê½ð»Ø±¨20%

-- Ã¿cáiÍæ¼Òmµt Ìì¿ÉÒÔLînh ÒøÆ±toÕ ðµ ´ÎÊý
x805012_g_TicketTakeTimes = 8

-- Ã¿cái°ïÅÉmµt Ìì¿ÉÒÔLînh ÒøÆ±toÕ ðµ ´ÎÊý»ùÊý
x805012_g_BaseTotalTicketTakeTimes = 200

-- °ïÅÉÃ¿Éýmµt c¤p¿ÉÒÔÔö¼ÓtoÕ ðµ ÒøÆ±Lînh ´ÎÊý
x805012_g_TicketTakeTimesBonusPerLvl = 25
x805012_g_TicketDecValue = 136
x805012_g_TicketIncValue = 680
x805012_g_TicketDecRate = 1.0
x805012_g_TicketIncRate = 1.0
x805012_g_GuildBoomIndex = 18
--¾èÖútoÕ ðµ ×îÐ¡½ð¶î
x805012_g_GuildMoneyLimit	=	10000

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x805012_OnDefaultEvent( sceneId, selfId,targetId )

	--Ðúng·ñÐúng±¾°ï³ÉÔ±
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText

	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "    Vùng tài chính tr÷ng yªu cüa b±n bang, xin ð×ng n¤n ná lÕi, tÕi hÕ thân mÕng tr÷ng trách, không ti®n tiªp ðón"
			AddText(sceneId,strText)
			AddNumText( sceneId, x805012_g_scriptId, "CØa hàng thß½ng nhân",7,5)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	BeginEvent(sceneId)
		strText = "    TÕi hÕ phø trách ti«n cüa b±n bang, ti«n là ngu°n s¯ng,hãy ðªn ch± ta tìm vi®c ð¬ làm, ð¬ có lþi ích cho Bang hµi và bän thân."
		AddText(sceneId,strText);
		AddNumText( sceneId, x805012_g_scriptId, "Lînh ngân phiªu", 6, 2 )
		AddNumText( sceneId, x805012_g_scriptId, "Hoàn trä ngân phiªu", 6, 3 )
		--AddNumText( sceneId, x805012_g_scriptId, "ÉÌÈËµêÆÌ",7,1)
		AddNumText( sceneId, x805012_g_scriptId, "Gi¾i thi®u ti«n trang", 11, 4 )
		AddNumText( sceneId, x805012_g_scriptId, "CØa hàng thß½ng nhân",7,5)
		AddNumText( sceneId, x805012_g_scriptId, "Con ðß¶ng thß½ng nghi®p", 8, 6 )
		AddNumText( sceneId, x805012_g_scriptId, "Giao ngân phiªu quá hÕn", 8, 7 )
		AddNumText( sceneId, x805012_g_scriptId, "Lînh ti«n lß½ng", 8, 8 )
		--life Ìí¼ÓCái này ½¨ÖþÎïtoÕ ðµ ÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805012_g_scriptId,x805012_g_BuildingID6,888)
		AddNumText( sceneId, x805012_g_scriptId, "#{BPZJ_0801014_001}", 6, 11 )--°ï»á×Ê½ð¾èÖú
		AddNumText( sceneId, x805012_g_scriptId, "#{BPZJ_0801014_002}", 11, 12 )--¹ØÓÚ°ï»á×Ê½ð¾èÖú
		
		local Guildpos = GetGuildPos(sceneId, selfId)
		if x805012_IsManager(Guildpos)==1 then
			--¹ÜÀíÕß¸£Àû
			AddNumText( sceneId, x805012_g_scriptId, "Lînh quän lý phúc lþi bang phái", 7,  9)
			AddNumText( sceneId, x805012_g_scriptId, "V« quän lý phúc lþi bang phái", 11, 10 )
		end
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x805012_DrawPay( sceneId, selfId  )

	--µÈc¤p³¬¹ý40c¤p.
	local msg;
	if GetLevel( sceneId, selfId ) < 40 then
		msg = format("Th¶i gian vào bang cüa các hÕ chßa ðü 1 tu¥n, không th¬ lînh ti«n lß½ng.");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	--±ØÐëÈë°ïÊ±¼ä´óÓÚµÈÓÚ1ÖÜ.
	local nFactionJoinTime = GetFactionJoinTime( sceneId, selfId );
	
	local nTimeCur = LuaFnGetCurrentTime()
	local nTimeDelta = nTimeCur - nFactionJoinTime;
	if nTimeDelta < 7*24*60*60 then
		msg = format("Th¶i gian vào bang cüa các hÕ chßa ðü 1 tu¥n, không th¬ lînh ti«n lß½ng.");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	local nWeekCur = GetWeekTime();		--µ±Ç°Ê±¼ä			

	--±ØÐëÃ¿ÖÜÅÜ2´ÎÉÌÒÔÉÏ.
	local nCaoYunTime = GetMissionData( sceneId, selfId, MD_CAOYUN_COMPLETE_TIME );
	local nCaoYunNum = mod(nCaoYunTime,1000);
	local nWeek = floor(nCaoYunTime/1000)
	local Guildpos = GetGuildPos(sceneId, selfId)

	if ((Guildpos ~= GUILD_POSITION_CHIEFTAIN) and (Guildpos ~= GUILD_POSITION_ASS_CHIEFTAIN)) then
		if nCaoYunNum < 2 or nWeek~= nWeekCur then
			msg = format("S¯ l¥n thß½ng vø tu¥n này cüa các hÕ không ðü 2 l¥n.");
			x805012_NotifyTips(sceneId, selfId, msg);
			return 0;
		end	
	end


	--°ïÅÉLînh ´ÎÊý´ïµ½ÉÏÏß
	local nFactionAllTimeNum = CityGetAttr(sceneId, selfId, 14);
	
	local nFactionAllNum = mod(nFactionAllTimeNum,1000)
	local nFactionWeek = floor(nFactionAllTimeNum/1000)
	
	if nWeekCur ~= nFactionWeek then
		nFactionAllNum = 0;
		nFactionAllTimeNum = nWeekCur*1000 + nFactionAllNum;
		local canset = CanCitySetAttr(sceneId, selfId, 14)
	--	if canset >= 1 then
			CitySetAttr(sceneId, selfId, 14, nFactionAllTimeNum)			
	--	end
	end
	
	if nFactionAllNum >= 200 then
		msg = format("Xin l²i, ti«n lß½ng b±n bang tu¥n này ðã ðÕt mÑc gi¾i hÕn.");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	if CityGetMaintainStatus(sceneId, selfId, sceneId) == 1  then
		msg = format("B±n bang · trÕng thái bäo v® th¤p, không th¬ lînh ti«n lß½ng!");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	
	--Ã¿ÖÜÖ»ÄÜLînh 1´Î¹¤×Ê.	
	local nDrawPayTimeLast = GetMissionData( sceneId, selfId, MD_DRAWPAY_TIME );	
	
	local nNum = mod(nDrawPayTimeLast,1000)
	local nWeek = floor(nDrawPayTimeLast/1000)

	local isPosLongEnough = IsGuildPosLongEnough(sceneId, selfId);
	local minusContri = 30

	if (isPosLongEnough == 1) then
		if (Guildpos == GUILD_POSITION_ASS_CHIEFTAIN) then
			minusContri = 15
		elseif (Guildpos == GUILD_POSITION_CHIEFTAIN) then
			minusContri = 0
		end
	end
	
	if nWeekCur ~= nWeek then
	
		--Ã¿´ÎLînh C¥n ºÄ·Ñ30 ði¬m°ï¹±.
		local nContribPoint = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT);
		nContribPoint = nContribPoint - minusContri;		
		if nContribPoint < 0 then
			msg = format("Ðµ c¯ng hiªn bang hµi cüa các hÕ không ðü, nên không th¬ nh§n lînh ti«n lß½ng");
			x805012_NotifyTips(sceneId, selfId, msg);
			nContribPoint = 0;
			return 0;
		end
		
		--»ñÈ¡½ðÇ®
		local guildLevel = GetGuildLevel( sceneId, selfId )
		local goldGet = 0;
		if guildLevel == 1 then
			goldGet = 5*10000;
		elseif guildLevel == 2 then
			goldGet = 6*10000;
		elseif guildLevel == 3 then
			goldGet = 7*10000;
		elseif guildLevel == 4 then
			goldGet = 8*10000;
		elseif guildLevel == 5 then
			goldGet = 9*10000;
		end		
		
		local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY);
		
		if GuildMoney < goldGet then
			x805012_NotifyTips(sceneId, selfId, "QuÛ cüa bang hµi không ðü, không th¬ lînh ðßþc.");
			return 0;
		end
		
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*goldGet)
		
		nFactionAllNum = nFactionAllNum + 1;
		nFactionAllTimeNum = nWeekCur*1000 + nFactionAllNum;
		local canset = CanCitySetAttr(sceneId, selfId, 14)
	--	if canset >= 1 then
			CitySetAttr(sceneId, selfId, 14, nFactionAllTimeNum)			
	--	end

		if (isPosLongEnough == 1) then
			if(Guildpos == GUILD_POSITION_CHIEFTAIN) then
				x805012_NotifyTips(sceneId, selfId, "Các hÕ ðã ðß½ng nhi®m chÑc Bang Chü th¶i gian h½n 1 tu¥n, nên khi nh§n lînh ti«n lß½ng s¨ không tiêu hao ðµ c¯ng hiªn bang hµi.");
			elseif(Guildpos == GUILD_POSITION_ASS_CHIEFTAIN) then
				x805012_NotifyTips(sceneId, selfId, "Các hÕ ðã ðß½ng nhi®m chÑc Phó Bang Chü th¶i gian h½n 1 tu¥n, nên khi nh§n lînh ti«n lß½ng s¨ tiêu hao ðµ c¯ng hiªn bang hµi giäm b¾t 1 nØa.");
			end
		end

		CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, (-1)*minusContri)			
		
		local guildid = GetHumanGuildID(sceneId,selfId);
		LuaFnAuditPlayerGetGuildWage( sceneId, selfId, guildid, goldGet);

		nNum = 1;
		nDrawPayTimeLast = nWeekCur*1000 + nNum;
		SetMissionData(sceneId, selfId, MD_DRAWPAY_TIME, nDrawPayTimeLast );	
				
		
		AddMoney( sceneId, selfId, goldGet );
		local  PlayerName=GetName(sceneId,selfId);
		local sMessage = format("@*;SrvMsg;GLD:#Y#{_INFOUSR%s}#cffff00 tÕi Kim kh¯ t±ng quän cüa Bang phái lînh ti«n lß½ng cüa tu¥n này, t±ng cµng #{_MONEY%d}.", PlayerName, goldGet );
	    BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
		
		
	else
		if nNum >= 1 then
			msg = format("Tu¥n này các hÕ ðã nh§n ti«n lß½ng, tu¥n sau hãy ðªn nhé.");
			x805012_NotifyTips(sceneId, selfId, msg);
			return 0;
		end
		--Ã¿´ÎLînh C¥n ºÄ·Ñ30 ði¬m°ï¹±.
		local nContribPoint = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT);
		nContribPoint = nContribPoint - minusContri;		
		if nContribPoint < 0 then
			msg = format("Ðµ c¯ng hiªn bang hµi cüa các hÕ không ðü, nên không th¬ nh§n lînh ti«n lß½ng");
			x805012_NotifyTips(sceneId, selfId, msg);
			nContribPoint = 0;
			return 0;
		end
		
		--»ñÈ¡½ðÇ®
		local guildLevel = GetGuildLevel( sceneId, selfId )
		local goldGet = 0;
		if guildLevel == 1 then
			goldGet = 5*10000;
		elseif guildLevel == 2 then
			goldGet = 6*10000;
		elseif guildLevel == 3 then
			goldGet = 7*10000;
		elseif guildLevel == 4 then
			goldGet = 8*10000;
		elseif guildLevel == 5 then
			goldGet = 9*10000;
		end		
		
		local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY);
		
		if GuildMoney < goldGet then
			x805012_NotifyTips(sceneId, selfId, "QuÛ cüa bang hµi không ðü, không th¬ lînh ðßþc.");
			return 0;
		end
		
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*goldGet)
		
		
		
		nFactionAllNum = nFactionAllNum + 1;
		nFactionAllTimeNum = nWeekCur*1000 + nFactionAllNum;
		local canset = CanCitySetAttr(sceneId, selfId, 14)
	--	if canset >= 1 then
			CitySetAttr(sceneId, selfId, 14, nFactionAllTimeNum)
	--	end
		
		if (isPosLongEnough == 1) then
			if(Guildpos == GUILD_POSITION_CHIEFTAIN) then
				x805012_NotifyTips(sceneId, selfId, "Các hÕ ðã ðß½ng nhi®m chÑc Bang Chü th¶i gian h½n 1 tu¥n, nên khi nh§n lînh ti«n lß½ng s¨ không tiêu hao ðµ c¯ng hiªn bang hµi.");
			elseif(Guildpos == GUILD_POSITION_ASS_CHIEFTAIN) then
				x805012_NotifyTips(sceneId, selfId, "Các hÕ ðã ðß½ng nhi®m chÑc Phó Bang Chü th¶i gian h½n 1 tu¥n, nên khi nh§n lînh ti«n lß½ng s¨ tiêu hao ðµ c¯ng hiªn bang hµi giäm b¾t 1 nØa.");
			end
		end
		
		CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, (-1)*minusContri)	
		local guildid = GetHumanGuildID(sceneId,selfId);
		LuaFnAuditPlayerGetGuildWage( sceneId, selfId, guildid, goldGet);		

		nNum = nNum + 1;
		nDrawPayTimeLast = nWeekCur*1000 + nNum;
		SetMissionData(sceneId, selfId, MD_DRAWPAY_TIME, nDrawPayTimeLast );
		
		AddMoney( sceneId, selfId, goldGet );

		local  PlayerName=GetName(sceneId,selfId);
		local sMessage = format("@*;SrvMsg;GLD:#Y#{_INFOUSR%s}#cffff00 tÕi Kim kh¯ t±ng quän cüa Bang phái lînh ti«n lß½ng cüa tu¥n này, t±ng cµng #{_MONEY%d}.", PlayerName, goldGet );
	    BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
	end
	

end


--ÅÐ¶ÏÐúng·ñÐúng¹ÜÀí²ã
function x805012_IsManager( Guildpos  )
    if (   (Guildpos == GUILD_POSITION_CHIEFTAIN) 
	    or (Guildpos == GUILD_POSITION_ASS_CHIEFTAIN)
	    or (Guildpos == GUILD_POSITION_HR)
	    or (Guildpos == GUILD_POSITION_INDUSTRY)
	    or (Guildpos == GUILD_POSITION_AGRI)
	    or (Guildpos == GUILD_POSITION_COM) 
	   )then
        return 1;
		end
		return 0;
end


--Lînh °ïÅÉ¹ÜÀíÕß¸£Àû
function x805012_DrawManagerBonus( sceneId, selfId  )

	local msg;
	
	--±ØÐëµ£ÈÎ¹ÙÖ°´óÓÚµÈÓÚ5Ìì.
	if( LuaFnGetGuildAppointTime( sceneId, selfId ) < MIN_APPOINT_TIME_FOR_BONUS ) then
	    msg = format("Các hÕ không phäi là ngß¶i cüa bang hµi, nhi®m vø cüa bang hµi không ti®n nói ra");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end


	local Guildpos = GetGuildPos(sceneId, selfId)
	if ( x805012_IsManager(Guildpos)~=1 ) then
        msg = format("Xin l²i, chï có Quan viên thß½ng nghi®p (Thß½ng nhân), Phó bang chü ho£c bang chü m¾i có th¬ l¤y Ngân phiªu.");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end


	if CityGetMaintainStatus(sceneId, selfId, sceneId) == 1  then
		msg = format("Bang hµi hi®n tÕi tài chính thiªu, m²i mµt phân ti«n ð«u phäi dùng · lßÞi dao thßþng. Quän lý giä phúc lþi chï có th¬ tÕm d×ng phát phóng lÕp.");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	if GetTodayWeek() ~= 0 then
	    msg = format("»¹Ã»µ½·¢·Å¹ÜÀíÕß¸£ÀûtoÕ ðµ Ê±ºòÄØ,²»ÒªÌ«×Å¼±°¡.");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	
	if GetFullExp(sceneId, selfId) == GetExp(sceneId, selfId) then
	    msg = format("Kinh nghi®m cüa ngß½i ðã mu¯n ðÕt t¾i thßþng hÕn, hi®n tÕi lînh phúc lþi r¤t không ðáng giá!");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	
	--Ã¿ÖÜÖ»ÄÜLînh 1´Î°ï»á¸£Àû.	
	local nWeekCur = GetWeekTime();		--µ±Ç°Ê±¼ä		
	
	local nDrawPayTimeLast = GetMissionData( sceneId, selfId, MD_GUILD_MANAGER_DRAW_BONUS );	
		
	if nWeekCur ~= nDrawPayTimeLast then

		--»ñÈ¡½ðÇ®
		local guildLevel = GetGuildLevel( sceneId, selfId )
		local goldGet = 0;	
		
		local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY);
	
		local nCount1 = GuildMoney * GUILD_MANAGER_BONUS_MONEY_TABLE[Guildpos][1];
		local nCount2 = guildLevel * GUILD_MANAGER_BONUS_MONEY_TABLE[Guildpos][2];
	
		goldGet = (( nCount1 < nCount2 ) and nCount1) or nCount2
		
		if GuildMoney < goldGet then
			x805012_NotifyTips(sceneId, selfId, "QuÛ cüa bang hµi không ðü, không th¬ lînh ðßþc.");
			return 0;
		end
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*goldGet)
		AddMoney( sceneId, selfId, goldGet );
		
		-- ðÕt ðßþcKinh nghi®m
		local level = GetLevel(sceneId, selfId)
		local expGet = guildLevel * level * GUILD_MANAGER_BONUS_EXP_TABLE[Guildpos];
		AddExp( sceneId, selfId, expGet );
		-- add by zchw for welfare
		AuditDrawGuildWelfare(sceneId, selfId, goldGet, expGet);
			
		SetMissionData(sceneId, selfId, MD_GUILD_MANAGER_DRAW_BONUS, nWeekCur );	
		
		local  PlayerName=GetName(sceneId,selfId);
		local sMessage = format("@*;SrvMsg;GLD:#YB±n bang [%s][#{_INFOUSR%s}]#cffff00 tÕi Kim kh¯ t±ng quän cüa Bang phái lînh ti«n lß½ng cüa tu¥n này, t±ng cµng #{_MONEY%d} cùng %d Ði¬m kinh nghi®m.", GUILD_POSITION_NAME_TABLE[Guildpos],PlayerName, goldGet, expGet );	
        BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
	  
        msg = format("ChÑc vø cüa ngß½i là: %s",GUILD_POSITION_NAME_TABLE[Guildpos]);
        x805012_NotifyTips(sceneId, selfId, msg);
				
	else
		msg = format("Tu¥n này các hÕ ðã nh§n ti«n lß½ng, tu¥n sau hãy ðªn nhé.");
		x805012_NotifyTips(sceneId, selfId, msg);
		return 0;
	end
	

end



--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x805012_OnEventRequest( sceneId, selfId, targetId, eventId )
	--´¦ÀíCái này ½¨ÖþÎïtoÕ ðµ ÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
	if eventId ~= x805012_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805012_g_scriptId, x805012_g_BuildingID6 )
		return
	end

	--ÌØ²úÉÌµê
	if GetNumText() == 1 then
		if(sceneId == 205) then DispatchShopItem( sceneId, selfId,targetId, 120 )
			elseif(sceneId == 206) then DispatchShopItem( sceneId, selfId,targetId, 121 )
			elseif(sceneId == 207) then DispatchShopItem( sceneId, selfId,targetId, 122 )
			elseif(sceneId == 208) then DispatchShopItem( sceneId, selfId,targetId, 123 )
			elseif(sceneId == 209) then DispatchShopItem( sceneId, selfId,targetId, 124 )
			elseif(sceneId == 210) then DispatchShopItem( sceneId, selfId,targetId, 125 )
			elseif(sceneId == 211) then DispatchShopItem( sceneId, selfId,targetId, 126 )
			elseif(sceneId == 212) then DispatchShopItem( sceneId, selfId,targetId, 127 )
			elseif(sceneId == 213) then DispatchShopItem( sceneId, selfId,targetId, 128 )
			elseif(sceneId == 214) then DispatchShopItem( sceneId, selfId,targetId, 129 )
			elseif(sceneId == 215) then DispatchShopItem( sceneId, selfId,targetId, 130 )
			elseif(sceneId == 216) then DispatchShopItem( sceneId, selfId,targetId, 131 )
			elseif(sceneId == 217) then DispatchShopItem( sceneId, selfId,targetId, 132 )
			elseif(sceneId == 218) then DispatchShopItem( sceneId, selfId,targetId, 133 )
			elseif(sceneId == 219) then DispatchShopItem( sceneId, selfId,targetId, 134 )
			elseif(sceneId == 220) then DispatchShopItem( sceneId, selfId,targetId, 135 )
			elseif(sceneId == 221) then DispatchShopItem( sceneId, selfId,targetId, 136	)
			elseif(sceneId == 222) then DispatchShopItem( sceneId, selfId,targetId, 137	)
		end
	elseif GetNumText() == 888 then
		BeginEvent(sceneId)
		--life Ìí¼ÓCái này ½¨ÖþÎïtoÕ ðµ ÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805012_g_BuildingID6 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	-- ðÕt ðßþcÅÜÉÌÒøÆ±
	elseif GetNumText() == 2 then
		--Ðúng·ñÐúng±¾°ï³ÉÔ±
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

		--Ðúng·ñÐúngÉÌÈË»ò°ïÖ÷
		local	guildpos = GetGuildPos(sceneId, selfId)
		if ((guildpos ~= GUILD_POSITION_COM) and (guildpos ~= GUILD_POSITION_CHIEFTAIN) and (guildpos ~= GUILD_POSITION_ASS_CHIEFTAIN) and (guildpos ~= GUILD_POSITION_AGRI) and (guildpos ~= GUILD_POSITION_INDUSTRY) and (guildpos ~= GUILD_POSITION_HR)) then
				BeginEvent(sceneId)
					strText = "Xin l²i, chï có Quan viên thß½ng nghi®p (Thß½ng nhân), Phó bang chü ho£c bang chü m¾i có th¬ l¤y Ngân phiªu."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--c¤p±ðÐúng·ñ¹»
		local level = GetLevel(sceneId, selfId)
		if(level<40) then
				BeginEvent(sceneId)
					strText = "V¸ huynh ð® này bây gi¶ mà kinh doanh, có l¨ h½i s¾m mµt chút. Hay là ðþi ðªn c¤p 40 r°i quay lÕi tìm ta, nhß thª s¨ t¯t h½n"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--²»Í¬c¤p±ð¶ÔÓ¦²»Í¬toÕ ðµ ½ð¶î
		local curMoney = 0
		local maxMoney = 0
		local maxmaxMoney = 0

		if level>=40 and level<55 then
			curMoney = 20000
			maxMoney = 100000
			maxmaxMoney = 250000
		elseif level>=55 and level<70 then
			curMoney = 30000
			maxMoney = 150000
			maxmaxMoney = 350000
		elseif level>=70 and level<85 then
			curMoney = 40000
			maxMoney = 250000
			maxmaxMoney = 450000
		elseif level>=85 and level<100 then
			curMoney = 50000
			maxMoney = 300000
			maxmaxMoney = 550000
		
		elseif level>=100 and level<115 then
			curMoney = 50000
			maxMoney = 310000
			maxmaxMoney = 600000
		elseif level>=115 and level<130 then
			curMoney = 60000
			maxMoney = 320000
			maxmaxMoney = 650000
		
		elseif level>=130 and level<145 then
			curMoney = 70000
			maxMoney = 330000
			maxmaxMoney = 700000
		else
			curMoney = 80000
			maxMoney = 340000
			maxmaxMoney = 750000
		end

		--Ðúng·ñTÕi äîÔË
		local haveImpact = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 113)
		if haveImpact == 1 then
				BeginEvent(sceneId)
					strText = "Xin l²i, các hÕ ðang · trÕng thái v§n chuy¬n không th¬ nh§n ngân phiªu."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end
		--Ðúng·ñÓÐÒøÆ±
		local	bagpos = GetBagPosByItemSn(sceneId, selfId, x805012_g_TicketItemIdx)

		if bagpos ~= -1	then
				BeginEvent(sceneId)
					strText = "Xin l²i, các hÕ chï có th¬ nh§n ðßþc mµt t¶ ngân phiªu."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return

		elseif bagpos == -1 then

				--°ïÅÉ×Ê½ðÐúng·ñ¹»¿ª³ömµt ÕÅÒøÆ±toÕ ðµ 
				local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY)
				if GuildMoney <= curMoney then
						BeginEvent(sceneId)
							strText = "Quî cüa bang phái không ðü ð¬ xu¤t ngân phiªu cho các hÕ"
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
						return
				end

				-- mµt ÌìÖ»ÄÜÁì 8 ´Î
				local DayTimes, oldDate, nowDate, takenTimes, totalTakenTimes

				DayTimes = GetMissionData( sceneId, selfId, MD_GUILDTICKET_TAKENTIMES )
				oldDate = mod( DayTimes, 100000 )
				takenTimes = floor( DayTimes/100000 )

				nowDate = GetDayTime()
				if nowDate == oldDate then
					takenTimes = takenTimes + 1
				else
					takenTimes = 1
				end

				if takenTimes > x805012_g_TicketTakeTimes then
					BeginEvent( sceneId )
						AddText( sceneId, "Xin l²i, các hÕ nh§n nhi®m vø thß½ng nhân hôm nay ðã ðßþc 8 l¥n, xin ngày mai quay lÕi." )
					EndEvent( sceneId )
					DispatchMissionTips( sceneId, selfId )
					return
				end

				-- °ïÅÉmµt Ìì½ÓÈ¡´ÎÊýÓÐÉÏÏÞ
				DayTimes = GetTicketTakenTimes( sceneId, selfId )
				oldDate = mod( DayTimes, 100000 )
				totalTakenTimes = floor( DayTimes/100000 )

				if nowDate == oldDate then
					totalTakenTimes = totalTakenTimes + 1
				else
					totalTakenTimes = 1
				end

				local guildLevel = GetGuildLevel( sceneId, selfId )
				if not guildLevel or guildLevel < 1 or guildLevel > 5 then
					guildLevel = 1
				end

				local maxTimes = x805012_g_BaseTotalTicketTakeTimes +
					x805012_g_TicketTakeTimesBonusPerLvl * ( guildLevel - 1 );
					
				local curGuildBoom = CityGetAttr(sceneId, selfId,x805012_g_GuildBoomIndex);
				if(curGuildBoom < x805012_g_TicketDecValue) then
					maxTimes = floor(maxTimes * x805012_g_TicketDecRate);
				elseif(curGuildBoom >= x805012_g_TicketIncValue) then
					maxTimes = floor(maxTimes * x805012_g_TicketIncRate);
				end

				if totalTakenTimes > maxTimes then
					BeginEvent( sceneId )
						AddText( sceneId, "Ch² tÕi hÕ ngày nào cûng có." .. maxTimes .. "Ngân phiªu, r¤t ðáng tiªc, bây gi¶ ðã nh§n hªt, hay là ngày mai ðªn nh§n s¾m thì t¯t h½n." )
					EndEvent( sceneId )
					DispatchMissionTips( sceneId, selfId )
					return
				end


				-- É¾³ýÉíÉÏtoÕ ðµ ÅÜÉÌÉÌÆ·
				local itemIdx = 0
				for i = 0, 99 do
					itemIdx = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i )
					if itemIdx >= 20400001 and itemIdx <= 20400200 then
						LuaFnEraseItem( sceneId, selfId, i )
					end
				end

				BeginAddItem( sceneId )
				AddItem( sceneId, x805012_g_TicketItemIdx, 1 )
				ret = EndAddItem( sceneId, selfId )
				if ret > 0 then
					AddItemListToHuman(sceneId,selfId )
					bagpos = GetBagPosByItemSn(sceneId, selfId, x805012_g_TicketItemIdx)
					--¸ù¾ÝËùTÕi ³¡¾°,ÎïÆ·ÀàÐÍ ðÕt ðßþcÓ¦¸ÃtoÕ ðµ ÎïÆ·¼ÛÖµ
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_CUR_MONEY_START, TICKET_ITEM_PARAM_CUR_MONEY_TYPE, curMoney)
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MONEY_TYPE, maxMoney)
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MAX_MONEY_TYPE, maxmaxMoney)
					CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*curMoney)
					
					DayTimes = nowDate + totalTakenTimes * 100000
					SetTicketTakenTimes( sceneId, selfId, DayTimes )
					
					DayTimes = nowDate + takenTimes * 100000
					SetMissionData( sceneId, selfId, MD_GUILDTICKET_TAKENTIMES, DayTimes )
					
					LuaFnRefreshItemInfo(sceneId, selfId, bagpos)
					--ÅÜÉÌbuff
					LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,113,0)
					BeginEvent(sceneId)
						strText = "Ch² tÕi hÕ vçn còn " .. ( maxTimes + 1 - totalTakenTimes ) .. " Ngân phiªu, r¤t t¯t r¤t t¯t, t¶ ngân phiªu này các hÕ c¥m l¤y, kiªm v« nhi«u ngân lßþng cho b±n Bang quä công lao không nhö."
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				else
					BeginEvent(sceneId)
						strText = "Nh§n lînh Ngân phiªu th¤t bÕi"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				end
		end
	--½»»ØÒøÆ±
	elseif GetNumText() == 3 then
		--Ðúng·ñÐúng±¾°ï³ÉÔ±
		local guildid 		= GetHumanGuildID(sceneId, selfId)
		local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
		--Ðúng·ñÐúngÉÌÈËÈÕ
		local merchandiseDayRate	=	1.0;
		
		if (GetTodayWeek() == 6 )then
			merchandiseDayRate = x805012_g_MerchandiseRate;
		end
		
		if(guildid ~= cityguildid) then
				BeginEvent(sceneId)
					strText = "Các hÕ không phäi là ngß¶i cüa b±n bang.."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--Ðúng·ñÐúngÉÌÈË»ò°ïÖ÷
		local	guildpos = GetGuildPos(sceneId, selfId)
		if ( (guildpos ~= GUILD_POSITION_COM) and (guildpos ~= GUILD_POSITION_CHIEFTAIN) and (guildpos ~= GUILD_POSITION_ASS_CHIEFTAIN) and (guildpos ~= GUILD_POSITION_AGRI) and (guildpos ~= GUILD_POSITION_INDUSTRY) and (guildpos ~= GUILD_POSITION_HR)) then
				BeginEvent(sceneId)
					strText = "Xin l²i, chï có Quan viên thß½ng nghi®p (Thß½ng nhân), Phó bang chü ho£c bang chü m¾i có th¬ giao trä Ngân phiªu."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--c¤p±ðÐúng·ñ¹»
		local level = GetLevel(sceneId, selfId)
		if(level<40) then
				BeginEvent(sceneId)
					strText = "V¸ huynh ð® này bây gi¶ mà kinh doanh, có l¨ h½i s¾m mµt chút.."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		local	bagpos = GetBagPosByItemSn(sceneId, selfId, x805012_g_TicketItemIdx)
		if bagpos ~= -1	then
			local	TicketMoney = GetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_CUR_MONEY_START, TICKET_ITEM_PARAM_CUR_MONEY_TYPE)
			local	MaxTicketMoney = GetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MONEY_TYPE)
			if TicketMoney ~= 0 then

				if TicketMoney < MaxTicketMoney	then
						BeginEvent(sceneId)
							strText = "Ngân phiªu cüa các hÕ không nh§n ðßþc s¯ ti«n ðáng phäi nh§n, tiªp tøc ði kiªm ti«n ði"
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
						return
				end

				local ReturnType = DelItem(sceneId, selfId, x805012_g_TicketItemIdx, 1)
				LuaFnCancelSpecificImpact(sceneId,selfId,113)
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
				end

				LuaFnAuditPaoShang(sceneId, selfId, TicketMoney)

				local	FatigueRate = 1.0

				local isLittleFatigueState 		= LuaFnIsLittleFatigueState(sceneId, selfId)
				local isExceedingFatigueState = LuaFnIsExceedingFatigueState(sceneId, selfId)
				
				if(isExceedingFatigueState == 1) then
					FatigueRate = 0.0
				elseif(isLittleFatigueState == 1) then
					FatigueRate = 0.5
				end

				CityChangeAttr(sceneId, selfId, GUILD_MONEY, TicketMoney * x805012_g_GuildRate*merchandiseDayRate*FatigueRate)	-- °ïÅÉ ðÕt ðßþctoÕ ðµ ×Ê½ð»Ø±¨
				AddMoney(sceneId, selfId, TicketMoney * x805012_g_PlayerRate*merchandiseDayRate)	-- cáiÈË ðÕt ðßþctoÕ ðµ ×Ê½ð»Ø±¨

				local contripoint = 0
				local exppoint		= 0

				if level>=11 and level <40 then
					contripoint = 5
					exppoint = 30000
				elseif level>=40 and level<60 then
					contripoint = 5
					exppoint = 45000
				elseif level>=60 and level<80 then
					contripoint = 5
					exppoint = 50000
				elseif level>=80 and level<100 then
					contripoint = 5
					exppoint = 55000
				elseif level>=100 and level<120 then
					contripoint = 5
					exppoint = 60000
				elseif level>=120 then
					contripoint = 5
					exppoint = 65000
				--else
				--	contripoint = 5
				--	exppoint = 30000
				end

				CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, contripoint)
				AddExp(sceneId, selfId, exppoint*merchandiseDayRate)

				--¼ÇÂ¼ Íê³É ÐÅÏ¢
				local nCaoYunTime = GetMissionData( sceneId, selfId, MD_CAOYUN_COMPLETE_TIME );
				
				local nCaoYunNum = mod(nCaoYunTime,1000)
				
				
				local nWeek = floor(nCaoYunTime/1000)
				

				local nWeekCur = GetWeekTime()		--µ±Ç°Ê±¼ä
				--³¬¹ýmµt ÖÜ, ÖØÐÂÉèÖÃ Íê³É´ÎÊý
				if nWeekCur ~= nWeek then
					nCaoYunNum = 1;
					nCaoYunTime = nWeekCur*1000 + nCaoYunNum;
					SetMissionData(sceneId, selfId, MD_CAOYUN_COMPLETE_TIME, nCaoYunTime );				
				else
					nCaoYunNum = nCaoYunNum + 1;
					nCaoYunTime = nWeekCur*1000 + nCaoYunNum;
					SetMissionData(sceneId, selfId, MD_CAOYUN_COMPLETE_TIME, nCaoYunTime );
				end
			
			
				--°ïÅÉÆµµÀÍ¨Öª
				local name = GetName( sceneId, selfId )
				BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#Y#{_INFOUSR" .. name .. "} #r#rHoàn t¤t nhi®m vø thß½ng nhân, giúp b±n bang tång s¯ ti«n cüa bang hµi lên #{_MONEY"..TicketMoney*x805012_g_GuildRate*merchandiseDayRate*FatigueRate .. "}", 6 )
				--BroadMsgByChatPipe( sceneId, selfId, "22", 6 )
				
				if (merchandiseDayRate ~= 1.0  )then
					Msg2Player(sceneId, selfId, "#RDo mai là ngày thß½ng nhân, vì v§y các hÕ thu ðßþc nhi«u thu nh§p h½n bình thß¶ng.",MSG2PLAYER_PARA);
				end
				
				LuaFnComMissComplete( sceneId, selfId )
	
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
	elseif GetNumText() == 4 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_QianZhuang}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 5 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃThành ph¯ ÉÌµê½çÃæ
			UICommand_AddInt(sceneId,x805012_g_BuildingID6)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 104)
	elseif GetNumText() == 6 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃThành ph¯ ÉÌÒµÂ·Ïß½çÃæ
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 105)
	elseif GetNumText() == 7 then
			BeginEvent( sceneId )
				AddText( sceneId, "Xin hãy mang ngân phiªu quá hÕn ð£t vào trong ô v§t ph¦m thÑ nh¤t!" )
			EndEvent( sceneId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x805012_g_scriptId, -1, 2 )
	elseif GetNumText() == 8 then
		--x805012_DrawPay( sceneId, selfId );
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x805012_g_scriptId)
			UICommand_AddInt(sceneId, targetId)
			UICommand_AddString(sceneId, "DrawPay");
			UICommand_AddString(sceneId, "Ngài xác ð¸nh tiêu hao s¯ lßþng nh¤t ð¸nh bang c¯ng, lînh ti«n lß½ng sao?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
	elseif GetNumText() == 9 then
		x805012_DrawManagerBonus( sceneId, selfId );
	elseif GetNumText() == 10 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BPFL_20080318_01}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 11 then
		local guildmoney = CityGetAttr(sceneId, selfId, GUILD_MONEY)
		local guildmaxmoney = CityGetAttr(sceneId, selfId, 16)
		
		if guildmoney < guildmaxmoney then
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ°ïÅÉ×Ê½ð¾èÖú½çÃæ
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 19822)
		else  --°ï»á×Ê½ðÒÑ¾­µ½´ïÉÏÏÞ,²»C¥n ÔÙ¾èÖúÁË.
			BeginEvent(sceneId)
				AddText(sceneId,"#{BPZJ_0801014_003}")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif GetNumText() == 12 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BPZJ_0801014_019}")--°ï»á×Ê½ð¾èÖú½éÉÜ
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

end

--**********************************
--Íæ¼ÒÌá½»ÕäÊÞºótoÕ ðµ »Øµ÷º¯Êý
--**********************************
function x805012_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	if index1 < 0 or index1 >= 255 then
		x805012_MyNotifyTip( sceneId, selfId, "Các hÕ vçn chßa ð£t ngân phiªu quá hÕn c¥n giao d¸ch." )
		return
	else
		if LuaFnIsItemAvailable( sceneId, selfId, index1) == 1 then
			local	itm_id		= LuaFnGetItemTableIndexByIndex( sceneId, selfId, index1 )
			if(itm_id == x805012_g_OutDateTicketItemIdx) then
				local	TicketMoney = GetBagItemParam(sceneId, selfId, index1, 0, 2)
				EraseItem( sceneId, selfId, index1) 
				CityChangeAttr(sceneId, selfId, GUILD_MONEY, TicketMoney)	-- °ïÅÉ ðÕt ðßþctoÕ ðµ ×Ê½ð»Ø±¨
				AddMoney(sceneId, selfId, TicketMoney * 0.2)	-- cáiÈË ðÕt ðßþctoÕ ðµ ×Ê½ð»Ø±¨
				local name = GetName( sceneId, selfId )
				BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."} không biªt t× · ðâu có ðßþc t¤m ngân phiªu quá hÕn, #{_MONEY"..TicketMoney.."} ðã ðßa vào quÛ bang hµi cüa b±n bang. ", 6 )
				x805012_MyNotifyTip( sceneId, selfId, "Ngân Phiªu quá hÕn xung vào quÛ bang hµi thành công" )
				return
			else
				x805012_MyNotifyTip( sceneId, selfId, "V§t ph¦m các hÕ mu¯n giao d¸ch không phäi ngân phiªu quá hÕn" )
				return
			end
		end
	end
	x805012_MyNotifyTip( sceneId, selfId, "Ð« ngh¸ th¤t bÕi" )
end

--**********************************
--Íæ¼ÒÌá½»°ï»á×Ê½ð¾èÖúºótoÕ ðµ »Øµ÷º¯Êý
--**********************************
function x805012_PutGuildMoney( sceneId, selfId, money )
	--Ðúng·ñÐúng±¾°ï³ÉÔ±,°´µÀÀíÐúng²»»á×ßÕâÀï,²»Ðúng±¾°ïtoÕ ðµ ³ÉÔ±²»¿ÉÄÜ´ò¿ª¾èÖú½çÃæ,µ«ÎªÁË±£ÏÕ»¹Ðúng¼ÓÉÏ
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)

	if guildid ~= cityguildid then
		x805012_NotifyTips(sceneId, selfId, "Các hÕ không phäi thành viên b±n bang!")
		return
	end
	
	if money < x805012_g_GuildMoneyLimit then --²»Ó¦¸Ã×ßµ½ÕâÀï,³ý·Ç¿Í»§¶Ë·Ç·¨Êý¾Ý
		x805012_NotifyTips(sceneId, selfId, "Ðßa vào  kim ngÕch #{_EXCHG"..x805012_g_GuildMoneyLimit.."}")
		return
	end
	
	--¶Ô²»Æð,ÄúÊäÈëtoÕ ðµ ½ð¶î´óÓÚÄúËùÐ¯´øtoÕ ðµ ½ð¶î.
	local nMoneyJZ = GetMoneyJZ(sceneId,selfId)
	local nMoneyJB = GetMoney(sceneId,selfId)
	local nMoneySelf = nMoneyJZ + nMoneyJB
	if nMoneySelf < money then
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_007}")
		return
	end
	
	--Ðúng·ñ°²È«Ê±¼ä,Cái này ÅÐ¶Ïº¯ÊýÀïÃæ×Ô¼ºÓÐÌáÊ¾ÐÅÏ¢,²»C¥n ÕâÀïÐ´ÌáÊ¾ÐÅÏ¢
	if IsPilferLockFlag(sceneId, selfId) <= 0 then
		return
	end
	
	local addmoney = floor(money*0.9)
	--hzp 2008-12-15
	local guildmoney = CityGetAttr(sceneId, selfId, GUILD_MONEY)
	local guildmaxmoney = CityGetAttr(sceneId, selfId, 16)
	
	--PrintStr(" addmoney "..addmoney.." guildmoney "..guildmoney.." guildmaxmoney "..guildmaxmoney)
	
	if addmoney + guildmoney > guildmaxmoney then
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_021}#{_MONEY"..guildmaxmoney.."}#{BPZJ_0801014_014}")
		return
	end
	
	--local ret = CostMoney(sceneId, selfId, money)
	local jzCost, jbCost = LuaFnCostMoneyWithPriority( sceneId, selfId, money );	
	if jzCost == -1 then
		x805012_NotifyTips(sceneId, selfId, "Kh¤u tr× ti«n th¤t bÕi!")
		return
	end
	--Èç¹ûÖ»¿Û³ý½ð±Ò
	if jzCost == 0 then
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, addmoney)
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_015}#{_MONEY"..jbCost.."}.")
		x805012_NotifyTips(sceneId, selfId, "Kh¤u thuª sau, bang hµi tài chính thñc tª tång trß·ng#{_MONEY"..addmoney.."}.")
		local name = GetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."}#{BPZJ_0801014_017}#{_MONEY"..jbCost.."}#{BPZJ_0801014_018}", 6 )
	end
	--Èç¹ûÖ»¿Û³ý½»×Ó
	if jbCost == 0 then
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, addmoney)
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_015}#{_EXCHG"..jzCost.."}.")
		x805012_NotifyTips(sceneId, selfId, "Kh¤u thuª sau, bang hµi tài chính thñc tª tång trß·ng#{_MONEY"..addmoney.."}.")
		local name = GetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."}#{BPZJ_0801014_017}#{_EXCHG"..jzCost.."}#{BPZJ_0801014_018}", 6 )
	end
	--Èç¹û¼ÈÓÐ½»×ÓÓÖÓÐ½ð±Ò
	if jzCost ~= 0 and jbCost ~= 0 then
		CityChangeAttr(sceneId, selfId, GUILD_MONEY, addmoney)
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_015}#{_EXCHG"..jzCost.."}.")
		x805012_NotifyTips(sceneId, selfId, "#{BPZJ_0801014_015}#{_MONEY"..jbCost.."}.")
		x805012_NotifyTips(sceneId, selfId, "Kh¤u thuª sau, bang hµi tài chính thñc tª tång trß·ng#{_MONEY"..addmoney.."}.")
		local name = GetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."}#{BPZJ_0801014_017}#{_EXCHG"..jzCost.."} cùng #{_MONEY"..jbCost.."}#{BPZJ_0801014_018}", 6 )
		--BroadMsgByChatPipe( sceneId, selfId, "@*;SrvMsg;GLD:#{_INFOUSR"..name.."}#{BPZJ_0801014_017}#{_MONEY"..jbCost.."}#{BPZJ_0801014_018}", 6 )

	end
end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x805012_NotifyTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x805012_MyNotifyTip( sceneId, selfId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
