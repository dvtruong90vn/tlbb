--NPC Mµ Dung S½n Trang
--Mµ Dung Ki®t - Bái sß phái Mµ Dung
--Script by Sói Ðz
--ID = 960004

x960004_g_ScriptId	= 960004

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960004_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"TÕi hÕ là Mµ Dung Ki®t, trß·ng môn ðang nghiên cÑu thu§t #GDi Hình Hoán Änh#W nên m÷i vi®c sß môn tÕm th¶i do ta ðäm nhi®m.")
		
		local MP = GetMenPai(sceneId, selfId)
		if MP == 9 then
			AddNumText(sceneId,x960004_g_scriptId,"Gia nh§p môn phái",6,0)
		end
		if MP == 10 then
			AddNumText(sceneId,x960004_g_scriptId, "Nh§n danh hi®u",6,1)
			AddNumText(sceneId,x960004_g_scriptId, "Nh§n th¶i trang môn phái",6,2)
			AddNumText(sceneId,x960004_g_scriptId, "Nh§n th¶i Môn Phái Tri®u T§p L®nh",6,99)
		end
		AddNumText(sceneId,x960004_g_scriptId, "Gi¾i thi®u môn phái",8,3)
		AddNumText(sceneId,x960004_g_scriptId, "H÷c KÛ nång cüa môn phái?",8,4)
		
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960004_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if key == 0 then
	
		LuaFnJoinMenpai(sceneId,selfId, targetId,10)
		LuaFnSetXinFaLevel(sceneId,selfId,64,10)
		LuaFnSetXinFaLevel(sceneId,selfId,65,1)
		LuaFnSetXinFaLevel(sceneId,selfId,66,1)
		LuaFnSetXinFaLevel(sceneId,selfId,67,1)
		LuaFnSetXinFaLevel(sceneId,selfId,68,10)
		LuaFnSetXinFaLevel(sceneId,selfId,69,1)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
		
		BeginEvent(sceneId)
			AddText(sceneId,"Chúc m×ng các hÕ ðã là ð® tØ #GMµ Dung#W!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*****************--
	if key == 1 then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Danh hi®u bän phái ðÕt ðßþc thông qua tu luy®n tâm pháp. Cån cÑ vào ðÆng c¤p tu luy®n mà phân thành các loÕi danh hi®u th¤p ðªn cao")
			if Sex == 0 then 
				AddNumText(sceneId,x960004_g_scriptId, "Mµ Dung Hi®p Næ",1,100)
				AddNumText(sceneId,x960004_g_scriptId, "Lång Th¥n Ð® TØ",1,101)
				AddNumText(sceneId,x960004_g_scriptId, "Hóa Khí Hi®p Næ",1,102)
				AddNumText(sceneId,x960004_g_scriptId, "Kiªm Vû Tiên TØ",1,103)
			else
				AddNumText(sceneId,x960004_g_scriptId, "Mµ Dung Hi®p SÛ",1,104)
				AddNumText(sceneId,x960004_g_scriptId, "Lång Th¥n Ð® TØ",1,105)
				AddNumText(sceneId,x960004_g_scriptId, "Ð¦u Chuy¬n Trß¶ng Sinh",1,106)
				AddNumText(sceneId,x960004_g_scriptId, "Vô Song Änh Hi®p",1,107)
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	
	end
	if key == 100 then
		LuaFnAwardSpouseTitle(sceneId,selfId,"Mµ Dung Hi®p Næ")
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công danh hi®u #YMµ Dung Hi®p Næ")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 101 then
		if LuaFnGetXinFaLevel(sceneId,selfId,64) <=50 
		   or LuaFnGetXinFaLevel(sceneId,selfId,65) <= 40 
		   or LuaFnGetXinFaLevel(sceneId,selfId,66) <= 40 
		   or LuaFnGetXinFaLevel(sceneId,selfId,67) <= 40 
		   or LuaFnGetXinFaLevel(sceneId,selfId,68) <= 40 
		   or LuaFnGetXinFaLevel(sceneId,selfId,69) <= 40 then
			BeginEvent(sceneId)
				AddText(sceneId,"ÐÕt danh hi®u này c¥n 6 loÕi tâm pháp c½ bän ðÕt trên c¤p 40")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		LuaFnAwardSpouseTitle(sceneId,selfId,"Lång Th¥n Ð® TØ")
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công danh hi®u #YLång Th¥n Ð® TØ")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 102 then 
		if LuaFnGetXinFaLevel(sceneId,selfId,64) <=60 
		   or LuaFnGetXinFaLevel(sceneId,selfId,65) <= 80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,66) <= 80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,67) <= 80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,68) <= 80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,69) <= 80 then
			BeginEvent(sceneId)
				AddText(sceneId,"ÐÕt danh hi®u này c¥n 6 loÕi tâm pháp c½ bän ðÕt trên c¤p 80")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		LuaFnAwardSpouseTitle(sceneId,selfId,"Hóa Khí Hi®p Næ")
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công danh hi®u #YHóa Khí Hi®p Næ")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 103 then 
		if LuaFnGetXinFaLevel(sceneId,selfId,64) <=80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,65) <= 100 
		   or LuaFnGetXinFaLevel(sceneId,selfId,66) <= 100 
		   or LuaFnGetXinFaLevel(sceneId,selfId,67) <= 100 
		   or LuaFnGetXinFaLevel(sceneId,selfId,68) <= 100 
		   or LuaFnGetXinFaLevel(sceneId,selfId,69) <= 100 then
			BeginEvent(sceneId)
				AddText(sceneId,"ÐÕt danh hi®u này c¥n 6 loÕi tâm pháp c½ bän ðÕt trên c¤p 100")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		LuaFnAwardSpouseTitle(sceneId,selfId,"Kiªm Vû Tiên TØ")
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công danh hi®u #YKiªm Vû Tiên TØ")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 104 then 
		LuaFnAwardSpouseTitle(sceneId,selfId,"Mµ Dung Hi®p SÛ")
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công danh hi®u #YMµ Dung Hi®p SÛ")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 105 then 
		if LuaFnGetXinFaLevel(sceneId,selfId,64) <=50 
		   or LuaFnGetXinFaLevel(sceneId,selfId,65) <= 40 
		   or LuaFnGetXinFaLevel(sceneId,selfId,66) <= 40 
		   or LuaFnGetXinFaLevel(sceneId,selfId,67) <= 40 
		   or LuaFnGetXinFaLevel(sceneId,selfId,68) <= 40 
		   or LuaFnGetXinFaLevel(sceneId,selfId,69) <= 40 then
			BeginEvent(sceneId)
				AddText(sceneId,"ÐÕt danh hi®u này c¥n 6 loÕi tâm pháp c½ bän ðÕt trên c¤p 40")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		LuaFnAwardSpouseTitle(sceneId,selfId,"Lång Th¥n Ð® TØ")
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công danh hi®u #YLång Th¥n Ð® TØ")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 106 then 
		if LuaFnGetXinFaLevel(sceneId,selfId,64) <=60 
		   or LuaFnGetXinFaLevel(sceneId,selfId,65) <= 80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,66) <= 80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,67) <= 80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,68) <= 80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,69) <= 80 then
			BeginEvent(sceneId)
				AddText(sceneId,"ÐÕt danh hi®u này c¥n 6 loÕi tâm pháp c½ bän ðÕt trên c¤p 80")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		LuaFnAwardSpouseTitle(sceneId,selfId,"Ð¦u Chuy¬n Trß¶ng Sinh")
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công danh hi®u #YÐ¦u Chuy¬n Trß¶ng Sinh")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 107 then 
		if LuaFnGetXinFaLevel(sceneId,selfId,64) <=80 
		   or LuaFnGetXinFaLevel(sceneId,selfId,65) <= 100 
		   or LuaFnGetXinFaLevel(sceneId,selfId,66) <= 100 
		   or LuaFnGetXinFaLevel(sceneId,selfId,67) <= 100 
		   or LuaFnGetXinFaLevel(sceneId,selfId,68) <= 100 
		   or LuaFnGetXinFaLevel(sceneId,selfId,69) <= 100 then
			BeginEvent(sceneId)
				AddText(sceneId,"ÐÕt danh hi®u này c¥n 6 loÕi tâm pháp c½ bän ðÕt trên c¤p 100")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		LuaFnAwardSpouseTitle(sceneId,selfId,"Vô Song Änh Hi®p")
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công danh hi®u #YVô Song Änh Hi®p")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*****************--
	if key == 2 then
		
		if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
			x960004_NotifyFailTips(sceneId,selfId,"Hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø!")
			return
		end
		local item=GetItemName(sceneId,10124340)
		TryRecieveItem(sceneId,selfId,10124340,1)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công th¶i trang môn phái #Y["..item.."]!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
			
	end
	--*****************--
	if key == 3 then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Mµ Dung Gia n¢m · phía nam thành Cô Tô, n½i thüy ðÕo bao b÷c xung quanh.")
			AddText(sceneId,"Các b§c ti«n b¯i Mµ Dung Gia v¯n là hoàng tµc nß¾c ÐÕi Yªn th¯ng tr¸ vùng Cô Tô mµt th¶i.")
			AddText(sceneId,"Chï mµt phút sai l¥m ðã ð¬ ð¤t nß¾c r½i vào tay nhà T¯ng, khiªn ngß¶i trong hoàng th¤t phäi lui v« s¯ng ¦n tÕi ð¤t nam Cô Tô, r¤t ít khi tiªp xúc v¾i bên ngoài ngoài.")
			AddText(sceneId,"Các b§c anh hùng Mµ Dung Gia luôn phäi nuôi trí l¾n phøc qu¯c ð£t lên hàng ð¥u. Các hÕ hãy tìm Mµ Dung Phøc công tØ höi mµt chuyªn xem sao.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
			
	end
	--*****************--
	if key == 4 then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Ð® tØ Mµ Dung có th¬ h÷c ðßþc kÛ nång môn phái qua ngß¶i truy«n thø võ h÷c - Mµ Dung Thanh S½n#H[48,134]#W.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
			
	end
	--*****************--
	if key == 99 then
		
		if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
			x960004_NotifyFailTips(sceneId,selfId,"Hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø!")
			return
		end
		
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n thành công 20 cái Môn Phái Tri®u T§p L®nh!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
		TryRecieveItem(sceneId,selfId,30501001,1)
			
	end
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x960004_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

