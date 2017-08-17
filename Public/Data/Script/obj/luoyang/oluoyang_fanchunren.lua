--ÂåÑôNPC
--·¶´¿ÈÊ
--½¨Á¢°ï»á
--½Å±¾ºÅ
x000030_g_scriptId = 000030

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000030_g_eventList={600000}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Mu¯n sáng l§p bang hµi thì ðªn tìm tÕi hÕ nhé!")
	
	AddNumText( sceneId, x000030_g_scriptId, "Gi¾i thi®u bang hµi và lãnh ð¸a", 11, 10 )
	
		AddNumText(sceneId,x000030_g_scriptId,"Xem danh møc bang hµi",6,2)	
		if IsShutout( sceneId, selfId, ONOFF_T_GUILD ) == 0 then
			AddNumText(sceneId,x000030_g_scriptId,"Sáng l§p bang hµi",6,1)
		end
		AddNumText(sceneId,x000030_g_scriptId,"Quän lý thông tin hµi viên",6,3)
		AddNumText(sceneId,x000030_g_scriptId,"Xem thông tin bang hµi",6,4)
		if(GetHumanGuildID(sceneId, selfId) ~= -1) then
			if IsShutout( sceneId, selfId, ONOFF_T_CITY ) == 0 then
				AddNumText(sceneId,x000030_g_scriptId,"Ðång ký thành ph¯",6,5)
			end
			if(CityGetSelfCityID(sceneId, selfId) ~= -1) then
				AddNumText(sceneId,x000030_g_scriptId,"Vào thành ph¯ cüa b±n bang",9,6)
			end
		end
		AddNumText(sceneId,x000030_g_scriptId,"Liên quan ðµ ph°n vinh cüa bang phái",11,11)
		AddNumText(sceneId,x000030_g_scriptId,"Gi¾i thi®u Ð°ng Minh",11,12)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000030_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_069}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	if GetNumText() == 11 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{Guild_Boom_Help}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	if GetNumText() == 12 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{TM_20080331_07}".."#{TM_20080320_02}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	local sel = GetNumText();
	for i, eventId in x000030_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId, sel)
	end
end
