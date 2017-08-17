--Ê¥»ð´«µÝNPC - ´«ËÍ

x050109_g_ScriptId = 050109; --½Å±¾ºÅ
x050109_g_name	="ËÕ·É";

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x050109_g_eventId_yes = 0;
x050109_g_eventId_no = 1;

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050109_OnDefaultEvent( sceneId, selfId, targetId )
	x050109_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x050109_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "Ngß½i mu¯n r¶i khöi n½i ðây?" );
		AddNumText( sceneId, x050109_g_ScriptId, "Xác nh§n", 9, x050109_g_eventId_yes);
		AddNumText( sceneId, x050109_g_ScriptId, "Hüy bö", 8, x050109_g_eventId_no);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x050109_OnEventRequest( sceneId, selfId, targetId, eventId )
	local selectEventId	= GetNumText();
	
	if selectEventId then
		if selectEventId == x050109_g_eventId_yes then
			NewWorld( sceneId, selfId, 30, 166, 264) ;
		else
			return 0;
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x050109_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x050109_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
end
