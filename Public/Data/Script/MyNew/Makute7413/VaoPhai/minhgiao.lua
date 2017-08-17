--ÐÕi Lý New
--ID: 002181
--Script: Edit by Sói Ðz
--Name = Lâm Khang
--Class: Minh Giáo
--**************************

x002181_g_ScriptId = 002181

--**************************--
--*    On Default Event    *--
--**************************--
function x002181_OnDefaultEvent(sceneId,selfId,targetId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
	 
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end

	BeginEvent(sceneId)
	if LuaFnGetMenPai(sceneId,selfId) ~= 1 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", các hÕ có mu¯n thay ð±i môn phái sang tu luy®n · #GMinh Giáo#W?")
		AddNumText(sceneId,x002181_g_ScriptId,"Gia nh§p #GMinh Giáo#W",2,1)
		AddNumText(sceneId,x002181_g_ScriptId,"Tìm hi¬u võ công #GMinh Giáo#W",11,2)
	elseif LuaFnGetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64)<= 0 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", các hÕ có mu¯n gia nh§p #GMinh Giáo#W?")
		AddNumText(sceneId,x900083_g_ScriptId,"Gia nh§p #GMinh Giáo#W",2,1)
		AddNumText(sceneId,x002181_g_ScriptId,"Tìm hi¬u võ công #GMinh Giáo#W",11,2)
	else
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam.." "..Sex..", nªu nhß "..Sex.." không mu¯n v« bän giáo tu luy®n vì ðß¶ng xa, có th¬ ðªn tìm ta, ta s¨ dÕy "..Sex.." công phu cüa bän phái.")
		AddNumText(sceneId,x002181_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 35",1,3)
		AddNumText(sceneId,x002181_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 80",1,4)
		AddNumText(sceneId,x002181_g_ScriptId,"Nh§n danh hi®u ð£c bi®t",1,5)
		AddNumText(sceneId,x002181_g_ScriptId,"Thång c¤p tâm pháp lên #Gc¤p 120",1,6)
		AddNumText(sceneId,x002181_g_ScriptId,"Nh§n th¶i trang cao c¤p môn phái",2,7)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--**************************--
--*    On Event Request    *--
--**************************--
function x002181_OnEventRequest(sceneId,selfId,targetId,eventId)
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
			LuaFnJoinMenpai(sceneId,selfId, targetId,1)
			LuaFnSetXinFaLevel(sceneId,selfId,7,10)
			LuaFnSetXinFaLevel(sceneId,selfId,8,10)
			LuaFnSetXinFaLevel(sceneId,selfId,9,10)
			LuaFnSetXinFaLevel(sceneId,selfId,10,10)
			LuaFnSetXinFaLevel(sceneId,selfId,11,10)
			LuaFnSetXinFaLevel(sceneId,selfId,12,10)
			LuaFnSetXinFaLevel(sceneId,selfId,56,10)
			LuaFnSetXinFaLevel(sceneId,selfId,73,10)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
			
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." ðã là ð® tØ #GMinh Giáo#W!")
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
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Höa Di®m Tiên TØ")
		else 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Nghi®t Höa Ph¥n Tiên")
		end
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng "..Sex.." nh§n thành công danh hi®u!")
			AddText(sceneId,"Danh hi®u này chï v¾i nhæng ð® tØ c¤p cao cüa #GMinh Giáo#W m¾i có th¬ ðÕt ðßþc, chúc m×ng "..Sex.." nhé!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 3 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308012,7)
		AddRadioItemBonus(sceneId,30308070,7)
		AddRadioItemBonus(sceneId,30308091,7)
		AddRadioItemBonus(sceneId,30308150,7)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002181_g_ScriptId,0)
		
	end
	--*********************--
	if key == 4 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308112,4)
		AddRadioItemBonus(sceneId,30308122,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002181_g_ScriptId,0)
		
	end
	--*********************--
	if key == 6 then
		
		if GetLevel(sceneId,selfId) < 30 then
			BeginEvent(sceneId)
				AddText(sceneId,""..Sex.." c¤p ðµ không ðü 115, hãy ði tu luy®n thêm ði!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetXinFaLevel(sceneId,selfId,7) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,8) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,9) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,10) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,11) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,12) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,56) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,73) == 120 then
				BeginEvent(sceneId)
					AddText(sceneId,"ChÆng phäi "..Sex.." ðã ðÕt mÑc tâm pháp #GC¤p 120#W r°i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		else
			LuaFnSetXinFaLevel(sceneId,selfId,7,120)
			LuaFnSetXinFaLevel(sceneId,selfId,8,120)
			LuaFnSetXinFaLevel(sceneId,selfId,9,120)
			LuaFnSetXinFaLevel(sceneId,selfId,10,120)
			LuaFnSetXinFaLevel(sceneId,selfId,11,120)
			LuaFnSetXinFaLevel(sceneId,selfId,12,120)
			LuaFnSetXinFaLevel(sceneId,selfId,56,120)
			LuaFnSetXinFaLevel(sceneId,selfId,73,120)
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." nâng tâm pháp thành công lên #GC¤p 120#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*********************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Võ công phái #GMinh Giáo#W l¤y nµ khí làm g¯c, có th¬ kêu g÷i sÑc mÕnh cüa #GHöa Th¥n DÕ Xoa#W và #GThüy Th¥n Diêm Vß½ng#W, t× ðó mà n±i danh thiên hÕ.")
			AddText(sceneId,"Võ công phái #GMinh Giáo#W thiên v« công kích #GNgoÕi Công#W, kÛ nång sØ døng #GBång - Höa Công Kích#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 7 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n nh§n th¶i trang nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10124010,4)
		AddRadioItemBonus(sceneId,10124114,4)
		AddRadioItemBonus(sceneId,10124323,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002181_g_ScriptId,0)
		
	end
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002181_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002181_NotifyFailTips(sceneId,selfId,""..Sex.." hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002181_NotifyFailTips(sceneId,selfId,"Chúc m×ng "..Sex.." nh§n thß·ng thành công!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002181_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end