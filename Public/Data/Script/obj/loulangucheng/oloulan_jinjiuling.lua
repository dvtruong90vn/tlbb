--Lâu LanNPC ½ð¾ÃLinh
--Created by ×ó´ºÎ°

--½Å±¾ºÅ
x001168_g_ScriptId = 001168
x001168_g_eventList={808039} -- seek_treasureÑ°±¦
x001168_g_moster_album_id = 30505192;
x001168_g_exchange_num = 100;
x001168_g_clothing_id = 
{
		10124113,           --Thiªu LâmÐÂÊ±×° 0
		10124114,           --Minh GiáoÐÂÊ±×° 1
		10124115,           --Cái BangÐÂÊ±×° 2
		10124117,           --Võ ÐangÐÂÊ±×° 3
		10124116,           --Nga MyÐÂÊ±×° 4
		10124118,           --Tinh TúcÐÂÊ±×° 5
		10124121,           --Thiên LongÐÂÊ±×° 6
		10124119,           --Thiên S½nÐÂÊ±×° 7
		10124120,           --Tiêu DaoÐÂÊ±×° 8
}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001168_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{LLXB_8815_06}")
		for i, eventId in x001168_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText(sceneId, x001168_g_ScriptId, "#{LLXB_8820_01}", 6, 100);  --¶mµt »
		AddNumText(sceneId, x001168_g_ScriptId, "#{LLXB_8820_02}", 11, 101); --¶mµt »°ïÖú
		--[tx45411]AddNumText(sceneId, x001168_g_ScriptId, "#{NSRQ_081110_2}", 11, 999); --zchw
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001168_OnDefaultEvent( sceneId, selfId,targetId )
	x001168_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001168_OnEventRequest( sceneId, selfId, targetId, eventId )
	--[tx45411]if GetNumText() == 999 then
	--	x001168_ShowMsg(sceneId, selfId, targetId, "#{NSRQ_081110_3}")
	--[/tx45411]end
	for i, findId in x001168_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001168_g_ScriptId )
			return
		end
	end
	if GetNumText() == 100 then
		local num = LuaFnGetAvailableItemCount(sceneId, selfId, x001168_g_moster_album_id);
		if num == 0 then
			x001168_ShowMsg(sceneId, selfId, targetId, "#{LLXB_8820_03}")
			return
		elseif num < 100 then
			x001168_ShowMsg(sceneId, selfId, targetId, "#{LLXB_8820_04}")
			return
		end
		if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
			x001168_ShowMsg(sceneId, selfId, targetId, "#{SJQM_8815_06}")
			return 		
		end
		--¼ÓÈëÃÅÅÉÁËÂð?
		local menpaiId = GetMenPai(sceneId, selfId);
		if menpaiId < 0 or menpaiId > 8 then
			x001168_ShowMsg(sceneId, selfId, targetId, "#{LLXB_8820_06}")
			return
		end
		local nItemBagIndexalbum = GetBagPosByItemSn(sceneId, selfId, x001168_g_moster_album_id)
		local szTransferalbum = GetBagItemTransfer(sceneId,selfId, nItemBagIndexalbum)
		-- ok  ði¬mµ½ÓëÍæ¼ÒÃÅÅÉÏà¶ÔÓ¦toÕ ðµ ¸ßc¤pÊ±×°
		if LuaFnDelAvailableItem(sceneId, selfId, x001168_g_moster_album_id, x001168_g_exchange_num) == 1 then
			local clothingId = x001168_g_clothing_id[menpaiId+1];
			local ret = TryRecieveItem( sceneId, selfId, clothingId, QUALITY_MUST_BE_CHANGE);
			if ret > -1 then
				-- °ó¶¨
				if LuaFnItemBind(sceneId, selfId, ret) ~= 1 then
					x001168_ShowMsg(sceneId, selfId, targetId, "Ð±i th¤t bÕi!")
					return
				end
				-- ÌáÊ¾
				BeginEvent(sceneId)
					AddText(sceneId, "Ð±i th¶i trang cao c¤p môn phái thành công!")
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				Msg2Player(sceneId, selfId, "Ð±i th¶i trang cao c¤p môn phái thành công!", 8)
				--¶mµt »³É¹¦,²¥·ÅÌØÐ§
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
				
				--²¥·Å¹«¸æ
				local PlayerName = GetName(sceneId,selfId)
				local szTransferEquip = GetBagItemTransfer(sceneId,selfId, ret)
				local str = format("#{_INFOUSR%s}#{GWXCSZGG_1}#{_INFOMSG%s}#{GWXCSZGG_2}#{_INFOMSG%s}#{GWXCSZGG_3}",PlayerName,szTransferalbum,szTransferEquip)
				BroadMsgByChatPipe( sceneId, selfId, str, 4 )
				-- ÈÕÖ¾
				AuditExchangeMenpaiSuit(sceneId, selfId, menpaiId, clothingId);
			end
		end
	elseif GetNumText() == 101 then
		x001168_ShowMsg(sceneId, selfId, targetId, "#{LLXB_8820_05}")
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001168_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001168_g_eventList do
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
function x001168_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001168_g_eventList do
		if missionScriptId == findId then
			x001168_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001168_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001168_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001168_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001168_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
--**********************************
--ÏÔÊ¾ÏûÏ¢
--**********************************
function x001168_ShowMsg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)	
end
