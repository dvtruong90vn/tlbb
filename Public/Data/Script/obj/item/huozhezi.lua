-- »ðÕÛ×Ó£¬ÐèÒªÊ¹ÓÃµÄÈÎÎñµÀ¾ß
-- ÁÉÎ÷£­²®ÑÕ£¨165£¬197£© Çý¸ÏºÚ·ä

--½Å±¾ºÅ
x300025_g_scriptId = 300025

x300025_g_MissionId = 552

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x300025_g_eventList={212107}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300025_OnDefaultEvent( sceneId, selfId, BagIndex )
	BeginEvent(sceneId)
		AddText(sceneId, "Ðu±i theo H¡c Phong")
		-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇµÃµ½ÁËÐèÒªµÄÁ½¸öµÀ¾ß£¬
		if GetItemCount( sceneId, selfId, 40002070 ) >= 1   then
			if GetItemCount( sceneId, selfId, 40002069 ) >= 1   then
				AddText(sceneId, "Các hÕ ðã ðu±i h¡c phong thành công")
				local misIndex = GetMissionIndexByID(sceneId,selfId,x300025_g_MissionId)
				SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				SetMissionByIndex(sceneId,selfId,misIndex,1,1)
				-- É¾³ýÈÎÎñµÀ¾ß
				DelItem( sceneId, selfId, 40002070, 1 )
				DelItem( sceneId, selfId, 40002069, 1 )
				
				-- ²¥·ÅÒ»¸öÐ§¹û
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 139, 0)
				
			else
				AddText(sceneId, "Các hÕ c¥n phân Sói khô")
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--Ë¢ÐÂÊÂ¼þ
--**********************************
function x300025_OnEventRequest( sceneId, selfId, targetId, eventId )
	--PrintStr("x300025_OnEventRequest")
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x300025_OnMissionAccept( sceneId, selfId, targetId )

end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x300025_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	--for i, findId in x300025_g_eventList do
	--	if missionScriptId == findId then
	--		UpdateEventList( sceneId, selfId, targetId )
	--		return
	--	end
	--end
end

function x300025_IsSkillLikeScript( sceneId, selfId)
	return 0
end


