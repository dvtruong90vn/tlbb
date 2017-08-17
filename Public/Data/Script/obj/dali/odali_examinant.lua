--´óÀíNPC
--¿¼¹Ù
--ÆÕÍ¨
--½Å±¾ºÅ
x801017_g_scriptId = 801017

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x801017_g_eventList={801016}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x801017_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = "Thiªu hi®p"
		else
			PlayerSex = "Cô nß½ng"
		end
		AddText(sceneId,"#{EXAM_INFO_1}")
		
		AddNumText( sceneId, x801017_g_scriptId, "Gi¾i thi®u khoa cØ", 11, 10 )
		
		for i, eventId in x801017_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x801017_OnDefaultEvent( sceneId, selfId,targetId )
	x801017_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x801017_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_062}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	local Numtext = GetNumText();
	CallScriptFunction( eventId, "OnHandle_QuestUI",sceneId, selfId, targetId, Numtext )
	return
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x801017_OnDie( sceneId, selfId, killerId )
end
