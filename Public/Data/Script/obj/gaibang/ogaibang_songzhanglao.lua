--Ø¤°ïNPC
--ÕÆÃÅÈË
--ËÎ³¤ÀÏ
--ÆÕÍ¨

x010005_g_scriptId = 010005
x010005_g_eventList = {229009,229012,808092}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x010005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Cái Bang nªu mu¯n phát tri¬n l¾n mÕnh, quä thñc không th¬ chï thâu nh§n kh¤t cái. G¥y ðây ta thu mµt ð® tØ, h¡n ta trß¾c kia là hòa thßþng.")
		for i, findId in x010005_g_eventList do
			CallScriptFunction( x010005_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x010005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x010005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_GAIBANG )
			return
		end
	end
end

