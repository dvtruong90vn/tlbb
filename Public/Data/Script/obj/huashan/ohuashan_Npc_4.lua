--»ªÉ½Ò½ÁÆNPC
--ÉñÒ½
--ÆÕÍ¨

--½Å±¾ºÅ
x125004_g_scriptId = 125004

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x125004_g_eventList={701603}			-- ¡°ÕäÊŞÖÎÁÆ¡±½Å±¾

--ÓÎÒ½½Å±¾±àºÅ
x125004_g_healScriptId = 000064

--ÖÎÁÆÉè¶¨
--µ±Íæ¼ÒµÄµÈ¼¶ÔÚ10¼¶ÒÔÏÂµÄÊ±ºò£¬ÖÎÁÆ²»ÊÕ·Ñ£»
--´óÓÚµÈÓÚ10¼¶ÒÔÉÏÊÕÈ¡µÄ·ÑÓÃÎª£º
--ÖÎÁÆ·ÑÓÃ£½£¨Íæ¼Ò×î´óÉúÃüÖµ£­µ±Ç°ÉúÃüÖµ£©¡Áa+£¨Íæ¼Ò×î´óÀ¶Öµ£­µ±Ç°À¶Öµ£©¡Áb
--a¡¢bÔÚ²»Í¬µÈ¼¶ÏÂµÄÏµÊı¹æ¶¨ÈçÏÂ£ºµÈ¼¶¡¢aÏµÊı¡¢bÏµÊı
--x125004_g_rat	=	{
--	{"0~9",0,0},	{"10~19",0.0079375,0.02480469},
--	{"20~29",0.018375,0.05742188},	{"30~39",0.0313125,0.09785157},
--	{"40~49",0.04675,0.14609376},		{"50~59",0.0646875,0.20214845},
--	{"60~69",0.085125,0.26601564},	{"70~79",0.1080625,0.33769533},
--	{"80~89",0.1335,0.41718752},	  {"90~99",0.162,0.50625}, 
--	{"100~109",0.2,0.6},	          {"110~119",0.2354,0.704}, 
--	{"120~129",0.2736,0.816},	      {"130~139",0.3146,0.936}, 
--	{"140~149",0.3584,1.064}	 
--	}
--¸Ä³ÉÓëĞ£³¡¼Û¸ñÒ»Ñù TT:45070

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x125004_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_luoyang_0019}")
		-- AddNumText( sceneId, x125004_g_scriptId, "Ãâ·ÑÎŞµĞ", 6, 10 )
		AddNumText(sceneId,x125004_g_scriptId,"Tr¸ li®u",6,0)
	EndEvent(sceneId)
	for i, eventId in x125004_g_eventList do
		-- µ÷ÓÃ¡°ÕäÊŞÖÎÁÆ¡±½Å±¾
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x125004_OnDefaultEvent( sceneId, selfId,targetId )
	x125004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x125004_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 50, 0 )
			return
	end

	--¼ÆËã»Ö¸´ÑªºÍÆø·ÑÓÃ
	--local	gld	= x125004_CalcMoney_hpmp( sceneId, selfId )
	local	gld = CallScriptFunction( x125004_g_healScriptId, "CalcMoney_hpmp",sceneId, selfId, targetId )* 0.1
