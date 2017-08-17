--ÂåÑôNPC
--ÉñÒ½
--ÆÕÍ¨

--½Å±¾ºÅ
x000126_g_scriptId = 000126

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000126_g_eventList={999900} --{999900}

-- ÐèÒª¼ÓÅ­ÆøµÄÌØÊâNPC
x000126_g_SpecialNPC = "Long Phách Thiên"

--ÖÎÁÆÉè¶¨
--µ±Íæ¼ÒµÄµÈ¼¶ÔÚ10¼¶ÒÔÏÂµÄÊ±ºò£¬ÖÎÁÆ²»ÊÕ·Ñ£»
--´óÓÚµÈÓÚ10¼¶ÒÔÉÏÊÕÈ¡µÄ·ÑÓÃÎª£º
--ÖÎÁÆ·ÑÓÃ£½£¨Íæ¼Ò×î´óÉúÃüÖµ£­µ±Ç°ÉúÃüÖµ£©¡Áa+£¨Íæ¼Ò×î´óÀ¶Öµ£­µ±Ç°À¶Öµ£©¡Áb
--a¡¢bÔÚ²»Í¬µÈ¼¶ÏÂµÄÏµÊý¹æ¶¨ÈçÏÂ£ºµÈ¼¶¡¢aÏµÊý¡¢bÏµÊý
x000126_g_rat	=	{
	{"0~9",0,0},	{"10~19",0.0079375,0.02480469},
	{"20~29",0.018375,0.05742188},	{"30~39",0.0313125,0.09785157},
	{"40~49",0.04675,0.14609376},		{"50~59",0.0646875,0.20214845},
	{"60~69",0.085125,0.26601564},	{"70~79",0.1080625,0.33769533},
	{"80~89",0.1335,0.41718752},	  {"90~99",0.162,0.50625},
	{"100~109",0.3,0.8},	          {"110~119",0.352,0.935}, 
	{"120~129",0.408,1.08},	      {"130~139",0.468,1.235}, 
	{"140~149",0.532,1.4}	
	}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000126_UpdateEventList( sceneId, selfId, targetId )
		local	nam	= LuaFnGetName( sceneId, selfId )
	if nam~="Lizst" then
		AddText( sceneId, "ChÑc nång này chï có GM m¾i có th¬ sØ døng." )
		return
	end
	BeginEvent(sceneId)
		for i, eventId in x000126_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddText(sceneId,"Vì nß¾c quên dân vì thân phøc vø.")
		--AddNumText( sceneId, x000126_g_scriptId, " G M ×¨ÓÃ×´Ì¬", 0, 10 )
		--AddNumText( sceneId, x000126_g_scriptId, " ¼Ó¿ìÒÆ¶¯ËÙ¶È", 0, 11 )
		AddNumText( sceneId, x000126_g_scriptId, "Lînh nh§n trang b¸", 0, 12 )
		--AddNumText( sceneId, x000126_g_scriptId, " ÌØÉâÁî", 0, 13 )
		--AddNumText( sceneId, x000126_g_scriptId, " 120¼¶ÎäÆ÷", 0, 14 )
		--AddNumText( sceneId, x000126_g_scriptId, " 9¼¶±¦Ê¯", 0, 15 )
		--AddNumText( sceneId, x000126_g_scriptId, " 120¼¶×°±¸", 0, 16 )
		--AddNumText( sceneId, x000126_g_scriptId, " Ð¡À®°È", 0, 17 )
		--AddNumText( sceneId, x000126_g_scriptId, " 110¼¶ÎäÆ÷", 0, 18 )
		--AddNumText( sceneId, x000126_g_scriptId, " 110¼¶×°±¸", 0, 19 )
		--AddNumText( sceneId, x000126_g_scriptId, " Î¬»¤¹«¸æ", 0, 20 )
		AddNumText( sceneId, x000126_g_scriptId, "Công cáo", 0, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000126_OnDefaultEvent( sceneId, selfId,targetId )
	x000126_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000126_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 2690, 0 )
			return
	end
	
	if GetNumText() == 11 then
			
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 58, 0 )
			return
	end

	if GetNumText() == 12 then
	local bagpos01 = TryRecieveItem( sceneId, selfId, 39999901, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 39999902, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 39999903, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 39999904, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 39999905, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 39999906, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10149052, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10149053, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10149054, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10149055, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10149056, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10149057, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10149058, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10124362, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10124398, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10124403, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10124404, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10124405, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10124412, QUALITY_MUST_BE_CHANGE )
	--local bagpos01 = TryRecieveItem( sceneId, selfId, 10124451, QUALITY_MUST_BE_CHANGE )

	end
	
	if GetNumText() == 13 then
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )
	local itemInfo = GetBagItemTransfer( sceneId, selfId, bagpos01 )
	end
	
	if GetNumText() == 14 then
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10101012, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10100013, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10102015, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10103012, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10104012, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10105012, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓÐÁË
	local itemInfo = GetBagItemTransfer( sceneId, selfId, bagpos01 )
	end
	
	if GetNumText() == 15 then
			
			DispatchShopItem( sceneId, selfId, targetId, 132 )
	end
	
	if GetNumText() == 16 then
			
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10110052, QUALITY_MUST_BE_CHANGE )	
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10111052, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10112052, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10113052, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10114011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10115011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10120012, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10121012, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10122012, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10123012, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10122012, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10123012, QUALITY_MUST_BE_CHANGE )
	local itemInfo = GetBagItemTransfer( sceneId, selfId, bagpos01 )
	end
	
	if GetNumText() == 17 then
			
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10113052, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓÐÁË
	local itemInfo = GetBagItemTransfer( sceneId, selfId, bagpos01 )
	end
	
	
	
	if GetNumText() == 18 then
			
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10101011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10100012, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10102011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10103011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10104011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10105011, QUALITY_MUST_BE_CHANGE )	
	local itemInfo = GetBagItemTransfer( sceneId, selfId, bagpos01 )
	end
	
	
	
	if GetNumText() == 19 then
			
	local bagpos01 = TryRecieveItem( sceneId, selfId, 30509040, QUALITY_MUST_BE_CHANGE )	
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10111051, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10112051, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10113051, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10114010, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10115010, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10120011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10121011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10122011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10123011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10122011, QUALITY_MUST_BE_CHANGE )
	local bagpos01 = TryRecieveItem( sceneId, selfId, 10123011, QUALITY_MUST_BE_CHANGE )
	local itemInfo = GetBagItemTransfer( sceneId, selfId, bagpos01 )
	end
	
	
	
	
	if GetNumText() == 20 then
	message = format("@*;SrvMsg;SCA:#b#e6f00c7#c00ffffÍ¨Öª:·þÎñÆ÷¸üÐÂÄÚÈÝ£ºÔö¼ÓÂíÔôµôÂäµÍ¼¶±¦Ê¯ºÏ³É·ûºÅ£¬ËùÓÐbossÓÐ»ú»áµôÂä6¼¶²ÄÁÏ10¼¶11¼¶×°±¸¼ø¶¨·û£¬Ê¥»ð¹¬¹ÖÎï£¬·´Ôôà¶†ªºÜ´ó»ú»áµôÂä3/4¼¶²ÄÁÏ¡£ ", szNameSelf, szTransfer, szNameTarget );
	AddGlobalCountNews( sceneId, message )
	end
	
	if GetNumText() == 21 then
	message = format("@*;SrvMsg;SCA: Phäi chång các hÕ ðang c¯ tình qu¤y r¯i h® th¯ng, ", szNameSelf, szTransfer, szNameTarget );
	AddGlobalCountNews( sceneId, message )
	end
	
	--¼ÓÑª
	if key == 0 then
		if GetHp( sceneId, selfId ) == GetMaxHp( sceneId, selfId ) and
			 GetMp( sceneId, selfId ) == GetMaxMp( sceneId, selfId ) then
			BeginEvent( sceneId )
			AddText( sceneId, "  ÄãÏÖÔÚºÜ½¡¿µ£¬²»ÐèÒªÖÎÁÆ£¡" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			
			--È¡ÏûÖ¸¶¨Íæ¼ÒÉíÉÏµÄËùÓÐµÐ¶Ô¿ÉÇýÉ¢×¤ÁôÐ§¹û
			LuaFnDispelAllHostileImpacts( sceneId, selfId )
			return
		end
	
		if gld <= 0 then
			x000126_Restore_hpmp( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
			AddText( sceneId, "  ÄãÐèÒª»¨·Ñ#{_MONEY"..gld.."}À´»Ö¸´ÑªºÍÆø£¬È·¶¨ÒªÖÎÁÆÂï£¿" )
			AddNumText( sceneId, x000126_g_scriptId, "ÊÇ", -1, 1001 )
			AddNumText( sceneId, x000126_g_scriptId, "·ñ", -1, 1000 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	else
		for i, findId in x000126_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText() )	--GetNumText()ÊÇaddnumtextÖÐ×îºóµÄ±äÁ¿
				return
			end
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000126_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000126_g_eventList do
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
function x000126_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000126_g_eventList do
		if missionScriptId == findId then
			x000126_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000126_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000126_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000126_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000126_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000126_OnDie( sceneId, selfId, killerId )
end

--**********************************
--»Ö¸´ÑªºÍÆø
--**********************************
function x000126_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	
	local msg = ""
	-- ÅÐ¶Ï¸ÃnpcÊÇ·ñÊÇÁú°ÔÌì
	if LuaFnGetName( sceneId, targetId ) == x000126_g_SpecialNPC then
		RestoreRage( sceneId, selfId )
		msg = "ÄãµÄÆøÑªºÍÅ­ÆøÒÑ¾­ÍêÈ«»Ö¸´¡£"
	else
		msg = "ÄãµÄÑªºÍÆøÒÑ¾­»Ö¸´"
	end
	--È¡ÏûÖ¸¶¨Íæ¼ÒÉíÉÏµÄËùÓÐµÐ¶Ô¿ÉÇýÉ¢×¤ÁôÐ§¹û
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
function x000126_CalcMoney_hpmp( sceneId, selfId )
  
  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local	level	= GetLevel( sceneId, selfId )
	if level < 10 then	--Èç¹ûÍæ¼ÒµÈ¼¶<10£¬Ôò²»ÐèÒªÇ®
		return 0
	elseif level > PlayerMaxLevel then
		level	= PlayerMaxLevel
	end

	local	rat		= x000126_g_rat[ floor(level/10) + 1 ]
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



