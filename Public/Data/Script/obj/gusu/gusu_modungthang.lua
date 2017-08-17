--NPC Mµ Dung S½n Trang
--Mµ Dung Th¡ng - Ngß¶i giao nhi®m vø phái Mµ Dung
--Script by Sói Ðz
--ID = 960003

x960003_g_ScriptId	= 960003

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960003_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"TÕi hÕ là Mµ Dung Th¡ng, ngß¶i giao nhi®m vø phái Mµ Dung cho các ð® tØ bän phái.")
		if GetMenPai(sceneId, selfId) == 10 then
			AddNumText(sceneId,x960003_g_scriptId, "Ð±i th¶i trang cao c¤p môn phái",2,0)
			AddNumText(sceneId,x960003_g_scriptId, "Nhi®m vø sß môn",2,1)
			AddNumText(sceneId,x960003_g_scriptId, "Tìm hi¬u nhi®m vø sß môn",8,2)
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960003_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	--*****************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Bän phái c¥n thu th§p s¯ lßþng l¾n các v§t ph¦m #GThäo Ngß#W,#GBÕch Anh#W,#GB° Hoàng#W,#GTÑc Ngß#W.")
			AddText(sceneId,"Nhi®m vø cüa ngß½i là ðem ðü s¯ lßþng yêu c¥u ðªn ch² ta, có r¤t nhi«u ph¥n thß·ng phong phú ðang ðþi ngß½i.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	
	end
	--*****************--
	if key == 0 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Ð±i th¶i trang #Gc¤p 2#W c¥n #G100 ði¬m môn phái#W, ð±i th¶i trang #Gc¤p 3#W c¥n #G1000 ði¬m môn phái#W. Ngß½i mu¯n ð±i loÕi nào?")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		AddRadioItemBonus(sceneId,10124341,2)
		AddRadioItemBonus(sceneId,10124331,2)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x960003_g_ScriptId,0)
	
	end
	--*****************--
	if key == 1 then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Bän phái c¥n thu th§p s¯ lßþng l¾n các v§t ph¦m dß¾i ðây, nªu ngß½i có ta s¨ tr÷ng thß·ng.")
			AddNumText(sceneId,x960003_g_scriptId, "Ta có #G10 con #YThäo Ngß",1,3)
			AddNumText(sceneId,x960003_g_scriptId, "Ta có #G10 cái #YBÕch Anh",1,4)
			AddNumText(sceneId,x960003_g_scriptId, "Ta có #G10 cái #YB° Hoàng",1,5)
			AddNumText(sceneId,x960003_g_scriptId, "Ta có #G10 con #YTÑc Ngß",1,6)
			AddNumText(sceneId,x960003_g_scriptId, "Tr· lÕi",2,7)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	
	end
	--*****************--
	if key == 7 then
		
		x960003_OnDefaultEvent(sceneId,selfId,targetId)
	
	end
	--*****************--
	local num
	local Point
	--*****************--
	if key == 3 then
		
		num = LuaFnGetAvailableItemCount(sceneId,selfId,20102001)
		if num < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ lßþng #GThäo Ngß#W cüa ngß½i là "..num..", c¥n t¯i thi¬u #G10 con#W m¾i có th¬ nh§n thß·ng!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,20102001,10)
			AddMoney(sceneId,selfId,5000)
			Point = GetHumanMenpaiPoint(sceneId,selfId)+5
			SetHumanMenpaiPoint(sceneId,selfId,Point)
			LuaFnAddExp(sceneId,selfId,10000)
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã hoàn thành nhi®m vø sß môn thu th§p #G10 con#Y Thäo Ngß#W. Ta có chút ngân lßþng, kinh nghi®m và ði¬m môn phái, ngß½i hãy nh§n l¤y!")
				AddText(sceneId,"Ngß½i nh§n ðßþc #G5#W #-02, #G1 VÕn#W ði¬m #GKinh Nghi®m")
				AddText(sceneId,"Ði¬m môn phái cüa ngß½i gia tång lên #G5 ði¬m#W. Ði¬m môn phái hi®n tÕi cüa ngß½i là "..Point..".")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*****************--
	if key == 4 then
		
		num = LuaFnGetAvailableItemCount(sceneId,selfId,20101001)
		if num < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ lßþng #GBÕch Anh#W cüa ngß½i là "..num..", c¥n t¯i thi¬u #G10 cái#W m¾i có th¬ nh§n thß·ng!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,20101001,10)
			AddMoney(sceneId,selfId,5000)
			Point = GetHumanMenpaiPoint(sceneId,selfId)+5
			SetHumanMenpaiPoint(sceneId,selfId,Point)
			LuaFnAddExp(sceneId,selfId,10000)
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã hoàn thành nhi®m vø sß môn thu th§p #G10 cái#Y BÕch Anh#W. Ta có chút ngân lßþng, kinh nghi®m và ði¬m môn phái, ngß½i hãy nh§n l¤y!")
				AddText(sceneId,"Ngß½i nh§n ðßþc #G5#W #-02, #G1 VÕn#W ði¬m #GKinh Nghi®m")
				AddText(sceneId,"Ði¬m môn phái cüa ngß½i gia tång lên #G5 ði¬m#W. Ði¬m môn phái hi®n tÕi cüa ngß½i là "..Point..".")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*****************--
	if key == 5 then
		
		num = LuaFnGetAvailableItemCount(sceneId,selfId,20101002)
		if num < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ lßþng #GB° Hoàng#W cüa ngß½i là "..num..", c¥n t¯i thi¬u #G10 cái#W m¾i có th¬ nh§n thß·ng!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)	
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,20101002,10)
			AddMoney(sceneId,selfId,10000)
			Point = GetHumanMenpaiPoint(sceneId,selfId)+6
			SetHumanMenpaiPoint(sceneId,selfId,Point)
			LuaFnAddExp(sceneId,selfId,20000)
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã hoàn thành nhi®m vø sß môn thu th§p #G10 cái#Y B° Hoàng#W. Ta có chút ngân lßþng, kinh nghi®m và ði¬m môn phái, ngß½i hãy nh§n l¤y!")
				AddText(sceneId,"Ngß½i nh§n ðßþc #G10#W #-02, #G2 VÕn#W ði¬m #GKinh Nghi®m")
				AddText(sceneId,"Ði¬m môn phái cüa ngß½i gia tång lên #G6 ði¬m#W. Ði¬m môn phái hi®n tÕi cüa ngß½i là "..Point..".")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*****************--
	if key == 6 then
	
		num = LuaFnGetAvailableItemCount(sceneId,selfId,20102002)
		if num < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"S¯ lßþng #GTÑc Ngß#W cüa ngß½i là "..num..", c¥n t¯i thi¬u #G10 con#W m¾i có th¬ nh§n thß·ng!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)	
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,20102002,10)
			AddMoney(sceneId,selfId,10000)
			Point = GetHumanMenpaiPoint(sceneId,selfId)+6
			SetHumanMenpaiPoint(sceneId,selfId,Point)
			LuaFnAddExp(sceneId,selfId,20000)
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã hoàn thành nhi®m vø sß môn thu th§p #G10 con#Y TÑc Ngß#W. Ta có chút ngân lßþng, kinh nghi®m và ði¬m môn phái, ngß½i hãy nh§n l¤y!")
				AddText(sceneId,"Ngß½i nh§n ðßþc #G10#W #-02, #G2 VÕn#W ði¬m #GKinh Nghi®m")
				AddText(sceneId,"Ði¬m môn phái cüa ngß½i gia tång lên #G6 ði¬m#W. Ði¬m môn phái hi®n tÕi cüa ngß½i là "..Point..".")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*****************--

