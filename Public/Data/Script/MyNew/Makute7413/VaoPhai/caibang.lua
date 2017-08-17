--ÐÕi Lý New
--ID: 002182
--Script: Edit by Sói Ðz
--Name = Lß½ng Quan
--Class: Cái Bang
--**************************

x002182_g_ScriptId = 002182

--**************************--
--*    On Default Event    *--
--**************************--
function x002182_OnDefaultEvent(sceneId,selfId,targetId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
	 
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end

	BeginEvent(sceneId)
	if LuaFnGetMenPai(sceneId,selfId) ~= 2 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", các hÕ có mu¯n thay ð±i môn phái sang tu luy®n · #GCái Bang#W?")
		AddNumText(sceneId,x002182_g_ScriptId,"Gia nh§p #GCái Bang#W",2,1)
		AddNumText(sceneId,x002182_g_ScriptId,"Tìm hi¬u võ công #GCái Bang#W",11,2)
	elseif LuaFnGetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64)<= 0 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", các hÕ có mu¯n gia nh§p #GCái Bang#W?")
		AddNumText(sceneId,x900083_g_ScriptId,"Gia nh§p #GCái Bang#W",2,1)
		AddNumText(sceneId,x900074_g_ScriptId,"Tìm hi¬u võ công #GCái Bang#W",11,2)
	else
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam.." "..Sex..", nªu nhß "..Sex.." không mu¯n v« bän ðà tu luy®n vì ðß¶ng xa, có th¬ ðªn tìm ta, ta s¨ dÕy "..Sex.." công phu cüa bän phái.")
		AddNumText(sceneId,x002182_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 35",1,3)
		AddNumText(sceneId,x002182_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 80",1,4)
		AddNumText(sceneId,x002182_g_ScriptId,"Nh§n danh hi®u ð£c bi®t",1,5)
		AddNumText(sceneId,x002182_g_ScriptId,"Thång c¤p tâm pháp lên #Gc¤p 120",1,6)
		AddNumText(sceneId,x002182_g_ScriptId,"Nh§n th¶i trang cao c¤p môn phái",2,7)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--**************************--
--*    On Event Request    *--
--**************************--
function x002182_OnEventRequest(sceneId,selfId,targetId,eventId)
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
			LuaFnJoinMenpai(sceneId,selfId, targetId,2)
			LuaFnSetXinFaLevel(sceneId,selfId,13,10)
			LuaFnSetXinFaLevel(sceneId,selfId,14,10)
			LuaFnSetXinFaLevel(sceneId,selfId,15,10)
			LuaFnSetXinFaLevel(sceneId,selfId,16,10)
			LuaFnSetXinFaLevel(sceneId,selfId,17,10)
			LuaFnSetXinFaLevel(sceneId,selfId,18,10)
			LuaFnSetXinFaLevel(sceneId,selfId,57,10)
			LuaFnSetXinFaLevel(sceneId,selfId,74,10)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)

			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." ðã là ð® tØ #GCái Bang#W!")
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
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Phi Long Ng÷c Næ")
		else 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Song Long R¶i Bi¬n")
		end
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng "..Sex.." nh§n thành công danh hi®u!")
			AddText(sceneId,"Danh hi®u này chï v¾i nhæng ð® tØ c¤p cao cüa #GCái Bang#W m¾i có th¬ ðÕt ðßþc, chúc m×ng "..Sex.." nhé!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 3 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308013,6)
		AddRadioItemBonus(sceneId,30308060,6)
		AddRadioItemBonus(sceneId,30308089,6)
		AddRadioItemBonus(sceneId,30308151,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002182_g_ScriptId,0)
		
	end
	--*********************--
	if key == 4 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308113,4)
		AddRadioItemBonus(sceneId,30308123,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002182_g_ScriptId,0)
		
	end
	--*********************--
	if key == 6 then
		
		if GetLevel(sceneId,selfId) < 30 then
			BeginEvent(sceneId)
				AddText(sceneId,""..Sex.." c¤p ðµ không ðü 115, hãy ði tu luy®n thêm ði!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetXinFaLevel(sceneId,selfId,13) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,14) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,15) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,16) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,17) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,18) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,57) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,74) == 120 then
				BeginEvent(sceneId)
					AddText(sceneId,"ChÆng phäi "..Sex.." ðã ðÕt mÑc tâm pháp #GC¤p 120#W r°i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		else
			LuaFnSetXinFaLevel(sceneId,selfId,13,120)
			LuaFnSetXinFaLevel(sceneId,selfId,14,120)
			LuaFnSetXinFaLevel(sceneId,selfId,15,120)
			LuaFnSetXinFaLevel(sceneId,selfId,16,120)
			LuaFnSetXinFaLevel(sceneId,selfId,17,120)
			LuaFnSetXinFaLevel(sceneId,selfId,18,120)
			LuaFnSetXinFaLevel(sceneId,selfId,57,120)
			LuaFnSetXinFaLevel(sceneId,selfId,74,120)
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." nâng tâm pháp thành công lên #GC¤p 120#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*********************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Võ công phái #GCái Bang#W tuy bình sinh không có gì ð£c bi®t nhßng toàn nh¢m vào ch² s½ h· cüa møc tiêu, công kích cûng cån cÑ vào s½ h· mà mÕnh hay yªu.")
			AddText(sceneId,"Võ công phái #GCái Bang#W thiên v« công kích #GNgoÕi Công#W, kÛ nång sØ døng #GHöa - Ðµc Công Kích#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 7 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n nh§n th¶i trang nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10124011,4)
		AddRadioItemBonus(sceneId,10124115,4)
		AddRadioItemBonus(sceneId,10124324,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002182_g_ScriptId,0)
		
	end
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002182_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002182_NotifyFailTips(sceneId,selfId,""..Sex.." hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002182_NotifyFailTips(sceneId,selfId,"Chúc m×ng "..Sex.." nh§n thß·ng thành công!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002182_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end