-- 300052 
-- ÐÕi T¦y Tüy Ðan
-- Ê¹ÓÃÖ®ºó¿ÉÒÔ½«ËùÓÐµÄÒÑ·ÖÅäµãÊý±äÎªÇ±ÄÜ¡£


-- ½Å±¾ºÅ
x300052_g_scriptId = 300052
x300052_g_ItemId = 30008004  -- Ò©Ë®ID

--**********************************
-- ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300052_OnDefaultEvent( sceneId, selfId )

	-- ³ÔÒ©Ï´µã
	if GetNumText() == 1  then
		-- ¼ì²âÕâ¸öÈËÊÇ²»ÊÇÓÐµã¿ÉÒÔÏ´¡£
		local bCan = LuaFnIsCanWashPiont(sceneId, selfId, 5)
		
		if bCan == 1  then
			local ret = DelItem(sceneId, selfId, x300052_g_ItemId, 1)
			if ret == 1  then
				LuaFnWashPoints(sceneId, selfId)
				BeginEvent(sceneId)
					AddText(sceneId, "#YÐÕi T¦y Tüy Ðan")
					AddText(sceneId, "Các hÕ mang #Yt¤t cä thuµc tính ðã phân ph¯i#W biªn thành ði¬m dß ti«m nång.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,-1)
			end

		else
			BeginEvent(sceneId)
				AddText(sceneId, "#YÐÕi T¦y Tüy Ðan")
				AddText(sceneId, "T¤t cä thuµc tính ð«u ðã không còn ði¬m phân ph¯i dß, không th¬ tiªn hành chïnh ði¬m.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)

		end
		return
	end
	
	-- ·ÅÆúÁË³ÔÒ©
	if GetNumText() == 2  then
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
function x300052_IsSkillLikeScript( sceneId, selfId)
	return 0
end
