--NPC Mµ Dung S½n Trang
--Vß½ng Phu Nhân
--Script by Sói Ðz
--ID = 960019

x960019_g_ScriptId	= 960019

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960019_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Tên ti¬u tØ Ðoàn Dñ chính là con trai cüa lão t£c Ðoàn Chính Thu¥n. Phen này ta phäi cho lão t£c già kia nªm mùi phø tØ sát sinh!")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end