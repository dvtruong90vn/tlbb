--³ÇÊÐNPC
--Ã×²Ö

x805014_g_scriptId = 805014
x805014_g_BuildingID8 = 7

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x805014_g_eventList = { 600007 }

-- ÈÎÎñ¼¯ÊÂ¼þ ID ÁÐ±í£¬ÕâÀàÊÂ¼þ°üº¬×ÓÊÂ¼þ
x805014_g_eventSetList = { 600007 }

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x805014_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "Bang hµi cß¶ng mÕnh r¤t chú tr÷ng ngh« nông, có vi®c gì c¥n ta giúp ngß½i không?" )
			for i, eventId in x805014_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			AddNumText( sceneId, x805014_g_scriptId, "Gi¾i thi®u nhi®m vø phát tri¬n", 11, 1 )
			AddNumText( sceneId, x805014_g_scriptId, "Ð¡p thêm tß¶ng", 6, 3 )
			AddNumText( sceneId, x805014_g_scriptId, "Gi¾i thi®u kho gÕo", 11, 2 )
			AddNumText( sceneId, x805014_g_scriptId, "Ð±i Bång Tr¤n Dßa H¤u", 6, 4 )
			AddNumText( sceneId, x805014_g_scriptId, "Gi¾i thi®u Bång Tr¤n Dßa H¤u", 11, 5 )

			--life Ìí¼ÓÕâ¸ö½¨ÖþÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805014_g_scriptId,x805014_g_BuildingID8,888)
		else
			AddText( sceneId, "Các hÕ không phäi là thành viên b±n bang, nhìn m£t trông lÕ l¡m!" )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x805014_OnDefaultEvent( sceneId, selfId, targetId )
	x805014_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÅÐ¶ÏÄ³¸öÊÂ¼þÊÇ·ñ¿ÉÒÔÍ¨¹ý´Ë NPC Ö´ÐÐ
--**********************************
function x805014_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805014_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805014_g_eventSetList do
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
function x805014_OnEventRequest( sceneId, selfId, targetId, eventId )
	if x805014_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	--life ´¦ÀíÕâ¸ö½¨ÖþÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
	elseif eventId ~= x805014_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805014_g_scriptId, x805014_g_BuildingID8 )
		return
	end
	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Dev_Mission_Help}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_MiCang}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 3 then
		BeginEvent(sceneId)
			AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 888 then
		BeginEvent(sceneId)
		--life Ìí¼ÓÕâ¸ö½¨ÖþÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805014_g_BuildingID8 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 4 then
		--È·ÈÏÊÇ·ñ»»È¡±ùÕòÎ÷¹Ï
		BeginEvent(sceneId)
			AddText( sceneId, "#{BGHXG_JS}" )
			AddText( sceneId, "Các hÕ có xác nh§n dùng 9 ði¬m c¯ng hiªn bang hµi ð±i Bång Tr¤n Dßa H¤u không ?" )
			AddNumText( sceneId, x805014_g_scriptId, "È·ÈÏ", 6, 16 )
			AddNumText( sceneId, x805014_g_scriptId, "È¡Ïû", 8, 17 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 5 then
		--±ùÕòÎ÷¹Ï½éÉÜ
		BeginEvent(sceneId)
			AddText( sceneId, "#{BGHXG_JS}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 16 then
		--È·ÈÏ»»Î÷¹Ï
		x805014_BingZhenXiGua(sceneId, selfId, targetId);
	elseif GetNumText() == 17 then
		--È¡Ïû»»Î÷¹Ï
		x805014_OnDefaultEvent( sceneId, selfId, targetId )
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x805014_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805014_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805014_NotifyFailTips( sceneId, selfId, "Ngß½i hi®n không th¬ nh§n nhi®m vø này" )
		elseif ret == -2 then
			x805014_NotifyFailTips( sceneId, selfId, "Không th¬ tiªp nh§n nhi«u nhi®m vø" )
		end

		return
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x805014_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805014_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805014_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x805014_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805014_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x805014_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805014_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x805014_OnDie( sceneId, selfId, killerId )
end

function x805014_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--»»È¡±ùÕòÎ÷¹Ï
--**********************************
function x805014_BingZhenXiGua(sceneId, selfId, targetId)
	local humanGuildId 	= GetHumanGuildID(sceneId,selfId)
	local cityGuildId 	= GetCityGuildID(sceneId, selfId, sceneId)
	if not humanGuildId or not cityGuildId or humanGuildId ~= cityGuildId then
		BeginEvent(sceneId)
			AddText( sceneId, "Chï có thành viên cüa b±n bang m¾i có th¬ ð±i" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0;
	end
	
	local guildPoint = CityGetAttr(sceneId, selfId, 6);
	if not guildPoint or guildPoint < 9 then
		BeginEvent(sceneId)
			AddText( sceneId, "Ði¬m c¯ng hiªn bang hµi cüa các hÕ không ðü 9 ði¬m, không th¬ ð±i." )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0;
	end

	LuaFnBeginAddItem(sceneId);
		LuaFnAddItem(sceneId, 30501103, 1);
	local ret = LuaFnEndAddItem(sceneId, selfId);
	if not ret or 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId, "Hi®n các hÕ không th¬ thu ðßþc v§t ph¦m, xin ki¬m tra lÕi tay näi.");
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0;
	end
	
	ret = CityChangeAttr(sceneId, selfId, 6, -9);
	if not ret or ret ~= 1 then
		BeginEvent(sceneId)
			AddText(sceneId, "Thao tác th¤t bÕi, xin hãy thØ lÕi.");
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0;
	end
	
	AddItemListToHuman(sceneId,selfId);
	x805014_NotifyFailTips(sceneId, selfId, "Các hÕ nh§n ðßþc 1 miªng Bång Tr¤n Dßa H¤u");
	
	local szTransferItem = GetItemTransfer(sceneId, selfId, 0);
	local selfName = LuaFnGetName(sceneId, selfId);
	local strChatMessage = "#{_INFOUSR"..selfName.."}#P h¾n h· t× trong tay#G Chu Thª Hæu [129,100]#cff99cc l¤y 1 miªng#Y#{_INFOMSG" .. szTransferItem .. "}#P, ån 1 miªng vào mát t× ð¥u xu¯ng ðªn bàn chân!";
	BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;GLD:"..strChatMessage, 6);
	x805014_OnDefaultEvent( sceneId, selfId, targetId )
end
