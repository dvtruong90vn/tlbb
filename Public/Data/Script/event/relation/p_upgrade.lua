--Ê¦µÂµÈ¼¶Éý¼¶ÈÎÎñ

--½Å±¾ºÅ
x806015_g_ScriptId = 806015

--ÊÂ¼þ
x806015_g_Update					= {}
x806015_g_Update["id"]		= 1000
x806015_g_Update["wu"]		= 1001
x806015_g_Update["uw"]		= 1002

--ÌáÊ¾ÐÅÏ¢
x806015_g_msg					= {}
x806015_g_msg["up"]	= "C¥n nâng cao ðÆng c¤p sß ðÑc"
x806015_g_msg["un"]	= "ÐÆng c¤p sß ðÑc cüa các hÕ ðã · mÑc cao nh¤t, không th¬ nâng cao h½n"
x806015_g_msg["nv"]	= "Tr¸ giá thi®n ác cüa ngß½i không ðü, không th¬ nâng cao"
x806015_g_msg["uc"]	= "Thång c¤p t¾i A c¥n dùng B ði¬m tr¸ giá thi®n ác"
x806015_g_msg["wu"]	= "C¥n nâng cao ðÆng c¤p sß ðÑc"
x806015_g_msg["uw"]	= "Ta vçn không mu¯n thång c¤p"
x806015_g_msg["ul"]	= "Chï có ðÆng c¤p phäi l¾n h½n 20 m¾i ðü tß cách xin sß phø danh xßng,"

x806015_g_Title		={}
x806015_g_Title[1] = "Sß Phø S½ C¤p"
x806015_g_Title[2] = "Sß Phø Trung C¤p"
x806015_g_Title[3] = "Sß Phø Cao C¤p"
x806015_g_Title[4] = "Nh¤t ÐÕi Danh Sß"


--**********************************
--ÈÎÎñÈë¿Úº¯Êý ÇëÇóÊÕÍ½
--**********************************
function x806015_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	
	--Éý¼¶È·ÈÏ
	if key == x806015_g_Update["id"] then
		x806015_Upgrade( sceneId, selfId, targetId )
		return 0
	end
	

	--Í¬ÒâÉý¼¶
	if key == x806015_g_Update["wu"] then
		if x806015_DoUpgrade( sceneId, selfId, targetId ) == 0 then
			return 0
		end
		
		--BeginUICommand( sceneId )
		--UICommand_AddInt( sceneId, targetId )
		--EndUICommand( sceneId )
		--DispatchUICommand( sceneId, selfId, 1000 )

		local msg = "ÐÆng c¤p sß ðÑc cüa các hÕ ðßþc thång c¤p t¾i c¤p " .. tostring( LuaFnGetmasterLevel( sceneId, selfId ) .. "." )
		x806015_MessageBox( sceneId, selfId, targetId, "  "..msg )
		Msg2Player( sceneId, selfId, msg, MSG2PLAYER_PARA )
		return 0
	end
	
	--²»Í¬ÒâÉý¼¶
	if key == x806015_g_Update["uw"] then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806015_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x806015_g_ScriptId, x806015_g_msg["up"], 6, x806015_g_Update["id"] )
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x806015_CheckAccept( sceneId, selfId, targetId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x806015_OnAccept( sceneId, selfId, targetId )
	x806015_OnConfirm( sceneId, selfId, targetId )
end

--**********************************
--Ìá½»
--**********************************
function x806015_OnSubmit( sceneId, selfId, targetId, tId )
end

--**********************************
--¾Ü¾ø
--**********************************
function x806015_OnCancel( sceneId, selfId, targetId )
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806015_MessageBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÌáÉýÊ¦µÂµÈ¼¶È·ÈÏ¶Ô»°¿ò
--**********************************
function x806015_Upgrade( sceneId, selfId, targetId )
	local HumanLevel = LuaFnGetLevel( sceneId, selfId )
	local level = LuaFnGetmasterLevel( sceneId, selfId )
	
	if HumanLevel < 20 then
		x806015_MessageBox( sceneId, selfId, targetId, x806015_g_msg["ul"] )
		return 0
	end
	
	--¼ì²éÊÇ·ñÒÑ¾­Éý¼¶µ½×î´óÁË
	if level >= 4 then
		x806015_MessageBox( sceneId, selfId, targetId, x806015_g_msg["un"] )
		return 0
	end
	
	--¼ÆËãÐèÒªµÄÉÆ¶ñÖµ
	local exp = 0
	
	if level == 0 and HumanLevel < 60 then
		exp = 500
	elseif level == 1 then
		exp = 5000
	elseif level == 2 then
		exp = 25000
	elseif level == 3 then
		exp = 50000
	end
	
	local text = "  ÐÆng c¤p sß ðÑc s¨ ðßþc thång c¤p t¾i c¤p" .. tostring( level + 1 ) .. ", s¨ tiêu hao tr¸ giá thi®n ác" .. tostring( exp ) .. " ði¬m."
	BeginEvent( sceneId )
		AddText( sceneId, text )
		AddNumText( sceneId, x806015_g_ScriptId, x806015_g_msg["wu"], 6, x806015_g_Update["wu"] )
		AddNumText( sceneId, x806015_g_ScriptId, x806015_g_msg["uw"], 8, x806015_g_Update["uw"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	return 1
end

function x806015_DoUpgrade( sceneId, selfId, targetId )

	local HumanLevel = LuaFnGetLevel( sceneId, selfId )
	local level = LuaFnGetmasterLevel( sceneId, selfId )
	if level >= 4 then
--	x806015_MessageBox( sceneId, selfId, targetId, msg )
		return 0
	end
	
	--¼ÆËãÐèÒªµÄÉÆ¶ñÖµ
	local exp = 0
	if level == 0 and HumanLevel < 60 then
		exp = 500
	elseif level == 1 then
		exp = 5000
	elseif level == 2 then
		exp = 25000
	elseif level == 3 then
		exp = 50000
	end
	
	--¼ì²éÉÆ¶ñÖµ
	local gbvalue = LuaFnGetHumanGoodBadValue( sceneId, selfId )
	if gbvalue < exp then
		local msg = "  Tr¸ giá thi®n ác cüa các hÕ không ðü. Tr¸ giá thi®n ác cüa các hÕ hi®n là " .. tostring( gbvalue ) .. " ði¬m."
		x806015_MessageBox( sceneId, selfId, targetId, msg )
		return 0
	end
	
	--ÌáÉýÊ¦µÂµÈ¼¶
	level = level + 1
	LuaFnSetmasterLevel( sceneId, selfId, level )
	
	--¿Û³ýÉÆ¶ñÖµ
	gbvalue = gbvalue - exp
	LuaFnSetHumanGoodBadValue( sceneId, selfId, gbvalue )
	
	--ÐÞ¸ÄÊ¦µÂµÈ¼¶Ïà¹Ø³ÆºÅ
	AwardMasterTitle( sceneId, selfId, x806015_g_Title[level] )
	DispatchAllTitle( sceneId, selfId )
	SetCurTitle( sceneId, selfId, 27, 0 )

	--È«Çò¹«¸æ
	local	nam	= GetName( sceneId, selfId )
	local	str	= format( "#IXin chúc m×ng #W#{_INFOUSR%s}#I thành công ðÕt ðßþc danh hi®u #G%s#I, có th¬ thu nh§n nhæng ngß¶i ch½i khác làm ð° ð® r°i!", nam, x806015_g_Title[level] )
	AddGlobalCountNews( sceneId, str )
	
	--ÌØÐ§ÓëÒôÐ§
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )

	return level
end
