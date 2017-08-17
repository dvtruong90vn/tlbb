--ÔÆº­¶ù

--½Å±¾ºÅ
x000118_g_scriptId = 000118

--ÉÌµê±àºÅ
x000118_g_shoptableindex=102

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x000118_g_eventList={400918, 400963}	--	È¥ÐþÎäµº¡¢È¥Thánh Thú S½n

--¶mµt »ÐèÇóÎïÆ·
x000118_g_change_needitem = {itemindex = 30501318, itennum = 200}
--¶mµt »Ä¿±êÎïÆ·
x000118_g_change_targetitem = {item_1_index = 30402022, item_2_index = 30402021, item_3_index = 30402024, item_4_index = 30402023}


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000118_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Gia ðình ti¬u thß thu gom các loÕi trân thú, ngß¶i không ðü, nªu ngß½i có th¬ giúp ðÞ s¨ ðßþc báo ðáp")
	
	--AddNumText( sceneId, x000118_g_scriptId, "Mi­n phí vô ð¸ch", 6, 10 )	--È¥³ýÃâ·ÑÎÞµÐ¹¦ÄÜ--del by Heanqi
	
	for i, eventId in x000118_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	
	AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_1}",6,11)
	AddNumText(sceneId,x000118_g_scriptId,"Mua sách kÛ nång trân thú",7,2)
	AddNumText(sceneId,x000118_g_scriptId,"Ki¬m tra mÑc tång trß·ng",6,3)
	AddNumText(sceneId,x000118_g_scriptId,"#{XXWD_8916_07}",11,5)
	AddNumText(sceneId,x000118_g_scriptId,"Linh Thú Ðan hþp thành",6,6)
	AddNumText(sceneId,x000118_g_scriptId,"Gi¾i Thi®u hþp thành Linh Thú Ðan",11,7)
--	AddNumText(sceneId,x000118_g_scriptId,"ÈçºÎ¸øÕäÊÞ¿ìËÙÉýc¤p",11,8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000118_OnDefaultEvent( sceneId, selfId,targetId )
	x000118_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000118_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000118_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	if GetNumText() == 2 then
		DispatchShopItem( sceneId, selfId,targetId, x000118_g_shoptableindex )
	elseif GetNumText() == 3 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "  ²éÑ¯ÕäÊÞtoÕ ðµ ³É³¤ÂÊ,²éÑ¯mµt ´ÎC¥n ÊÕÈ¡#{_MONEY100}toÕ ðµ ·ÑÓÃ." )
--		AddNumText( sceneId, x000118_g_scriptId, "Xác nh§n", -1, 4 )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
--	elseif GetNumText() == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 6 )				--ÕäÊÞ²éÑ¯·ÖÖ§
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 3 )	--µ÷ÓÃÕäÊÞ½çÃæ
	elseif GetNumText() == 5 then
		BeginEvent( sceneId )
		AddText( sceneId, "#{XXWD_8916_08}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 6 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19824 )	--µ÷ÓÃLinh Thúµ¤ºÏ³É½çÃæ
	elseif GetNumText() == 7 then
		BeginEvent( sceneId )
		AddText( sceneId, "#{JNHC_81015_12}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 8 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "#{ZSKSSJ_081126_5}" )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 10 then
	    if eventId == x000118_g_scriptId then	
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 50, 0 )	--È¥³ýÃâ·ÑÎÞµÐ¹¦ÄÜ--del by Heanqi
			return
		end
	elseif GetNumText() == 11 then
		BeginEvent( sceneId )
		AddText(sceneId, "#{BBSX_081107_2}")
		AddText(sceneId, "#{BBSX_081107_3}")
		AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_4}",6,21)
		AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_5}",6,22)
		AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_6}",6,23)
		AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_7}",6,24)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 21 then
		x000118_ChangeItem(sceneId, selfId, targetId, 21)
	elseif GetNumText() == 22 then
		x000118_ChangeItem(sceneId, selfId, targetId, 22)
	elseif GetNumText() == 23 then
		x000118_ChangeItem(sceneId, selfId, targetId, 23)
	elseif GetNumText() == 24 then	
		x000118_ChangeItem(sceneId, selfId, targetId, 24)
	end
	
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000118_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000118_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000118_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000118_g_eventList do
		if missionScriptId == findId then
			x000118_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x000118_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000118_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x000118_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000118_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000118_OnDie( sceneId, selfId, killerId )
