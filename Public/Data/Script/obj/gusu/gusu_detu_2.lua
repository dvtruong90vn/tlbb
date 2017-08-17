--NPC Mµ Dung S½n Trang
--Ð® tØ phái Mµ Dung
--Script by Sói Ðz
--ID = 960021

x960021_g_ScriptId	= 960021

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960021_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Trß·ng môn ðang nghiên cÑu thu§t #GDi Hình Hoán Änh#W nên tÕm th¶i không th¬ tiªp ngß¶i ngoài.")
		AddText(sceneId,"Các hÕ có th¬ tìm ngß¶i chï ðß¶ng môn phái höi thåm tình hình ho£c ð½n giän hãy du ngoÕn th¡ng cänh Mµ Dung S½n Trang mµt vòng xem sao.")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end