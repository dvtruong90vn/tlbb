--³öÊ¦ÈÎÎñ

--½Å±¾ºÅ
x806007_g_ScriptId	= 806007

--³öÊ¦
x806007_g_FinishAppr				= {}
x806007_g_FinishAppr["Id"]	= 1004
x806007_g_FinishAppr["Name"]= "Ta ðßa ð° ð® xu¤t sß"

--ÌáÊ¾ÐÅÏ¢
x806007_g_msg					= {}
x806007_g_msg["tem"]	= "  C¥n 2 nhóm ð° ð® t¾i tìm ta m¾i có th¬ xu¤t sß"
x806007_g_msg["ner"]	= "  Chï có 2 ngß¶i ð«u t¾i bên ta m¾i có th¬ xu¤t sß"
x806007_g_msg["lev"]	= "  ÐÆng c¤p ð° ð® ðÕt t¾i c¤p 40 m¾i có th¬ xu¤t sß"
x806007_g_msg["dad"]	= "  Ngß½i vçn chßa thu nh§n ð° ð®"
x806007_g_msg["itm"]	= "  Trong tay näi cüa 2 sß ð° c¥n có ít nh¤t 1 khoang tr¯ng cho v§t ph¦m bình thß¶ng"

--³öÊ¦½±Àø
x806007_g_itm		= { 30008001, "Ðß¶ng ð§u xu¤t sß" }

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x806007_OnDefaultEvent( sceneId, selfId, targetId )
	local	tId	= x806007_CheckAccept( sceneId, selfId, targetId )
	if tId == 0 then
		return
	end

	x806007_OnAccept( sceneId, selfId, targetId, tId )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806007_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806007_g_ScriptId, x806007_g_FinishAppr["Name"] , 6, -1 )
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x806007_CheckAccept( sceneId, selfId, targetId )
	--(1)×é¶ÓÖÐÖ»ÓÐÊ¦Í½Á½¸öÈË
	if LuaFnHasTeam( sceneId, selfId ) == 0 or LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["tem"] )
		return 0
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["ner"] )
		return 0
	end

	local	tId	= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 or LuaFnIsCanDoScriptLogic( sceneId, tId ) ~= 1 then
		return 0
	end

	--(2)Í½µÜÊÇ·ñ´ïµ½40¼¶
	if LuaFnGetLevel( sceneId, tId ) < 40 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["lev"] )
		return 0
	end

	--(3)ÊÇ·ñÊÇÊ¦¸µ¹ØÏµ
	if LuaFnIsPrentice( sceneId, selfId, tId ) ~= 1 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["dad"] )
		return 0
	end

	--(4)Ë«·½±³°üÖÐ±ØÐëÓÐÒ»¸ö¿Õ¼ä
	LuaFnBeginAddItem( sceneId )
	LuaFnAddItem( sceneId, x806007_g_itm[1], 1 )
	if LuaFnEndAddItem( sceneId, selfId ) ~= 1 or LuaFnEndAddItem( sceneId, tId ) ~= 1 then
		x806007_MsgBox( sceneId, selfId, targetId, x806007_g_msg["itm"] )
		return 0
	end

	return tId
end

