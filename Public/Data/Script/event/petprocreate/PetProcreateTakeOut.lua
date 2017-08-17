--ÕäÊŞ·±Ö³(È¡ÕäÊŞ)
--½Å±¾ºÅ £¨¸Ä³ÉÕıÈ·½Å±¾ºÅ£©

x800102_g_scriptId = 800102

function x800102_OnDefaultEvent( sceneId, selfId, targetId )

	--»ñÈ¡Íæ¼Òµ±Ç°µÄÕäÊŞ·±Ö³ĞÅÏ¢
	local checkRet	= LuaFnCheckPetProcreateTakeOut( sceneId, selfId )
	if checkRet == 1 then
		LuaFnPetProcreateTakeOut( sceneId, selfId )
	end

end

function x800102_OnEnumerate( sceneId, selfId, targetId )

	--£¨1£©·±Ö³½ø³ÌÖĞ£¬ÏÔÊ¾·±Ö³½ø¶È
	--		ÄãµÄÕäÊŞAAAÓëBBBµÄÕäÊŞCCCÕıÔÚ¿ìÀÖµÄæÒÏ·£¬ÔÙ¹ıD·ÖÖÓ£¬¾ÍÄÜ´ø×Å¶ş´úÕäÊŞ»Øµ½ÄãÉí±ß¡£
	--£¨2£©·±Ö³³É¹¦ºó£¬ÁìÈ¡×ÓÕäÊŞ
	AddNumText( sceneId, x800102_g_scriptId, "Nh§n trân thú v×a sinh sän", 6, x800102_g_scriptId )

end

--È¡³ö·±Ö³ÕäÊŞ¡¼Lybin Oct.24 2006¡½
--´Ëº¯Êı»áÔÚServer½ÓÊÕµ½WGPetProcreateQuestTakeOutResultÏûÏ¢°üºó£¬±»¶¯Ö´ĞĞ
--ÇëÎğÉÃ×ÔĞŞ¸Ä
--function x800102_OnTakeOut( sceneId, selfId )
--
--	local	checkRet	= LuaFnCheckPetProcreateTakeOut( sceneId, selfId )
--	if checkRet == 1 then
--		LuaFnPetProcreateTakeOut( sceneId, selfId )
--	end
--end
