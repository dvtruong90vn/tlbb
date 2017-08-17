--Â¥À¼NPC....
--ÎäÆ÷Ïà¹Ø¹¦ÄÜ....

--½Å±¾ºÅ
x001101_g_ScriptId = 001101

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001101_OnDefaultEvent( sceneId, selfId, targetId )

	
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLGC_20080324_13}" )
		AddNumText( sceneId, x001101_g_ScriptId, "Giám ð¸nh tß ch¤t trang b¸", 6, 1 )
		AddNumText( sceneId, x001101_g_ScriptId, "Ðøc l² trang b¸ cñc hÕn", 6, 2 )--ÏÖÔÚÔö¼ÓÒ»ÖÖ´ò¿×·½Ê½£¬Òò´ËÕâ¸ö±ä³É¶þ¼¶½çÃæ
		AddNumText( sceneId, x001101_g_ScriptId, "Khäm nÕm trang b¸ cñc hÕn", 6, 3 )
		AddNumText( sceneId, x001101_g_ScriptId, "Trích tr× bäo thÕch cñc hÕn", 6, 4 )
		AddNumText( sceneId, x001101_g_ScriptId, "Liên quan ðªn khäm nÕm cñc hÕn", 11, 5 )
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001101_OnEventRequest( sceneId, selfId, targetId, eventId )

	
	if GetNumText() == 1 then

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1001 )

	elseif GetNumText() == 2 then

--		BeginUICommand( sceneId )
--		UICommand_AddInt( sceneId, targetId )
--		EndUICommand( sceneId )
--		DispatchUICommand( sceneId, selfId, 75117 )

	BeginEvent( sceneId )
		AddText( sceneId, "Ch÷n nguyên li®u khoan" )
		AddNumText( sceneId, x001101_g_ScriptId, "Ði¬m Kim Chi Ti­n", 6, 10 )
		AddNumText( sceneId, x001101_g_ScriptId, "Hàn Ng÷c Tinh Tuý", 6, 11 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
		
	elseif GetNumText() == 3 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 751107 )
	
	elseif GetNumText() == 4 then

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 25702 )
		
	elseif GetNumText() == 5 then

		BeginEvent( sceneId )
		AddText( sceneId, "#{XQC_20080509_34}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif GetNumText() == 10 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )		--type£¬Çø·Öµã½ð»¹ÊÇº®Óñ
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
	
	elseif GetNumText() == 11 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 2 )		--type£¬Çø·Öµã½ð»¹ÊÇº®Óñ
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
		
	end

end
