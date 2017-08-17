--NPC Mµ Dung S½n Trang
--Mµ Dung Thùy - Trß·ng môn phái Mµ Dung
--Script by Sói Ðz
--ID = 960001

x960001_g_ScriptId	= 960001

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960001_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Mµ Dung Thùy, trß·ng môn nhân phái Mµ Dung. Hi®n tÕi ta ðang nghiên cÑu thu§t #GDi Hình Hoán Änh#W, có vi®c gì quan tr÷ng hãy tìm #GMµ Dung Ki®t#W.")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end