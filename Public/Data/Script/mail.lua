
--½Å±¾ÓÊ¼þµÄ½Å±¾ÎÄ¼þ

--½Å±¾ºÅ
x888889_g_scriptId = 888889


function x888889_ExecuteMail( sceneId, selfId, param0, param1, param2, param3 )

	--CallScriptFunction(DEBUGHOOK_SCRIPT, "DebugBegin", sceneId)

	if param0 == MAIL_REPUDIATE then
		x888889_Mail_Repudiate( sceneId, selfId, param0, param1, param2, param3 )
	elseif param0 == MAIL_BETRAYMASTER then
		x888889_Mail_BetrayMaster( sceneId, selfId, param0, param1, param2, param3 )
	elseif param0 == MAIL_EXPELPRENTICE then
		x888889_Mail_ExpelPrentice( sceneId, selfId, param0, param1, param2, param3 )
	elseif param0 == MAIL_UPDATE_ATTR then
		LuaFnUpdateAttr(sceneId, selfId, param0, param1, param2, param3)
	elseif param0 == MAIL_UNSWEAR then
		x888889_Mail_Unswear(sceneId, selfId, param0, param1, param2, param3)
	elseif param0 == MAIL_PRENTICE_EXP then
		x888889_Mail_PrenticeProfExp(sceneId, selfId, param0, param1, param2, param3)
	elseif param0 == MAIL_COMMISIONSHOP then
		x888889_Mail_CommisionShop( sceneId, selfId, param0, param1, param2, param3 )
	elseif param0 == MAIL_HUASHANJIANGLI then
		x888889_Mail_HuaShanJiangLi( sceneId, selfId, param0, param1, param2, param3 )
	elseif param0 == MAIL_SHITUPRIZE then
		x888889_Mail_ShiTuPrize( sceneId, selfId, param0, param1, param2, param3 )
	elseif param0 == MAIL_SHITUPRIZE_GOODBAD then
		x888889_Mail_Prize_ExpAndGoodBad( sceneId, selfId, param0, param1, param2, param3 )
	elseif param0 == MIAL_SHITU_CHUSHI then
		x888889_Mail_ShiTuChuShi( sceneId, selfId, param0, param1, param2, param3 )
	elseif param0 == MAIL_FINDFRIEND_DELINFO then
		x888889_FindFriendDelInfo( sceneId, selfId, param0, param1, param2, param3 )
	end


	--CallScriptFunction(DEBUGHOOK_SCRIPT, "DebugEnd", sceneId)

end


--µã»÷NPCÃ»ÓÐÇëÇóÌØÊâÀàÐÍ¿ÉÖ´ÐÐÓÊ¼þÌáÊ¾ÐÅÏ¢
--Ã»ÕÒµ½
function x888889_NoScriptTypeMail( sceneId, selfId, scripttype)

	if scripttype == MAIL_COMMISIONSHOP then
		x888889_NotifyFailBox( sceneId, selfId, -1, "Xin l²i, các hÕ không có ti«n ho£c Nguyên Bäo có th¬ thu lÕi." )
	elseif scripttype == MAIL_SHITUPRIZE then
		x888889_NotifyFailBox( sceneId, selfId, -1, "Ngß½i không có ph¥n thß·ng ð¬ lînh nh§n, mau giúp ð° ð® cüa ngß½i thång c¤p ði!" )
	elseif scripttype == MAIL_HUASHANJIANGLI then
		x888889_NotifySystemMsg( sceneId, selfId, "#{HSLJ20080221_01}")
	end
end

--ÕÒµ½ÁË
function x888889_FindScriptTypeMail( sceneId, selfId, scripttype)

	if scripttype == MAIL_COMMISIONSHOP then
		x888889_NotifyFailBox( sceneId, selfId, -1, "S¯ ti«n và Nguyên Bäo cüa các hÕ ðã thu thành công, vui lòng ki¬m tra bßu ki®n." )
	elseif scripttype == MAIL_SHITUPRIZE then
		--x888889_NotifyFailBox( sceneId, selfId, -1, "    ÄúµÄÃûÊ¦³é½±Ïà¹ØµÄ½±Æ·ÒÑ¾­³É¹¦ÊÕÈ¡£¬Çë²éÊÕ¡£" )
	elseif scripttype == MAIL_HUASHANJIANGLI then
		x888889_NotifySystemMsg( sceneId, selfId, "#{HSLJ20080221_02}")
	end
end

