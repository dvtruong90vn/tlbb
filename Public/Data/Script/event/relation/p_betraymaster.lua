--ÅÑÊ¦ÈÎÎñ

--½Å±¾ºÅ
x806006_g_ScriptId	= 806006

--ÅÑÊ¦
x806006_g_BetrayMaster				= {}
x806006_g_BetrayMaster["Id"]	= 1005
x806006_g_BetrayMaster["Name"]= "Ta mu¯n bö quan h® sß-ğ°"	--modify by xindefeng

--ÌáÊ¾ĞÅÏ¢
x806006_g_msg				=
{
	["gld"]= "  Bö quan h® sß-ğ° c¥n nµp #{_EXCHG%d}.",
	["con"]= "  Phän sß phø s¨ b¸ kh¤u tr× #{_EXCHG%d}, ngß½i thñc sñ mu¯n phän sß?",
}

--ÅÑÊ¦£¬¿Û³ı½ğÇ®
x806006_g_Gold			= 25000

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x806006_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	str

	if key == -1 then
		str	= format( x806006_g_msg["con"], x806006_g_Gold )
		BeginEvent( sceneId )
			if LuaFnHaveMaster( sceneId, selfId ) == 0 then
				--¼ì²éÊÇ·ñÒÑ¾­³ö¹ıÊ¦
				if GetMissionFlag(sceneId, selfId, MF_ShiTu_ChuShi_Flag) == 1 then --±íÊ¾ÒÑ¾­³öÊ¦
					AddText( sceneId, "Các hÕ ğã xu¤t sß!" )
				else
					AddText( sceneId, "Ngß½i vçn chßa bái sß!" )
				end
			else
				AddText( sceneId, str )
				AddNumText( sceneId, x806006_g_ScriptId, "Xác nh§n", 6, 1 )
				AddNumText( sceneId, x806006_g_ScriptId, "Hüy bö", 6, 2 )	--add by xindefeng
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif key == 1 then	--È·¶¨ÓëÊ¦¸µ½â³ı¹ØÏµ
		if x806006_CheckAccept( sceneId, selfId, targetId ) > 0 then
			x806006_OnAccept( sceneId, selfId, targetId )
		end
	elseif key == 2 then	--È¡ÏûÓëÊ¦¸µ½â³ı¹ØÏµ--add by xindefeng
		--¹Ø±Õ½çÃæ
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x806006_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806006_g_ScriptId, x806006_g_BetrayMaster["Name"], 6, -1 )
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x806006_CheckAccept( sceneId, selfId, targetId )
	--¼ì²éÍ½µÜÉíÉÏ½ğÇ®
	--if LuaFnGetMoney( sceneId, selfId ) < x806006_g_Gold then
	--hzp 2008-12-9
	local nMoneyJZ = GetMoneyJZ(sceneId, selfId);
	local nMoneyJB = LuaFnGetMoney(sceneId, selfId);
	local nMoneySelf = nMoneyJZ + nMoneyJB;
	if nMoneySelf < x806006_g_Gold then
		str	= format( x806006_g_msg["gld"], x806006_g_Gold )
		x806006_MsgBox( sceneId, selfId, targetId, str )
		return 0
	end

	return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x806006_OnAccept( sceneId, selfId, targetId )
	local MasterGUID = LuaFnGetMasterGUID( sceneId, selfId )
	if MasterGUID == -1 then
		return
	end
	
	-- [ QUFEI 2007-08-16 16:53 UPDATE BugID 23624 ]
	if LuaFnHaveMaster( sceneId, selfId ) == 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ngß½i vçn chßa bái sß!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		
	local MasterName = LuaFnGetFriendName( sceneId, selfId, MasterGUID )
	local selfName = LuaFnGetName( sceneId, selfId )

	--¿Û³ıÉíÉÏ½ğÇ®
	--LuaFnCostMoney( sceneId, selfId, x806006_g_Gold )
	
	--hzp 2008-12-9
	local nMoneyJZ, nMoneyJB = LuaFnCostMoneyWithPriority( sceneId, selfId, x806006_g_Gold )
	--Èç¹ûÖ»¿Û³ı½ğ±Ò
	if nMoneyJZ == 0 then
		str	= format( "Bö quan h® sß-ğ° b¸ phÕt #{_MONEY%d}, ", x806006_g_Gold )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	--Èç¹ûÖ»¿Û³ı½»×Ó
	if nMoneyJB == 0 then
		str	= format( "Bö quan h® sß-ğ° b¸ phÕt #{_EXCHG%d}, ", x806006_g_Gold )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	--Èç¹û¼ÈÓĞ½»×ÓÓÖÓĞ½ğ±Ò
	if nMoneyJB ~= 0 and nMoneyJZ ~= 0 then
		str	= format( "Bö quan h® sß-ğ° b¸ phÕt #{_EXCHG%d}, ".."#{_MONEY%d}, ", nMoneyJZ, nMoneyJB )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	x806006_MsgBox( sceneId, selfId, targetId, "Ngß½i ğã bö quan h® sß ğ° v¾i"..MasterName.."!" )

	--·¢ÆÕÍ¨ÓÊ¼ş¸øÊ¦¸µ
	LuaFnSendSystemMail( sceneId, MasterName, "Ğ® tØ cüa các hÕ " .. selfName .. " không c¥n sñ dÕy d² cüa các hÕ næa nên ğã hüy bö quan h® sß ğ°." )
	--LuaFnSendNormalMail( sceneId, selfId, MasterName, "ÄãµÄÍ½µÜ" .. selfName .. "ÎŞÒâÓÚ¼ÌĞøÔÚÄãÃÅÏÂ£¬ÒÑÓëÄãÍÑÀëÁËÊ¦Í½¹ØÏµ¡£" )
	local MyGUID = LuaFnGetGUID( sceneId, selfId )
	--·¢¿ÉÖ´ĞĞÓÊ¼ş¸øÊ¦¸µ
	LuaFnSendScriptMail( sceneId, MasterName, MAIL_BETRAYMASTER, MyGUID, 0, 0 )

	--É¾³ıÍ½µÜ³ÆºÅ
	AwardShiTuTitle( sceneId, selfId, "" )
	DispatchAllTitle( sceneId, selfId )

	--×îÖÕÖ´ĞĞÅÑÊ¦
	LuaFnBetrayMaster( sceneId, selfId )
end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x806006_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
