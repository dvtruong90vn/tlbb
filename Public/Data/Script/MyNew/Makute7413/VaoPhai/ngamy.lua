--ÐÕi Lý New
--ID: 002184
--Script: Edit by Sói Ðz
--Name = Huy«n Di®u
--Class: Nga My
--**************************

x002184_g_ScriptId = 002184

--**************************--
--*    On Default Event    *--
--**************************--
function x002184_OnDefaultEvent(sceneId,selfId,targetId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
	 
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end

	BeginEvent(sceneId)
	if LuaFnGetMenPai(sceneId,selfId) ~= 4 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", thí chü có mu¯n thay ð±i môn phái sang tu luy®n · #GNga My#W?")
		AddNumText(sceneId,x002184_g_ScriptId,"Gia nh§p #GNga My#W",2,1)
		AddNumText(sceneId,x002184_g_ScriptId,"Tìm hi¬u võ công #GNga My#W",11,2)
	elseif LuaFnGetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64)<= 0 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", thí chü có mu¯n gia nh§p #GNga My#W?")
		AddNumText(sceneId,x900083_g_ScriptId,"Gia nh§p #GNga My#W",2,1)
	else
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam.." "..Sex..", nªu nhß "..Sex.." không mu¯n v« bän phái tu luy®n vì ðß¶ng xa, có th¬ ðªn tìm ta, ta s¨ dÕy "..Sex.." công phu cüa bän phái.")
		AddNumText(sceneId,x002184_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 35",1,3)
		AddNumText(sceneId,x002184_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 80",1,4)
		AddNumText(sceneId,x002184_g_ScriptId,"Nh§n danh hi®u ð£c bi®t",1,5)
		AddNumText(sceneId,x002184_g_ScriptId,"Thång c¤p tâm pháp lên #Gc¤p 120",1,6)
		AddNumText(sceneId,x002184_g_ScriptId,"Nh§n th¶i trang cao c¤p môn phái",2,7)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--**************************--
--*    On Event Request    *--
--**************************--
function x002184_OnEventRequest(sceneId,selfId,targetId,eventId)
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
			LuaFnJoinMenpai(sceneId,selfId, targetId,4)
			LuaFnSetXinFaLevel(sceneId,selfId,25,10)
			LuaFnSetXinFaLevel(sceneId,selfId,26,10)
			LuaFnSetXinFaLevel(sceneId,selfId,27,10)
			LuaFnSetXinFaLevel(sceneId,selfId,28,10)
			LuaFnSetXinFaLevel(sceneId,selfId,29,10)
			LuaFnSetXinFaLevel(sceneId,selfId,30,10)
			LuaFnSetXinFaLevel(sceneId,selfId,59,10)
			LuaFnSetXinFaLevel(sceneId,selfId,76,10)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
			
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." ðã là ð® tØ #GNga My#W!")
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
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Kim Phßþng Tiên TØ")
		else 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Ðào Hoa Cß SÛ")
		end
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng "..Sex.." nh§n thành công danh hi®u!")
			AddText(sceneId,"Danh hi®u này chï v¾i nhæng ð® tØ c¤p cao cüa #GNga My#W m¾i có th¬ ðÕt ðßþc, chúc m×ng "..Sex.." nhé!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 3 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308015,7)
		AddRadioItemBonus(sceneId,30308043,7)
		AddRadioItemBonus(sceneId,30308093,7)
		AddRadioItemBonus(sceneId,30308153,7)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002184_g_ScriptId,0)
		
	end
	--*********************--
	if key == 4 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308115,4)
		AddRadioItemBonus(sceneId,30308125,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002184_g_ScriptId,0)
		
	end
	--*********************--
	if key == 6 then
		
		if GetLevel(sceneId,selfId) < 30 then
			BeginEvent(sceneId)
				AddText(sceneId,""..Sex.." c¤p ðµ không ðü 115, hãy ði tu luy®n thêm ði!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetXinFaLevel(sceneId,selfId,25) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,26) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,27) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,28) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,29) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,30) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,59) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,76) == 120 then
				BeginEvent(sceneId)
					AddText(sceneId,"ChÆng phäi "..Sex.." ðã ðÕt mÑc tâm pháp #GC¤p 120#W r°i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		else
			LuaFnSetXinFaLevel(sceneId,selfId,25,120)
			LuaFnSetXinFaLevel(sceneId,selfId,26,120)
			LuaFnSetXinFaLevel(sceneId,selfId,27,120)
			LuaFnSetXinFaLevel(sceneId,selfId,28,120)
			LuaFnSetXinFaLevel(sceneId,selfId,29,120)
			LuaFnSetXinFaLevel(sceneId,selfId,30,120)
			LuaFnSetXinFaLevel(sceneId,selfId,59,120)
			LuaFnSetXinFaLevel(sceneId,selfId,76,120)
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." nâng tâm pháp thành công lên #GC¤p 120#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*********************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Võ công phái #GNga My#W b¡t ngu°n t× dßÞng sinh thu§t trong ph§t pháp. Ð® tØ #GNga My#W coi tr÷ng dßÞng thân h½n là võ h÷c, song võ h÷c cûng không vì thª mà mai mµt.")
			AddText(sceneId,"Võ công phái #GNga My#W thiên v« công kích #GNµi Công#W, kÛ nång sØ døng #GHuy«n - Bång Công Kích#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 7 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n nh§n th¶i trang nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10124012,4)
		AddRadioItemBonus(sceneId,10124116,4)
		AddRadioItemBonus(sceneId,10124325,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002184_g_ScriptId,0)
		
	end
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002184_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002184_NotifyFailTips(sceneId,selfId,""..Sex.." hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002184_NotifyFailTips(sceneId,selfId,"Chúc m×ng "..Sex.." nh§n thß·ng thành công!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002184_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end