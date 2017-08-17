--Tuyªt Bång Phong
--ID: 002186
--Script: Edit by Sói Ðz
--Name = Hoàng Gia
--Class: Thiên Long
--**************************

x002186_g_ScriptId = 002186

--**************************--
--*    On Default Event    *--
--**************************--
function x002186_OnDefaultEvent(sceneId,selfId,targetId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
	 
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end

	BeginEvent(sceneId)
	if LuaFnGetMenPai(sceneId,selfId) ~= 6 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", thí chü có mu¯n thay ð±i môn phái sang tu luy®n · #GThiên Long#W?")
		AddNumText(sceneId,x002186_g_ScriptId,"Gia nh§p #GThiên Long#W",2,1)
		AddNumText(sceneId,x002186_g_ScriptId,"Tìm hi¬u võ công #GThiên Long#W",11,2)
	elseif LuaFnGetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64)<= 0 then
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam..", thí chü có mu¯n gia nh§p #GThiên Long#W?")
		AddNumText(sceneId,x900083_g_ScriptId,"Gia nh§p #GThiên Long#W",2,1)
	else
		AddText(sceneId,"#GÐÕi Lý Thành#W, ch¯n thành th¸ ph°n hoa trong #GThiên Long Bát Bµ#W. "..nam.." "..Sex..", nªu nhß "..Sex.." không mu¯n v« bän tñ tu luy®n vì ðß¶ng xa, có th¬ ðªn tìm ta, ta s¨ dÕy "..Sex.." công phu cüa bän phái.")
		AddNumText(sceneId,x002186_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 35",1,3)
		AddNumText(sceneId,x002186_g_ScriptId,"H÷c kÛ nång #GBí t¸ch c¤p 80",1,4)
		AddNumText(sceneId,x002186_g_ScriptId,"Nh§n danh hi®u ð£c bi®t",1,5)
		AddNumText(sceneId,x002186_g_ScriptId,"Thång c¤p tâm pháp lên #Gc¤p 120",1,6)
		AddNumText(sceneId,x002186_g_ScriptId,"Nh§n th¶i trang cao c¤p môn phái",2,7)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--**************************--
--*    On Event Request    *--
--**************************--
function x002186_OnEventRequest(sceneId,selfId,targetId,eventId)
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
			LuaFnJoinMenpai(sceneId,selfId, targetId,6)
			LuaFnSetXinFaLevel(sceneId,selfId,37,10)
			LuaFnSetXinFaLevel(sceneId,selfId,38,10)
			LuaFnSetXinFaLevel(sceneId,selfId,39,10)
			LuaFnSetXinFaLevel(sceneId,selfId,40,10)
			LuaFnSetXinFaLevel(sceneId,selfId,41,10)
			LuaFnSetXinFaLevel(sceneId,selfId,42,10)
			LuaFnSetXinFaLevel(sceneId,selfId,61,10)
			LuaFnSetXinFaLevel(sceneId,selfId,78,10)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
			
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." ðã là ð® tØ #GThiên Long#W!")
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
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000BÕch H°ng Änh Nh§t")
		else 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Bát Bµ Thiên Long")
		end
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng "..Sex.." nh§n thành công danh hi®u!")
			AddText(sceneId,"Danh hi®u này chï v¾i nhæng ð® tØ c¤p cao cüa #GThiên Long#W m¾i có th¬ ðÕt ðßþc, chúc m×ng "..Sex.." nhé!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 3 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308017,7)
		AddRadioItemBonus(sceneId,30308068,7)
		AddRadioItemBonus(sceneId,30308076,7)
		AddRadioItemBonus(sceneId,30308155,7)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002186_g_ScriptId,0)
		
	end
	--*********************--
	if key == 4 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n h÷c kÛ nång nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308117,4)
		AddRadioItemBonus(sceneId,30308127,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002186_g_ScriptId,0)
		
	end
	--*********************--
	if key == 6 then
		
		if GetLevel(sceneId,selfId) < 30 then
			BeginEvent(sceneId)
				AddText(sceneId,""..Sex.." c¤p ðµ không ðü 115, hãy ði tu luy®n thêm ði!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetXinFaLevel(sceneId,selfId,37) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,38) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,39) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,40) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,41) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,42) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,61) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,78) == 120 then
				BeginEvent(sceneId)
					AddText(sceneId,"ChÆng phäi "..Sex.." ðã ðÕt mÑc tâm pháp #GC¤p 120#W r°i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		else
			LuaFnSetXinFaLevel(sceneId,selfId,37,120)
			LuaFnSetXinFaLevel(sceneId,selfId,38,120)
			LuaFnSetXinFaLevel(sceneId,selfId,39,120)
			LuaFnSetXinFaLevel(sceneId,selfId,40,120)
			LuaFnSetXinFaLevel(sceneId,selfId,41,120)
			LuaFnSetXinFaLevel(sceneId,selfId,42,120)
			LuaFnSetXinFaLevel(sceneId,selfId,61,120)
			LuaFnSetXinFaLevel(sceneId,selfId,78,120)
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng "..Sex.." nâng tâm pháp thành công lên #GC¤p 120#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*********************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"Võ công phái #GThiên Long#W l¤y tâm ði¬m t× #GPh§t gia#W và pháp bäo gia truy«n #GLøc MÕnh Th¥n Kiªm#W do các v¸ #GHoàng gia ÐÕi Lý#W ð¶i ð¶i tÕo nên.")
			AddText(sceneId,"Nghe nói bµ kiªm ph± #GLøc MÕnh Th¥n Kiªm#W có sÑc sát thß½ng vô hình cñc l¾n. Trß¾c gi¶ chï có #GÐoàn Dñ#W công tØ là có th¬ sØ døng thành thÕo cä bµ 6 chiêu thÑc này.")
			AddText(sceneId,"Võ công phái #GThiên Long#W thiên v« công kích #GNµi - NgoÕi Công#W, kÛ nång sØ døng #GHuy«n Công Kích#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 7 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu¯n nh§n th¶i trang nào?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10124017,2)
		AddRadioItemBonus(sceneId,10124121,2)
		AddRadioItemBonus(sceneId,10124330,2)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002186_g_ScriptId,0)
		
	end
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002186_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if Sex == 0 then
		Sex = "sß muµi"
	else 
		Sex = "sß ð®"
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002186_NotifyFailTips(sceneId,selfId,""..Sex.." hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002186_NotifyFailTips(sceneId,selfId,"Chúc m×ng "..Sex.." nh§n thß·ng thành công!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002186_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end