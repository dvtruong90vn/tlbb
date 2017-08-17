-- 300053 
-- Ti¬u T¦y Tüy Ðan
-- Ê¹ÓÃÖ®ºó¿ÉÒÔ½«Ñ¡ÔñÊôÐÔµÄ·ÖÅäµãÊýÖÐµÄ5µã±äÎªÇ±ÄÜ¡£


-- ½Å±¾ºÅ
x300053_g_scriptId = 300053
x300053_g_ItemId = 30008005  -- Ò©Ë®ID

--**********************************
-- ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300053_OnDefaultEvent( sceneId, selfId )

	-- ³ÔÒ©Ï´µã
	if GetNumText() == 1  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 0) ~= 1  then
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi¬u T¦y Tüy Ðan")
				AddText(sceneId, "Thuµc tính Cß¶ng lñc ðã không còn ði¬m phân ph¯i dß, không th¬ tiªn hành chïnh ði¬m.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			x300053_WashPoint(sceneId, selfId, 0, 5, "Cß¶ng lñc")
		
		end
		return
		
	elseif GetNumText() == 2  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 1) ~= 1  then
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi¬u T¦y Tüy Ðan")
				AddText(sceneId, "Thuµc tính Nµi lñc ðã không còn ði¬m phân ph¯i dß, không th¬ tiªn hành chïnh ði¬m.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			x300053_WashPoint(sceneId, selfId, 1, 5, "Nµi lñc")
			
		end
		return
		
	elseif GetNumText() == 3  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 2) ~= 1  then 
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi¬u T¦y Tüy Ðan")
				AddText(sceneId, "Thuµc tính Th¬ lñc ðã không còn ði¬m phân ph¯i dß, không th¬ tiªn hành chïnh ði¬m.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			x300053_WashPoint(sceneId, selfId, 2, 5, "Th¬ lñc")
			
		end
		return
		
	elseif GetNumText() == 4  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 3) ~= 1  then
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi¬u T¦y Tüy Ðan")
				AddText(sceneId, "Thuµc tính Trí lñc ðã không còn ði¬m phân ph¯i dß, không th¬ tiªn hành chïnh ði¬m.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			x300053_WashPoint(sceneId, selfId, 3, 5, "Trí lñc")
			
		end
		return
		
	elseif GetNumText() == 5  then
		
		if LuaFnIsCanWashPiont(sceneId, selfId, 4) ~= 1  then
			BeginEvent(sceneId)
				AddText(sceneId, "#YTi¬u T¦y Tüy Ðan")
				AddText(sceneId, "Thuµc tính Thân pháp ðã không còn ði¬m phân ph¯i dß, không th¬ tiªn hành chïnh ði¬m.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		
		else
			x300053_WashPoint(sceneId, selfId, 4, 5, "Éí·¨")
			
		end
		return 
	
	elseif GetNumText() == 6  then
		
		
		-- ¹Ø±Õ½çÃæ
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
		
	end
	
end

--**********************************
-- 
--**********************************
function x300053_IsSkillLikeScript( sceneId, selfId)
	return 0
end

function x300053_WashPoint(sceneId, selfId, nType, nPoint, szStr)
	-- ¿Û³ýÏà¹ØµÄÎïÆ·
	local ret = DelItem(sceneId, selfId, x300053_g_ItemId, 1)
	if ret == 1  then
		local nNumber = LuaFnWashSomePoints(sceneId, selfId, nType, nPoint)
		
		BeginEvent(sceneId)
			AddText(sceneId, "#YTi¬u T¦y Tüy Ðan")
			AddText(sceneId, "Các hÕ mang thành công #Y" .. tonumber(nNumber) .. " ði¬m #Wðã phân ph¯i cüa #Y" .. szStr.. "#W thuµc tính biªn thành ti«m nång.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	end		

end
