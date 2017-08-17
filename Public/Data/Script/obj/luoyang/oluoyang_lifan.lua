--NPC
--
--½Å±¾ºÅ
x000150_g_scriptId = 000150

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000150_g_eventList={500604, 500607, 500620}

--[tx43453]
x000150_g_NumText_ExchangeXhuanHuangYu = 2	-- Ðþê»Óñ¶Ò»»°µÆ÷
x000150_g_NumText_ExchangeXhuanHuangYuHelp = 3	-- Ðþê»Óñ¶Ò»»°µÆ÷°ïÖú
x000150_g_NumText_DoExchange = 4	-- [tx45022]È·¶¨¶Ò»»
x000150_g_NumText_CancelExchange = 5	-- [tx45022]È¡Ïû¶Ò»»
x000150_g_Stone = 20310020      --Ðþê»Óñ
x000150_g_BindStone = 20310021  --°ó¶¨Ðþê»Óñ
x000150_g_MeiHuaBiao = 10155003  --Ã·»¨ïÚ
x000150_g_CountLimit = 50 --½»»»¸öÊý[tx44913]
x000150_g_MeiHuaBiaoBound = 10155003  --°ó¶¨Ã·»¨ïÚ[tx45022]
--[/tx43453]
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000150_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"Giang h° bän ch¤t là mµt n½i th¸ phi chi ð¸a, ð°ng th¶i có r¤t nhi«u tên hung t£c ðã khiªn cho võ lâm ðÕi bÕi, nªu mu¯n thái bình thiên hÕ, thì xem các v¸ anh hùng hào hi®p Ñng xØ nhß thª nào.")
		for i, eventId in x000150_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end		
		AddNumText( sceneId, x000150_g_scriptId, "#{AQFC_090115_14}", 6, x000150_g_NumText_ExchangeXhuanHuangYu )--[tx43453]		
		AddNumText( sceneId, x000150_g_scriptId, "Huy«n HÕo Ng÷c ð±i ám khí: Bång Phách Th¥n Châm", 6, 7413 )--[tx43453]		
		AddNumText(sceneId, x000150_g_scriptId,"#{AQFC_090115_13}",11, x000150_g_NumText_ExchangeXhuanHuangYuHelp);--[tx43452]		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000150_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000150_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end

	if GetNumText() == x000150_g_NumText_ExchangeXhuanHuangYu then --[tx43453]
		BeginEvent(sceneId)
			AddText(sceneId, "#{AQFC_090115_06}")
			AddText(sceneId, "#{AQFC_090115_19}")		
			AddNumText(sceneId, x000150_g_scriptId,"#{INTERFACE_XML_557}", 6, x000150_g_NumText_DoExchange);--[tx45022]
			AddNumText(sceneId, x000150_g_scriptId,"#{Agreement_Info_No}", 8, x000150_g_NumText_CancelExchange);--[tx45022]
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )	
		--DispatchMissionContinueInfo(sceneId, selfId, targetId, x000150_g_scriptId, 0)
	elseif GetNumText() == x000150_g_NumText_ExchangeXhuanHuangYuHelp then	
			BeginEvent( sceneId )
				AddText( sceneId, "#{AQFC_090115_13}" )
				AddText( sceneId, "#{AQFC_090115_16}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == x000150_g_NumText_DoExchange then
			x000150_DoExchange( sceneId, selfId, targetId )
			x000150_CloseWindow(sceneId, selfId,targetId)
	elseif GetNumText() == x000150_g_NumText_CancelExchange then
			x000150_CloseWindow(sceneId, selfId,targetId)			
	end--[/tx43453]	
	
		
	if GetNumText() == 7413 then
		BeginEvent(sceneId)
			AddText(sceneId, "Dùng 100 cái #GHuy«n HÕo Ng÷c #Wcó th¬ ðôi l¤y ám khí #GBång Phách Th¥n Châm#W, ám khí mÕnh nh¤t toàn c²i Thiên Long Bát Bµ.")
			AddText(sceneId, "#GHuy«n HÕo Ng÷c #Wcó th¬ nhÕt ðßþc tÕi #GT¥n Hoàng Ð¸a Cung #Who£c tham gia thäo phÕt #GYªn TØ Ô")
			AddNumText(sceneId, x000150_g_scriptId,"#{INTERFACE_XML_557}", 6, 74130);--[tx45022]
			AddNumText(sceneId, x000150_g_scriptId,"#{Agreement_Info_No}", 8, x000150_g_NumText_CancelExchange);--[tx45022]
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )	
	end
	
	if GetNumText() == 74130 then
		local count = LuaFnGetAvailableItemCount(sceneId, selfId, x000150_g_Stone)
		local bindCount = LuaFnGetAvailableItemCount(sceneId, selfId, x000150_g_BindStone)
		
		if count + bindCount <= 99 then
			x000150_NotifyFailTips(sceneId, selfId, "Chßa có ðü Huy«n HÕo Ng÷c")
			x000150_CloseWindow(sceneId, selfId,targetId)		
			return
		end

		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000150_NotifyFailTips(sceneId, selfId,"#{AQFC_090115_07}")
			x000150_CloseWindow(sceneId, selfId,targetId)	
			return
		end
	
		if bindCount < 100 then
			LuaFnDelAvailableItem(sceneId, selfId, x000150_g_BindStone, bindCount)
			LuaFnDelAvailableItem(sceneId, selfId, x000150_g_Stone, 100-bindCount)
			nBagIndex = TryRecieveItem( sceneId, selfId, 10155002, 1 )
		else
			LuaFnDelAvailableItem(sceneId, selfId, x000150_g_BindStone, 100)
			nBagIndex = TryRecieveItem( sceneId, selfId, 10155002, 1 )
		end
		
		x000150_NotifyFailTips(sceneId, selfId,"Dùng Huy«n HÕo Ngµc ð±i thành công Bång Phách Th¥n Châm.")
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000150_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000150_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x000150_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000150_g_eventList do
		if missionScriptId == findId then
			x000150_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000150_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000150_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000150_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000150_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--¶Ò»»
