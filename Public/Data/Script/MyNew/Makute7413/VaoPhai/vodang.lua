--ÐÕi Lý New
--ID: 002183
--Script: Edit by Sói Ðz
--Name = Huy«n Chân
--Class: Võ Ðang
--**************************

x002183_g_ScriptId = 002183

--**************************--
--*    On Default Event    *--
--**************************--
function x002183_OnDefaultEvent(sceneId,selfId,targetId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
	 
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end

	BeginEvent(sceneId)
	if LuaFnGetMenPai(sceneId,selfId) ~= 3 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", thí chü có mu¯n thay ð±i môn phái sang tu luy®n · #GVõ Ðang#W?")
		AddNumText(sceneId,x002183_g_ScriptId,"Gia nh§p #GVõ Ðang#W",2,1)
		AddNumText(sceneId,x002183_g_ScriptId,"Tìm hi¬u võ công #GVõ Ðang#W",11,2)
	elseif LuaFnGetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64)<= 0 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", thí chü có mu¯n gia nh§p #GVõ Ðang#W?")
		AddNumText(sceneId,x900083_g_ScriptId,"Gia nh§p #GVõ Ðang#W",2,1)
	else
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam.." "..Sex..", nªu nhß "..Sex.." không mu¯n v« bän môn tu luy®n vì ðß¶ng xa, có th¬ ðªn tìm ta, ta s¨ dÕy "..Sex.." công phu cüa bän phái.")
		AddNumText(sceneId,x002183_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 35",1,3)
		AddNumText(sceneId,x002183_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 80",1,4)
		AddNumText(sceneId,x002183_g_ScriptId,"Nh§n danh hi®u ð£c bi®t",1,5)
		AddNumText(sceneId,x002183_g_ScriptId,"Thång c¤p tâm pháp lên #Gc¤p 120",1,6)
		AddNumText(sceneId,x002183_g_ScriptId,"Nh§n th¶i trang cao c¤p môn phái",2,7)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--**************************--
--*    On Event Request    *--
--**************************--
function x002183_OnEventRequest(sceneId,selfId,targetId,eventId)
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
			LuaFnJoinMenpai(sceneId,selfId, targetId,3)
			LuaFnSetXinFaLevel(sceneId,selfId,19,10)
			LuaFnSetXinFaLevel(sceneId,selfId,20,10)
			LuaFnSetXinFaLevel(sceneId,selfId,21,10)
			LuaFnSetXinFaLevel(sceneId,selfId,22,10)
			LuaFnSetXinFaLevel(sceneId,selfId,23,10)
			LuaFnSetXinFaLevel(sceneId,selfId,24,10)
			LuaFnSetXinFaLevel(sceneId,selfId,58,10)
			LuaFnSetXinFaLevel(sceneId,selfId,75,10)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
			
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." ðã là ð® tØ #GVõ Ðang#W!")
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
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Âm Dß½ng Chân Nhân")
		else 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Bát Quái Chân Nhân")
		end
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng "..Sex.." nh§n thành công danh hi®u!")
			AddText(sceneId,"Danh hi®u này chï v¾i nhæng ð® tØ c¤p cao cüa #GVõ Ðang#W m¾i có th¬ ðÕt ðßþc, chúc m×ng "..Sex.." nhé!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 3 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308014,7)
		AddRadioItemBonus(sceneId,30308087,7)
		AddRadioItemBonus(sceneId,30308066,7)
		AddRadioItemBonus(sceneId,30308152,7)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002183_g_ScriptId,0)
		
	end
	--*********************--
	if key == 4 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308114,4)
		AddRadioItemBonus(sceneId,30308124,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002183_g_ScriptId,0)
		
	end
	--*********************--
	if key == 6 then
		
		if GetLevel(sceneId,selfId) < 30 then
			BeginEvent(sceneId)
				AddText(sceneId,""..Sex.." c¤p ðµ không ðü 115, hãy ði tu luy®n thêm ði!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetXinFaLevel(sceneId,selfId,19) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,20) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,21) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,22) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,23) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,24) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,58) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,75) == 120 then
				BeginEvent(sceneId)
					AddText(sceneId,"ChÆng phäi "..Sex.." ðã ðÕt mÑc tâm pháp #GC¤p 120#W r°i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		else
			LuaFnSetXinFaLevel(sceneId,selfId,19,120)
			LuaFnSetXinFaLevel(sceneId,selfId,20,120)
			LuaFnSetXinFaLevel(sceneId,selfId,21,120)
			LuaFnSetXinFaLevel(sceneId,selfId,22,120)
			LuaFnSetXinFaLevel(sceneId,selfId,23,120)
			LuaFnSetXinFaLevel(sceneId,selfId,24,120)
			LuaFnSetXinFaLevel(sceneId,selfId,58,120)
			LuaFnSetXinFaLevel(sceneId,selfId,75,120)
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." nâng tâm pháp thành công lên #GC¤p 120#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*********************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Võ công phái #GVõ Ðang#W l¤y #GBát quái#W làm cån, #GÂm Dß½ng#W hòa hþp sÑc mÕnh kinh thiên ðµng ð¸a.")
			AddText(sceneId,"Võ công phái #GVõ Ðang#W thiên v« công kích #GNµi Công#W, kÛ nång sØ døng #GHuy«n Công Kích#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 7 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n nh§n th¶i trang nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10124013,2)
		AddRadioItemBonus(sceneId,10124117,2)
		AddRadioItemBonus(sceneId,10124326,2)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002183_g_ScriptId,0)
		
	end
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002183_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002183_NotifyFailTips(sceneId,selfId,""..Sex.." hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002183_NotifyFailTips(sceneId,selfId,"Chúc m×ng "..Sex.." nh§n thß·ng thành công!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002183_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end