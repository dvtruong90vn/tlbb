--NPC Mµ Dung S½n Trang
--A Ng÷c - Truy«n T¯ng Kính H°
--Script by Sói Ðz
--ID = 960023

x960023_g_ScriptId	= 960023

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960023_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Thüy ðÕo n½i này r¤t rµng l¾n, nªu không phäi ngß¶i thông thuµc ð¸a hình có l¨ khó có th¬ r¶i khöi n½i ðây ðßþc.")
		AddNumText(sceneId,x960023_g_scriptId, "Ðªn Kính H°",9,0)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960023_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	--*****************--
	if key == 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Kính H° là khu vñc không tång sát khí, các hÕ xác nh§n tiªn vào?")
			AddNumText(sceneId,x960023_g_scriptId, "Xác nh§n",-1,1)
			AddNumText(sceneId,x960023_g_scriptId, "Tr· lÕi",-1,2)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*****************--
	if key == 1 then
		CallScriptFunction((400900),"TransferFunc",sceneId, selfId,5,49,141)
	elseif key == 2 then
		x960023_OnDefaultEvent(sceneId,selfId,targetId)
	end
	--*****************--
	
end