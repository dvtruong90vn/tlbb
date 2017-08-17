--ÐÕi Lý New
--ID: 002190
--Script: Edit by Sói Ðz
--Name = Lß½ng Minh
--Class: Mµ Dung
--**************************

x002190_g_ScriptId = 002190

--**************************--
--*    On Default Event    *--
--**************************--
function x002190_OnDefaultEvent(sceneId,selfId,targetId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
	 
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end

	BeginEvent(sceneId)
	if LuaFnGetMenPai(sceneId,selfId) ~= 10 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", các hÕ có mu¯n thay ð±i môn phái sang tu luy®n · #GMµ Dung#W?")
		AddNumText(sceneId,x002190_g_ScriptId,"Gia nh§p #GMµ Dung#W",2,1)
		AddNumText(sceneId,x002190_g_ScriptId,"Tìm hi¬u võ công #GMµ Dung#W",11,2)
	else
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam.." "..Sex..", nªu nhß "..Sex.." không mu¯n v« bän môn tu luy®n vì ðß¶ng xa, có th¬ ðªn tìm ta, ta s¨ dÕy "..Sex.." công phu cüa bän phái.")
		AddNumText(sceneId,x002190_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 35",1,3)
		AddNumText(sceneId,x002190_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 80",1,4)
		AddNumText(sceneId,x002190_g_ScriptId,"Nh§n danh hi®u ð£c bi®t",1,5)
		AddNumText(sceneId,x002190_g_ScriptId,"Thång c¤p tâm pháp lên #Gc¤p 120",1,6)
		AddNumText(sceneId,x002190_g_ScriptId,"Nh§n th¶i trang cao c¤p môn phái",2,7)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--**************************--
--*    On Event Request    *--
--**************************--
function x002190_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()
local Sex = GetSex(sceneId,selfId)
local Sex1 = GetSex(sceneId,selfId)
	 
	--*********************-- 
	if Sex == 0 then
		Sex = "Sß muµi"
	else 
		Sex = "Sß ð®"
	end
	--*********************--
	if key == 1 then
		if LuaFnGetAvailableItemCount(sceneId, selfId, 39901003) >= 1 then
			LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
			LuaFnJoinMenpai(sceneId,selfId, targetId,10)
			LuaFnSetXinFaLevel(sceneId,selfId,64,10)
			LuaFnSetXinFaLevel(sceneId,selfId,65,10)
			LuaFnSetXinFaLevel(sceneId,selfId,66,10)
			LuaFnSetXinFaLevel(sceneId,selfId,67,10)
			LuaFnSetXinFaLevel(sceneId,selfId,68,10)
			LuaFnSetXinFaLevel(sceneId,selfId,69,10)
			LuaFnSetXinFaLevel(sceneId,selfId,70,10)
			LuaFnSetXinFaLevel(sceneId,selfId,71,10)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
			
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." ðã là ð® tØ #GMµ Dung#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
				AddText(sceneId,"Hãy mang #GMôn Phái Chuy¬n Hoán L®nh #Wðªn ðây!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
	--*********************--
	if key == 5 then
	
		if Sex1 == 0 then 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Hóa Khí Tiên Næ")
		else 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Lång Th¥n Tiên Nhân")
		end
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng "..Sex.." nh§n thành công danh hi®u!")
			AddText(sceneId,"Danh hi®u này chï v¾i nhæng ð® tØ c¤p cao cüa #GMµ Dung#W m¾i có th¬ ðÕt ðßþc, chúc m×ng "..Sex.." nhé!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 3 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308100,3)
		AddRadioItemBonus(sceneId,30308099,3)
		AddRadioItemBonus(sceneId,30308097,3)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002190_g_ScriptId,0)
		
	end
	--*********************--
	if key == 4 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308120,2)
		AddRadioItemBonus(sceneId,30308130,2)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002190_g_ScriptId,0)
		
	end
	--*********************--
	if key == 6 then
		
		if GetLevel(sceneId,selfId) < 30 then
			BeginEvent(sceneId)
				AddText(sceneId,""..Sex.." c¤p ðµ không ðü 115, hãy ði tu luy®n thêm ði!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetXinFaLevel(sceneId,selfId,64) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,65) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,66) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,67) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,68) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,69) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,70) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,71) == 120 then
				BeginEvent(sceneId)
					AddText(sceneId,"ChÆng phäi "..Sex.." ðã ðÕt mÑc tâm pháp #GC¤p 120#W r°i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		else
			LuaFnSetXinFaLevel(sceneId,selfId,64,120)
			LuaFnSetXinFaLevel(sceneId,selfId,65,120)
			LuaFnSetXinFaLevel(sceneId,selfId,66,120)
			LuaFnSetXinFaLevel(sceneId,selfId,67,120)
			LuaFnSetXinFaLevel(sceneId,selfId,68,120)
			LuaFnSetXinFaLevel(sceneId,selfId,69,120)
			LuaFnSetXinFaLevel(sceneId,selfId,70,120)
			LuaFnSetXinFaLevel(sceneId,selfId,71,120)
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." nâng tâm pháp thành công lên #GC¤p 120#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*********************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Võ công phái #GMµ Dung#W thiên hÕ vô ð¸ch, bän môn có công phu #GÐ¦u Chuy¬n Tinh Di#W huy«n thoÕi nhßng mà hình nhß chï có #GMµ Dung Phøc#W thiªu chü n¡m ðßþc công phu này.")
			AddText(sceneId,"Võ công phái #GMµ Dung#W thiên v« công kích #GNµi Công#W, kÛ nång sØ døng #GHuy«n Công Kích#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 7 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n nh§n th¶i trang nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10124199,2)
		AddRadioItemBonus(sceneId,10124200,2)
		AddRadioItemBonus(sceneId,10124331,2)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002190_g_ScriptId,0)
		
	end
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002190_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002190_NotifyFailTips(sceneId,selfId,""..Sex.." hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002190_NotifyFailTips(sceneId,selfId,"Chúc m×ng "..Sex.." nh§n thß·ng thành công!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002190_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end