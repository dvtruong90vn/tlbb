--NPC Mµ Dung S½n Trang
--A Bích
--Script by Sói Ðz
--ID = 960018

x960018_g_ScriptId	= 960018

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960018_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là A Bích.")
		AddText(sceneId,"A Châu tÖ tÖ có thu§t cäi trang r¤t ð£c bi®t, th§t khiªn ngß¶i ta khó lòng mà nh§n ra!")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end