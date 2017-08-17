--ÐÕi Lý New
--ID: 002185
--Script: Edit by Sói Ðz
--Name = Phß½ng Mai
--Class: Tinh Túc
--**************************

x002185_g_ScriptId = 002185

--**************************--
--*    On Default Event    *--
--**************************--
function x002185_OnDefaultEvent(sceneId,selfId,targetId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
	 
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end

	BeginEvent(sceneId)
	if LuaFnGetMenPai(sceneId,selfId) ~= 5 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", các hÕ có mu¯n thay ð±i môn phái sang tu luy®n · #GTinh Túc#W?")
		AddNumText(sceneId,x002185_g_ScriptId,"Gia nh§p #GTinh Túc#W",2,1)
		AddNumText(sceneId,x002185_g_ScriptId,"Tìm hi¬u võ công #GTinh Túc#W",11,2)
	elseif LuaFnGetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64)<= 0 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", các hÕ có mu¯n gia nh§p #GTinh Túc#W?")
		AddNumText(sceneId,x900083_g_ScriptId,"Gia nh§p #GTinh Túc#W",2,1)
		AddNumText(sceneId,x900074_g_ScriptId,"Tìm hi¬u võ công #GTinh Túc#W",11,2)
	else
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam.." "..Sex..", nªu nhß "..Sex.." không mu¯n v« bän môn tu luy®n vì ðß¶ng xa, có th¬ ðªn tìm ta, ta s¨ dÕy "..Sex.." công phu cüa bän phái.")
		AddNumText(sceneId,x002185_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 35",1,3)
		AddNumText(sceneId,x002185_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 80",1,4)
		AddNumText(sceneId,x002185_g_ScriptId,"Nh§n danh hi®u ð£c bi®t",1,5)
		AddNumText(sceneId,x002185_g_ScriptId,"Thång c¤p tâm pháp lên #Gc¤p 120",1,6)
		AddNumText(sceneId,x002185_g_ScriptId,"Nh§n th¶i trang cao c¤p môn phái",2,7)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--**************************--
--*    On Event Request    *--
--**************************--
function x002185_OnEventRequest(sceneId,selfId,targetId,eventId)
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
			LuaFnJoinMenpai(sceneId,selfId, targetId,5)
			LuaFnSetXinFaLevel(sceneId,selfId,31,10)
			LuaFnSetXinFaLevel(sceneId,selfId,32,10)
			LuaFnSetXinFaLevel(sceneId,selfId,33,10)
			LuaFnSetXinFaLevel(sceneId,selfId,34,10)
			LuaFnSetXinFaLevel(sceneId,selfId,35,10)
			LuaFnSetXinFaLevel(sceneId,selfId,36,10)
			LuaFnSetXinFaLevel(sceneId,selfId,60,10)
			LuaFnSetXinFaLevel(sceneId,selfId,77,10)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
			
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." ðã là ð® tØ #GTinh Túc#W!")
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
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Liên Châu Thích Khách")
		else 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Hü Thi Tán Nhân")
		end
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng "..Sex.." nh§n thành công danh hi®u!")
			AddText(sceneId,"Danh hi®u này chï v¾i nhæng ð® tØ c¤p cao cüa #GTinh Túc#W m¾i có th¬ ðÕt ðßþc, chúc m×ng "..Sex.." nhé!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 3 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308016,7)
		AddRadioItemBonus(sceneId,30308088,7)
		AddRadioItemBonus(sceneId,30308067,7)
		AddRadioItemBonus(sceneId,30308154,7)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002185_g_ScriptId,0)
		
	end
	--*********************--
	if key == 4 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308116,4)
		AddRadioItemBonus(sceneId,30308126,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002185_g_ScriptId,0)
		
	end
	--*********************--
	if key == 6 then
		
		if GetLevel(sceneId,selfId) < 30 then
			BeginEvent(sceneId)
				AddText(sceneId,""..Sex.." c¤p ðµ không ðü 115, hãy ði tu luy®n thêm ði!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetXinFaLevel(sceneId,selfId,31) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,32) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,33) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,34) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,35) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,36) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,60) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,77) == 120 then
				BeginEvent(sceneId)
					AddText(sceneId,"ChÆng phäi "..Sex.." ðã ðÕt mÑc tâm pháp #GC¤p 120#W r°i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		else
			LuaFnSetXinFaLevel(sceneId,selfId,31,120)
			LuaFnSetXinFaLevel(sceneId,selfId,32,120)
			LuaFnSetXinFaLevel(sceneId,selfId,33,120)
			LuaFnSetXinFaLevel(sceneId,selfId,34,120)
			LuaFnSetXinFaLevel(sceneId,selfId,35,120)
			LuaFnSetXinFaLevel(sceneId,selfId,36,120)
			LuaFnSetXinFaLevel(sceneId,selfId,60,120)
			LuaFnSetXinFaLevel(sceneId,selfId,77,120)
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." nâng tâm pháp thành công lên #GC¤p 120#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*********************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Võ công phái #GTinh Túc#W dùng ðµc trùng làm cån cÑ tu luy®n nµi lñc. Ðµc tính cüa ðµc trùng càng cao, nµi lñc luy®n thành càng mÕnh.")
			AddText(sceneId,"Võ công phái #GTinh Túc#W thiên v« công kích #GNµi Công#W, kÛ nång sØ døng #GÐµc Công Kích#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 7 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n nh§n th¶i trang nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10124014,4)
		AddRadioItemBonus(sceneId,10124118,4)
		AddRadioItemBonus(sceneId,10124327,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002185_g_ScriptId,0)
		
	end
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002185_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002185_NotifyFailTips(sceneId,selfId,""..Sex.." hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002185_NotifyFailTips(sceneId,selfId,"Chúc m×ng "..Sex.." nh§n thß·ng thành công!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002185_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end