--ÊÂ¼þÁÐ±íÌáÊ¾
function x888889_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--ÉèÖÃÍ½µÜ³öÊ¦
function x888889_Mail_ShiTuChuShi( sceneId, selfId, command, PrenticeGuid, zero, zero )
	
	--¿ª³ýÍ½µÜ
	LuaFnExpelPrentice( sceneId, selfId, PrenticeGuid )
	--LuaFnShiTuChuShi( sceneId, selfId,PrenticeGuid )
end



--Í½µÜ¸øÊ¦¸µ¾­ÑéºÍÉÆ¶ñÖµ
function x888889_Mail_Prize_ExpAndGoodBad( sceneId, selfId, command, PrenticeGuid, Exps, GoodBad )
	--PrenticeGuid¸øÁËselfId£¬ExpsÕâÃ´¶à¾­Ñé
	if Exps > 0 then
		LuaAddPrenticeProExp( sceneId, selfId, PrenticeGuid, Exps )
	end
	
	--¸øÊ¦¸µÌí¼ÓÉÆ¶ñÖµ
	if GoodBad > 0 then
		local gb_value = LuaFnGetHumanGoodBadValue( sceneId, selfId )
		LuaFnSetHumanGoodBadValue( sceneId, selfId, gb_value + GoodBad )
	end
end

--Í½µÜ¸øÊ¦¸µ¾­Ñé
function x888889_Mail_PrenticeProfExp( sceneId, selfId, command, PrenticeGuid, Exps, zero )
	--PrenticeGuid¸øÁËselfId£¬ExpsÕâÃ´¶à¾­Ñé
	if Exps > 0 then
		LuaAddPrenticeProExp( sceneId, selfId, PrenticeGuid, Exps )
	end
end

function x888889_Mail_Unswear( sceneId, selfId, command, betrayerGuid, alldismiss, zero )

	--(1) ½µµÍºÃÓÑ¶È
	local FriendPoint = LuaFnGetFriendPointByGUID( sceneId, selfId, betrayerGuid )
	if FriendPoint > 500 then
		LuaFnSetFriendPointByGUID( sceneId, selfId, betrayerGuid, 500 )
	end

	--(2) È¡Ïû½á°Ý
	LuaFnUnswear( sceneId, selfId, betrayerGuid )

	--(3) Èç¹ûÈ«²¿½âÉ¢£¬ÔòÉ¾³ý³ÆºÅ
	if tonumber(alldismiss) == 1 then
		AwardJieBaiTitle( sceneId, selfId, "" )
		DispatchAllTitle( sceneId, selfId )
	end
end

function x888889_Mail_Repudiate( sceneId, selfId, param0, param1, param2, param3 )
	if not param1 or param1 == -1 then
		return
	end

	if param1 < 0 then
		param1 = 4294967296 + param1
	end

	SpouseGUID = LuaFnGetSpouseGUID( sceneId, selfId )

	-- Èç¹û²»ÊÇÏàÍ¬µÄ GUID Ôò²»½øÐÐÇ¿ÖÆÀë»é´¦Àí
	if param1 ~= 0 and param1 ~= SpouseGUID then
		return
	end

	--É¾³ý³ÆºÅ£»
	LuaFnAwardSpouseTitle( sceneId, selfId, "" )
	DispatchAllTitle( sceneId, selfId )

	--É¾³ý»éÒö¼¼ÄÜ
	Skills = {260, 261, 262, 263, 264, 265, 266, 267, 268 }
	for i, skillId in Skills do
		DelSkill( sceneId, selfId, skillId )
	end
	
	NewSkill = { 250, 251, 252, 253, 254, 255, 256, 257, 258, 259 }
	for _, skillId in NewSkill do
		DelSkill( sceneId, selfId, skillId )
	end
	
	--É¾³ýÐÎÓ°²»Àë¼¼ÄÜ
	for _, skillId in { 269,270,271,272,273 } do
		DelSkill( sceneId, selfId, skillId )
	end

	--Ôö¼Ó½ðÇ®N=100000×öÎª²¹³¥£»
--LuaFnAddMoney( sceneId, selfId, 100000 )

	--Ôö¼ÓÒ»¸öÎïÆ·ÏàË¼ÌÇ×öÎª²¹³¥£»£¨Èç¹û¿Õ¼ä¹»£¬²»¹»ËãÁË£©
