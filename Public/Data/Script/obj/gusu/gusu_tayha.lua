--NPC Mµ Dung SΩn Trang
--T‚y H’ Sÿ Quan
--Script by SÛi –z
--ID = 960022

x960022_g_ScriptId	= 960022

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960022_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta l‡ sÿ quan nﬂæc T‚y H’.")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end