-- 300043 
-- Ð¡Ï´Ëèµ¤
-- Ê¹ÓÃÖ®ºó¿ÉÒÔ½«Ñ¡ÔñÊôÐÔµÄ·ÖÅäµãÊýÖÐµÄ5µã±äÎªÇ±ÄÜ¡£


-- ½Å±¾ºÅ
x300043_g_scriptId = 300043
x300043_g_ItemId = 30008005  -- Ò©Ë®ID
x300043_g_UseScriptId = 300053
--**********************************
-- ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300043_OnDefaultEvent( sceneId, selfId )
	BeginEvent(sceneId)
		AddText(sceneId, "#YTi¬u T¦y Tüy Ðan")
		AddText(sceneId, "Sau khi sØ døng có th¬ mang b¤t kì 1 thuµc tính nào ðã ph¤n ph¯i l¤y #Y5 ði¬m#Wbiªn thành ti«m nång.")
		AddNumText(sceneId, x300043_g_UseScriptId,"Chïnh 5 ði¬m Cß¶ng lñc", 0, 1)
		AddNumText(sceneId, x300043_g_UseScriptId,"Chïnh 5 ði¬m Nµi lñc", 0, 2)
		AddNumText(sceneId, x300043_g_UseScriptId,"Chïnh 5 ði¬m Th¬ lñc", 0, 3)
		AddNumText(sceneId, x300043_g_UseScriptId,"Chïnh 5 ði¬m Trí lñc", 0, 4)
		AddNumText(sceneId, x300043_g_UseScriptId,"Chïnh 5 ði¬m Thân pháp", 0, 5)
		AddNumText(sceneId, x300043_g_UseScriptId,"Sau này hãy tính", 0, 6)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	
end


--**********************************
-- 
--**********************************
function x300043_IsSkillLikeScript( sceneId, selfId)
	return 0
end

function x300043_WashPoint(sceneId, selfId, nType, nPoint, szStr)
	-- ¿Û³ýÏà¹ØµÄÎïÆ·
	local ret = DelItem(sceneId, selfId, x300043_g_ItemId, 1)
	if ret == 1  then
		local nNumber = LuaFnWashSomePoints(sceneId, selfId, nType, nPoint)
		
		BeginEvent(sceneId)
			AddText(sceneId, "#YTi¬u T¦y Tüy Ðan")
			AddText(sceneId, "Các hÕ t¦y thành công #Y" .. tonumber(nNumber) .. " ði¬m#W ðã phân ph¯i cüa #Y" .. szStr.. "#W thuµc tính biªn thành ti«m nång.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	end		

end