end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x960003_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Point = GetHumanMenpaiPoint(sceneId,selfId)
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x960003_NotifyFailTips(sceneId,selfId,"Hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø!")
		return
	end
	--*****************--
	if selectRadioId == 10124341 then
	
		if Point < 100 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ð±i th¶i trang #Gc¤p 2#W c¥n có #G100 ði¬m môn phái#W.")
				AddText(sceneId,"S¯ ði¬m môn phái hi®n tÕi cüa ngß½i là #G"..Point.." ði¬m#W, vçn chßa ðü s¯ lßþng yêu c¥u. Hãy c¯ng hiªn thêm cho sß môn ði!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		TryRecieveItem(sceneId,selfId,selectRadioId,1)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i ðã hoán ð±i thành công #G100 ði¬m môn phái#W l¤y th¶i trang #Gc¤p 2#W môn phái, chúc m×ng!")
			Point = Point - 100
			SetHumanMenpaiPoint(sceneId,selfId,Point)
			AddText(sceneId,"S¯ ði¬m môn phái hi®n tÕi cüa ngß½i còn lÕi là #G"..Point.." ði¬m#W!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if selectRadioId == 10124331 then
	
		if Point < 1000 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ð±i th¶i trang #Gc¤p 3#W c¥n có #G1000 ði¬m môn phái#W.")
				AddText(sceneId,"S¯ ði¬m môn phái hi®n tÕi cüa ngß½i là #G"..Point.." ði¬m#W, vçn chßa ðü s¯ lßþng yêu c¥u. Hãy c¯ng hiªn thêm cho sß môn ði!")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		TryRecieveItem(sceneId,selfId,selectRadioId,1)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i ðã hoán ð±i thành công #G1000 ði¬m môn phái#W l¤y th¶i trang #Gc¤p 3#W môn phái, chúc m×ng!")
			Point = Point - 1000
			SetHumanMenpaiPoint(sceneId,selfId,Point)
			AddText(sceneId,"S¯ ði¬m môn phái hi®n tÕi cüa ngß½i còn lÕi là #G"..Point.." ði¬m#W!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x960003_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

