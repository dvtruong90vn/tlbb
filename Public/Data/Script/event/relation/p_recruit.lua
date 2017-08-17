--ÊÕÍ½ÈÎÎñ

--½Å±¾ºÅ
x806008_g_ScriptId = 806008

--ÊÕÍ½
x806008_g_Recruit					= {}
x806008_g_Recruit["Id"]		= 1003
x806008_g_Recruit["Name"]	= "Nh§n ð° ð®"

--ÌáÊ¾ÐÅÏ¢
x806008_g_msg					= {}
x806008_g_msg["tem"]	= "  Khi bái sß c¥n có quan h® hæu häo v¾i ð° ð®, và c¥n 2 ngß¶i l§p ðµi t¾i tìm ta"
x806008_g_msg["ner"]	= "  Chï có 2 ngß¶i ð«u t¾i bên ta m¾i có th¬ bái sß"
x806008_g_msg["mlv"]	= "  ÐÆng c¤p cüa sß phø phäi l¾n h½n ð° ð® 10 c¤p"
x806008_g_msg["slv"]	= "  Ð° ð® c¤p 10 ðã b¡t ð¥u có th¬ bái sß"
x806008_g_msg["sib"]	= "  Có quan h® kªt bái không th¬ bái sß"
x806008_g_msg["mar"]	= "  Có quan h® phu thê không th¬ bái sß"
x806008_g_msg["frp"]	= "  Cùng là bÕn hæu m¾i có th¬ bái sß"
x806008_g_msg["msl"]	= "  Xin nâng ðÆng c¤p sß ðÑc cüa các hÕ, chï có nhân tài có ðÆng c¤p sß ðÑc l¾n h½n 1 m¾i ðßþc thu nh§n ð° ð®"
x806008_g_msg["rec_3"]	= "  Sau khi cßÞng chª phá giäi quan h® sß ð° 3 ngày m¾i có th¬ bái sß lÕi"
x806008_g_msg["rec_2"]	= "  Lßþng ð° ð® ðßþc thu nh§n ðã quá l¾n"
x806008_g_msg["rec_1"]	= "  Ngß¶i ch½i ðã có sß phø, không th¬ bái sß"
x806008_g_msg["ts"]	= "  Ðã là sß ð° thì còn c¥n bái sß làm gì næa?"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý ÇëÇóÊÕÍ½
--**********************************
function x806008_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	
	if key == -1 then
		local	tId	= x806008_CheckAccept( sceneId, selfId, targetId )
		if tId == 0 then
			return
		end

		local	MasterName		= LuaFnGetName( sceneId, selfId )
		local	ApprenticeName= LuaFnGetName( sceneId, tId )

		--Çë¶Ô·½È·ÈÏÊÇ·ñÔ¸Òâ°ÝÊ¦
		BeginEvent( sceneId )
				AddText( sceneId, "  Sau khi bái sß, giªt quái có th¬ ðÕt ðßþc10% kinh nghi®m gia thành. Nªu có sß phø cùng nh§p nhóm, ðÕt ðßþc20% kinh nghi®m gia thành" )
				AddText( sceneId, "  Sau khi bái sß, ð° ð® s¨ ðÕt ðßþc \""..MasterName.."Danh xßng \"Ð° ð® cüa" )
				AddText( sceneId, "  Ngß½i có thñc lòng mu¯n bái"..MasterName.."Làm sß phø?" )
				AddNumText( sceneId, x806008_g_ScriptId, "Xác nh§n", 6, 1 )
				AddNumText( sceneId, x806008_g_ScriptId, "Hüy bö", 8, 0 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, tId, targetId )

		BeginEvent( sceneId )
			AddText( sceneId, "Ch¶ ðþi "..ApprenticeName.." h°i ðáp" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		--BeginEvent( sceneId )
		--	AddText( sceneId, "ÄãÊÇ·ñÔ¸Òâ°Ý"..MasterName.."ÎªÊ¦£¿" )
		--EndEvent( sceneId )
		--DispatchMissionInfo( sceneId, tId, targetId, x806008_g_ScriptId, x806008_g_Recruit["Id"] )

	elseif key == 0 then
		x806008_OnCancel( sceneId, selfId, targetId )

	elseif key == 1 then
		x806008_OnConfirm( sceneId, selfId, targetId )
	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806008_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806008_g_ScriptId, x806008_g_Recruit["Name"], 6, -1 )
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x806008_CheckAccept( sceneId, selfId, targetId )
	--(1)×é¶ÓÖÐÖ»ÓÐÊ¦Í½Á½¸öÈË
	if LuaFnHasTeam( sceneId, selfId ) == 0 or LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["tem"] )
		return 0
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["ner"] )
		return 0
	end

	local tId	= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 or LuaFnIsCanDoScriptLogic( sceneId, tId ) ~= 1 then
		return 0
	end

	--(2)Í½µÜµÈ¼¶¡Ý10¼¶
	if LuaFnGetLevel( sceneId, tId ) < 10 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["slv"] )
		return 0
	end

	--µ±Íæ¼Òµ½45ºó²»ÄÜÔÙ°ÝÊ¦ÁË
	if LuaFnGetLevel( sceneId, tId ) > 44 then
		x806008_MsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_7}" )
		return 0
	end


	--(3)Ê¦¸µµÈ¼¶±ØÐë¡ÝÍ½µÜ10¼¶
	if LuaFnGetLevel( sceneId, selfId ) < ( LuaFnGetLevel( sceneId, tId ) + 10 ) then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["mlv"] )
		return 0
	end

	--(4)Ê¦µÂµÈ¼¶>0
	local MasterLevel = LuaFnGetmasterLevel( sceneId, selfId )
	if MasterLevel <= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["msl"] )
		return 0
	end

	--(5)ÊÇ·ñÊÇ½á°Ý
	if LuaFnIsBrother( sceneId, selfId, tId ) ~= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["sib"] )
		return 0
	end

	--(6)ÊÇ·ñÊÇ·òÆÞ
	if LuaFnIsSpouses( sceneId, selfId, tId ) ~= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["mar"] )
		return 0
	end

	--06.10.24£¬×îÐÂµÄ²ß»®ÎÄµµÒÑ¾­°Ñ´Ë²¿·ÖÄÚÈÝÈ¥µôÁË
	--(7)ÊÇ·ñÇ¿ÐÐ½â³ýÊ¦Í½¹ØÏµ²»Âú3Ìì
	--if LuaFnGetPrenticeBetrayTime( sceneId, selfId ) < (86400 * 3) then
	--	x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["rec_3"] )
	--	return 0
	--end

	--(8)¿´¿´µ±Ç°Í½µÜÊýÊÇ·ñÒÑ¾­×î´óÁË
	--¼ÆËã¿ÉÒÔÊÕµ½µÄÍ½µÜÊý
	local PrenticeNum = 2
	if MasterLevel == 1 then
		PrenticeNum = 2
	elseif MasterLevel == 2 then
		PrenticeNum = 3
	elseif MasterLevel == 3 then
		PrenticeNum = 5
	elseif MasterLevel == 4 then
		PrenticeNum = 8
	end
	if LuaFnGetPrenticeCount( sceneId, selfId ) >= PrenticeNum then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["rec_2"] )
		return 0
	end
	
	--(9)ÊÇ·ñÏÖÔÚÓÐÊ¦¸µ
	if LuaFnHaveMaster( sceneId, tId ) ~= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["rec_1"] )
		return 0
	end

	--(10)±ØÐëÊÇºÃÓÑ
	if LuaFnIsFriend( sceneId, selfId, tId ) ~= 1 or LuaFnIsFriend( sceneId, tId, selfId ) ~= 1 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["frp"] )
		return 0
	end
	
	--(11)ÊÇ·ñÒÑ¾­ÊÇÊ¦Í½¹ØÏµÁË
	if LuaFnIsMaster( sceneId, selfId, tId ) ~= 0 or LuaFnIsMaster( sceneId, tId, selfId ) ~= 0 then
		x806008_MsgBox( sceneId, selfId, targetId, x806008_g_msg["ts"] )
		return 0 
	end

	return tId
