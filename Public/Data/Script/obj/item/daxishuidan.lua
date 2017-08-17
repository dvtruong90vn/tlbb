-- 300042 
-- ÐÕi T¦y Tüy Ðan
-- Ê¹ÓÃÖ®ºó¿ÉÒÔ½«ËùÓÐµÄÒÑ·ÖÅäµãÊý±äÎªÇ±ÄÜ¡£


-- ½Å±¾ºÅ
x300042_g_scriptId = 300042
x300042_g_ItemId = 30008004  -- Ò©Ë®ID

x300042_g_UseScriptId = 300052
--**********************************
-- ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300042_OnDefaultEvent( sceneId, selfId )
	BeginEvent(sceneId)
		AddText(sceneId, "#YÐÕi T¦y Tüy Ðan")
		AddText(sceneId, "Sau khi sØ døng có th¬ mang t¤t cä các ði¬m s¯ ðã phân ph¯i biªn thành ti«m nång.")
			AddNumText(sceneId, x300042_g_UseScriptId,"Bây gi¶ tÕi hÕ mu¯n chïnh ði¬m", 0, 1)
			AddNumText(sceneId, x300042_g_UseScriptId,"Sau này hãy tính", 0, 2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	
end

--**********************************
-- 
--**********************************
function x300042_IsSkillLikeScript( sceneId, selfId)
	return 0
end
