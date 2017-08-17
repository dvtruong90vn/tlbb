--NPC Mµ Dung S½n Trang
--Mµ Dung Tùy Phong - Truy«n thø khinh công phái Mµ Dung
--Script by Sói Ðz
--ID = 960010

x960010_g_ScriptId	= 960010

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960010_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Mµ Dung Tùy Phong, ngß¶i truy«n thø khinh công phái Mµ Dung.")
		AddNumText(sceneId,x960010_g_ScriptId,"H÷c khinh công môn phái",2,0)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960010_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	if key == 0 then
	
		if HaveSkill(sceneId,selfId,200) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã h÷c ðßþc khinh công môn phái r°i.")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif GetMenPai(sceneId, selfId) ~= 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ta chï truy«n dÕy kÛ nång này cho ð® tØ bän phái.")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"H÷c t§p thành công!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		AddSkill(sceneId,selfId,200)
		DelSkill(sceneId,selfId,34)
		
	end

end