--LuaFnBeginAddItem( sceneId )
--LuaFnAddItem( sceneId, 30002002, 1 )
--ret = LuaFnEndAddItem( sceneId, selfId )
--if ret == 1 then
--	LuaFnAddItemListToHuman( sceneId, selfId )
--end

	--ºÍ¶Ô·½µÄºÃÓÑ¶ÈÉèÖÃ³ÉN=X£¨10£©
	LuaFnSetFriendPointByGUID( sceneId, selfId, SpouseGUID, 10 )

	CallScriptFunction(250036, "OnAbandon", sceneId, selfId);
	CallScriptFunction(250037, "OnAbandon", sceneId, selfId);

	--É¾³ý½á»é×´Ì¬£»
	LuaFnDivorce( sceneId, selfId )

end

function x888889_Mail_BetrayMaster( sceneId, selfId, param0, param1, param2, param3 )
	--¿ª³ýÍ½µÜ
	LuaFnExpelPrentice( sceneId, selfId, param1 )
end

function x888889_Mail_ExpelPrentice( sceneId, selfId, param0, param1, param2, param3 )
	--É¾³ýÍ½µÜ³ÆºÅ
	AwardShiTuTitle( sceneId, selfId, "" )
	DispatchAllTitle( sceneId, selfId )

	--Àë¿ªÊ¦ÃÅ
	LuaFnBetrayMaster( sceneId, selfId )
end

function x888889_Mail_CommisionShop( sceneId, selfId, param0, param1, param2, param3 )

	--CSOP1 ~ CSOP8
	--1.¼ÄÊÛÔª±¦     -- Ôª±¦¼õÉÙ
	--2.¹ºÂòÔª±¦     -- Ôª±¦Ôö¼Ó£¬½ðÇ®¼õÉÙ
	--3.¼ÄÊÛÔª±¦Âô³ö -- ½ðÇ®Ôö¼Ó
	--4.¼ÄÊÛÔª±¦ÍË»¹ -- Ôª±¦Ôö¼Ó
	--5.¼ÄÊÛ½ðÇ®     -- ½ðÇ®¼õÉÙ
	--6.¹ºÂò½ðÇ®     -- Ôª±¦¼õÉÙ£¬½ðÇ®Ôö¼Ó
	--7.¼ÄÊÛ½ðÇ®Âô³ö -- Ôª±¦Ôö¼Ó
	--8.¼ÄÊÛ½ðÇ®ÍË»¹ -- ½ðÇ®Ôö¼Ó	

	if param1 == 1 then									-- ÍË»Ø¼ÄÊÛ½ðÇ®
		-- param2 ÊÇÐòÁÐºÅ
		-- param3 ÊÇÊýÁ¿
		local ret = CSAddBankMoney( sceneId, selfId, param3, "CSOP8" )
		local strAppend = ""
		if ret == 0 then
			return
		else
			if ret == 1 then
				strAppend = ""
			elseif ret == 2 then
				strAppend = "#{Mail_TooMuchMoney}"
			end
		end

		local mailStr = format( "#{_MONEY%d} mà các hÕ gØi bán ðã ðªn kì hÕn nhßng vçn không bán ðßþc, s¯ ti«n ðó ðã ðßþc hoàn trä vào trong ngân hàng cüa các hÕ. %s", param3, strAppend )
		LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		local logStr = format( "Recvback type:1 sn:%d value:%d", param2, param3 )
		LogCommisionDeal( sceneId, selfId, logStr )
	elseif param1 == 0 then								-- ÍË»Ø¼ÄÊÛÔª±¦
		-- param2 ÊÇÐòÁÐºÅ
		-- param3 ÊÇÊýÁ¿
		CSAddYuanbao( sceneId, selfId, param3, "CSOP4" )
		local mailStr = format( "%d ði¬m Nguyên Bäo mà các hÕ gØi bán ðã ðªn kì hÕn nhßng vçn bán không ðßþc, Thß½ng ti®m ðã hoàn trä ði¬m s¯ ðó cho các hÕ.", param3 )
		LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		local logStr = format( "Recvback type:0 sn:%d value:%d", param2, param3 )
		LogCommisionDeal( sceneId, selfId, logStr )
	elseif param1 == 2 then								-- ·¢ËÍ¼ÄÊÛ½ðÇ®
		-- param2 ÊÇÐòÁÐºÅ
		-- param3 ÊÇÊýÁ¿
		local ret = CSAddBankMoney( sceneId, selfId, param3, "CSOP3" )
		local strAppend = ""
		if ret == 0 then
			return
		else
			if ret == 1 then
				strAppend = ""
			elseif ret == 2 then
				strAppend = "#{Mail_TooMuchMoney}"
			end
		end

		local mailStr = format( "S¯ Nguyên Bäo mà các hÕ gØi bán ðã bán thành công, các hÕ thu ðßþc#{_MONEY%d} và ðã nh§p vào vào ngân hàng cüa các hÕ. %s", param3, strAppend )
		LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		local logStr = format( "Gain type:1 sn:%d value:%d", param2, param3 )
		LogCommisionDeal( sceneId, selfId, logStr )
	elseif param1 == 3 then								-- ·¢ËÍ¼ÄÊÛÔª±¦
		-- param2 ÊÇÐòÁÐºÅ
		-- param3 ÊÇÊýÁ¿
		CSAddYuanbao( sceneId, selfId, param3, "CSOP7" )
		local mailStr = format( "S¯ ti«n mà các hÕ gØi bán ðã bán thành công, các hÕ thu ðßþc %d ði¬m Nguyên Bäo và ðã chuy¬n trñc tiªp vào nhân v§t cüa các hÕ.", param3 )
		LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		local logStr = format( "Gain type:0 sn:%d value:%d", param2, param3 )
		LogCommisionDeal( sceneId, selfId, logStr )
	end
	
	--µ÷ÕûÈËÎïµÄ¼ÄÊÛÊýÁ¿
	DecCommisionNum(sceneId,selfId)
