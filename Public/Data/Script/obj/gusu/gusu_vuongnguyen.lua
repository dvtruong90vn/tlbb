--NPC Mµ Dung S½n Trang
--Vß½ng Ngæ Yên
--Script by Sói Ðz
--ID = 960016

x960016_g_ScriptId	= 960016

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960016_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Vß½ng Ngæ Yên.")
		AddText(sceneId,"Bi¬u ca dß¶ng nhß chÆng bao gi¶ ð¬ ý ðªn ta. Huynh ¤y chï quan tâm nghi®p l¾n phøc hßng ÐÕi Yªn mà thôi...")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end