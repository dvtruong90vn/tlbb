--ÐÇËÞNPC
--ÕÆÃÅÈË
--¶¡´ºÇï
--ÆÕÍ¨

x016000_g_scriptId = 016000        
x016000_g_eventList={229009,229012,808092}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Lão phu vçn luôn cäm th¤y r¢ng, ngß¶i trong giang h° dùng dao búa kiªm thß½ng chém giªt lçn nhau, quä th§t là mµt vi®c tàn nhçn vô cùng. Nªu có th¬ dùng ðµc ðä thß½ng ngß¶i, m¾i có th¬ khiªn cho h÷ chªt trong sñ bình yên, an nhàn, hÕnh phúc, vui vë. Cho nên Ðµc công th§t là mµt võ công công ðÑc vô lßþng.")
		
		for i, eventId in x016000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x016000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x016000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_XINGSU )
			return
		end
	end
end