end

function x888889_Mail_HuaShanJiangLi( sceneId, selfId, param0, param1, param2, param3 )
	-- PrintStr(GetName(sceneId, selfId))
	-- PrintNum(param1)
	-- PrintNum(param2)
	-- PrintNum(param3)
	local strLogCheck = ""
	if param2 == 1 then
		if param3 == 1 then			
			-- PrintStr(GetName(sceneId, selfId))
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 0 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 0 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 1 )
			SetMissionData( sceneId, selfId, MD_HUASHANJIANGLI_TIME, param1 )
			
			strLogCheck = format(	"HuaShanLunJian_MissionData    FULL_NO.1=(id=%X, Param01=%d, Param02=%d, Param03=%d, Param04=%d)", LuaFnGetGUID(sceneId, selfId), 0, 0, 1, param1 )
			LuaFnLogCheck(strLogCheck)
			-- local	mailStr = "¹§Ï²Äú»ñµÃ±¾½ì»ªÉ½ÂÛ½£×Ü»ý·ÖµÚÒ»Ãû!Äú¿ÉÒÔÕÒ»ªÉ½ÂÛ½£Ö÷³ÖÈËËÕ½£Áë£¨ËÕÖÝ193£¬138£©ÁìÈ¡·áºñ½±Àø!×¢Òâ£ºÁìÈ¡Ê±¼äÎª1¸öÐ¡Ê±£¬ÄúÈç¹û³¬¹ý1¸öÐ¡Ê±ÈÔÃ»ÓÐÁìÈ¡½±ÀøµÄ»°¾ÍÖ»ÄÜÏÂ´ÎÔÙ¼ÓÓÍ¿©!"
			-- LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		elseif param3 == 2 then
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 0 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 1 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 0 )
			SetMissionData( sceneId, selfId, MD_HUASHANJIANGLI_TIME, param1 )
			
			strLogCheck = format(	"HuaShanLunJian_MissionData    FULL_NO.2=(id=%X, Param01=%d, Param02=%d, Param03=%d, Param04=%d)", LuaFnGetGUID(sceneId, selfId), 0, 1, 0, param1 )
			LuaFnLogCheck(strLogCheck)
			-- local	mailStr = "¹§Ï²Äú»ñµÃ±¾½ì»ªÉ½ÂÛ½£×Ü»ý·ÖµÚ¶þÃû!Äú¿ÉÒÔÕÒ»ªÉ½ÂÛ½£Ö÷³ÖÈËËÕ½£Áë£¨ËÕÖÝ193£¬138£©ÁìÈ¡·áºñ½±Àø!×¢Òâ£ºÁìÈ¡Ê±¼äÎª1¸öÐ¡Ê±£¬ÄúÈç¹û³¬¹ý1¸öÐ¡Ê±ÈÔÃ»ÓÐÁìÈ¡½±ÀøµÄ»°¾ÍÖ»ÄÜÏÂ´ÎÔÙ¼ÓÓÍ¿©!"
			-- LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		elseif param3 == 3 then
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 0 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 1 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 1 )
			SetMissionData( sceneId, selfId, MD_HUASHANJIANGLI_TIME, param1 )
			
			strLogCheck = format(	"HuaShanLunJian_MissionData    FULL_NO.3=(id=%X, Param01=%d, Param02=%d, Param03=%d, Param04=%d)", LuaFnGetGUID(sceneId, selfId), 0, 1, 1, param1 )
			LuaFnLogCheck(strLogCheck)
			-- local	mailStr = "¹§Ï²Äú»ñµÃ±¾½ì»ªÉ½ÂÛ½£×Ü»ý·ÖµÚÈýÃû!Äú¿ÉÒÔÕÒ»ªÉ½ÂÛ½£Ö÷³ÖÈËËÕ½£Áë£¨ËÕÖÝ193£¬138£©ÁìÈ¡·áºñ½±Àø!×¢Òâ£ºÁìÈ¡Ê±¼äÎª1¸öÐ¡Ê±£¬ÄúÈç¹û³¬¹ý1¸öÐ¡Ê±ÈÔÃ»ÓÐÁìÈ¡½±ÀøµÄ»°¾ÍÖ»ÄÜÏÂ´ÎÔÙ¼ÓÓÍ¿©!"
			-- LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		end
	elseif param2 == 2 then
		if param3 == 1 then
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 1 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 0 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 0 )
			SetMissionData( sceneId, selfId, MD_HUASHANJIANGLI_TIME, param1 )
			
			strLogCheck = format(	"HuaShanLunJian_MissionData    MenPai_NO.1=(id=%X, Param01=%d, Param02=%d, Param03=%d, Param04=%d)", LuaFnGetGUID(sceneId, selfId), 1, 0, 0, param1 )
			LuaFnLogCheck(strLogCheck)
			-- local	mailStr = "¹§Ï²Äú»ñµÃ±¾½ì»ªÉ½ÂÛ½£±¾ÃÅÅÉµÚÒ»Ãû! Äú¿ÉÒÔÕÒ»ªÉ½ÂÛ½£Ö÷³ÖÈËËÕ½£Áë£¨ËÕÖÝ193£¬138£©ÁìÈ¡·áºñ½±Àø! ×¢Òâ£ºÁìÈ¡Ê±¼äÎª1¸öÐ¡Ê±£¬ÄúÈç¹û³¬¹ý1¸öÐ¡Ê±ÈÔÃ»ÓÐÁìÈ¡½±ÀøµÄ»°¾ÍÖ»ÄÜÏÂ´ÎÔÙ¼ÓÓÍ¿©!"
			-- LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		elseif param3 == 2 then
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 1 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 0 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 1 )
			SetMissionData( sceneId, selfId, MD_HUASHANJIANGLI_TIME, param1 )
			
			strLogCheck = format(	"HuaShanLunJian_MissionData    MenPai_NO.2=(id=%X, Param01=%d, Param02=%d, Param03=%d, Param04=%d)", LuaFnGetGUID(sceneId, selfId), 1, 0, 1, param1 )
			LuaFnLogCheck(strLogCheck)
			-- local	mailStr = "¹§Ï²Äú»ñµÃ±¾½ì»ªÉ½ÂÛ½£±¾ÃÅÅÉµÚ¶þÃû! Äú¿ÉÒÔÕÒ»ªÉ½ÂÛ½£Ö÷³ÖÈËËÕ½£Áë£¨ËÕÖÝ193£¬138£©ÁìÈ¡·áºñ½±Àø! ×¢Òâ£ºÁìÈ¡Ê±¼äÎª1¸öÐ¡Ê±£¬ÄúÈç¹û³¬¹ý1¸öÐ¡Ê±ÈÔÃ»ÓÐÁìÈ¡½±ÀøµÄ»°¾ÍÖ»ÄÜÏÂ´ÎÔÙ¼ÓÓÍ¿©!"
			-- LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		elseif param3 == 3 then
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 1 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 1 )
			SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 0 )
			SetMissionData( sceneId, selfId, MD_HUASHANJIANGLI_TIME, param1 )
			
			strLogCheck = format(	"HuaShanLunJian_MissionData    MenPai_NO.3=(id=%X, Param01=%d, Param02=%d, Param03=%d, Param04=%d)", LuaFnGetGUID(sceneId, selfId), 1, 1, 0, param1 )
			LuaFnLogCheck(strLogCheck)
			-- local	mailStr = "¹§Ï²Äú»ñµÃ±¾½ì»ªÉ½ÂÛ½£±¾ÃÅÅÉµÚÈýÃû! Äú¿ÉÒÔÕÒ»ªÉ½ÂÛ½£Ö÷³ÖÈËËÕ½£Áë£¨ËÕÖÝ193£¬138£©ÁìÈ¡·áºñ½±Àø! ×¢Òâ£ºÁìÈ¡Ê±¼äÎª1¸öÐ¡Ê±£¬ÄúÈç¹û³¬¹ý1¸öÐ¡Ê±ÈÔÃ»ÓÐÁìÈ¡½±ÀøµÄ»°¾ÍÖ»ÄÜÏÂ´ÎÔÙ¼ÓÓÍ¿©!"
			-- LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), mailStr )
		end	
	end
