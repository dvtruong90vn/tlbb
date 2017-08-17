--NPC Mµ Dung S½n Trang
--Phong Tiêu - Ngß¶i truy®n thø Linh Dß½ng
--Script by Sói Ðz
--ID = 960006

x960006_g_ScriptId	= 960006

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960006_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Phong Tiêu, ngß¶i truy«n thø kÜ thu§t Linh Dß½ng tÕi Mµ Dung S½n Trang. Các hÕ tìm ta có vi®c gì?")
		if GetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) > 0 then
			AddNumText(sceneId,x960006_g_scriptId,"Nh§n thông døng kÜ thu§t",1,0)
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960006_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	--*************--
	if key == 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công Thông Døng KÜ Thu§t!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		TryRecieveItem(sceneId,selfId,39920040,1)
	end
	--*************--
	
end