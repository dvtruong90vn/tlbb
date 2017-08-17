--½Å±¾ºÅ
x000088_g_scriptId = 000088

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000088_g_eventList = { 801010 }

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000088_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Hoa tñ phiêu du thuÖ tñ lßu, t½ xanh nhàn nhÕt tñ tiªng s¥u, xuân ¤m thu sß½ng thß½ng tay áo, ð¥y tháng mµt vành trång lßÞi câu. Ðã không biªt nói cùng ai, sao không ð±i ki¬u tóc xem sao?")
		
		AddNumText( sceneId, x000088_g_scriptId, "Gi¾i thi®u thay ð±i ki¬u tóc", 11, 10 )
		
		AddNumText(sceneId,x000088_g_scriptId,"Thay ð±i ki¬u tóc",6,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000088_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)
				AddText( sceneId, "#{function_help_061}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	if GetNumText() == 1 then
		-- ÐÞ¸Ä·¢ÐÍ
		CallScriptFunction( 801010, "OnEnumerate",sceneId, selfId, targetId )
		return
	end

end