end

--**********************************
--Ìá½»ÕäÊÞ
--**********************************
function x000118_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
--×¢Òâ,ÕâÀïÕâÑùÐ´Ê¡ÂÔÁËTÕi eventlistÖÐËÑË÷scriptIdÕâmµt ²¿·Ö,¿ÉÄÜ»áÓÐÎÊÌâ
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end

function x000118_ChangeItem(sceneId, selfId, targetId, key)
	local nTargetitem = 0
	if key == 21 then
		nTargetitem = x000118_g_change_targetitem.item_1_index
	elseif key == 22 then
		nTargetitem = x000118_g_change_targetitem.item_2_index
	elseif key == 23 then
		nTargetitem = x000118_g_change_targetitem.item_3_index
	elseif key == 24 then
		nTargetitem = x000118_g_change_targetitem.item_4_index
	else
		return
	end
	
	local nHaveCount = GetItemCount(sceneId, selfId, x000118_g_change_needitem.itemindex)
	local nAvailableCount = LuaFnGetAvailableItemCount( sceneId, selfId,  x000118_g_change_needitem.itemindex)
	--PrintStr("nHaveCount "..nHaveCount.." nAvailableCount "..nAvailableCount)
	
	--ÓµÓÐÊýÁ¿³¬¹ý¶ø¿ÉÓÃÊýÁ¿²»× giây ði¬m÷ÐúngÓÐÒÑ¾­¼ÓËøtoÕ ðµ .Cái này µØ·½ÐúngÌØÀýÅÐ¶Ï,²ß»®¼á³ÖÒª¼ÓCái này ÌáÊ¾,ÈÏÎªÔª±¦°ÚÌ¯ÎïÆ·ÌáÊ¾Òª×¼È·.add by hukai#40690
	if nHaveCount >= x000118_g_change_needitem.itennum and nAvailableCount < x000118_g_change_needitem.itennum then
		x000118_ShowMsgInFrame( sceneId, selfId, targetId, "#{JSTS_081119_1}" )
		return
	end
	
	if nAvailableCount < x000118_g_change_needitem.itennum then
		local strName = format("#H#{_ITEM%d}#W", nTargetitem)
		x000118_ShowMsgInFrame( sceneId, selfId, targetId, "#{BBSX_081107_8}"..strName )
		return
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		x000118_ShowNotice( sceneId, selfId, "#{BBSX_081107_9}")
		x000118_ShowMsgInFrame(sceneId,selfId,targetId, "#{BBSX_081107_9}")
	    return
	end
	
	if LuaFnDelAvailableItem( sceneId, selfId, x000118_g_change_needitem.itemindex, x000118_g_change_needitem.itennum ) == 1 then
		BeginAddItem(sceneId)
		AddItem( sceneId, nTargetitem, 1 )
			local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			if Ret > 0 then
				LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
			    local szItemTransfer = GetItemTransfer(sceneId,selfId, 0)
				x000118_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )

				local strNotice = format("Trao ð±i thành công, bÕn nh§n ðßþc #H#{_ITEM%d}#W", nTargetitem)
				x000118_ShowNotice( sceneId, selfId, strNotice)
				
				x000118_ShowMsgInFrame(sceneId,selfId,targetId, strNotice)
				
			else
				x000118_ShowNotice( sceneId, selfId, "#{BBSX_081107_9}")
				return
        	end
	else
    	x000118_ShowNotice( sceneId, selfId, "Không thành công!")
		return
	end
end


function x000118_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x000118_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local str = format( "#{_INFOUSR%s}#P trãi qua nhi«u c¯ g¡p, cu¯i cùng cûng thu th§p ðü 200 miªn #Y#{_ITEM30501318}#P tÕi LÕc Dß½ng (182,155). #YVân Hàm Nhi #Ptrao ð±i thành công #{_INFOMSG%s}#P.", PlayerName, strItemInfo )
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
end

function x000118_ShowMsgInFrame( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)   
end
