--NPC Mµ Dung S½n Trang
--Vß½ng Chi Lâm - KÛ nång Bùa Chú
--Script by Sói Ðz
--ID = 960008

x960008_g_ScriptId	= 960008

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960008_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Vß½ng Chi Lâm, kÛ nång Bùa Chú cüa bän phái ðang ðßþc nghiên cÑu, các hÕ hãy quay tr· lÕi sau!")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end