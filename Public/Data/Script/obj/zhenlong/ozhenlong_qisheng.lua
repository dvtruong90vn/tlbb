--ÕäÁýNPC - ÆëÊ¥

x044000_g_ScriptId = 044000; --½Å±¾ºÅ
x044000_g_name	="T« Thánh";

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x044000_g_eventId_yes = 0;
x044000_g_eventId_no = 1;

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x044000_OnDefaultEvent( sceneId, selfId, targetId )
	x044000_UpdateEventList( sceneId, selfId, targetId );
end 

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x044000_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "TÕi hÕ có th¬ gØi cho các hÕ, có c¥n không?" );
		AddNumText( sceneId, x044000_g_ScriptId, "Xác nh§n", 9, x044000_g_eventId_yes);
		AddNumText( sceneId, x044000_g_ScriptId, "HuÖ bö", 8, x044000_g_eventId_no);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x044000_OnEventRequest( sceneId, selfId, targetId, eventId )
	local selectEventId	= GetNumText();
	
	if selectEventId then
		if selectEventId == x044000_g_eventId_yes then
			CallScriptFunction(401001, "PlayerExit", sceneId, selfId);
		else
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x044000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x044000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
end
