--ÂåÑôNPC
--ÉñÒ½
--ÆÕÍ¨

--½Å±¾ºÅ
x000064_g_scriptId = 000064

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x000064_g_eventList={701603}	

-- ĞèÒª¼ÓÅ­ÆøµÄÌØÊâNPC
x000064_g_SpecialNPC = "Long Bá Thiên"
x000064_g_SpecialNPC2 = "Ëïİ±"
x000064_g_SpecialNPC3 = "Áğå·"

--³ÇÊĞÀïÃ»ÓĞÃâ·ÑÎŞµĞ¹¦ÄÜµÄÌØÊâNPC
x000064_g_SpecialNPC_City = "±RüSßB"

--ÖÎÁÆÉè¶¨
--µ±Íæ¼ÒµÄµÈ¼¶ÔÚ10¼¶ÒÔÏÂµÄÊ±ºò£¬ÖÎÁÆ²»ÊÕ·Ñ£»
--´óÓÚµÈÓÚ10¼¶ÒÔÉÏÊÕÈ¡µÄ·ÑÓÃÎª£º
--ÖÎÁÆ·ÑÓÃ£½£¨Íæ¼Ò×î´óÉúÃüÖµ£­µ±Ç°ÉúÃüÖµ£©¡Áa+£¨Íæ¼Ò×î´óÀ¶Öµ£­µ±Ç°À¶Öµ£©¡Áb
--a¡¢bÔÚ²»Í¬µÈ¼¶ÏÂµÄÏµÊı¹æ¶¨ÈçÏÂ£ºµÈ¼¶¡¢aÏµÊı¡¢bÏµÊı
x000064_g_rat	=	{
	{"0~9",0,0},	{"10~19",0.0079375,0.02480469},
	{"20~29",0.018375,0.05742188},	{"30~39",0.0313125,0.09785157},
	{"40~49",0.04675,0.14609376},		{"50~59",0.0646875,0.20214845},
	{"60~69",0.085125,0.26601564},	{"70~79",0.1080625,0.33769533},
	{"80~89",0.1335,0.41718752},	  {"90~99",0.162,0.50625},
	{"100~109",0.3,0.8},	          {"110~119",0.352,0.935}, 
	{"120~129",0.408,1.08},	      {"130~139",0.468,1.235}, 
	{"140~149",0.532,1.4},
	{"150~159",0.6,1.5},
	{"160~169",0.65,1.6},
	{"170~179",0.7,1.7},
	{"180~189",0.75,1.8},
	{"190~199",0.8,1.9},
	{"200~209",0.85,2.0},
	{"210~219",0.9,2.1},
	{"220~229",0.95,2.2},
	{"230~239",1.0,2.3},
	{"240~249",1.1,2.4},
	{"250",0.6,2}
	}

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x000064_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_luoyang_0019}")
		if LuaFnGetName( sceneId, targetId ) ~= x000064_g_SpecialNPC_City then
		--AddNumText( sceneId, x000064_g_scriptId, "Ãâ·ÑÎŞµĞ", 6, 10 )	--È¥³ıÃâ·ÑÎŞµĞ--del by Heanqi
		end
		AddNumText(sceneId,x000064_g_scriptId,"Tr¸ li®u",6,0)
	EndEvent(sceneId)
	for i, eventId in x000064_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000064_OnDefaultEvent( sceneId, selfId,targetId )
	x000064_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x000064_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 50, 0 )	--È¥³ıÃâ·ÑÎŞµĞ--del by Heanqi
			return
	end

	--¼ÆËã»Ö¸´ÑªºÍÆø·ÑÓÃ
	local	gld	= x000064_CalcMoney_hpmp( sceneId, selfId )
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
		gld	= x000064_CalcMoney_hpmp( sceneId, selfId )
		
		-- µÃµ½½»×ÓºÍ½ğÇ®ÊıÄ¿
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		
		--¼ì²éÍæ¼ÒÊÇ·ñÓĞ×ã¹»µÄÏÖ½ğ
		if (nMoneyJZ + nMoney >= gld) then
			--¿ÛÇ®
			LuaFnCostMoneyWithPriority (sceneId, selfId, gld)
			--»Ö¸´ÑªºÍÆø
			x000064_Restore_hpmp( sceneId, selfId, targetId )			
			return
		
		--Ç®²»¹»	
		else		
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ không ğü ngân lßşng" )
				EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	
	--¼ÓÑª
	if key == 0 then
		if GetHp( sceneId, selfId ) == GetMaxHp( sceneId, selfId ) and
			 GetMp( sceneId, selfId ) == GetMaxMp( sceneId, selfId ) then
			BeginEvent( sceneId )
			AddText( sceneId, "Ngß½i hi®n r¤t khöe mÕnh, không c¥n chæa tr¸!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			
			--È¡ÏûÖ¸¶¨Íæ¼ÒÉíÉÏµÄËùÓĞµĞ¶Ô¿ÉÇıÉ¢×¤ÁôĞ§¹û
			LuaFnDispelAllHostileImpacts( sceneId, selfId )
			return
		end
	
		if gld <= 0 then
			x000064_Restore_hpmp( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ phäi trä #G#{_EXCHG"..gld.."}#W Ğ¬ h°i phøc Huyªt và khí, các hÕ có ğ°ng ı chæa tr¸ không?" )
				AddNumText( sceneId, x000064_g_scriptId, "Có", -1, 1001 )
				AddNumText( sceneId, x000064_g_scriptId, "Không", -1, 1000 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	else
		for i, findId in x000064_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText() )	--GetNumText()ÊÇaddnumtextÖĞ×îºóµÄ±äÁ¿
				return
			end
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000064_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000064_g_eventList do
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
function x000064_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼şÁĞ±í
	for i, findId in x000064_g_eventList do
		if missionScriptId == findId then
			x000064_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌĞø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000064_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000064_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000064_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000064_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x000064_OnDie( sceneId, selfId, killerId )
end

--**********************************
--»Ö¸´ÑªºÍÆø
--**********************************
function x000064_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	
	local msg = ""
	-- ÅĞ¶Ï¸ÃnpcÊÇ·ñÊÇÁú°ÔÌì
	if LuaFnGetName( sceneId, targetId ) == x000064_g_SpecialNPC 
		or LuaFnGetName( sceneId, targetId ) == x000064_g_SpecialNPC2
		or LuaFnGetName( sceneId, targetId ) == x000064_g_SpecialNPC3 then
		RestoreRage( sceneId, selfId )
		msg = "Khí huyªt và nµ cüa các hÕ ğã ğßşc h°i phøc hoàn toàn"
	else
		msg = "Huyªt và khí ğã h°i phøc"
	end
	--È¡ÏûÖ¸¶¨Íæ¼ÒÉíÉÏµÄËùÓĞµĞ¶Ô¿ÉÇıÉ¢×¤ÁôĞ§¹û
	LuaFnDispelAllHostileImpacts( sceneId, selfId )
	
	BeginEvent( sceneId )
		AddText( sceneId, msg );
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
function x000064_CalcMoney_hpmp( sceneId, selfId )
  
  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local	level	= GetLevel( sceneId, selfId )
	if level < 10 then	--Èç¹ûÍæ¼ÒµÈ¼¶<10£¬Ôò²»ĞèÒªÇ®
		return 0
	elseif level > PlayerMaxLevel then
		level	= PlayerMaxLevel
	end

	local	rat		= x000064_g_rat[ floor(level/10) + 1 ]
	local hp		= GetHp( sceneId, selfId )
	local maxhp	= GetMaxHp( sceneId, selfId )
	local mp		= GetMp( sceneId, selfId )
	local maxmp	= GetMaxMp( sceneId, selfId )
	local	gld		= floor( (maxhp-hp) * rat[2] + (maxmp-mp) * rat[3] )
	if gld < 1 then
		gld				= 100
	end
	return gld
end
