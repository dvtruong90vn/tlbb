--»î¶¯
--±¦±¦Ë«ÏìÅÚ

--½Å±¾ºÅ
x808075_g_ScriptId = 808075


x808075_g_StartDayTime = 8323		--»î¶¯¿ªÊ¼Ê±¼ä 2008-03-06
x808075_g_EndDayTime = 8364			--»î¶¯½áÊøÊ±¼ä 2008-04-20

x808075_g_MailStartDayTime = 8323		--·¢ËÍÓÊ¼þ¿ªÊ¼Ê±¼ä 2008-03-06
x808075_g_MailEndDayTime = 8364			--·¢ËÍÓÊ¼þ½áÊøÊ±¼ä 2008-04-07

--ÎÄ×ÖÎïÆ·toÕ ðµ ÎïÆ·±í....
x808075_g_WordItemTbl = {

	30505184,	--2008
	30505185,	--³©
	30505186,	--Íæ
	30505187,	--Ìì
	30505188,	--Áú
	30505189,	--°Ë
	30505190,	--²¿

}

--Ñ¼×ìÊÞÏîÈ¦....
x808075_g_DuckItemId = 30505179

--Ã«Â¿Áåîõ....
x808075_g_DonkeyItemId5 = 30505180
x808075_g_DonkeyItemId45 = 30505181
x808075_g_DonkeyItemId55 = 30505182
x808075_g_DonkeyItemId65 = 30505183

--Ë«ÏìÅÚbuff....
x808075_g_SXPBuffId = 5928

