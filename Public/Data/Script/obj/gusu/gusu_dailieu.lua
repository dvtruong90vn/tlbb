--NPC Mµ Dung S½n Trang
--ÐÕi Liêu SØ Quan
--Script by Sói Ðz
--ID = 960014

x960014_g_ScriptId	= 960014

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960014_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là sØ quan nß¾c ÐÕi Liêu.")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end