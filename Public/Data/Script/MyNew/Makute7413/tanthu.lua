--*****************************--
--*     On Default Event      *--
--*****************************--
function x002194_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Ta là #G¿¾c Nguy®n Thø#W, ð£c sÑ tân thü #GThiên Long Bát Bµ#W. Ta có th¬ giúp gì cho các hÕ?")
		AddNumText(sceneId,x002194_g_ScriptId,"Phøc h°i khí huyªt",3,1)
		AddNumText(sceneId,x002194_g_ScriptId,"Nh§n #G500 #-02",4,6)
		AddNumText(sceneId,x002194_g_ScriptId,"Nh§n #GÐi¬m T£ng",4,8)
		--AddNumText(sceneId,x002194_g_ScriptId,"Test Impact call model!",4,0)
		--AddNumText(sceneId,x002194_g_ScriptId,"Gia nh§p #GCØu ðÕi Môn phái",4,5)
		--AddNumText(sceneId,x002194_g_ScriptId,"Ð±i Vàng thành #GKNB",7,7)
		AddNumText(sceneId,x002194_g_ScriptId,"Ta chï ði ngang qua ðây.",8,10)

	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x002194_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()
	--*****************--
	if key == 0 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,11856,0)
		x002194_CloseMe( sceneId, selfId )
	end
	
	if key == 1 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		CallScriptFunction(000064,"Restore_hpmp",sceneId,selfId,targetId)
		RestoreStrikePoint(sceneId,selfId)
	end
	
	if key == 5 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i mu¯n gia nh§p môn phái nào?")
			AddNumText(sceneId,x002194_g_ScriptId,"Thiªu Lâm",6,50)
			AddNumText(sceneId,x002194_g_ScriptId,"Minh Giáo",6,51)
			AddNumText(sceneId,x002194_g_ScriptId,"Cái Bang",6,52)
			AddNumText(sceneId,x002194_g_ScriptId,"Võ Ðang",6,53)
			AddNumText(sceneId,x002194_g_ScriptId,"Ngay My",6,54)
			AddNumText(sceneId,x002194_g_ScriptId,"Tinh Túc",6,55)
			AddNumText(sceneId,x002194_g_ScriptId,"Thiên Long",6,56)
			AddNumText(sceneId,x002194_g_ScriptId,"Thiên S½n",6,57)
			AddNumText(sceneId,x002194_g_ScriptId,"Tiêu Dao",6,58)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId )
	end
	--*****************--
	if key == 6 then
		
		AddMoney(sceneId,selfId,5000000)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ nh§n ðßþc #G5000 #-02#W!")
			AddText(sceneId,"Nªu không ðü lÕi ðªn ch² ta lînh nh§n tiªp nhé!#77")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId )
		
	end
	--*****************--
	if key == 7 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i mu¯n quy ð±i bao nhi¬u vàng?")
			AddNumText(sceneId,x002194_g_ScriptId,"Quy ð±i 10 #-02 thành #G1000 KNB",6,70)
			AddNumText(sceneId,x002194_g_ScriptId,"Quy ð±i 20 #-02 thành #G2000 KNB",6,71)
			AddNumText(sceneId,x002194_g_ScriptId,"Quy ð±i 50 #-02 thành #G5000 KNB",6,72)
			AddNumText(sceneId,x002194_g_ScriptId,"Quy ð±i 100 #-02 thành #G10000 KNB",6,73)
			AddNumText(sceneId,x002194_g_ScriptId,"Quy ð±i 200 #-02 thành #G20000 KNB",6,74)
			AddNumText(sceneId,x002194_g_ScriptId,"Quy ð±i 500 #-02 thành #G50000 KNB",6,75)

		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId )
	end
	--*****************--
	if key == 8 then
		
		ZengDian(sceneId,selfId,targetId,1,50000)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ nh§n ðßþc #G50000 Ði¬m T£ng#W!")
			AddText(sceneId,"Nªu không ðü lÕi ðªn ch² ta lînh nh§n tiªp nhé!#77")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId )
		
	end
	--*****************--
	if key == 10 then
		x002194_CloseMe( sceneId, selfId )
	end
	--*****************--
	
	if key == 50 then
		if GetMenPai(sceneId, selfId) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi ngß½i ðã gia nh§p Thiªu Lâm r°i sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		elseif GetMenPai(sceneId, selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã là môn hÕ cüa phái khác r°i còn ðªn tìm ra làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		else
			LuaFnJoinMenpai(sceneId, selfId, targetId, 0)
			LuaFnSetXinFaLevel(sceneId,selfId,1,60)
			LuaFnSetXinFaLevel(sceneId,selfId,2,60)
			LuaFnSetXinFaLevel(sceneId,selfId,3,60)
			LuaFnSetXinFaLevel(sceneId,selfId,4,60)
			LuaFnSetXinFaLevel(sceneId,selfId,5,60)
			LuaFnSetXinFaLevel(sceneId,selfId,6,60)
			LuaFnSetXinFaLevel(sceneId,selfId,55,60)
			LuaFnSetXinFaLevel(sceneId,selfId,72,60)
			AddSkill( sceneId, selfId, 23 )
			DelSkill( sceneId, selfId, 34 )
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng ngß½i ðã là môn hÕ cüa Thiªu Lâm.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		end
	end
	
	if key == 51 then
		if GetMenPai(sceneId, selfId) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi ngß½i ðã gia nh§p Minh Giáo r°i sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		elseif GetMenPai(sceneId, selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã là môn hÕ cüa phái khác r°i còn ðªn tìm ra làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		else
			LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
			LuaFnSetXinFaLevel(sceneId,selfId,7,60)
			LuaFnSetXinFaLevel(sceneId,selfId,8,60)
			LuaFnSetXinFaLevel(sceneId,selfId,9,60)
			LuaFnSetXinFaLevel(sceneId,selfId,10,60)
			LuaFnSetXinFaLevel(sceneId,selfId,11,60)
			LuaFnSetXinFaLevel(sceneId,selfId,12,60)
			LuaFnSetXinFaLevel(sceneId,selfId,56,60)
			LuaFnSetXinFaLevel(sceneId,selfId,73,60)
			AddSkill( sceneId, selfId, 24 )
			DelSkill( sceneId, selfId, 34 )
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng ngß½i ðã là môn hÕ cüa Minh Giáo.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		end
	end

	if key == 52 then
		if GetMenPai(sceneId, selfId) == 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi ngß½i ðã gia nh§p Cái Bang r°i sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		elseif GetMenPai(sceneId, selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã là môn hÕ cüa phái khác r°i còn ðªn tìm ra làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		else
			LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
			LuaFnSetXinFaLevel(sceneId,selfId,13,60)
			LuaFnSetXinFaLevel(sceneId,selfId,14,60)
			LuaFnSetXinFaLevel(sceneId,selfId,15,60)
			LuaFnSetXinFaLevel(sceneId,selfId,16,60)
			LuaFnSetXinFaLevel(sceneId,selfId,17,60)
			LuaFnSetXinFaLevel(sceneId,selfId,18,60)
			LuaFnSetXinFaLevel(sceneId,selfId,57,60)
			LuaFnSetXinFaLevel(sceneId,selfId,74,60)
			AddSkill( sceneId, selfId, 24 )
			DelSkill( sceneId, selfId, 35 )
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng ngß½i ðã là môn hÕ cüa Cái Bang.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		end
	end
	
	if key == 53 then
		if GetMenPai(sceneId, selfId) == 3 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi ngß½i ðã gia nh§p Võ Ðang r°i sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		elseif GetMenPai(sceneId, selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã là môn hÕ cüa phái khác r°i còn ðªn tìm ra làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		else
			LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
			LuaFnSetXinFaLevel(sceneId,selfId,19,60)
			LuaFnSetXinFaLevel(sceneId,selfId,20,60)
			LuaFnSetXinFaLevel(sceneId,selfId,21,60)
			LuaFnSetXinFaLevel(sceneId,selfId,22,60)
			LuaFnSetXinFaLevel(sceneId,selfId,23,60)
			LuaFnSetXinFaLevel(sceneId,selfId,24,60)
			LuaFnSetXinFaLevel(sceneId,selfId,58,60)
			LuaFnSetXinFaLevel(sceneId,selfId,75,60)
			AddSkill( sceneId, selfId, 24 )
			DelSkill( sceneId, selfId, 36 )
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng ngß½i ðã là môn hÕ cüa Võ Ðang.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		end
	end

	if key == 54 then
		if GetMenPai(sceneId, selfId) == 4 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi ngß½i ðã gia nh§p Nga My r°i sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		elseif GetMenPai(sceneId, selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã là môn hÕ cüa phái khác r°i còn ðªn tìm ra làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		else
			LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
			LuaFnSetXinFaLevel(sceneId,selfId,25,60)
			LuaFnSetXinFaLevel(sceneId,selfId,26,60)
			LuaFnSetXinFaLevel(sceneId,selfId,27,60)
			LuaFnSetXinFaLevel(sceneId,selfId,28,60)
			LuaFnSetXinFaLevel(sceneId,selfId,29,60)
			LuaFnSetXinFaLevel(sceneId,selfId,30,60)
			LuaFnSetXinFaLevel(sceneId,selfId,59,60)
			LuaFnSetXinFaLevel(sceneId,selfId,76,60)
			AddSkill( sceneId, selfId, 24 )
			DelSkill( sceneId, selfId, 37 )
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng ngß½i ðã là môn hÕ cüa Nga My.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		end
	end
	
	if key == 55 then
		if GetMenPai(sceneId, selfId) == 5 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi ngß½i ðã gia nh§p Tinh Túc r°i sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		elseif GetMenPai(sceneId, selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã là môn hÕ cüa phái khác r°i còn ðªn tìm ra làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		else
			LuaFnJoinMenpai(sceneId, selfId, targetId, 5)
			LuaFnSetXinFaLevel(sceneId,selfId,31,60)
			LuaFnSetXinFaLevel(sceneId,selfId,32,60)
			LuaFnSetXinFaLevel(sceneId,selfId,33,60)
			LuaFnSetXinFaLevel(sceneId,selfId,34,60)
			LuaFnSetXinFaLevel(sceneId,selfId,35,60)
			LuaFnSetXinFaLevel(sceneId,selfId,36,60)
			LuaFnSetXinFaLevel(sceneId,selfId,60,60)
			LuaFnSetXinFaLevel(sceneId,selfId,77,60)
			AddSkill( sceneId, selfId, 24 )
			DelSkill( sceneId, selfId, 38 )
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng ngß½i ðã là môn hÕ cüa Tinh Túc.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		end
	end
	
	if key == 56 then
		if GetMenPai(sceneId, selfId) == 6 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi ngß½i ðã gia nh§p Thiên Long r°i sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		elseif GetMenPai(sceneId, selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã là môn hÕ cüa phái khác r°i còn ðªn tìm ra làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		else
			LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
			LuaFnSetXinFaLevel(sceneId,selfId,37,60)
			LuaFnSetXinFaLevel(sceneId,selfId,38,60)
			LuaFnSetXinFaLevel(sceneId,selfId,39,60)
			LuaFnSetXinFaLevel(sceneId,selfId,40,60)
			LuaFnSetXinFaLevel(sceneId,selfId,41,60)
			LuaFnSetXinFaLevel(sceneId,selfId,42,60)
			LuaFnSetXinFaLevel(sceneId,selfId,61,60)
			LuaFnSetXinFaLevel(sceneId,selfId,78,60)
			AddSkill( sceneId, selfId, 24 )
			DelSkill( sceneId, selfId, 39 )
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng ngß½i ðã là môn hÕ cüa Thiên Long.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		end
	end
	
	if key == 57 then
		if GetMenPai(sceneId, selfId) == 7 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi ngß½i ðã gia nh§p Thiên S½n r°i sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		elseif GetMenPai(sceneId, selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã là môn hÕ cüa phái khác r°i còn ðªn tìm ra làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		else
			LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
			LuaFnSetXinFaLevel(sceneId,selfId,43,60)
			LuaFnSetXinFaLevel(sceneId,selfId,44,60)
			LuaFnSetXinFaLevel(sceneId,selfId,45,60)
			LuaFnSetXinFaLevel(sceneId,selfId,46,60)
			LuaFnSetXinFaLevel(sceneId,selfId,47,60)
			LuaFnSetXinFaLevel(sceneId,selfId,48,60)
			LuaFnSetXinFaLevel(sceneId,selfId,62,60)
			LuaFnSetXinFaLevel(sceneId,selfId,79,60)
			AddSkill( sceneId, selfId, 24 )
			DelSkill( sceneId, selfId, 40 )
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng ngß½i ðã là môn hÕ cüa Thiên S½n.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		end
	end

	if key == 58 then
		if GetMenPai(sceneId, selfId) == 8 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi ngß½i ðã gia nh§p Tiêu Dao r°i sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		elseif GetMenPai(sceneId, selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã là môn hÕ cüa phái khác r°i còn ðªn tìm ra làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
		else
			LuaFnJoinMenpai(sceneId, selfId, targetId, 8)
			LuaFnSetXinFaLevel(sceneId,selfId,49,60)
			LuaFnSetXinFaLevel(sceneId,selfId,50,60)
			LuaFnSetXinFaLevel(sceneId,selfId,51,60)
			LuaFnSetXinFaLevel(sceneId,selfId,52,60)
			LuaFnSetXinFaLevel(sceneId,selfId,53,60)
			LuaFnSetXinFaLevel(sceneId,selfId,54,60)
			LuaFnSetXinFaLevel(sceneId,selfId,63,60)
			LuaFnSetXinFaLevel(sceneId,selfId,80,60)
			AddSkill( sceneId, selfId, 24 )
			DelSkill( sceneId, selfId, 41 )
			BeginEvent(sceneId)
				AddText(sceneId,"Chúc m×ng ngß½i ðã là môn hÕ cüa Tiêu Dao.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		end
	end

	if key == 70 then
		local money = GetMoney(sceneId,selfId)
		if money < 100000 then
			x002194_NotifyFailTips(sceneId,selfId,"Không ðü ngân lßþng.")
			return
		end
		CostMoney(sceneId, selfId, 100000)
		YuanBao(sceneId,selfId,targetId,1,1000)
		x002194_NotifyFailTips(sceneId,selfId,"Quy ð±i thành công 10 #-02 thành 1000 KNB")
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		x002194_CloseMe( sceneId, selfId )
		return
	end
	
	if key == 71 then
		local money = GetMoney(sceneId,selfId)
		if money < 200000 then
			x002194_NotifyFailTips(sceneId,selfId,"Không ðü ngân lßþng.")
			return
		end
		CostMoney(sceneId, selfId, 200000)
		YuanBao(sceneId,selfId,targetId,1,2000)
		x002194_NotifyFailTips(sceneId,selfId,"Quy ð±i thành công 20 #-02 thành 2000 KNB")
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		x002194_CloseMe( sceneId, selfId )
		return
	end
	
	if key == 72 then
		local money = GetMoney(sceneId,selfId)
		if money < 500000 then
			x002194_NotifyFailTips(sceneId,selfId,"Không ðü ngân lßþng.")
			return
		end
		CostMoney(sceneId, selfId, 500000)
		YuanBao(sceneId,selfId,targetId,1,5000)
		x002194_NotifyFailTips(sceneId,selfId,"Quy ð±i thành công 50 #-02 thành 5000 KNB")
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		x002194_CloseMe( sceneId, selfId )
		return
	end
	
	if key == 73 then
		local money = GetMoney(sceneId,selfId)
		if money < 1000000 then
			x002194_NotifyFailTips(sceneId,selfId,"Không ðü ngân lßþng.")
			return
		end
		CostMoney(sceneId, selfId, 1000000)
		YuanBao(sceneId,selfId,targetId,1,10000)
		x002194_NotifyFailTips(sceneId,selfId,"Quy ð±i thành công 100 #-02 thành 10000 KNB")
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		x002194_CloseMe( sceneId, selfId )
		return
	end
	
	if key == 74 then
		local money = GetMoney(sceneId,selfId)
		if money < 2000000 then
			x002194_NotifyFailTips(sceneId,selfId,"Không ðü ngân lßþng.")
			return
		end
		CostMoney(sceneId, selfId, 2000000)
		YuanBao(sceneId,selfId,targetId,1,20000)
		x002194_NotifyFailTips(sceneId,selfId,"Quy ð±i thành công 200 #-02 thành 20000 KNB")
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		x002194_CloseMe( sceneId, selfId )
		return
	end

	if key == 75 then
		local money = GetMoney(sceneId,selfId)
		if money < 5000000 then
			x002194_NotifyFailTips(sceneId,selfId,"Không ðü ngân lßþng.")
			return
		end
		CostMoney(sceneId, selfId, 5000000)
		YuanBao(sceneId,selfId,targetId,1,50000)
		x002194_NotifyFailTips(sceneId,selfId,"Quy ð±i thành công 500 #-02 thành 50000 KNB")
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		x002194_CloseMe( sceneId, selfId )
		return
	end
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002194_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)

	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002194_NotifyFailTips(sceneId,selfId,""..Sex.." hãy s¡p xªp lÕi ít nh¤t 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	--*****************--
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002194_NotifyFailTips(sceneId,selfId,"Nh§n thß·ng thành công!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002194_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

function x002194_CloseMe( sceneId, selfId )
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
end