end

function x888889_Mail_ShiTuPrize( sceneId, selfId, param0, param1, param2, param3 )
	local plevel = param1
	--9999,¸ßÁ½Î»Îª50¼¶µÄÁìÈ¡´ÎÊý,µÍÁ½Î»99Îª40¼¶µÄÁìÈ¡´ÎÊý
	local ct = GetMissionData(sceneId, selfId, MD_SHITU_PRIZE_COUNT)
	local c40 = mod(ct,100)
	local c50 = floor(ct/100)

	--ÁìÈ¡´ÎÊý¼ì²é
	if 40 == plevel then
		if 10 < c40+1 then
			x888889_NotifySystemMsg(sceneId,selfId,"Lînh thß·ng danh xßng th¤t bÕi!")
			return
		end
	elseif 50 == plevel then
		if 10 < c50+1 then
			x888889_NotifySystemMsg(sceneId,selfId,"Lînh thß·ng danh xßng cao c¤p th¤t bÕn!")
			return
		end
	end

	--ÁìÈ¡½±Àø
	local itemId = param2
	local itemNum = param3
	
	LuaFnBeginAddItem( sceneId )
		LuaFnAddItem( sceneId, itemId, itemNum)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--Ìí¼ÓÎïÆ·
		AddItemListToHuman(sceneId,selfId)
		x888889_NotifySystemMsg(sceneId,selfId,"Nh§n ph¥n thß·ng thành công!")
		--ÔÚ³é½±ÈÕÖ¾ÖÐ¼ÇÂ¼....
		--ÈÕÖ¾±àºÅ£¬Íæ¼ÒGUID£¬Íæ¼ÒÃû×Ö£¬½±È¯ÎïÆ·ID
		local logstr = format("PL:%d,0x%X,%s,%d",
									 				PRIZE_LOG_XINSHOUSHITU,
									 				LuaFnGetGUID(sceneId,selfId),
									 				GetName(sceneId,selfId),
									 				itemId)
		LuaFnLogPrize(logstr)
	else
		x888889_NotifySystemMsg(sceneId,selfId,"Ô nhi®m vø ðÕo cø không ðü, lînh th¤t bÕi!")
		return
	end
	
	--ÁìÈ¡½±ÀøºóÐÞ¸ÄÁìÈ¡´ÎÊý
	if 40 == plevel then
		SetMissionData( sceneId, selfId, MD_SHITU_PRIZE_COUNT, ct+1)
	elseif 50 == plevel then
		SetMissionData( sceneId, selfId, MD_SHITU_PRIZE_COUNT, (c50+1)*100+c40)
	end
end

function x888889_NotifySystemMsg(sceneId,selfId,tip)
	BeginEvent(sceneId)
		AddText(sceneId,tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end


function x888889_FindFriendDelInfo( sceneId, selfId, param0, param1, param2, param3 )
	local nADType = param1
	local nDelInfoTime = param2
	
	if nADType > 4 or nADType < 1 then
		return
	end
	
	if nADType == 1 then
		SetMissionData(sceneId, selfId, MD_FINDFRIENDAD_DELTIME_MARRY, nDelInfoTime)
	elseif nADType == 2 then
		SetMissionData(sceneId, selfId, MD_FINDFRIENDAD_DELTIME_GUILD, nDelInfoTime)
	elseif nADType == 3 then
		SetMissionData(sceneId, selfId, MD_FINDFRIENDAD_DELTIME_TEACHER, nDelInfoTime)
	elseif nADType == 4 then
		SetMissionData(sceneId, selfId, MD_FINDFRIENDAD_DELTIME_BROTHER, nDelInfoTime)
	end
	
	Audit_FindFriendAD_DelInfo(sceneId, selfId, nADType)

end
