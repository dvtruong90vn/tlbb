--NPC ³½ºâ A°ï

x402293_g_ScriptId = 402293; --½Å±¾ºÅ
x402293_g_name	="³½ºâ";

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x402293_g_eventId_yes = 0;
x402293_g_eventId_no = 1;

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402293_OnDefaultEvent( sceneId, selfId, targetId )
	x402293_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402293_UpdateEventList( sceneId, selfId, targetId )

	if CallScriptFunction(402047, "IsCommonAGuild", sceneId, selfId ) == 1 then
		BeginEvent(sceneId);
			AddText( sceneId, "#{BHXZ_081103_21}" );
			AddNumText( sceneId, x402293_g_ScriptId, "Xác nh§n", 9, x402293_g_eventId_yes);
			AddNumText( sceneId, x402293_g_ScriptId, "HuÖ bö", 8, x402293_g_eventId_no);
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
function x402293_OnEventRequest( sceneId, selfId, targetId, eventId )
	local selectEventId	= GetNumText();
	
	if selectEventId and CallScriptFunction(402047, "IsCommonAGuild", sceneId, selfId ) == 1 then
		if selectEventId == x402293_g_eventId_yes then
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
function x402293_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402293_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
end
