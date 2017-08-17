--NPC Mµ Dung SΩn Trang
--Th± Ph∞n Sÿ Quan
--Script by SÛi –z
--ID = 960013

x960013_g_ScriptId	= 960013

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960013_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta l‡ sÿ quan nﬂæc Th± Ph∞n.")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end