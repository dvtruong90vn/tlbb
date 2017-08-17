-- 125013
-- ´«ËÍÈË

--½Å±¾ºÅ
x125013_g_scriptId = 125013

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x125013_g_eventList={}

x125013_g_Goto = {
			{name="Khu¤t Bình Nguyên",scene=2,x=177,z=135,scname=" ÐÕi Lý"},
			{name="Ðào Thüy Ti«m",scene=0,x=250,z=250,scname=" LÕc Dß½ng"},
			{name="C± Tß Ngh¸",scene=1,x=285,z=225,scname=" Tô Châu"},
			{name="T¯ng Tri Ng÷c",scene=420,x=155,z=130,scname=" Thúc Hà C± Tr¤n"},
}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x125013_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		
		local szName = GetName(sceneId, targetId)
		
		local level = GetLevel( sceneId, targetId)
		
		if szName == "T¯ng Tri Ng÷c" and level < 20 then
			--str = "  Ê®·Ö±§Ç¸£¬ÊøºÓ¹ÅÕòÄ¿Ç°ÉÐÎ´¿ª·Å¡£µÈÊøºÓ¹ÅÕòÕýÊ½¿ª·ÅÖ®ºóÎÒ²ÅÄÜËÍÄã¹ýÈ¥ÄØ£¡"
			str = "Th§p ph¥n th§t có l²i, c¤p b§c cüa ngß½i không ðü 20 không th¬ ði Thúc Hà C± Tr¤n!"
			AddText(sceneId, str);
		else
		
			for i, scene in x125013_g_Goto  do
				if scene.name == GetName(sceneId, targetId)  then
					local str = ""
					str = "Ngß½i phäi r¶i khöi Tung S½n Phong Thi«n Ðài, ði " .. scene.scname .. " sao?"
					AddText(sceneId, str);
					AddNumText( sceneId, x125013_g_scriptId, "Ðßa ta ði" .. scene.scname ,9 ,1  )
				end
			end
		end
		
		for i, eventId in x125013_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x125013_OnDefaultEvent( sceneId, selfId,targetId )
	x125013_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x125013_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==1  then
		for i, Scene in x125013_g_Goto  do
			if Scene.name == GetName(sceneId, targetId)  then
				--add by Vega 2008-09-28
				if Scene.scname == "Thúc Hà C± Tr¤n" then
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId, x125013_g_scriptId);
						UICommand_AddInt(sceneId, targetId);
						UICommand_AddString(sceneId, "GotoShuHeGuZhen");
						UICommand_AddString(sceneId, "Thúc Hà C± Tr¤n là n½i PK s¨ không b¸ sát khí. Xin chú ý an toàn. Các hÕ có xác nh§n tiªn vào không?");
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,selfId, 24)
					return				
				else

					CallScriptFunction((400900), "TransferFunc",sceneId, selfId, Scene.scene, Scene.x, Scene.z)
					return
				end
			end
		end
		return
	end

	for i, findId in x125013_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x125013_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125013_g_eventList do
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
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x125013_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			x125013_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x125013_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x125013_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x125013_OnDie( sceneId, selfId, killerId )
end

--add by Vega 2008-09-28
function x125013_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 155, 130, 20 );
	return
end