local	key	= GetNumText()

	if key == 1000 then	--²»Ô¸ÔÙÖÎÁÆ
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end

	if key == 1001 then	--È·ÈÏÒªÖÎÁÆ
		--¼ÆËã»Ö¸´ÑªºÍÆø·ÑÓÃ
		--gld	= x125004_CalcMoney_hpmp( sceneId, selfId )
		gld = CallScriptFunction( x125004_g_healScriptId, "CalcMoney_hpmp",sceneId, selfId, targetId )* 0.1

		-- µÃµ½½»×ÓºÍ½ğÇ®ÊıÄ¿
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		
		--¼ì²éÍæ¼ÒÊÇ·ñÓĞ×ã¹»µÄÏÖ½ğ
		if (nMoneyJZ + nMoney >= gld) then
			--¿ÛÇ®
			LuaFnCostMoneyWithPriority (sceneId, selfId, gld)
			--»Ö¸´ÑªºÍÆø		
			x125004_Restore_hpmp ( sceneId, selfId, targetId )			
			return
		
		--Ç®²»¹»	
		else		
			BeginEvent( sceneId )
				AddText( sceneId, "Ngân lßşng cüa các hÕ không ğü!" )
				EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	
	--¼ÓÑª
	if key == 0 then
		if GetHp( sceneId, selfId ) == GetMaxHp( sceneId, selfId ) and
			 GetMp( sceneId, selfId ) == GetMaxMp( sceneId, selfId ) then
			BeginEvent( sceneId )
			AddText( sceneId, "Ngß½i hi®n r¤t khoë mÕnh, không c¥n chæa tr¸!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			
			--È¡ÏûÖ¸¶¨Íæ¼ÒÉíÉÏµÄËùÓĞµĞ¶Ô¿ÉÇıÉ¢×¤ÁôĞ§¹û
			LuaFnDispelAllHostileImpacts( sceneId, selfId )
			return
		end
	
		if gld <= 0 then
			x125004_Restore_hpmp( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ c¥n t¯n #G#{_EXCHG"..gld.."}#W t¾i h°i phøc huyªt và khí, xác ğ¸nh có c¥n chæa tr¸ không?" )
				AddNumText( sceneId, x125004_g_scriptId, "Xác nh§n", -1, 1001 )
				AddNumText( sceneId, x125004_g_scriptId, "Hüy bö", -1, 1000 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	else
		for i, findId in x125004_g_eventList do
			if eventId == findId then
				-- µ÷ÓÃ¡°ÕäÊŞÖÎÁÆ¡±½Å±¾
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText() )	--GetNumText()ÊÇaddnumtextÖĞ×îºóµÄ±äÁ¿
				return
			end
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x125004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125004_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				-- µ÷ÓÃ¡°ÕäÊŞÖÎÁÆ¡±½Å±¾
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x125004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼şÁĞ±í
	for i, findId in x125004_g_eventList do
		if missionScriptId == findId then
			x125004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌĞø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x125004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125004_g_eventList do
		if missionScriptId == findId then
			-- µ÷ÓÃ¡°ÕäÊŞÖÎÁÆ¡±½Å±¾
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x125004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x125004_g_eventList do
		if missionScriptId == findId then
			-- µ÷ÓÃ¡°ÕäÊŞÖÎÁÆ¡±½Å±¾
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x125004_OnDie( sceneId, selfId, killerId )
end

--**********************************
--»Ö¸´ÑªºÍÆø
--**********************************
function x125004_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	--È¡ÏûÖ¸¶¨Íæ¼ÒÉíÉÏµÄËùÓĞµĞ¶Ô¿ÉÇıÉ¢×¤ÁôĞ§¹û
	LuaFnDispelAllHostileImpacts( sceneId, selfId )
	
	BeginEvent( sceneId )
		AddText( sceneId, "Huyªt và khí cüa ngß½i ğã ğßşc h°i phøc" );
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
	
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
end

--**********************************
--¼ÆËã»Ö¸´ÑªºÍÆø·ÑÓÃ
--**********************************
--µ±Íæ¼ÒµÄµÈ¼¶ÔÚ10¼¶ÒÔÏÂµÄÊ±ºò£¬ÖÎÁÆ²»ÊÕ·Ñ£»
--´óÓÚµÈÓÚ10¼¶ÒÔÉÏÊÕÈ¡µÄ·ÑÓÃÎª£º
--ÖÎÁÆ·ÑÓÃ£½£¨Íæ¼Ò×î´óÉúÃüÖµ£­µ±Ç°ÉúÃüÖµ£©¡Áa+£¨Íæ¼Ò×î´óÀ¶Öµ£­µ±Ç°À¶Öµ£©¡Áb
--function x125004_CalcMoney_hpmp( sceneId, selfId )
--	
--	local PlayerMaxLevel = GetHumanMaxLevelLimit()
--	local	level	= GetLevel( sceneId, selfId )
--	if level < 10 then	--Èç¹ûÍæ¼ÒµÈ¼¶<10£¬Ôò²»ĞèÒªÇ®
--		return 0
--	elseif level > PlayerMaxLevel then
--		level	= PlayerMaxLevel
--	end
--
--	local	rat		= x125004_g_rat[ floor(level/10) + 1 ]
--	local hp		= GetHp( sceneId, selfId )
--	local maxhp	= GetMaxHp( sceneId, selfId )
--	local mp		= GetMp( sceneId, selfId )
--	local maxmp	= GetMaxMp( sceneId, selfId )
--	local	gld		= floor( (maxhp-hp) * rat[2] + (maxmp-mp) * rat[3] )
--	if gld < 1 then
--		gld				= 1
--	end
--	return gld
--end