--**********************************
function x000150_DoExchange( sceneId, selfId, targetId )--[tx45022]
	--[tx43453]
	--¼ì²éÐþê»Óñ¸öÊý
	local count = LuaFnGetAvailableItemCount(sceneId, selfId, x000150_g_Stone)
	local bindCount = LuaFnGetAvailableItemCount(sceneId, selfId, x000150_g_BindStone)
		
	if count + bindCount < x000150_g_CountLimit then
		x000150_NotifyFailTips(sceneId, selfId, "#{LLFB_80821_5}")
		x000150_CloseWindow(sceneId, selfId,targetId)		
		return
	end
	-- ¼ì²é±³°ü¿Õ¼ä
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000150_NotifyFailTips(sceneId, selfId,"#{AQFC_090115_07}")
			return
	end
	
	local nItemBagIndexStone = 0
	local szTransferStone = 0
	
	--ÓÅÏÈ¿Û³ý°ó¶¨µÄÐþê»Óñ
	local bDelOk = 0
	if bindCount >= x000150_g_CountLimit then
		nItemBagIndexStone = GetBagPosByItemSn(sceneId, selfId, x000150_g_BindStone)
		szTransferStone = GetBagItemTransfer(sceneId, selfId, nItemBagIndexStone)
		bDelOk = LuaFnDelAvailableItem(sceneId, selfId, x000150_g_BindStone, x000150_g_CountLimit)
		if bDelOk < 1  then
		  x000150_NotifyFailTips(sceneId, selfId, "#{JPZB_0610_12}")
		  return
	  end
	else
		nItemBagIndexStone = GetBagPosByItemSn(sceneId, selfId, x000150_g_Stone)
		szTransferStone = GetBagItemTransfer(sceneId, selfId, nItemBagIndexStone)
		if bindCount > 0 then
			bDelOk = LuaFnDelAvailableItem(sceneId, selfId, x000150_g_BindStone, bindCount)
			if bDelOk < 1  then
		    x000150_NotifyFailTips(sceneId, selfId, "#{JPZB_0610_12}")
		    return
	    end
		end
		bDelOk = LuaFnDelAvailableItem(sceneId, selfId, x000150_g_Stone, x000150_g_CountLimit-bindCount)
		if bDelOk < 1  then
	    x000150_NotifyFailTips(sceneId, selfId, "#{JPZB_0610_12}")
	    return
    end
	end
	--»ñÈ¡°µÆ÷[tx44913]	
	local nBagIndex = -1
	if bindCount > 0 then
		nBagIndex = TryRecieveItem( sceneId, selfId, x000150_g_MeiHuaBiaoBound, 1 );
	else
		nBagIndex = TryRecieveItem( sceneId, selfId, x000150_g_MeiHuaBiao, 1 );	
	end
	local szTransferEquip = GetBagItemTransfer(sceneId, selfId, nBagIndex)
			
	--»ñÈ¡°µÆ÷[/tx44913]		
	x000150_NotifyFailTips(sceneId, selfId, "#{AQFC_090115_08}")
	--ÌØÐ§
  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
  --¹«¸æ
 	local message = format("#{AQ_04}#{_INFOUSR%s}#{AQ_01}#{_INFOMSG%s}#{AQ_02}#{_INFOMSG%s}#{AQ_03}",LuaFnGetName(sceneId, selfId),szTransferStone, szTransferEquip)
	BroadMsgByChatPipe(sceneId, selfId, message, 4);
	--Í³¼Æ
	local guid = LuaFnObjId2Guid(sceneId, selfId);
	ScriptGlobal_AuditGeneralLog(LUAAUDIT_MEIHUABIAO, guid);--[tx43454]ÐÂ°æ±¾Ôö¼ÓÁËguid
	--[/tx43453]	
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x000150_NotifyFailTips( sceneId, selfId, Tip )--[tx43453]
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¹Ø±Õ´°¿Ú
--**********************************
function x000150_CloseWindow(sceneId,selfId, targetId)--[tx43453]
	BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000150_OnDie( sceneId, selfId, killerId )
end