end

--**********************************
--½ÓÊÜ
--**********************************
function x806008_OnAccept( sceneId, selfId, targetId )
	x806008_OnConfirm( sceneId, selfId, targetId )
end

--**********************************
--Ìá½»
--**********************************
function x806008_OnSubmit( sceneId, selfId, targetId, tId )
	--Í½µÜÔö¼ÓÒ»¸ö³ÆºÅ
	local	MasterName	= LuaFnGetName( sceneId, tId )
	local	SelfName		= LuaFnGetName( sceneId, selfId )
	AwardShiTuTitle( sceneId, selfId, MasterName.." Ð® TØ" )
	DispatchAllTitle( sceneId, selfId )
	LuaFnAprentice( sceneId, selfId, tId )

	--Ê¦¸µ
	x806008_MsgBox( sceneId, tId, targetId, "  Chúc m×ng thu nh§n ð° ð® thành công" )
	Msg2Player( sceneId, tId, "Chúc m×ng thu nh§n ð° ð® thành công", MSG2PLAYER_PARA )
	Msg2Player( sceneId, tId, "Sß phø c¥n n² lñc dÕy bäo ð° nhi", MSG2PLAYER_PARA )
	str		= format( "Chúc m×ng các hÕ ðã nh§n %s làm ð° ð®. Sau khi nh§n xong, giªt quái, kinh nghi®m s¨ tång lên 5%, và ðÕt thêm c¯ng hiªn kinh nghi®m cüa ð° ð®, nhßng c¥n phäi ð±i l¤y 1 lßþng tr¸ giá thi®n ác nh¤t ð¸nh. Cùng ð° ð® nh§p nhóm, nªu phù hþp v¾i ði«u ki®n ðÕt tr¸ giá thi®n ác. Nhß v§y tr¸ giá thi®n ác s¨ tång 160% so v¾i ban ð¥u", SelfName )
	LuaFnSendSystemMail( sceneId, MasterName, str )
	--LuaFnSendNormalMail( sceneId, tId, MasterName, str )
	CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, tId, 66 )
	LuaFnSendSpecificImpactToUnit( sceneId, tId, tId, tId, 18, 1000 )

	--Í½µÜ
	x806008_MsgBox( sceneId, selfId, targetId, "  Chúc m×ng bái sß thành công!" )
	Msg2Player( sceneId, selfId, "Chúc m×ng bái sß thành công!", MSG2PLAYER_PARA )
	str		= format( "Chúc m×ng ngß½i ðã bái %s làm sß phø. Sau khi nh§n xong, giªt quái, kinh nghi®m s¨ tång lên 10%. Nªu cùng sß phø nh§p nhóm giªt quái s¨ tång lên 20%. Sau khi lên c¤p 40, nhæng t£ng thß·ng kinh nghi®m s¨ b¸ xóa bö", MasterName )
	LuaFnSendSystemMail( sceneId, SelfName, str )
	--LuaFnSendNormalMail( sceneId, selfId, SelfName, str )
	CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 1000 )
