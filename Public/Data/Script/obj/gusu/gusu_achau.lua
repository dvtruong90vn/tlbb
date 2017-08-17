--NPC Mµ Dung S½n Trang
--A Châu
--Script by Sói Ðz
--ID = 960017

x960017_g_ScriptId	= 960017

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960017_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là A Châu, chü nhân Thính Hß½ng Thüy TÕ.")
		AddText(sceneId,"Công tØ gia c¥n ðây luôn ch¸u tiªng x¤u do hi¬u l¥m v¾i các ðÕi hi®p giang h°. Th§t oan cho công tØ quá!")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end