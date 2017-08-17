--ÔÆË¼¶ù

--½Å±¾ºÅ
x001083_g_scriptId = 001083

--ÉÌµê±àºÅ
x001083_g_shoptableindex=102

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x001083_g_eventList={400918, 400963}	--	È¥ĞşÎäµº¡¢È¥Ê¥ÊŞÉ½}	

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x001083_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"#{YXZ_80917_01}")
	
	--AddNumText( sceneId, x001083_g_scriptId, "Ãâ·ÑÎŞµĞ", 6, 10 )	--È¥³ıÃâ·ÑÎŞµĞ¹¦ÄÜ--del by Heanqi
	
	for i, eventId in x001083_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	AddNumText(sceneId,x001083_g_scriptId,"Mua sách kÛ nång Trân Thú",7,2)
--	AddNumText(sceneId,x001083_g_scriptId,"²éÑ¯ÕäÊŞ³É³¤ÂÊ",6,3)
--	AddNumText(sceneId,x001083_g_scriptId,"ÁéÊŞµ¤ºÏ³É",6,4)
	AddNumText(sceneId,x001083_g_scriptId,"#{XXWD_8916_07}",11,5)
--	AddNumText(sceneId,x001083_g_scriptId,"ÁéÊŞµ¤ºÏ³É½éÉÜ",11,6)
--	AddNumText(sceneId,x001083_g_scriptId,"ÈçºÎ¸øÕäÊŞ¿ìËÙÉı¼¶",11,7)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x001083_OnDefaultEvent( sceneId, selfId,targetId )
	x001083_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x001083_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001083_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	if GetNumText() == 2 then
		DispatchShopItem( sceneId, selfId,targetId, x001083_g_shoptableindex )
--	elseif GetNumText() == 3 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "  ²éÑ¯ÕäÊŞµÄ³É³¤ÂÊ£¬²éÑ¯Ò»´ÎĞèÒªÊÕÈ¡#{_MONEY100}µÄ·ÑÓÃ¡£" )
--		AddNumText( sceneId, x001083_g_scriptId, "È·¶¨", -1, 4 )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
--	elseif GetNumText() == 4 then
--		BeginUICommand( sceneId )
--			UICommand_AddInt( sceneId, targetId )
--			UICommand_AddInt( sceneId, 6 )				--ÕäÊŞ²éÑ¯·ÖÖ§
--		EndUICommand( sceneId )
--		DispatchUICommand( sceneId, selfId, 3 )	--µ÷ÓÃÕäÊŞ½çÃæ
	elseif GetNumText() == 4 then --ÁéÊŞµ¤ºÏ³É
--		BeginUICommand( sceneId )
--			UICommand_AddInt( sceneId, targetId )
--		EndUICommand( sceneId )
--		DispatchUICommand( sceneId, selfId, 19824 )	--µ÷ÓÃÁéÊŞµ¤ºÏ³É½çÃæ
	elseif GetNumText() == 5 then
		BeginEvent( sceneId )
		AddText( sceneId, "#{XXWD_8916_08}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 6 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "#{JNHC_81015_12}" )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 7 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "#{ZSKSSJ_081126_5}" )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 10 then
	    if eventId == x001083_g_scriptId then	
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 50, 0 )	--È¥³ıÃâ·ÑÎŞµĞ¹¦ÄÜ--del by Heanqi
			return
		end
	end
	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001083_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001083_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x001083_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼şÁĞ±í
	for i, findId in x001083_g_eventList do
		if missionScriptId == findId then
			x001083_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌĞø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001083_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001083_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x001083_OnDie( sceneId, selfId, killerId )
end

--**********************************
--Ìá½»ÕäÊŞ
--**********************************
function x001083_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
--×¢Òâ£¬ÕâÀïÕâÑùĞ´Ê¡ÂÔÁËÔÚeventlistÖĞËÑË÷scriptIdÕâÒ»²¿·Ö£¬¿ÉÄÜ»áÓĞÎÊÌâ
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end
