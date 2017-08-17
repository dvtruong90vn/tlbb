--ÐÕi Lý New
--ID: 002180
--Script: Edit by Sói Ðz
--Name = Thành Long
--Class: Thiªu Lâm
--**************************

x002180_g_ScriptId = 002180

--**************************--
--*    On Default Event    *--
--**************************--
function x002180_OnDefaultEvent(sceneId,selfId,targetId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
	 
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end

	BeginEvent(sceneId)
	if LuaFnGetMenPai(sceneId,selfId) ~= 0 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", thí chü có mu¯n thay ð±i môn phái sang tu luy®n · #GThiªu Lâm#W?")
		AddNumText(sceneId,x002180_g_ScriptId,"Gia nh§p #GThiªu Lâm#W",2,1)
		AddNumText(sceneId,x002180_g_ScriptId,"Tìm hi¬u võ công #GThiªu Lâm#W",11,2)
	elseif LuaFnGetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64)<= 0 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", thí chü có mu¯n gia nh§p #GThiªu Lâm#W?")
		AddNumText(sceneId,x002180_g_ScriptId,"Gia nh§p #GThiªu Lâm#W",2,1)
		AddNumText(sceneId,x002180_g_ScriptId,"Tìm hi¬u võ công #GThiªu Lâm#W",11,2)
	else
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam.." "..Sex..", nªu nhß "..Sex.." không mu¯n v« bän tñ tu luy®n vì ðß¶ng xa, có th¬ ðªn tìm ta, ta s¨ dÕy "..Sex.." công phu cüa bän phái.")
		AddNumText(sceneId,x002180_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 35",1,3)
		AddNumText(sceneId,x002180_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 80",1,4)
		AddNumText(sceneId,x002180_g_ScriptId,"Nh§n danh hi®u ð£c bi®t",1,5)
		AddNumText(sceneId,x002180_g_ScriptId,"Thång c¤p tâm pháp lên #Gc¤p 120",1,6)
		AddNumText(sceneId,x002180_g_ScriptId,"Nh§n th¶i trang cao c¤p môn phái",2,7)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--**************************--
--*    On Event Request    *--
--**************************--
function x002180_OnEventRequest(sceneId,selfId,targetId,eventId)
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
			LuaFnJoinMenpai(sceneId,selfId, targetId,0)
			LuaFnSetXinFaLevel(sceneId,selfId,1,10)
			LuaFnSetXinFaLevel(sceneId,selfId,2,10)
			LuaFnSetXinFaLevel(sceneId,selfId,3,10)
			LuaFnSetXinFaLevel(sceneId,selfId,4,10)
			LuaFnSetXinFaLevel(sceneId,selfId,5,10)
			LuaFnSetXinFaLevel(sceneId,selfId,6,10)
			LuaFnSetXinFaLevel(sceneId,selfId,55,10)
			LuaFnSetXinFaLevel(sceneId,selfId,72,10)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
			
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." ðã là ð® tØ #GThiªu Lâm#W!")
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
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000ÐÕt Ma Thü Ði®n")
		else
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000La Hán Hµ Pháp")
		end
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng "..Sex.." nh§n thành công danh hi®u!")
			AddText(sceneId,"Danh hi®u này chï v¾i nhæng ð® tØ c¤p cao cüa #GThiªu Lâm#W m¾i có th¬ ðÕt ðßþc, chúc m×ng "..Sex.." nhé!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 3 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308011,7)
		AddRadioItemBonus(sceneId,30308044,7)
		AddRadioItemBonus(sceneId,30308045,7)
		AddRadioItemBonus(sceneId,30308149,7)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002180_g_ScriptId,0)
		
	end
	--*********************--
	if key == 4 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308111,4)
		AddRadioItemBonus(sceneId,30308121,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002180_g_ScriptId,0)
		
	end
	--*********************--
	if key == 6 then
		
		if GetLevel(sceneId,selfId) < 30 then
			BeginEvent(sceneId)
				AddText(sceneId,""..Sex.." c¤p ðµ không ðü 115, hãy ði tu luy®n thêm ði!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetXinFaLevel(sceneId,selfId,1) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,2) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,3) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,4) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,5) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,6) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,55) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,72) == 120 then
				BeginEvent(sceneId)
					AddText(sceneId,"ChÆng phäi "..Sex.." ðã ðÕt mÑc tâm pháp #GC¤p 120#W r°i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		else
			LuaFnSetXinFaLevel(sceneId,selfId,1,120)
			LuaFnSetXinFaLevel(sceneId,selfId,2,120)
			LuaFnSetXinFaLevel(sceneId,selfId,3,120)
			LuaFnSetXinFaLevel(sceneId,selfId,4,120)
			LuaFnSetXinFaLevel(sceneId,selfId,5,120)
			LuaFnSetXinFaLevel(sceneId,selfId,6,120)
			LuaFnSetXinFaLevel(sceneId,selfId,55,120)
			LuaFnSetXinFaLevel(sceneId,selfId,72,120)
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." nâng tâm pháp thành công lên #GC¤p 120#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*********************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Võ công phái #GThiªu Lâm#W l¤y ngu°n g¯c t× #GPh§t gia#W. Ð® tØ #GThiªu Lâm#W hành hi®p trßþng nghîa, l¤y t× bi làm g¯c, võ công luôn ði ðôi v¾i ph§t pháp.")
			AddText(sceneId,"Võ công phái #GThiªu Lâm#W thiên v« công kích #GNgoÕi Công#W, kÛ nång sØ døng #GHuy«n Công Kích#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 7 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n nh§n th¶i trang nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10124009,4)
		AddRadioItemBonus(sceneId,10124113,4)
		AddRadioItemBonus(sceneId,10124322,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002180_g_ScriptId,0)
		
	end
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002180_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002180_NotifyFailTips(sceneId,selfId,""..Sex.." hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002180_NotifyFailTips(sceneId,selfId,"Chúc m×ng "..Sex.." nh§n thß·ng thành công!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002180_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end