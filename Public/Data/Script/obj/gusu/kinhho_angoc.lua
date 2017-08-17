--NPC Kính H°
--A Ng÷c - Truy«n T¯ng Mµ Dung S½n Trang
--Script by Sói Ðz
--ID = 960024

x960024_g_ScriptId	= 960024

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960024_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Mµ Dung S½n Trang thüy ðÕo r¤t rµng l¾n, nªu không phäi ngß¶i thông thuµc ð¸a hình có l¨ khó có th¬ ðªn ðßþc.")
		AddNumText(sceneId,x960024_g_scriptId, "Ðªn Mµ Dung S½n Trang",9,0)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960024_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	--*****************--
	if key == 0 then
		CallScriptFunction((400900),"TransferFunc",sceneId, selfId,435,160,166)
	end
	--*****************--
	
end