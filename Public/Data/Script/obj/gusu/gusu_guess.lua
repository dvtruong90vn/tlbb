--NPC Mµ Dung S½n Trang
--Guess
--Script by Sói Ðz
--ID = 960015

x960015_g_ScriptId	= 960015

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960015_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Mµ Dung S½n Trang ð¤t Cô Tô quä không h± danh th¡ng ð¸a cüa ðª vß½ng ÐÕi Yªn.")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end