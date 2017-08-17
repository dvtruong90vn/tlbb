--Â¥À¼Ñ°±¦ ´«ËÍNPC  
-- created by ×ó´ºÎ°

x044700_g_ScriptId = 044700; --½Å±¾ºÅ
x044700_g_name	="½ð¾ÃÃî";

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x044700_g_eventId_yes = 1;
x044700_g_eventId_no = 0;

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x044700_OnDefaultEvent( sceneId, selfId, targetId )
	x044700_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x044700_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{LLXB_8815_07}" );
		AddText( sceneId, "Ngß½i mu¯n r¶i khöi ðây?");
		AddNumText( sceneId, x044700_g_ScriptId, "Xác nh§n", 9, x044700_g_eventId_yes);
		AddNumText( sceneId, x044700_g_ScriptId, "Hüy bö", 8, x044700_g_eventId_no);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x044700_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == x044700_g_eventId_yes then
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 186, 162, 77); -- Â¥À¼½ð¾ÃÁé´¦
	elseif GetNumText() == x044700_g_eventId_no then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	end
end