--**********************************
--½ÓÊÜ
--**********************************
function x806007_OnAccept( sceneId, selfId, targetId, tId )
	--Ê¦¸µ, Ê¦¸µ¶ÔÍ½µÜµÄÓÑºÃ¶È
	local	fp_st	= LuaFnGetFriendPoint( sceneId, selfId, tId )
	--Í½µÜ£¬Í½µÜ¶ÔÊ¦¸µµÄÓÑºÃ¶È
	local	fp_ts	= LuaFnGetFriendPoint( sceneId, tId, selfId )
	local	lv_t	= LuaFnGetLevel( sceneId, tId )

	--(1)Èç¹ûÍ½µÜµÈ¼¶ÊÇ[40£¬45]£¬²¢ÇÒË«·½ÓÑºÃ¶È>=300
	if lv_t >= 40 and lv_t <= 45 and fp_st >= 300 and fp_ts >=300 then
		--LuaFnAddItemListToHuman( sceneId, selfId )
		--LuaFnAddItemListToHuman( sceneId, tId )

		--Ê¦µÂµãÏà¹Ø
		--¸øÊ¦¸µÔö¼ÓÊ¦µÂ£¨X=0-1000000£© N=M£«MIN(X=500, Ê¦¸¸¶ÔÍ½µÜµÄÓÑºÃ¶È*T)
		--local	_M	= 10		--»ùÊý
		--local	_T	= 5			--¼ÓÈ¨Ö¸Êý
		--local	MoralPoint	--Ê¦µÂµãÊý
		--if fp_st * _T < 500 then
		--	MoralPoint= _M + fp_st * _T
		--else
		--	MoralPoint= _M + 500
		--end

		--Ê¦¸µ
		x806007_MsgBox( sceneId, selfId, targetId, "  Xu¤t sß thành công!" )
		Msg2Player( sceneId, selfId, "Xu¤t sß thành công!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, "Các hÕ ðã ðÕt ðßþc 1 cái "..x806007_g_itm[2].."", MSG2PLAYER_PARA )
		--Msg2Player( sceneId, selfId, "µÃµ½Ê¦µÂµãÊý"..MoralPoint.."¡£", MSG2PLAYER_PARA )

		--Í½µÜ
		x806007_MsgBox( sceneId, tId, targetId, "  Xu¤t sß thành công!" )
		Msg2Player( sceneId, tId, "Xu¤t sß thành công!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, tId, "Các hÕ ðã ðÕt ðßþc 1 cái "..x806007_g_itm[2].."", MSG2PLAYER_PARA )

		--ÀÛ»ýÊ¦µÂµãÊý
		--MoralPoint	= MoralPoint + LuaFnGetMasterMoralPoint( sceneId, selfId )
		--if MoralPoint > 1000000 then
		--	MoralPoint= 1000000
		--end
		--LuaFnSetMasterMoralPoint( sceneId, selfId, MoralPoint )
		
		local	title
		local MasterName	= LuaFnGetName( sceneId, selfId )
		--Ê¦¸µ³ÆºÅ
		--title	= x806007_GetTitle( MoralPoint )
		--if title ~= "" then
		--	AwardShiTuTitle( sceneId, selfId, title )
		--	DispatchAllTitle( sceneId, selfId )
		--	Msg2Player( sceneId, selfId, "»ñµÃ³ÆºÅ£º"..title.."¡£", MSG2PLAYER_PARA )
		--end

		--Í½µÜ³ÆºÅ
		title	= MasterName.."Ð° ð®"
		AwardShiTuTitle( sceneId, tId, title )
		DispatchAllTitle( sceneId, tId )
		Msg2Player( sceneId, tId, "Danh xßng ðÕt ðßþc: "..title..".", MSG2PLAYER_PARA )

	--(2)Èç¹ûÍ½µÜµÈ¼¶´óÓÚ45£¬»òÕßË«·½ÓÑºÃ¶ÈÐ¡ÓÚ300
	else
		local	msg	= "Do ðµ hæu häo chßa t¾i 300 ho£c ðÆng c¤p ð° ð® l¾n h½n c¤p 45, nên không có t£ng thß·ng"
		--Ê¦¸µ
		x806007_MsgBox( sceneId, selfId, targetId, "  Xu¤t sß thành công!"..msg )
		Msg2Player( sceneId, selfId, "Xu¤t sß thành công!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, selfId, msg, MSG2PLAYER_PARA )
	
		--Í½µÜ
		x806007_MsgBox( sceneId, tId, targetId, "  Xu¤t sß thành công!"..msg )
		Msg2Player( sceneId, tId, "Xu¤t sß thành công!", MSG2PLAYER_PARA )
		Msg2Player( sceneId, tId, msg, MSG2PLAYER_PARA )
	end

	--È¡ÏûÊ¦Í½¹ØÏµ
	LuaFnFinishAprentice( sceneId, tId, selfId )
end

--**********************************
--¸ù¾ÝÊ¦µÂµã£¬»ñÈ¡³ÆºÅ
--**********************************
function x806007_GetTitle( MoralPoint )
	--local	mp	= MoralPoint
	--if mp >= 100000 then
	--	return "ÌÒÀîÂúÌìÏÂ"
	--elseif mp >= 50000 then
	--	return "»åÈË²»¾ë"
	--elseif mp >= 10000 then
	--	return "Ò»´úÃûÊ¦"
	--elseif mp >= 5000 then
	--	return "ÂéÀ±½ÌÊ¦"
	--elseif mp >= 2000 then
	--	return "ÎªÈËÊ¦±í"
	--elseif mp >= 100 then
	--	return "³õÎªÈËÊ¦"
	--end

	return ""
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806007_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
