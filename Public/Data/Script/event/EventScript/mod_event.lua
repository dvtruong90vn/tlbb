-- mod_event
-- ÈÎÎñ±í¸ñÖÐµÄÒ»Ð©Í¨ÓÃÊý¾Ý´¦Àíº¯Êý

x006672_g_MaxRelationship = 9999

x006672_g_MinRelationship = 0

x006672_g_MenpaiMission = 800
x006672_g_MenpaiMission_1 = 810

-- 30~50¼¶Íæ¼ÒÁ÷Ê§ÈÎÎñ_Ê¦ÃÅÈÎÎñ
x006672_g_MissionLimitList	=	{StartIdx = 1018729, EndIdx = 1018818}
x006672_g_AcceptMissionSceneId = {9, 11, 10, 12, 15, 16, 13, 17, 14}

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x006672_DoEnumerate( sceneId, selfId, targetId, missionIndex )
	
	local missionId = TGetMissionIdByIndex( missionIndex )

	-- Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ²¢ÇÒ¸ÃÈÎÎñ²»ÊÇÑ­»·ÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, missionId ) > 0
	 and TIsMissionRoundable( missionIndex ) ~= 1 then
		return
	end

	local missionName = TGetMissionName( missionIndex )

	-- ÅÐ¶¨Íæ¼ÒµÄÌõ¼þÊÇ²»ÊÇ¹»½ÓÊÜÕâ¸öÈÎÎñ£¬Èç¹û¹»¾ÍÏÔÊ¾£¬²»¹»¾Í²»ÏÔÊ¾
	local PrevMis = { -1, -1, -1 }
	local nLevel = 0
	nLevel, PrevMis[1], PrevMis[2], PrevMis[3] = TGetCheckInfo( missionIndex )

	if nLevel > GetLevel( sceneId, selfId ) then
		return
	end

	if PrevMis[1] == x006672_g_MenpaiMission then
		if PrevMis[2] ~= LuaFnGetMenPai(sceneId, selfId)  then
			return
		end
		
	elseif PrevMis[1] == x006672_g_MenpaiMission_1 then
		local bOk = 0
		for i=801, 809   do
			if IsMissionHaveDone( sceneId, selfId, i ) >= 0 then
				bOk = 1
			end
		end
		if bOk == 0  then
			return
		end
		
	else
		for i = 1, getn( PrevMis ) do
			if PrevMis[i] > 0 then
				if IsMissionHaveDone( sceneId, selfId, PrevMis[i] ) <= 0 then
					return
				end
			end
		end
	end

	-- ÒÑ¾­½ÓÊÕÁËÈÎÎñ
	if IsHaveMission( sceneId, selfId, missionId ) > 0 then
		local completeNpcScene, completeNpcName = TGetCompleteNpcInfo( missionIndex )
		if GetName( sceneId, targetId ) == completeNpcName then
			-- ÊÇ·ñÎªÑ­»·ÈÎÎñ
			if TIsMissionRoundable( missionIndex ) == 1 then
				TAddNumText( sceneId, missionIndex, missionName, 4, -1 )
			else
				TAddNumText( sceneId, missionIndex, missionName, 2, -1 )
			end
			TDispatchEventList( sceneId, selfId, targetId )
		end
	else
		local acceptNpcScene, acceptNpcName = TGetAcceptNpcInfo( missionIndex )
		if GetName( sceneId, targetId ) == acceptNpcName then
			-- ÊÇ·ñÎªÑ­»·ÈÎÎñ
			if TIsMissionRoundable( missionIndex ) == 1 then
				TAddNumText( sceneId, missionIndex, missionName, 3, -1 )
			else
				TAddNumText( sceneId, missionIndex, missionName, 1, -1 )
			end
			TDispatchEventList( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x006672_CheckAccept( sceneId, selfId, missionIndex )
	
	local nLevel = LuaFnGetLevel( sceneId, selfId )
	local PrevMis = { -1, -1, -1 }
	local limitLevel = 0
	limitLevel, PrevMis[1], PrevMis[2], PrevMis[3] = TGetCheckInfo( missionIndex )

	if nLevel < limitLevel then
		x006672_NotifyFailBox( sceneId, selfId, -1, "Kinh nghi®m giang h° cüa các hÕ không ðü, ðþi sau khi ðÕt c¤p " .. limitLevel .. " hãy ðªn tìm ta!" )
		return 0
	end
	
	if missionIndex >= x006672_g_MissionLimitList.StartIdx and missionIndex <= x006672_g_MissionLimitList.EndIdx then
		local nMenpai = LuaFnGetMenPai(sceneId, selfId)
		
		if nMenpai < 0 or nMenpai > 8 then
			x006672_NotifyFailBox( sceneId, selfId, -1, "#{YD_20080421_222}" )
			return 0
		elseif x006672_g_AcceptMissionSceneId[nMenpai+1] ~= sceneId then
			x006672_NotifyFailBox( sceneId, selfId, -1, "#{YD_20080421_223}" )
			return 0
		end
	end
	
	if PrevMis[1] == x006672_g_MenpaiMission then
		if PrevMis[2] == LuaFnGetMenPai(sceneId, selfId)  then
			return 1
		end
		return 0
	end
	
	if PrevMis[1] == x006672_g_MenpaiMission_1 then
		local bOk = 0
		for i=801, 809   do
			if IsMissionHaveDone( sceneId, selfId, i ) >= 0 then
				bOk = 1
			end
		end
		if bOk == 1  then
			return 1
		end
		return 0
	end

	for i = 1, getn( PrevMis ) do
		if PrevMis[i] > 0 then
			if IsMissionHaveDone( sceneId, selfId, PrevMis[i] ) <= 0 then
				return 0
			end
		end
	end

	local mdLocation, value, prompt = TGetLimitedTimeInfo( missionIndex )
	if mdLocation ~= -1 and value > 0 then
		local ApprovedTime = GetMissionData( sceneId, selfId, mdLocation )
		if ApprovedTime > LuaFnGetCurrentTime( ) then
			x006672_NotifyFailBox( sceneId, selfId, -1, prompt )
			return 0
		end
	end

	return 1
end

--**********************************
-- È¡µÃÒ»¸ö¶¯Ì¬µÄ¶Ô»°¸ñÊ½»¯×Ö·û´®
-- missionIndex: ÈÎÎñÔÚÈÎÎñ±íÖÐµÄ±àºÅ
-- duologueContent: ¶Ô»°ÄÚÈÝ£¬Èç¹ûÊÇ¹Ì¶¨¶Ô»°£¬ÔòÖ±½Ó·µ»Ø
--**********************************
function x006672_GetRandomDuologue( sceneId, missionIndex, duologueContent )
	
	-- Ëæ»ú¶Ô»°ÐèÒªÏÈÌôÑ¡³öÒ»¾äÀ´
	local duologueList = {}
	-- °ÑËæ»úÑ¡ÏîÝÍÈ¡³öÀ´£¬Èûµ½ duologueList ÀïÃæ
	gsub( duologueContent, "(%d+)", function(n) tinsert( %duologueList, tonumber(n) ) end )

	-- print( duologueList )

	if getn( duologueList ) < 1 then
		return ""
	end

	-- ÐÂÔöµÄ½Ó¿Ú¶ÁÐÂÔöµÄ±í¸ñ£¬È¡»ØÄ³¾ä¶Ô»°
	duologueContent = TGetDuologue( sceneId, duologueList[random( getn(duologueList) )] )

	-- print( duologueContent )

	if type( duologueContent ) ~= "string" then
		return ""
	end

	return duologueContent
end

--**********************************
-- ¸ñÊ½»¯Ò»¸ö¶¯Ì¬µÄ¶Ô»°¸ñÊ½»¯×Ö·û´®
-- ¸ñÊ½»¯ÖÐµÄÄ£Ê½
--	%R: Íæ¼ÒµÄ³ÆÎ½£¨ÉÙÏÀ£¬ÏÀÅ®£©
--	%n: NPC µÄÃû×Ö
--	%l: NPC µÄÎ»ÖÃÒÔ¼°×ø±ê
--	%g: NPC µÄÐÔ±ð£¨Ëû£¬Ëý£©
--	%i: ÈÎÎñÎïÆ·µÄÃû×Ö
--**********************************
function x006672_FormatDuologue( sceneId, selfId, duologueContent, npcId, itemIndex, itemList )
	
	if not duologueContent or type( duologueContent ) ~= "string" then
		return ""
	end

	-- ¶Ô¶Ô»°½øÐÐ±äÁ¿Ìæ»»
	if strfind( duologueContent, "%R", 1, 1 ) then
		local PlayerGender = GetSex( sceneId, selfId )
		local rank

		if PlayerGender == 0 then
			rank = " Næ hi®p "
		else
			rank = " ÐÕi hi®p "
		end

		duologueContent = gsub( duologueContent, "%%R", rank )
	end

	-- ÓÐËæ»ú NPC
	if npcId and npcId ~= -1 then
		local nNpcId, strNpcName, strNpcScene, nPosX, nPosZ, strNPCDesc, nScene, nGender, nLevel, nType
			= GetNpcInfoByNpcId(sceneId, npcId )

		local strGender = {}
		strGender[0] = " Nàng "
		strGender[1] = " H¡n "

		-- ¶Ô¶Ô»°½øÐÐ±äÁ¿Ìæ»»
		-- if strfind( duologueContent, "%l", 1, 1 ) then
		--	duologueContent = gsub( duologueContent, "%%l", "" )
		-- end

		if strfind( duologueContent, "%n", 1, 1 ) then
			local newLocation
			if nPosX > 0 and nPosZ > 0 then
				newLocation = strNpcScene .. strNpcName ..  "(" .. nPosX .. ", " .. nPosZ .. ")"
			else
				newLocation = strNpcScene .. strNpcName
			end

			duologueContent = gsub( duologueContent, "%%n", newLocation )
		end

		if strfind( duologueContent, "%g", 1, 1 ) then
			duologueContent = gsub( duologueContent, "%%g", strGender[nGender] )
		end
	end

	if itemIndex and itemIndex ~= -1 and itemList == "" then
		local nitemId, strItemName, strItemDesc = GetItemInfoByItemId( itemIndex )

		if strfind( duologueContent, "%i", 1, 1 ) then
			duologueContent = gsub( duologueContent, "%%i", strItemName )
		end
	end
	
	if itemList ~= "" then
		
		if strfind( duologueContent, "%i", 1, 1 ) then
			duologueContent = gsub( duologueContent, "%%i", itemList )
		end
		-- PrintStr("duologueContent ="..duologueContent)
	end

	return duologueContent
end

--**********************************
-- ÏÔÊ¾ÈÎÎñ½±Àø
--**********************************
function x006672_DisplayBonus( sceneId, missionIndex, selfId )
	
	local itemCt
	local a = { { id = -1, ct = 0 }, { id = -1, ct = 0 }, { id = -1, ct = 0 }, { id = -1, ct = 0 }, { id = -1, ct = 0 } }
	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetAwardItem( missionIndex )

	for i = 1, itemCt do
		if a[i].id > 0 then
			AddItemBonus( sceneId, a[i].id, a[i].ct )
		end
	end

	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetRadioItem( missionIndex )

	for i = 1, itemCt do
		if a[i].id > 0 then
			AddRadioItemBonus( sceneId, a[i].id, a[i].ct )
		end
	end

	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct = TGetHideItem( missionIndex )

	for i = 1, itemCt do
		if a[i].id > 0 then
			AddRandItemBonus( sceneId, a[i].id, a[i].ct )
		end
	end

	local awardMoney = TGetAwardMoney( missionIndex )
	
	if (missionIndex >= 1010243 and missionIndex <= 1010250) or
		 (missionIndex >= 1010402 and missionIndex <= 1010409) or
		 (missionIndex >= 1018000 and missionIndex <= 1018033) or
		 (missionIndex >= 1018050 and missionIndex <= 1018084) or
		 (missionIndex >= 1018100 and missionIndex <= 1018155) or
		 (missionIndex >= 1018200 and missionIndex <= 1018235) or
		 (missionIndex >= 1018300 and missionIndex <= 1018311) or
		 (missionIndex >= 1018350 and missionIndex <= 1018352) or
		 (missionIndex >= 1018360 and missionIndex <= 1018367) or
		 (missionIndex >= 1018400 and missionIndex <= 1018455) or
		 (missionIndex >= 1018500 and missionIndex <= 1018504) or
		 (missionIndex >= 1018530 and missionIndex <= 1018541) or
		 (missionIndex >= 1018560 and missionIndex <= 1018566) or
		 (missionIndex >= 1038000 and missionIndex <= 1038040) or
		 (missionIndex >= 1038110 and missionIndex <= 1038114) or
		 (missionIndex >= 1039000 and missionIndex <= 1039011) or
		 (missionIndex >= 1039020 and missionIndex <= 1039024) or
		 (missionIndex >= 1039100 and missionIndex <= 1039104) or
		 (missionIndex >= 1038100 and missionIndex <= 1038104) or
		 (missionIndex >= 1039110 and missionIndex <= 1039126) or
		 (missionIndex >= 1039200 and missionIndex <= 1039211) or
		 (missionIndex >= 1039250 and missionIndex <= 1039259) or
		 (missionIndex >= 1039300 and missionIndex <= 1039312) or
		 (missionIndex >= 1039350 and missionIndex <= 1039357) or
		 (missionIndex >= 1039400 and missionIndex <= 1039412) or
		 (missionIndex >= 1039450 and missionIndex <= 1039462) or
		 (missionIndex >= 1039500 and missionIndex <= 1039511) or
		 (missionIndex >= 1039550 and missionIndex <= 1039554) or
		 (missionIndex >= 1039600 and missionIndex <= 1039612) or
		 (missionIndex >= 1009000 and missionIndex <= 1009027) or
		 (missionIndex >= 1009100 and missionIndex <= 1009103) then
		
		-- Ê¹ÓÃÍæ¼Ò×Ô¼ºµÄµÈ¼¶À´¼ÆËãµÃµ½µÄ½±Àø
		awardMoney = GetLevel(sceneId, selfId) * 18 -101
	end
	
	AddMoneyBonus( sceneId, awardMoney )
end

--**********************************
-- ½±Àø¹ØÏµÖµ
--**********************************
function x006672_RewardRelationShip( sceneId, selfId, missionIndex, targetId )
	
	local mdLocation, value, prompt = TGetRelationShipAwardInfo( missionIndex )
	if mdLocation == -1 or value < 1 then
		return
	end

	local szNpcName = ""
	
	local nLimitiIndex = -1
	
	if mdLocation == MD_RELATION_MUWANQING 				then
		szNpcName = "Mµc Uy¬n Thanh"
		nLimitiIndex = MD_JQXH_MUWANQING_LIMITI
	elseif mdLocation == MD_RELATION_ZHONGLING  	then
		szNpcName = "Chung Linh"
		nLimitiIndex = MD_JQXH_ZHONGLING_LIMITI
	elseif mdLocation == MD_RELATION_DUANYANQING  then
		szNpcName = "Ðoàn Diên Khánh"
		nLimitiIndex = MD_JQXH_DUANYANQING_LIMITI
	elseif mdLocation == MD_RELATION_DUANYU  			then
		szNpcName = "Ðoàn Dñ"
		nLimitiIndex = MD_JQXH_DUANYU_LIMITI
	elseif mdLocation == MD_RELATION_AZHU			    then
		szNpcName = "A Châu"
		nLimitiIndex = MD_JQXH_AZHU_LIMITI
	elseif mdLocation == MD_RELATION_ABI				  then
		szNpcName = "A Bích"
		nLimitiIndex = MD_JQXH_ABI_LIMITI
	elseif mdLocation == MD_RELATION_WANGYUYAN	  then
		szNpcName = "Vß½ng Ngæ Yên"
		nLimitiIndex = MD_JQXH_WANGYUYAN_LIMITI
	elseif mdLocation == MD_RELATION_XIAOFENG	    then
		szNpcName = "Tiêu Phong"
		nLimitiIndex = MD_JQXH_XIAOFENG_LIMITI
	elseif mdLocation == MD_RELATION_AZI				  then
		szNpcName = "A TØ"
		nLimitiIndex = MD_JQXH_AZI_LIMITI
	elseif mdLocation == MD_RELATION_MURONGFU	    then
		szNpcName = "Mµ Dung Phøc"
		nLimitiIndex = MD_JQXH_MURONGFU_LIMITI
	elseif mdLocation == MD_RELATION_XUZHU			  then
		szNpcName = "Hß Trúc"
		nLimitiIndex = MD_JQXH_XUZHU_LIMITI
	elseif mdLocation == MD_RELATION_JIUMOZHI	    then
		szNpcName = "Cßu Ma Trí"
		nLimitiIndex = MD_JQXH_JIUMOZHI_LIMITI
	elseif mdLocation == MD_RELATION_YINCHUAN	    then
		szNpcName = "Ngân Xuyên Công Chúa"
		nLimitiIndex = MD_JQXH_YINCHUAN_LIMITI
	end
	
	-- ¼ÇÂ¼ºÍÕâ¸öNpc½ñÌìÍê³ÉÈÎÎñµÄ´ÎÊý
	if nLimitiIndex >= MD_JQXH_MUWANQING_LIMITI and 
			nLimitiIndex <= MD_JQXH_YINCHUAN_LIMITI  then
		--begin modified by zhangguoxin 090207
		local nDayCount = GetMissionData(sceneId, selfId, nLimitiIndex)
		local nCount = 		floor(nDayCount/100000)
		local nTime = 		mod(nDayCount,100000)
		--local nDayTime = 	floor(nTime/100)	--ÉÏÒ»´Î½»ÈÎÎñµÄÊ±¼ä(ÌìÊý)
		nDayTime = 	nTime											--ÉÏÒ»´Î½»ÈÎÎñµÄÊ±¼ä(ÌìÊý)
		
		local CurTime = GetDayTime()						--µ±Ç°Ê±¼ä
		local CurDaytime = CurTime					--µ±Ç°Ê±¼ä
		--local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
		--end modified by zhangguoxin 090207
		if nDayTime == CurDaytime  then
			nCount = nCount + 1
		else
			nCount = 1
		end
		
		local nNewDayCount = nCount*100000 + CurTime	
		SetMissionData(sceneId, selfId, nLimitiIndex, nNewDayCount)
	end

	local oldValue = GetMissionData( sceneId, selfId, mdLocation )
	value = value + oldValue
	if value > x006672_g_MaxRelationship then
		value = x006672_g_MaxRelationship
	else
		BeginEvent(sceneId)
			local strText = prompt
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		-- Èç¹ûÍæ¼ÒºÍNpc´ïµ½Ò»¸öÐÂµÄ¹ØÏµ£¬·¢¹«¸æ
		if value == 1000  then
			BeginEvent(sceneId)
				local strText = "Các hÕ và#G " .. szNpcName .. "#W quan h® ðã phát tri¬n ðªn mÑc #Ykªt giao quân tØ#W."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- ·¢ÓÊ¼þÍ¨ÖªÍæ¼Ò
			LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText)
			
		elseif value == 2000  then
			BeginEvent(sceneId)
				local strText = "Các hÕ và#G " .. szNpcName .. "#W quan h® ðã phát tri¬n ðªn mÑc#Y kªt giao thân thiªt#W."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- ·¢ÓÊ¼þÍ¨ÖªÍæ¼Ò
			LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText)
			
		elseif value == 4000  then
			BeginEvent(sceneId)
				local strText = "Các hÕ và#G " .. szNpcName .. "#W quan h® ðã phát tri¬n ðªn mÑc#Y bát bái chi giao#W."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- ·¢ÓÊ¼þÍ¨ÖªÍæ¼Ò
			LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText)
			
		elseif value == 6500  then
			BeginEvent(sceneId)
				local strText = "Các hÕ và#G " .. szNpcName .. "#W quan h® ðã phát tri¬n ðªn mÑc #Yb¢ng hæu vào sinh ra tØ#W."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- ·¢ÓÊ¼þÍ¨ÖªÍæ¼Ò
			LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText)
			
			-- ·¢ÏµÍ³¹«¸æ
			local szPlayer = GetName(sceneId, selfId)

			if GetName(sceneId,targetId) == "Mµc Uy¬n Thanh"    then
				local szBroad = "@*;SrvMsg;" .. "juqing_xunhuan_system_muwanqing" ..";"..szPlayer..";"..szPlayer
				BroadMsgByChatPipe(sceneId, selfId, szBroad, 4)
				
			elseif GetName(sceneId,targetId) == "Gia Lu§t ÐÕi ThÕch"    then
				local szBroad = "@*;SrvMsg;" .. "juqing_xunhuan_system_xiaofeng" ..";"..szPlayer..";"..szPlayer
				BroadMsgByChatPipe(sceneId, selfId, szBroad, 4)
				
			end
		end
	end

	SetMissionData( sceneId, selfId, mdLocation, value )
	---Ä¾ÍñÇå¹ØÏµÖµÍ³¼Æ dengxx
		if mdLocation == MD_RELATION_MUWANQING then
		   AuditRelationPoint(sceneId,selfId,value,"MD_RELATION_MUWANQING")
		end
	
	-- hongyu ,×Å¼±ÁË£¬ÔÚÕâÀïÏÈ+¾­ÑéºÍ½ðÇ®½±Àø
	-- ½±ÀøµÄ½ðÇ®ºÍ¾­ÑéÖµ£¬Ö»ºÍ×Ô¼ºµÄµÈ¼¶ÓÐ¹Ø
	-- µÈ¼¶±ØÐëÊÇ´óÓÚµÈÓÚ20£¬Ð¡ÓÚµÈÓÚPlayerMaxLevel
	-- ¹«Ê½  ¾­Ñé= µÈ¼¶*80 - 326
	-- 			 ½ðÇ®= µÈ¼¶*18 - 101
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local nLevel = GetLevel(sceneId, selfId)
	
	if nLevel>=20 and nLevel<=PlayerMaxLevel   then
		local nExp = nLevel*80 - 326
		local nMoney = nLevel*18 - 101
		
		local missionId = TGetMissionIdByIndex( missionIndex )
		AddMoney( sceneId, selfId, nMoney, missionId, missionIndex )
		AddExp(sceneId, selfId, nExp)
	end
	
	-- ÈÎÎñÍ³¼Æ
	local missionName = TGetMissionName( missionIndex )
	LuaFnAuditQuest( sceneId, selfId, missionName)
	
	if value > oldValue then
		Msg2Player( sceneId, selfId, prompt, MSG2PLAYER_PARA )
	end
