--NPC Mµ Dung S½n Trang
--Vß½ng T¸ch HÕo - KÛ nång Ma L® Thu§t
--Script by Sói Ðz
--ID = 960007

x960007_g_ScriptId	= 960007

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960007_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Vß½ng T¸ch HÕo, kÛ nång Ma L® Thu§t cüa bän phái ðang ðßþc nghiên cÑu, các hÕ hãy quay tr· lÕi sau!")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end