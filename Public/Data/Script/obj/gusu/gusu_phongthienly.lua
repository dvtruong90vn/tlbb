--NPC Mµ Dung S½n Trang
--Phong Thiên Lý - Ngß¶i quän lý Linh Dß½ng
--Script by Sói Ðz
--ID = 960005

x960005_g_ScriptId	= 960005

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960005_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Phong Thiên Lý, ngß¶i quän lý Linh Dß½ng tÕi Mµ Dung S½n Trang. Các hÕ tìm ta có vi®c gì?")
		if GetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) > 0 then
			AddNumText(sceneId,x960005_g_scriptId, "Nh§n thú cßÞi môn phái",1,1)
			AddNumText(sceneId,x960005_g_scriptId, "Tìm hi¬u thú cßÞi môn phái",8,2)
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960005_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	--*************--
	if key == 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"Thú cßÞi bän phái là Linh Dß½ng. CßÞi Linh Dß½ng t¯c ðµ di chuy¬n #G+40%#W, cßÞi Tuyªt Linh Dß½ng t¯c ðµ di chuy¬n #G+70%")
			AddText(sceneId,"Ð¬ h÷c kÜ thu§t tß½ng Ñng c¥n ðªn ch² Phong Tiêu#H[25,163]#W - Ngß¶i truy«n thø kÜ thu§t bän phái.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*************--
	if key == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ mu¯n nh§n loÕi thú cßÞi nào?")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		AddRadioItemBonus(sceneId,10149033,2)
		AddRadioItemBonus(sceneId,10149034,2)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x960005_g_ScriptId,0)
	end
	--*************--
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x960005_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)

	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x960005_NotifyFailTips(sceneId,selfId,"Hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø!")
		return
	end
	--*****************--
	TryRecieveItem(sceneId,selfId,selectRadioId,1)
	BeginEvent(sceneId)
		AddText(sceneId,"Nh§n thành công!")
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x960005_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end