end

--**********************************
-- ³Í·£¹ØÏµÖµ
--**********************************
function x006672_PunishRelationShip( sceneId, selfId, missionIndex )
	
	local mdLocation, value, prompt = TGetRelationShipPunishInfo( missionIndex )
	if mdLocation == -1 or value < 1 then
		return
	end

	local oldValue = GetMissionData( sceneId, selfId, mdLocation )
	value = oldValue - value
	if value < x006672_g_MinRelationship then
		value = x006672_g_MinRelationship
	end

	SetMissionData( sceneId, selfId, mdLocation, value )
	---Ä¾ÍñÇå¹ØÏµÖµÍ³¼Æ dengxx
		if mdLocation == MD_RELATION_MUWANQING then
		   AuditRelationPoint(sceneId,selfId,value,"MD_RELATION_MUWANQING")
		end

	if value < oldValue then
		Msg2Player( sceneId, selfId, prompt, MSG2PLAYER_PARA )
	end
end

--**********************************
-- ³Í·££¬ÏÞÖÆ½ÓÈÎÎñÊ±¼ä
--**********************************
function x006672_AcceptTimeLimit( sceneId, selfId, missionIndex )
	
	local mdLocation, value, prompt = TGetLimitedTimeInfo( missionIndex )
	if mdLocation == -1 or value < 1 then
		return
	end

	-- 20 ÄêÄÚÓ¦¸Ã²»»á³¬¹ý 2 ^ 31
	SetMissionData( sceneId, selfId, mdLocation, LuaFnGetCurrentTime( ) + value )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x006672_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