end

--**********************************
--Í¬Òâ°ÝÊ¦
--**********************************
function x806008_OnConfirm( sceneId, selfId, targetId )
	--tId ÊÇ¼´½«³ÉÎªÊ¦¸µµÄÍæ¼Ò
	local tId
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		return
	end
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		return
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		return
	end
	tId	= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )

	--Í½µÜ
	x806008_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðã ð°ng ý bái ð¯i phß½ng làm sß phø" )
	Msg2Player( sceneId, selfId, "Ngß½i ðã ð°ng ý bái ð¯i phß½ng làm sß phø", MSG2PLAYER_PARA )
	--Ê¦¸µ
	x806008_MsgBox( sceneId, tId, targetId, "  Ð¯i phß½ng ðã ð°ng ý bái ngß½i làm sß phø" )
	Msg2Player( sceneId, tId, "Ð¯i phß½ng ðã ð°ng ý bái ngß½i làm sß phø", MSG2PLAYER_PARA )

	if x806008_CheckAccept( sceneId, tId, targetId ) > 0 then
		x806008_OnSubmit( sceneId, selfId, targetId, tId )
	end
end

--**********************************
--¾Ü¾ø°ÝÊ¦
--**********************************
function x806008_OnCancel( sceneId, selfId, targetId )
	--tId ÊÇ¼´½«³ÉÎªÊ¦¸µµÄÍæ¼Ò
	local tId
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		return
	end
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		return
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		return
	end
	tId	= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )

	--Í½µÜ
	x806008_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðã cñ tuy®t bái ð¯i phß½ng làm sß phø" )
	Msg2Player( sceneId, selfId, "Ngß½i ðã cñ tuy®t bái ð¯i phß½ng làm sß phø", MSG2PLAYER_PARA )
	--Ê¦¸µ
	x806008_MsgBox( sceneId, tId, targetId, "  Ð¯i phß½ng ðã cñ tuy®t bái ngß½i làm sß phø" )
	Msg2Player( sceneId, tId, "Ð¯i phß½ng ðã cñ tuy®t bái ngß½i làm sß phø", MSG2PLAYER_PARA )
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806008_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÐÑÄ¿ÐÅÏ¢ÌáÊ¾
--**********************************
function x806008_MsgTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
