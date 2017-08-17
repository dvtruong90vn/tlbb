--ÇéÈË½Ú»î¶¯
--¶Ò»»ÇéÈË½ÚÀñÎï

--½Å±¾ºÅ
x000152_g_ScriptId = 000152

x000152_StartTime   = 9040
x000152_EndTime     = 9047

x000152_g_Gift = 	30501166

--buffer¶ÔÓ¦µÄID
x000152_BufferID = 74

x000152_g_GiftTbl = {
	30505193,
	30505194,
	10124130,
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000152_OnDefaultEvent( sceneId, selfId,targetId  )
	BeginEvent(sceneId)
		AddText(sceneId,"#{QRJ_81009_02}")
		local curDayTime = GetDayTime()
		if (curDayTime>=x000152_StartTime and curDayTime<x000152_EndTime) then
			AddNumText(sceneId,x000152_g_ScriptId,"Nh§n mûi tên tình yêu",6,0)
			AddNumText(sceneId,x000152_g_ScriptId,"Ð±i ph¥n thß·ng",6,1)
		end 
		AddNumText(sceneId,x000152_g_ScriptId,"V« Vînh H¢ng Toàn Gi¾i",11,2)
		--AddNumText(sceneId, x000152_g_ScriptId, "#{YHJZ_081007_2}", 11, 3);
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000152_OnEventRequest( sceneId, selfId, targetId, eventId )
		
		if GetNumText() == 0 then
			x000152_GiveArrow(sceneId, selfId, targetId, eventId)
		elseif GetNumText() == 1 then
			x000152_GiveGift(sceneId, selfId, targetId, eventId)
		elseif GetNumText() == 2 then
			x000152_NotifyFailBox(sceneId, selfId,targetId,"#{QRJ_81009_01}")
		elseif GetNumText() == 3 then
			x000152_NotifyFailBox(sceneId, selfId, targetId,"#{YHJZ_081007_48}")
		end
		
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000152_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x000152_GiveArrow(sceneId, selfId, targetId, eventId)
		--20¼¶µÄÏÞÖÆ
		if GetLevel( sceneId, selfId ) < 20 then
			x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_03}" )
			return
		end
		
		--ÅÐ¶Ï½ñÌìÊÇ·ñÁì¹ý
		local td = GetDayTime()
		local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_QINGRENJIE_ARROWDAY)
		if td <= LastGetGiftTime then
				x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_04}" )
			return
		    --SetMissionData( sceneId, selfId, MD_QINGRENJIE_ARROWCOUNT, 0 )
		    SetMissionData( sceneId, selfId, MD_QINGRENJIE_ARROWDAY, td )			
		end 
		
		-- ¼ì²é±³°ü¿Õ¼ä
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				BeginEvent(sceneId)
				AddText( sceneId, "#{QRJ_81009_14}" )
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
		else
			
				--¸øÍæ¼Ò¶«Î÷£¬Íê³É
			BeginAddItem( sceneId )
				local nIndex = AddItem( sceneId, x000152_g_Gift, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then 
				return
			end
			AddItemListToHuman(sceneId,selfId)
			--·µ»ØNPCµÄ¶Ô»° 
			x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_24}" )
			
			--ÐÑÄ¿ÌáÊ¾
			BeginEvent(sceneId) 
				AddText( sceneId, "#{QRJ_81009_25}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			--SetMissionData(sceneId, selfId, MD_QINGRENJIE_ARROWCOUNT,1)
			SetMissionData(sceneId, selfId, MD_QINGRENJIE_ARROWDAY,td)
		end
		
end 
--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000152_GiveGift(sceneId, selfId, targetId, eventId)

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_06}" )
		return
	end
	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then 
		x000152_NotifyFailBox( sceneId, selfId,targetId, "#{QRJ_81009_07}" )
		return
	end
	
	if GetTeamSize( sceneId, selfId ) ~=2 then
	  x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_08}" )
	  return
	end
	
		-- È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊýÁ¿£¨°üÀ¨×Ô¼º£©
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_09}" )
		return
	end
	
	--Á½¶ÓÔ±µÄGUID,ÔÙ×ª»¯ÎªOBjID
	local ID1 = GetNearTeamMember( sceneId, selfId, 0 )
	local ID2 = GetNearTeamMember( sceneId, selfId, 1 )
	
	--ÅÐ¶ÏÁ½ÈËµÄÐÔ±ð
	if (LuaFnGetSex(sceneId,ID1) == LuaFnGetSex(sceneId,ID2)) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_10}" )
		return
	end
	
	--ÅÐ¶Ï½ñÌìÊÇ·ñÁì¹ý
	local td = GetDayTime()
	local LastSelfGiftTime  = GetMissionData(sceneId,ID1,MD_QINGRENJIE_KISSDAY)
	
	--¼ÇÂ¼ÒÑ¾­Áì½±µÄÈËÊý
	local iCount = 0
	--¼ÇÂ¼ÒÑ¾­Áì½±µÄÈËÃû
	local strName =""
	
	--¶Ó³¤ÊÇ·ñÁì¹ý
	if (td <= LastSelfGiftTime) then
		iCount =iCount+1
		strName = LuaFnGetName(sceneId,ID1)
		--x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..LuaFnGetName(sceneId,ID1).."#{QRJ_81009_13}" )
	end 
	
	--¶ÓÔ±ÊÇ·ñÁì¹ý
	LastSelfGiftTime  = GetMissionData(sceneId,ID2,MD_QINGRENJIE_KISSDAY)
	
	if (td <= LastSelfGiftTime) then
		iCount =iCount+1
		strName = LuaFnGetName(sceneId,ID2)
		--x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..LuaFnGetName(sceneId,ID2).."#{QRJ_81009_13}" )
	end 
	
	if (iCount ==1) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..strName.."#{QRJ_81009_13}" )
		return 
	end
	if (iCount ==2) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81114_1}" )
		return 
	end
	
	--Á½¸öÈËÍ¬Ê±ÓÐÁË°®ÉñÖ®ÎÇ
	if (0==LuaFnHaveImpactOfSpecificDataIndex(sceneId, ID1,x000152_BufferID) or 0==LuaFnHaveImpactOfSpecificDataIndex(sceneId, ID2,x000152_BufferID)) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_11}" )
		return
	end
	
	
	
	-- ¶Ó³¤¼ì²é±³°ü¿Õ¼ä
	if LuaFnGetPropertyBagSpace( sceneId, ID1 ) < 1 then
			--±¾ÈËÌáÊ¾ÄúµÄ±³°ü¿Õ¼ä²»¹»
			BeginEvent(sceneId)
			AddText( sceneId, "#{QRJ_81009_14}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID1)
			--ÁíÒ»ÈËÌáÊ¾AAA±³°ü¿Õ¼ä²»¹»
			BeginEvent(sceneId)
			AddText( sceneId, LuaFnGetName(sceneId,ID1).."#{QRJ_81009_15}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID2)
			return
	end 
		
	--¶ÓÔ±¼ì²é±³°ü¿Õ¼ä
	if LuaFnGetPropertyBagSpace( sceneId, ID2 ) < 1 then
			--±¾ÈËÌáÊ¾ÄúµÄ±³°ü¿Õ¼ä²»¹»
			BeginEvent(sceneId)
			AddText( sceneId, "#{QRJ_81009_14}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID2)
			--ÁíÒ»ÈËÌáÊ¾AAA±³°ü¿Õ¼ä²»¹»
			BeginEvent(sceneId)
			AddText( sceneId, LuaFnGetName(sceneId,ID2).."#{QRJ_81009_15}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID1)
			return
	end 
		
	--É¾³ýÁ½ÈËÉíÉÏµÄbuffer
	LuaFnCancelSpecificImpact(sceneId, ID1,x000152_BufferID)
	LuaFnCancelSpecificImpact(sceneId, ID2,x000152_BufferID)
		
	--ËÍÁ½ÈË°®ÉñÖ®ÎÇ½±Àø
	local nGiftIndex = x000152_RandomGift()

	BeginAddItem( sceneId )
	local nIndex = AddItem( sceneId, x000152_g_GiftTbl[nGiftIndex], 1 )
	local ret = EndAddItem( sceneId, ID1 )
	if ret <= 0 then 
		return
	end
	AddItemListToHuman(sceneId,ID1)
	SetMissionData(sceneId, ID1, MD_QINGRENJIE_KISSDAY,td)
	local str ="#{QRJ_81009_26}#{_ITEM"..x000152_g_GiftTbl[nGiftIndex].."}"
	--ÀñÎïµÄÐÑÄ¿ÌáÊ¾
		BeginEvent(sceneId)
			AddText( sceneId, str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,ID1)
	
	if (nGiftIndex ==3) then
		local	bagpos = GetBagPosByItemSn(sceneId, ID1, x000152_g_GiftTbl[nGiftIndex])
		local szTransferEquip = GetBagItemTransfer(sceneId,ID1, bagpos)
		local str = format( "#{_INFOUSR%s}".."#{QRJ_81009_23}#{_INFOMSG%s}#{QRJ_81009_27}", LuaFnGetName(sceneId,ID1),szTransferEquip)
		BroadMsgByChatPipe( sceneId, ID1, str, 4 )
		AuditQingRenJieShiZhuang(sceneId,ID1)
	end 
	
	--ËÍµÚ¶þ¸öÈË°®ÉñÖ®ÎÇ½±Àø
	nGiftIndex = x000152_RandomGift()
	
	BeginAddItem( sceneId )
	nIndex = AddItem( sceneId, x000152_g_GiftTbl[nGiftIndex], 1 )
	local ret = EndAddItem( sceneId, ID2 )
	if ret <= 0 then 
		return
	end
	
	AddItemListToHuman(sceneId,ID2)
	str ="#{QRJ_81009_26}#{_ITEM"..x000152_g_GiftTbl[nGiftIndex].."}"
	--ÀñÎïµÄÐÑÄ¿ÌáÊ¾
	BeginEvent(sceneId)
		AddText( sceneId, str)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,ID2)

	SetMissionData(sceneId, ID2, MD_QINGRENJIE_KISSDAY,td)
	if (nGiftIndex ==3) then
		local	bagpos = GetBagPosByItemSn(sceneId, ID2, x000152_g_GiftTbl[nGiftIndex])
		local szTransferEquip = GetBagItemTransfer(sceneId,ID2, bagpos)
		local str = format( "#{_INFOUSR%s}".."#{QRJ_81009_23}#{_INFOMSG%s}#{QRJ_81009_27}", LuaFnGetName(sceneId,ID2),szTransferEquip)
		BroadMsgByChatPipe( sceneId, ID2, str, 4 )
		AuditQingRenJieShiZhuang(sceneId,ID2)
	end 
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,ID1,18,0)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,ID2,18,0)
	x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_16}" )
	
end

--**********************************
-- Ëæ»úÎïÆ·µÄIDºÅ
--**********************************
function x000152_RandomGift()
	local nMsgIndex = random( 1, 100 )
	if (nMsgIndex<49) then
		return 1
	elseif (nMsgIndex<97) then
		return 2
	end
	
	return 3
end