--Kinh nghi®m±í....
x808075_g_ExpTbl = {

	[10]=20923,[11]=22099,[12]=23242,[13]=24393,[14]=25591,
	[15]=26756,[16]=27929,[17]=29148,[18]=30335,[19]=31570,
	[20]=64251,[21]=67089,[22]=70022,[23]=72972,[24]=75940,
	[25]=78848,[26]=81851,[27]=84871,[28]=87910,[29]=90886,
	[30]=151380,[31]=156360,[32]=161368,[33]=166276,[34]=171341,
	[35]=176434,[36]=181556,[37]=186575,[38]=191753,[39]=196959,
	[40]=294895,[41]=302565,[42]=310144,[43]=317896,[44]=325691,
	[45]=333392,[46]=341268,[47]=349186,[48]=357010,[49]=365011,
	[50]=373053,[51]=380999,[52]=389123,[53]=397289,[54]=405496,
	[55]=413606,[56]=421896,[57]=430227,[58]=438459,[59]=446873,
	[60]=455327,[61]=463683,[62]=472220,[63]=480798,[64]=489276,
	[65]=497937,[66]=506640,[67]=515240,[68]=524025,[69]=532851,
	[70]=541719,[71]=550483,[72]=559433,[73]=568425,[74]=577311,
	[75]=586385,[76]=595501,[77]=604510,[78]=613708,[79]=622947,
	[80]=632079,[81]=641400,[82]=650763,[83]=660168,[84]=669463,
	[85]=678950,[86]=688478,[87]=697897,[88]=700000,[89]=700000,
	[90]=700000,[91]=700000,[92]=700000,[93]=700000,[94]=700000,
	[95]=700000,[96]=700000,[97]=700000,[98]=700000,[99]=700000,
	[100]=700000,[101]=700000,[102]=700000,[103]=700000,[104]=700000,
	[105]=700000,[106]=700000,[107]=700000,[108]=700000,[109]=700000,
	[110]=700000,[111]=700000,[112]=700000,[113]=700000,[114]=700000,
	[115]=700000,[116]=700000,[117]=700000,[118]=700000,[119]=700000,
	[120]=700000,[121]=700000,[122]=700000,[123]=700000,[124]=700000,
	[125]=700000,[126]=700000,[127]=700000,[128]=700000,[129]=700000,
	[130]=700000,[131]=700000,[132]=700000,[133]=700000,[134]=700000,
	[135]=700000,[136]=700000,[137]=700000,[138]=700000,[139]=700000,
	[140]=700000,[141]=700000,[142]=700000,[143]=700000,[144]=700000,
	[145]=700000,[146]=700000,[147]=700000,[148]=700000,[149]=700000,
	[150]=700000
	
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808075_OnDefaultEvent( sceneId, selfId, targetId )

	if 1 ~= x808075_CheckRightTime() then
		return
	end

	local NumText = GetNumText()

	if NumText == 0	then

		BeginEvent(sceneId)
			AddText(sceneId,"#{BBSXP_20080229_02}")
			AddNumText( sceneId, x808075_g_ScriptId, "Ta mu¯n tham gia nh§n thß·ng", 6, 2 )
			AddNumText( sceneId, x808075_g_ScriptId, "Ta mu¯n ð±i sß¾ng ngoÕn Thiên Long BUFF", 6, 3 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 1	then

		BeginEvent(sceneId)
			AddText(sceneId,"#{BBSXP_20080229_11}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 2	then

		--±¦±¦Ë«ÏìÅÚ³é½±....
		x808075_SXPChouJiang( sceneId, selfId, targetId )

	elseif NumText == 3	then

		--»»buffÈ·ÈÏ....
		BeginEvent(sceneId)
			AddText(sceneId,"#{BBSXP_20080229_09}")
			AddNumText( sceneId, x808075_g_ScriptId, "Tiªn hành ð±i", 6, 4 )
			AddNumText( sceneId, x808075_g_ScriptId, "Chßa chu¦n b¸ t¯t", 6, 5 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 4	then

		--»»buff....
		x808075_SXPGiveBuff( sceneId, selfId, targetId )

	elseif NumText == 5	then

		--¹Ø±ÕNPC¶Ô»°´°¿Ú....
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)

	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808075_OnEnumerate( sceneId, selfId, targetId )

	if 1 == x808075_CheckRightTime() then
		AddNumText(sceneId, x808075_g_ScriptId, "HoÕt ðµng Bäo bäo Song Hß·ng Pháo", 1, 0 )
		AddNumText(sceneId, x808075_g_ScriptId, "V« hoÕt ðµng Bäo bäo Song Hß·ng Pháo", 13, 1 )
	end

end

--**********************************
--¼ì²âµ±Ç°Ðúng·ñÐúng»î¶¯Ê±¼ä....
--**********************************
function x808075_CheckRightTime()

	local curDayTime = GetDayTime()
	if curDayTime >= x808075_g_StartDayTime and curDayTime <= x808075_g_EndDayTime then
		return 1
	else
		return 0
	end

end

--**********************************
--±¦±¦Ë«ÏìÅÚ³é½±....Ñ¼×ìÊÞ..Ã«Â¿..Kinh nghi®m....
--**********************************
function x808075_SXPChouJiang( sceneId, selfId, targetId )

	--Ðúng·ñ´ïµ½10c¤p....
	if GetLevel( sceneId, selfId ) < 10 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{BBSXP_20080229_03}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--Ã¿ÌìÖ»ÄÜ³é10´Î....
	local lastTime = GetMissionData( sceneId, selfId, MD_SHUANGXIANGPAO_LASTTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	if lastDayCount >= 10 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{BBSXP_20080229_04}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--±³°üÐúng·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then

		BeginEvent( sceneId )
			AddText( sceneId, "#{BBSXP_20080229_05}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		BeginEvent( sceneId )
			AddText( sceneId, "#{BBSXP_20080229_06}" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return

	end

	--Ðúng·ñ¼¯ÆëÁËËùÓÐtoÕ ðµ ×Ö....
	if 0 == x808075_CheckHaveAllWord( sceneId, selfId, targetId ) then
		BeginEvent( sceneId )
			AddText( sceneId, "#{BBSXP_20080229_08}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--¿Û³ýÍæ¼ÒtoÕ ðµ ×Ö....
	if 0 == x808075_DelAllWord( sceneId, selfId, targetId ) then
		BeginEvent( sceneId )
			AddText( sceneId, "Kh¤u tr× v§t ph¦m th¤t bÕi!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--ËùÓÐÌõ¼þThöa mãn....¸øÍæ¼Ò½±Æ·....
	local giftName = x808075_SXPGiveGift( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "#{BBSXP_20080229_07}#Y"..giftName.."#W#{BBSXP_20080229_16}" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	--¸øbuff....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x808075_g_SXPBuffId, 0)

	--¼ÇÂ¼½ñÌì³é¹ýmµt ´ÎÁË....
	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_SHUANGXIANGPAO_LASTTIME, lastTime )


end

--**********************************
--¸øÍæ¼ÒË«ÏìÅÚ½±Æ·....
--**********************************
function x808075_SXPGiveGift( sceneId, selfId, targetId )

	local CurLevel = GetLevel( sceneId, selfId )
	local msg = "@*;SrvMsg;SCA:".."#{BBSXP_20080229_12}#{_INFOUSR%s}#{BBSXP_20080229_13}#{_INFOMSG%s}#{BBSXP_20080229_14}"
	local msg2 = "@*;SrvMsg;SCA:".."#PTÕi #GHoÕt ðµng Bäo bäo Song Hß·ng Pháo#P, #{_INFOUSR%s}#P · #GÐÕi Lý #YCung Thái Vân #G(170,122)#P nh§n ðßþc #Y%d#P ði¬m kinh nghi®m."

	local rand = random(10000)

	if rand <= 1000 then

		--10/100¸øÑ¼×ìÊÞ....
		local BagIndex = TryRecieveItem( sceneId, selfId, x808075_g_DuckItemId, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--·¢¹«¸æ....
			local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
			local str = format( msg, GetName(sceneId,selfId), ItemInfo )
			AddGlobalCountNews( sceneId, str )
			--¼ÇÂ¼ ðÕt ðßþcÑ¼×ìÊÞ....
			AuditShuangXiangPao( sceneId, selfId, 1 )
		end
		return "#{_ITEM"..x808075_g_DuckItemId.."}"

	elseif rand <= 2500 then

		--15/100¸øÃ«Â¿....
		local itemId = x808075_g_DonkeyItemId5
		if CurLevel >= 65 then
			itemId = x808075_g_DonkeyItemId65
		elseif CurLevel >= 55 then
			itemId = x808075_g_DonkeyItemId55
		elseif CurLevel >= 45 then
			itemId = x808075_g_DonkeyItemId45
		else
			itemId = x808075_g_DonkeyItemId5
		end

		local BagIndex = TryRecieveItem( sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--·¢¹«¸æ....
			local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
			local str = format( msg, GetName(sceneId,selfId), ItemInfo )
			AddGlobalCountNews( sceneId, str )
			--¼ÇÂ¼ ðÕt ðßþcÃ«Â¿....
			AuditShuangXiangPao( sceneId, selfId, 2 )
		end
		return "#{_ITEM"..itemId.."}"

	else

		--75/100¸øKinh nghi®m....
		local CurExp = x808075_g_ExpTbl[CurLevel]
		if CurExp and CurExp > 0 then
			LuaFnAddExp( sceneId, selfId, CurExp )
			--¼ÇÂ¼ ðÕt ðßþcKinh nghi®m....
			AuditShuangXiangPao( sceneId, selfId, 3 )
			--·¢¹«¸æ....
			local str = format( msg2, GetName(sceneId,selfId), CurExp )
			AddGlobalCountNews( sceneId, str )

		end
		return CurExp.."Kinh nghi®m"

	end

end

--**********************************
--¸ø±¦±¦Ë«ÏìÅÚbuff....
--**********************************
function x808075_SXPGiveBuff( sceneId, selfId, targetId )

	--³¢ÊÔ¿Û³ýmµt cái×Ö....
	if 0 == x808075_DelOneWord( sceneId, selfId, targetId ) then
		BeginEvent( sceneId )
			AddText( sceneId, "#{BBSXP_20080229_10}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--¸øbuff....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x808075_g_SXPBuffId, 0)

	--¼ÇÂc¤pmµt »buff....
	AuditShuangXiangPao( sceneId, selfId, 4 )

	--¹Ø±ÕNPC¶Ô»°´°¿Ú....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--¼ì²âÍæ¼ÒÐúng·ñÓÐËùÓÐtoÕ ðµ ×Ö....
--**********************************
function x808075_CheckHaveAllWord( sceneId, selfId, targetId )
    
	local ListSize = getn( x808075_g_WordItemTbl )

	for i=1, ListSize do
		if LuaFnGetAvailableItemCount( sceneId, selfId, x808075_g_WordItemTbl[i] ) < 1 then
		    return 0
		end
	end

	return 1

end

--**********************************
--É¾³ýÍæ¼ÒËùÓÐtoÕ ðµ ×Ö....
--**********************************
function x808075_DelAllWord( sceneId, selfId, targetId )
    
	local ListSize = getn( x808075_g_WordItemTbl )

	for i=1, ListSize do
		if 1 ~= LuaFnDelAvailableItem(sceneId, selfId, x808075_g_WordItemTbl[i], 1) then
			return 0
		end
	end

	return 1

end

--**********************************
--É¾³ýÍæ¼ÒtoÕ ðµ mµt cái×Ö....
--**********************************
function x808075_DelOneWord( sceneId, selfId, targetId )
    
	local ListSize = getn( x808075_g_WordItemTbl )

	for i=1, ListSize do
		if 1 == LuaFnDelAvailableItem(sceneId, selfId, x808075_g_WordItemTbl[ ListSize-i+1 ], 1) then
			return 1
		end
	end

	return 0

end

--**********************************
--Íæ¼ÒµÚmµt ´ÎµÇÂ¼Ê±»Øµ÷±¾º¯Êý....
--**********************************
function x808075_OnPlayerFirstLogin( sceneId, selfId )

	local curDayTime = GetDayTime()
	if curDayTime >= x808075_g_MailStartDayTime and curDayTime <= x808075_g_MailEndDayTime then
		LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{BBSXP_20080229_15}" )
	end

end
