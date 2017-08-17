--NPC H° Khäi B°ï

x402297_g_ScriptId = 402297; --½Å±¾ºÅ
x402297_g_name	="H° Khäi";

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x402297_g_eventId_yes = 0;
x402297_g_eventId_no = 1;

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402297_OnDefaultEvent( sceneId, selfId, targetId )
	x402297_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402297_UpdateEventList( sceneId, selfId, targetId )

	if CallScriptFunction(402047, "IsCommonBGuild", sceneId, selfId ) == 1 then
		BeginEvent(sceneId);
			AddText( sceneId, "#{BHXZ_081103_21}" );
			AddNumText( sceneId, x402297_g_ScriptId, "Xác nh§n", 9, x402297_g_eventId_yes);
			AddNumText( sceneId, x402297_g_ScriptId, "HuÖ bö", 8, x402297_g_eventId_no);
		EndEvent(sceneId);
		DispatchEventList(sceneId, selfId, targetId);
	else
		BeginEvent(sceneId);
			AddText( sceneId, "#{BHXZ_081103_20}" );
		EndEvent(sceneId);
		DispatchEventList(sceneId, selfId, targetId);
	end
	
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x402297_OnEventRequest( sceneId, selfId, targetId, eventId )
	local selectEventId	= GetNumText();
	
	if selectEventId and CallScriptFunction(402047, "IsCommonBGuild", sceneId, selfId ) == 1 then
		if selectEventId == x402297_g_eventId_yes then
			--ÓÐÕ½³µbuff²»ÄÜ´«ËÍ
			if CallScriptFunction(402047, "HaveTankBuff", sceneId, selfId) == 0 then
				CallScriptFunction(402047, "Exit", sceneId, selfId)
			else
				BeginEvent(sceneId);
					AddText( sceneId, "#{BHXZ_081103_77}" );
				EndEvent(sceneId);
				DispatchEventList(sceneId, selfId, targetId);
			end
		else
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402297_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402297_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
end
