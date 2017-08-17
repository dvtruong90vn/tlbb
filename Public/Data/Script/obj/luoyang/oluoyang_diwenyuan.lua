--ÂåÑôNPC
--µÒÎÄÔ¶
--ÆÕÍ¨

--½Å±¾ºÅ
x000083_g_scriptId = 000083

x000083_g_missionName = "SØa ð±i tr§n doanh"

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000083_g_eventList={250503}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000083_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"Giæa trß¶ng tÖ thí, s¯ng chªt tÕi m®nh, ði«n tên vào gi¤y sinh tØ này r°i là không ðßþc thay ð±i næa, các hÕ phäi nghî cho th§t kÛ!");
		--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
		if GetCurCamp (sceneId, selfId) == 1 then
			AddNumText(sceneId, x000083_g_scriptId,"Khôi phøc lÕi tr§n doanh ban ð¥u",6,0);
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
		else
			AddNumText(sceneId,x000083_g_scriptId,"Ð£t lÕi thành tr§n doanh PK",6,1);
		end
		for i, eventId in x000083_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000083_OnDefaultEvent( sceneId, selfId,targetId )
	x000083_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000083_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
			SetCurCamp (sceneId, selfId, 0)
		BeginEvent(sceneId)
  			AddText(sceneId,"Các hÕ ðã khôi phøc lÕi tr§n doanh ban ð¥u");
  		EndEvent(sceneId)
  		DispatchMissionTips(sceneId,selfId)
	elseif	GetNumText()==1	then
		SetCurCamp (sceneId, selfId, 1 )
		BeginEvent(sceneId)
	  		AddText(sceneId,"Các hÕ ðã khôi phøc lÕi tr§n doanh PK");
		EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
	end
	for i, findId in x000083_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000083_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000083_g_eventList do
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
function x000083_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000083_g_eventList do
		if missionScriptId == findId then
			x000083_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000083_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000083_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000083_OnDie( sceneId, selfId, killerId )
end
