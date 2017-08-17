--³¡¾°µÄ½Å±¾ÎÄ¼ş

--½Å±¾ºÅ
x888888_g_scriptId_scene = 888888

x888888_g_defaultRelive_SceneID_1=77;
x888888_g_defaultRelive_SceneID_2=2;

-- ==========»ªÉ½ÂÛ½£Ïà¹ØµÄÒ»Ğ©³£Á¿¶¨Òå===========
-- x888888_g_HS_PK3i1sv4jmsn034q0wkidpoa8ek5 125 tbp  --hongyu

x888888_g_Jinghu_SceneId = 5   --hongyu
x888888_g_jingji_SceneId = 414 --hongyu ¾º¼¼³¡
x888888_g_HanYuBed_SceneId = 194 --º®Óñ´²
x888888_g_NianShou_SceneId = 6 --ÄêÊŞ
x888888_g_XinShou_SceneId = 2 --ÅİµãµØÍ¼ºÅ

--ÏÂÃæ¶¨ÒåÍæ¼ÒÃ¿¸öµÈ¼¶·¢ËÍµÄÓÊ¼şÊıÁ¿
--¸ñÊ½Îª{2,0},2ÎªµÈ¼¶,0ÊÇ¸ÃµÈ¼¶Òª·¢ËÍµÄÓÊ¼şÊıÄ¿£¬ÔÚ¿Í»§¶ËµÄstrdictionary.txtÀïÃæÓĞLevelMail_2_1´ú±í2¼¶µÚÒ»·âÓÊ¼ş,Ìí¼ÓÓÊ¼şÄÚÈİÊ±ĞèÍ¬Ê±ĞŞ¸Ä¿Í»§¶ËºÍ¸Ã½á¹¹µÄÄÚÈİ
x888888_g_MailNum = {}

-- ===============================================

---------------------------------------------------------------
---µ±Íæ¼Ò»ñµÃ35¼¶ĞÄ·¨ÃØ¼®¼°65¼¶Îä¹¦ÃØ¼®£¬»áÔÚÊÀ½ç¹«¸æ
x888888_MenPaiBroadMsg = 
{
	[0]	= { mp = "Thiªu Lâm", XinFa = 30308002, MiJi = 30308011 },	--ÉÙÁÖ
	[1]	= { mp = "Minh Giáo", XinFa = 30308003, MiJi = 30308012 },	--Ã÷½Ì
	[2]	= { mp = "Cái Bang", XinFa = 30308004, MiJi = 30308013 },	--Ø¤°ï
	[3]	= { mp = "Võ Ğang", XinFa = 30308005, MiJi = 30308014 },	--Îäµ±
	[4]	= { mp = "Nga My", XinFa = 30308006, MiJi = 30308015 },	--¶ëáÒ
	[5]	= { mp = "Tinh Túc", XinFa = 30308007, MiJi = 30308016 },	--ĞÇËŞ
	[6]	= { mp = "Thiên Long", XinFa = 30308008, MiJi = 30308017 },	--ÌìÁú
	[7]	= { mp = "Thiên S½n", XinFa = 30308009, MiJi = 30308018 },	--ÌìÉ½
	[8] = { mp = "Tiêu Dao", XinFa = 30308010, MiJi = 30308019 },	--åĞÒ£
}



-- ¸±±¾´æÍæ¼ÒÆ½¾ù¼¶±ğÓë¹ÖÎïÄ¬ÈÏ¼¶±ğµÄ¼¶±ğ²î£¬²îÖµÓÃÓÚ³¡¾°³õÊ¼»¯Ê±¶Ô¹ÖÎï¼¶±ğ½øĞĞµ÷Õû£¬´Ë±àºÅ¹Ì¶¨²»ÄÜ¸Ä
CopyScene_LevelGap =31

-- Íæ¼ÒÉı¼¶Ê±¿ÉÒÔÍê³ÉµÄÈÎÎñ
x888888_g_FullLevel_MissionList	=	{}
--x888888_g_FullLevel_MissionList[28] = { MissionId = 403, MissionIndex = 500606, LevelLimit = 28, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_188}" }
--x888888_g_FullLevel_MissionList[30] = { MissionId = 409, MissionIndex = 500602, LevelLimit = 30, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_181}" }												-- ÈÎÎñID,ÈÎÎñË÷ÒıºÅ,ĞèÇóµÈ¼¶,ÈÎÎñÍê³É±êÖ¾ÔÚÈÎÎñ²ÎÊıµÚ¼¸Î»,ÈÎÎñ¸ú×Ù±êÖ¾ÔÚÈÎÎñ²ÎÊıµÚ¼¸Î»
--x888888_g_FullLevel_MissionList[32] = { MissionId = 412, MissionIndex = 500603, LevelLimit = 32, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_183}" }
--x888888_g_FullLevel_MissionList[35] = { MissionId = 415, MissionIndex = 500605, LevelLimit = 35, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_186}" }
--x888888_g_FullLevel_MissionList[38] = { MissionId = 418, MissionIndex = 500608, LevelLimit = 38, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_191}" }
--x888888_g_FullLevel_MissionList[40] = { MissionId = 428, MissionIndex = 500612, LevelLimit = 40, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_196}" }
--x888888_g_FullLevel_MissionList[42] = { MissionId = 433, MissionIndex = 500613, LevelLimit = 42, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_198}" }
--x888888_g_FullLevel_MissionList[45] = { MissionId = 437, MissionIndex = 500614, LevelLimit = 45, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_200}" }
--x888888_g_FullLevel_MissionList[48] = { MissionId = 476, MissionIndex = 500615, LevelLimit = 48, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_202}" }
--x888888_g_FullLevel_MissionList[50] = { MissionId = 480, MissionIndex = 500616, LevelLimit = 50, CompleteIdx = 0, RecordIdx = 1, MsgStr = "#{YD_20080421_204}" }

-- Íæ¼ÒÉı¼¶Ê±¿ÉÒÔ×Ô¶¯Ìí¼ÓµÄÈÎÎñ
x888888_g_AutoAccept_MissionList = {}
--x888888_g_AutoAccept_MissionList[26] = { MissionId = 400, MissionIndex = 1018700, PreMissionId = 0,   pKill = 0, pArea = 0, pItem = 0, EventId = 4 }
--x888888_g_AutoAccept_MissionList[28] = { MissionId = 403, MissionIndex = 500606, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }			-- ÈÎÎñID,ÈÎÎñË÷ÒıºÅ,Ç°ĞøÈÎÎñID,ÈÎÎñÀàĞÍ²ÎÊı(3),½Å±¾ÈÎÎñÊ±MissionIndexÎªScriptId
--x888888_g_AutoAccept_MissionList[30] = { MissionId = 409, MissionIndex = 500602, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }
--x888888_g_AutoAccept_MissionList[32] = { MissionId = 412, MissionIndex = 500603, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }
--x888888_g_AutoAccept_MissionList[35] = { MissionId = 415, MissionIndex = 500605, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }
--x888888_g_AutoAccept_MissionList[38] = { MissionId = 418, MissionIndex = 500608, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }
--x888888_g_AutoAccept_MissionList[40] = { MissionId = 428, MissionIndex = 500612, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }
--x888888_g_AutoAccept_MissionList[42] = { MissionId = 433, MissionIndex = 500613, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }
--x888888_g_AutoAccept_MissionList[45] = { MissionId = 437, MissionIndex = 500614, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }
--x888888_g_AutoAccept_MissionList[48] = { MissionId = 476, MissionIndex = 500615, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }
--x888888_g_AutoAccept_MissionList[50] = { MissionId = 480, MissionIndex = 500616, PreMissionId = 0, pKill = 0, pArea = 0, pItem = 0, EventId = 0 }

function x888888_OnSceneInit( sceneId )
--³¡¾°ÔÚ³õÊ¼»¯Íê³Éºóµ÷ÓÃ
	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )
	local monstercount = GetMonsterCount( sceneId )
	local monsterobjid = -1

	local i
	for i=0, monstercount-1 do
		monsterobjid = GetMonsterObjID( sceneId, i )
		SetLevel( sceneId, monsterobjid, GetLevel( sceneId, monsterobjid ) + LevelGap )
	end
end

function x888888_OnSceneTimer( sceneId, nowTime )
--³¡¾°¼ÆÊ±Æ÷
--sceneId±íÊ¾³¡¾°ºÅ£¬nowTime±íÊ¾µ±Ç°Ê±¼ä£¨³ÌĞòÆô¶¯ºóµÄÊ±¼ä£¬µ¥Î»ºÁÃë£©

	sceneType = LuaFnGetSceneType(sceneId) ;

	if sceneType == 1 then --³¡¾°ÀàĞÍÊÇ¸±±¾
		copyscenetype = LuaFnGetCopySceneData_Param(sceneId,0) ;--È¡µÃ¸±±¾ºÅ
		copyscenescript = LuaFnGetCopySceneData_Param(sceneId,1) ; --È¡µÃ½Å±¾ºÅ
		if copyscenetype==FUBEN_EXAMPLE then --Àı×Ó
			--Àı×Ó²»Ìá¹©¶¨Ê±Ê±¼ä
			print("Không th¬ sØ døng phø bän này, chßa ğªn th¶i gian!")
		elseif copyscenetype==FUBEN_EXAMPLE then --
			CallScriptFunction( copyscenescript, "OnCopySceneTimer", sceneId, nowTime ) ;
		elseif copyscenetype==FUBEN_MURENXIANG_7 then --7¼¶Ä¾ÈËÏï¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneTimer", sceneId, nowTime ) ;
		elseif copyscenetype==FUBEN_MURENXIANG_9 then --9¼¶Ä¾ÈËÏï¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneTimer", sceneId, nowTime ) ;
		elseif copyscenetype==FUBEN_MURENXIANG then --±ê×¼Ä¾ÈËÏï¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneTimer", sceneId, nowTime ) ;
		elseif copyscenetype==FUBEN_SHUILAO then --Ë®ÀÎ¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneTimer", sceneId, nowTime ) ;
		elseif copyscenetype==FUBEN_ZHENGLONG then --ÕäççÆå¾Ö¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneTimer", sceneId, nowTime ) ;
		elseif copyscenetype==FUBEN_PVP_LEITAI then --ÀŞÌ¨¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneTimer", sceneId, nowTime ) ;
		else
			CallScriptFunction( copyscenescript, "OnCopySceneTimer", sceneId, nowTime ) ;
		end
	end
end

function x888888_OnSceneQuit( sceneId )
--³¡¾°ÔÚ¹Ø±ÕÇ°µ÷ÓÃ

end

function x888888_OnScenePlayerEnter( sceneId, playerId, isReconnect )
	--ÉèÖÃÈ±Ê¡µÄ¸´»îĞÅÏ¢

	-- Çå³ıÁÙÊ±ÕóÓª£¨ÀıÈçÌôÕ½Ö®ÀàµÄ£¬±ÜÃâÒòÎªÒ»Ğ©²»ÄÜ²¶×½µÄÒÆ¶¯ÊÂ¼ş¡ª¡ªËÀÍöµÈ¡ª¡ªµ¼ÖÂÒ»Ğ©Î´ÆÚÍûµÄÕóÓªºÅ±»´ø³öÔ­³¡¾°£©
	SetUnitCampID(sceneId, playerId, playerId, -1)

	--Çå³ıçÎç¿·å¸±±¾Àï¼ÓµÄ½µµÍ¶¾¿¹µÄbuff....
	LuaFnCancelSpecificImpact( sceneId, playerId, 10249 )
	LuaFnCancelSpecificImpact( sceneId, playerId, 19801 )

	sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType == 1 then --³¡¾°ÀàĞÍÊÇ¸±±¾
		copyscenescript = LuaFnGetCopySceneData_Param(sceneId,1) ; --È¡µÃ½Å±¾ºÅ
		CallScriptFunction( copyscenescript, "OnPlayerEnter", sceneId, playerId ) ;

		local copyscenetype = LuaFnGetCopySceneData_Param( sceneId, 0 )		--È¡µÃ¸±±¾ºÅ
		if copyscenetype == FUBEN_MURENXIANG_7
		 or copyscenetype == FUBEN_MURENXIANG_9
		 or copyscenetype == FUBEN_MURENXIANG
		 or copyscenetype == FUBEN_SHUILAO
		 or copyscenetype == FUBEN_ZHENGLONG
		 or copyscenetype == FUBEN_PVP_LEITAI
		 or copyscenetype == FUBEN_BIANGUAN
		 or copyscenetype == FUBEN_SHIJI1
		 or copyscenetype == FUBEN_KAOCHANG
		 or copyscenetype == FUBEN_DATAOSHA
		 or copyscenetype == FUBEN_ZEIBINGRUQIN
		 or copyscenetype == FUBEN_JIAOFEI
		 or copyscenetype == FUBEN_CUJU
		 or copyscenetype == FUBEN_DAZHAN_YZW
		 or copyscenetype == FUBEN_GODFIRE
		 or copyscenetype == FUBEN_PROTECTGUILD
		 or copyscenetype == FUBEN_PIAOMIAOFENG
		 or copyscenetype == FUBEN_XINSHENGSHOUSHAN
		 or copyscenetype == FUBEN_SEEK_TREASURE -- zchw
		 or copyscenetype == FUBEN_TIANLONG1
		 or copyscenetype == FUBEN_SHAOLIN1
		 or copyscenetype == FUBEN_MINGJIAO1
		 or copyscenetype == FUBEN_GAIBANG1
		 or copyscenetype == FUBEN_EMEI1
		 or copyscenetype == FUBEN_XINGXIU1
		 or copyscenetype == FUBEN_XIAOYAO1
		 or copyscenetype == FUBEN_WUDANG1
		 or copyscenetype == FUBEN_TIANSHAN1
		 or copyscenetype == FUBEN_BANGZHAN
		 or copyscenetype == FUBEN_SONGLIAO
		 or copyscenetype == FUBEN_FEIZHAI
		 or copyscenetype == FUBEN_ZHULIN
		then		-- ÒÔÉÏ¸±±¾ÓĞ¶ÀÁ¢µÄËÀÍöµØµãÉèÖÃ
			return
		end
	else
		--///////////////////////////////////////////////////////
		--Èç¹ûËûÓĞÊ¦ÃÅµÄ¸±±¾ÈÎÎñÔòÉ¾³ı£¬ÈçÉÙÁÖµÄ¡°ËşÁÖ¡±
		local missionIdTable = {1061,1091,1066,1081,1101,1071,1096,1086,1076}
		for i, v in missionIdTable do
			if IsHaveMission(sceneId,playerId,v) > 0 then
				DelMission(sceneId, playerId, v)
				break
			end
		end
		--///////////////////////////////////////////////////////

		--Èç¹ûËûÓĞäîÔËÈÎÎñ
		if IsHaveMission(sceneId,playerId,4021) > 0 then
			CallScriptFunction( 311010, "OnPlayerEnterCaoyunScene", sceneId, playerId )
		end
	end

	--PKÖµ>4Ê±£¬¼àÓüÖĞËÀÍöÔòÔÚ¼àÓüÖĞ¸´»î
	if sceneId == SCENE_PRISON and LuaFnGetHumanPKValue( sceneId, playerId ) > 4 then
		SetPlayerDefaultReliveInfo( sceneId, playerId, "%10", -1, "0", SCENE_PRISON, 48, 30 )
		return
	end

	--if GetMenPai( sceneId, playerId) ~=9 then
		SetPlayerDefaultReliveInfo( sceneId, playerId, "%10", -1, "0", x888888_g_defaultRelive_SceneID_1, 20, 38 );
	--else
	--	SetPlayerDefaultReliveInfo( sceneId, playerId, "%100", -1, "0", x888888_g_defaultRelive_SceneID_2, 165, 169 );
	--end

	-- Èç¹û½øÈëÁË»ªÉ½ÂÛ½£µÄ³¡¾°£¬¾ÍÉèÖÃÕâ¸öÈËÎïµÄÕóÓªºÅ  hongyu
	if sceneId == x888888_g_HS_PK_SceneId    then
		CallScriptFunction((001233), "OnScenePlayerEnter",sceneId, playerId)
		-- ÔÚÕâÀï¼ì²â»ªÉ½ÂÛ½£µÄ¼ÆÊ±Æ÷ÊÇ²»ÊÇ¿ª×Å£¬Èç¹ûÃ»ÓĞ¿ª¾Í´ò¿ª£¬
		-- ³¡¾°¼ÆÊ±Æ÷µÄId = 0
		if CheckTimer(sceneId, 0) == 0  then
			SetTimer(sceneId, playerId, 1230, "OnHuashanSceneTimer", 10000)
		end
	end
	
	-- Èç¹û½øÈë¾º¼¼³¡,µÚÒ»½øÈë¾º¼¼³¡µÄÈË£¬´ò¿ª¼ÆÊ±Æ÷
	if sceneId == x888888_g_jingji_SceneId    then
		CallScriptFunction((125020), "OnScenePlayerEnter",sceneId, playerId)
		-- ÔÚÕâÀï¼ì²â»ªÉ½ÂÛ½£µÄ¼ÆÊ±Æ÷ÊÇ²»ÊÇ¿ª×Å£¬Èç¹ûÃ»ÓĞ¿ª¾Í´ò¿ª£¬
		-- ³¡¾°¼ÆÊ±Æ÷µÄId = 0
		if CheckTimer(sceneId, 0) == 0  then
			SetTimer(sceneId, playerId, 125020, "OnSceneTimer", 10000)
			--InitSceneData(sceneId, playerId, 125020, "OnInitScene")
		end
	end

	-- ÉúËÀ¶á±¦´¥·¢
	if sceneId == 410    then
		CallScriptFunction((891000), "OnScenePlayerEnter",sceneId, playerId)
		-- ÔÚÕâÀï¼ì²â»ªÉ½ÂÛ½£µÄ¼ÆÊ±Æ÷ÊÇ²»ÊÇ¿ª×Å£¬Èç¹ûÃ»ÓĞ¿ª¾Í´ò¿ª£¬
		-- ³¡¾°¼ÆÊ±Æ÷µÄId = 0
		if CheckTimer(sceneId, 0) == 0  then
			SetTimer(sceneId, playerId, 891000, "OnHuashanSceneTimer", 16000)
		end
	end

	if sceneId == 410   then
		if LuaFnGetAvailableItemCount(sceneId, playerId, 39910008) >= 1   then
			LuaFnDelAvailableItem(sceneId,playerId,39910008,10)--É¾³ıÎïÆ·
		end
	end
	
	-- µÚÒ»¸ö½øÈë¾µºş³¡¾°µÄÍæ¼Ò£¬¸ºÔğÆô¶¯¾µºşµÄ¼ÆÊ±Æ÷
	if sceneId == x888888_g_Jinghu_SceneId   then
		if CheckTimer(sceneId, 0) == 0  then
			SetTimer(sceneId, playerId, 005116, "OnSceneTimer", 10000)
		end
	end

	--µÚÒ»¸ö½øÈëÅİµã³¡¾°µÄÍæ¼Ò£¬¸ºÔğÆô¶¯ĞÂÊÖ¼¯ÊĞµÄ¼ÆÊ±Æ÷
	--if sceneId == x888888_g_XinShou_SceneId then
	--	if CheckTimer(sceneId, 0) == 0  then
	--		SetTimer(sceneId, playerId, 898989, "OnSceneTimer",30000)
	--	end
	--end

	--µÚÒ»¸ö½øÈëº®Óñ´²³¡¾°µÄÍæ¼Ò£¬¸ºÔğÆô¶¯º®Óñ´²µÄ¼ÆÊ±Æ÷
	if sceneId == x888888_g_HanYuBed_SceneId then
		if CheckTimer(sceneId, 0) == 0  then
			SetTimer(sceneId, playerId, 808072, "OnSceneTimer",30000)
		end
	end

	-- Íæ¼Ò½øÈëPvp³¡¾°Ç°£¬¸ø¸öÎŞµĞ
	if 0 == isReconnect then
		local nSafeLevel = LuaFnGetSceneSafeLevel(sceneId)
		-- Íæ¼Ò½øÈë·Ç°²È«³¡¾°£¬¸ø¸öÎŞµĞBUFF
		if nSafeLevel < 10000  then
			if nSafeLevel == 10 then
				LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 5927, 100 )
			else
				LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 54, 100 )
			end
		end
	end

	-- ¸üĞÂ´ò½ÙÉÌÈËµÄÊı¾İ
	CallScriptFunction( 311012, "UpdataDacoityData", sceneId, playerId )
end

--ÅĞ¶ÏÊÇ·ñÊÇ°ï»áÖ÷Á¦
function x888888_IsGuildVip( Guildpos  )
    if (   (Guildpos == GUILD_POSITION_CHIEFTAIN) 
	    or (Guildpos == GUILD_POSITION_ASS_CHIEFTAIN)
	    or (Guildpos == GUILD_POSITION_HR)
	    or (Guildpos == GUILD_POSITION_INDUSTRY)
	    or (Guildpos == GUILD_POSITION_AGRI)
	    or (Guildpos == GUILD_POSITION_COM) 
	    or (Guildpos == GUILD_POSITION_ELITE_MEMBER) 
	   )then
        return 1;
		end
		return 0;
end


function x888888_OnSceneHumanDie( sceneId, selfId, killerId )
	--Íæ¼ÒËÀÍöºó½Å±¾ÊÂ¼ş
	sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType == 1 then --³¡¾°ÀàĞÍÊÇ¸±±¾
		copyscenescript = LuaFnGetCopySceneData_Param(sceneId,1) ; --È¡µÃ½Å±¾ºÅ
		CallScriptFunction( copyscenescript, "OnHumanDie", sceneId, selfId, killerId )
	end
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		--ÔÚ´ËÖ®Ç°Ó¦¸Ã¼ì²âÊÇ·ñPVPËÀÍö
		--Èç¹ûÔÚäîÔËÊ±ËÀÍö
		CallScriptFunction( 311010, "OnHumanDie", sceneId, selfId, killerId )
		CallScriptFunction( 311012, "OnDacoity", sceneId, selfId, killerId )
	end
	
	-- Èç¹ûÍæ¼ÒÏÖÔÚÊÇÔÚ»ªÉ½ÂÛ½£³¡¾°±»É±£¬hongyu£¬
	if sceneId == x888888_g_HS_PK_SceneId    then
		CallScriptFunction((001233), "OnSceneHumanDie",sceneId, selfId, killerId)
	end
	
	-- Èç¹ûÍæ¼ÒÊÇÔÚ ¾º¼¼³¡ ±»É±
	if sceneId == x888888_g_jingji_SceneId    then
		CallScriptFunction((125020), "OnSceneHumanDie",sceneId, selfId, killerId)
	end

	-- Èç¹ûÍæ¼ÒÊÇÔÚ ¾º¼¼³¡ ±»É±
	if sceneId == 410    then
		CallScriptFunction((891000), "OnSceneHumanDie",sceneId, selfId, killerId)
	end
	
	--°ï»áÕ½ÕùÇé¿ö
	if IsInGuildWar(sceneId, selfId, killerId) == 1 then
	
		local Guildpos = GetGuildPos(sceneId, selfId)
		if ( x888888_IsGuildVip(Guildpos)==1 ) then
			local selfName = GetName(sceneId, selfId);
			local guildName_self = LuaFnGetGuildName(sceneId, selfId);
			
			local killerName = GetName(sceneId, killerId);
			local guildName_killer = LuaFnGetGuildName(sceneId, killerId);
			
			local sMessage = format("@*;SrvMsg;GLD:#WB±n bang chü lñc #R%s#W — bang chiªn ğçm máu chiªn ğ¤u hång hái, không ğ¸ch lÕi #G%s#W cüa Bang hµi #R%s#W. Vì bang hµi anh dûng hiªn thân!", selfName, guildName_killer ,killerName);	
			BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
			
			sMessage = format("@*;SrvMsg;GLD:#R%s#W — bang chiªn ğÕi tri¬n thân thü, giªt chªt #G%s#W Bang hµi chü lñc #R%s#W, vë vang bäo v® bang hµi.", killerName, guildName_self, selfName);	
			BroadMsgByChatPipe(sceneId, killerId, sMessage, 6);
		end
		
	end

end

--¿ÉÒÔÉı¼¶µÄÊÂ¼ş´¦Àíº¯Êı
function x888888_OnCanLevelup(sceneId, objId)
	local playerLevel = GetLevel(sceneId, objId)
	if playerLevel >= 10 and playerLevel <= 14 then
		LuaFnSendSystemMail(sceneId, GetName(sceneId, objId), "Các hÕ có th¬ m· #gfff0f0#WGiao di®n nhân v§t (¤n Alt + C)#g000000#W, ¤n vào #gfff0f0#WNút thång c¤p#g000000#W bên phäi phía dß¾i giao di®n là có th¬ tång ğÆng c¤p nhân v§t cüa các hÕ, ğß½ng nhiên các hÕ có th¬ lßu giæ kinh nghi®m, #gfff0f0#WH÷c t§p kÛ nång tÕi sß môn cüa mình #g000000#W")
	end
end

function x888888_OnSceneHumanLevelUp( sceneId, objId, level )

	if	IsHaveMission(sceneId,objId,718) > 0	 then
			misIndex = GetMissionIndexByID(sceneId,objId,718)
			SetMissionByIndex( sceneId, objId, misIndex, 1, level)
			if level >= 10 then
				SetMissionByIndex( sceneId, objId, misIndex, 0, 1)
			end
	end

--ÏàÓ¦µÈ¼¶·¢ËÍÓÊ¼ş
	if level > 1 then
		local looptime = 1
		local mailnum = x888888_g_MailNum[level][2]
		if mailnum > 0 then
			while looptime <= mailnum do
				--PrintStr("#{LevelMail_"..level.."_"..looptime.."}")
				LuaFnSendSystemMail( sceneId, GetName(sceneId,objId), "#{LevelMail_"..level.."_"..looptime.."}" )
				looptime = looptime + 1
			end
		end
	end
	
	--Í½µÜÉıµ½45Ê±ºò£¬³öÊ¦ÉèÖÃ³öÊ¦±êÖ¾
	if LuaFnHaveMaster( sceneId, objId ) ~= 0  and level == 45 then
			SetMissionFlag(sceneId, objId, MF_ShiTu_ChuShi_Flag, 1)
	end
	
	--Í½µÜÉı¼¶¸øÊ¦¸¸³é½±µÄ»ú»á
	if level == 40 or level == 50 then
		--local stbegin = 7285; --10.12
		local stbegin = 7304; --11.01
		local stend		= 7325; --11.22
		local stprize = {[40]=40004432,[50]=40004433}
		local strtip	= {[40]="Danh hi®u",[50]="Danh hi®u ğ£c bi®t"}
		
		local curDayTime = GetDayTime()
		local MasterGUID = LuaFnGetMasterGUID( sceneId, objId )
		
		if curDayTime >= stbegin and curDayTime <= stend and MasterGUID ~= -1 then
			if LuaFnHaveMaster( sceneId, objId ) ~= 0 then
				local MasterName = LuaFnGetFriendName( sceneId, objId, MasterGUID )
				--·¢ËÍÒ»·âÆÕÍ¨ÓÊ¼ş¸øÊ¦¸µ
				LuaFnSendSystemMail( sceneId, MasterName, "Ğ° ğ® cüa các hÕ "..GetName(sceneId,objId).." ğã thång c¤p thành công lên c¤p "..tostring(level)..". Hi®n tÕi Thiên Long Bát Bµ ğang có hoÕt ğµng #GTân binh ğoÕt bäo#W, các hÕ có th¬ dçn ğ° ğ® ğªn LÕc Dß½ng - Cüng Thái L® tham gia "..strtip[level].."." )
				--·¢ËÍÒ»·â½±ÀøÖ´ĞĞÓÊ¼ş¸øÊ¦¸µ
				LuaFnSendScriptMail( sceneId, MasterName, MAIL_SHITUPRIZE, level, stprize[level], 1)
				--·¢ËÍÏµÍ³¹«¸æ¸øÈ«ÊÀ½ç
				local uname = format("#{_INFOUSR%s}",GetName(sceneId,objId))
				local oname = format("#{_INFOUSR%s}",MasterName)
				local str = format("%s#P kinh l¸ch cØu cØu bát th§p nh¤t nan, chung qui thu§n lşi thång lên #Yc¤p %d#P. Hi®n tÕi Thiên Long Bát Bµ ğang trong th¶i gian hoÕt ğµng #GTân binh ğoÕt bäo#W, l¥n này sß phø %s#P ğßşc mµt c½ hµi tham gia #Y%s#P nh§n thß·ng!",uname,level,oname,strtip[level])
				BroadMsgByChatPipe(sceneId, objId, str, 4)
			end
		end
	end

	--2007Ê¥µ®Ôªµ©»î¶¯....Ï²´ÓÌì½µ»î¶¯....
	CallScriptFunction( 050022, "OnPlayerLevelUp", sceneId, objId )

	--Ê¦Í½×Ü¶¯Ô±
	CallScriptFunction( 806020, "OnPlayerLevelUp", sceneId, objId )
		
	-- ¸ø´ïµ½µÈ¼¶ÒªÇóµÄÍæ¼ÒÌí¼ÓÈÎÎñ
	-- [ QUFEI 2008-04-17 14:18 UPDATE BugID 33891 ]
	x888888_OnAutoAcceptMission( sceneId, objId, level )
	
	-- ¸øÂú×ãÍê³ÉÌõ¼şµÄÈÎÎñÉèÖÃÈÎÎñÍê³É±êÖ¾
	x888888_OnSetCompleteMission( sceneId, objId, level )
	
end

--Íæ¼Ò¸ü»»ÃÅÅÉ
function x888888_OnSceneHumanChangeMenpai( sceneId, objId, Menpai )
	if	IsHaveMission(sceneId,objId,719) > 0	 then
			misIndex = GetMissionIndexByID(sceneId,objId,719)
			if( Menpai >= 0 and Menpai < 9 ) then
			    SetMissionByIndex( sceneId, objId, misIndex, 1, 1)
			    SetMissionByIndex( sceneId, objId, misIndex, 0, 1)
			end
	end
end

function x888888_OnSceneNotify( sceneId, destsceneId )
--sceneId Îª¸±±¾Èë¿ÚËùÔÚ³¡¾°ID, destsceneIdÎª¸±±¾³¡¾°ID
--´Ëº¯ÊıÏìÓ¦µ÷ÓÃ±íÊ¾¸±±¾³¡¾°ÒÑ¾­³õÊ¼»¯Íê³É£¬¿ÉÒÔ´«ËÍÍæ¼ÒÁË

	destsceneType = LuaFnGetSceneType(destsceneId) ;

	if destsceneType == 1 then --³¡¾°ÀàĞÍÊÇ¸±±¾

		copyscenetype = LuaFnGetCopySceneData_Param(destsceneId,0) ;--È¡µÃ¸±±¾ºÅ
		copyscenescript = LuaFnGetCopySceneData_Param(destsceneId,1) ; --È¡µÃ½Å±¾ºÅ

		if copyscenetype==FUBEN_EXAMPLE then --Àı×Ó
			--Àı×Ó²»Ìá¹©³¡¾°Æô¶¯ÊÂ¼ş
			print("Không th?s?døng ph?bän, cänh không ph?hşp!")
		elseif copyscenetype==FUBEN_EXAMPLE then --
			CallScriptFunction( copyscenescript, "OnCopySceneReady", sceneId, destsceneId ) ;
		elseif copyscenetype==FUBEN_MURENXIANG_7 then --7¼¶Ä¾ÈËÏï¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneReady", sceneId, destsceneId ) ;
		elseif copyscenetype==FUBEN_MURENXIANG_9 then --9¼¶Ä¾ÈËÏï¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneReady", sceneId, destsceneId ) ;
		elseif copyscenetype==FUBEN_MURENXIANG then --±ê×¼Ä¾ÈËÏï¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneReady", sceneId, destsceneId ) ;
		elseif copyscenetype==FUBEN_SHUILAO then --Ë®ÀÎ¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneReady", sceneId, destsceneId ) ;
		elseif copyscenetype==FUBEN_ZHENGLONG then --ÕôÁıÆå¾Ö¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneReady", sceneId, destsceneId ) ;
		elseif copyscenetype==FUBEN_PVP_LEITAI then --ÀŞÌ¨¸±±¾
			CallScriptFunction( copyscenescript, "OnCopySceneReady", sceneId, destsceneId ) ;
		else
			CallScriptFunction( copyscenescript, "OnCopySceneReady", sceneId, destsceneId ) ;
		end
	end
end

-- ÎÊÂ·
function x888888_AskTheWay( sceneId, selfId, sceneNum, x, y, tip )
	Msg2Player( sceneId, selfId, "@*;flagNPC;" .. sceneNum .. ";" .. x .. ";" .. y .. ";" .. tip, MSG2PLAYER_PARA )
	Msg2Player( sceneId, selfId, "@*;flashNPC;" .. sceneNum .. ";" .. x .. ";" .. y .. ";" .. tip, MSG2PLAYER_PARA )
end

-- ÎÊÂ·(×ø±ê)
function x888888_AskThePos( sceneId, selfId, sceneNum, x, y, tip )
	Msg2Player( sceneId, selfId, "@*;flagPOS;" .. sceneNum .. ";" .. x .. ";" .. y .. ";" .. tip, MSG2PLAYER_PARA )
	Msg2Player( sceneId, selfId, "@*;flashPOS;" .. sceneNum .. ";" .. x .. ";" .. y .. ";" .. tip, MSG2PLAYER_PARA )
end

-- È¥µôÎÊÂ·±ê¼Ç
function x888888_DelSignpost( sceneId, selfId, sceneNum, npcName )
	Msg2Player( sceneId, selfId, "@*;flagNPCdel;" .. sceneNum .. ";" .. npcName, MSG2PLAYER_PARA )
	Msg2Player( sceneId, selfId, "@*;flashNPCdel;" .. sceneNum .. ";" .. npcName, MSG2PLAYER_PARA )
end

-- ²¥·ÅÒôĞ§£¬UICommandID = 1234
function x888888_PlaySoundEffect( sceneId, selfId, soundId )
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, soundId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1234)
end

--ÈÎÎñ½ÓÊÜ¼ì²â
function x888888_OnAcceptMissionCheck( sceneId, selfId, missionScript )
	if GetMissionCount(sceneId, selfId)>=20 then
		BeginEvent(sceneId)
			strText = "Giao di®n nhi®m vø ğã ğ¥y!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end

	return 1
end

--Íæ¼Ò½ÇÉ«Ê±ÖÓÊÂ¼ş
function x888888_OnScenePlayerTimer( sceneId, selfId, nowtime )
	--Èç¹ûÓĞäîÔËÈÎÎñ
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		CallScriptFunction( 311010, "OnPlayerCaoyunTimer", sceneId, selfId )
	else
		SetCharacterTimer( sceneId, selfId, 0 )
	end
end

--Íæ¼Ò½ÇÉ«µÇÂ½ÓÎÏ·ÊÂ¼ş, ´ËÊÂ¼ş»áÔÚÍæ¼Òµ÷ÓÃx888888_OnScenePlayerEnterÊÂ¼şÖ®ºóµ÷ÓÃ
function x888888_OnScenePlayerLogin( sceneId, selfId, nowtime )
	CallScriptFunction( 888890, "OnDefaultEvent", sceneId, selfId )

	-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
	CallScriptFunction( 200099, "InitRelation", sceneId, selfId )
	
	--ÔÚÎåÒ»ÆÚ¼ä·¢ÓÊ¼ş:ÎåÒ»ÁìÈ¡ÕĞÅÆ»î¶¯	--add by xindefeng
	CallScriptFunction( 808090, "OnPlayerLogin", sceneId, selfId )
	-- ÎåÒ»»î¶¯£¬·¢ËÍÓÊ¼ş
	CallScriptFunction( 808091, "OnPlayerLogin", sceneId, selfId )
	
	-- ³õÊ¼»¯¿Í»§¶ËµÇÂ½ÆÚµÄ½çÃæ²Ù×÷
	CallScriptFunction( 870001, "UISystemOnLogin", sceneId, selfId )
	

	-- Ê¦Í½×Ü¶¯Ô±£¬·¢ËÍÓÊ¼ş
	CallScriptFunction( 806020, "OnPlayerLogin", sceneId, selfId )	
	
	--ÀëÏß¾­ÑéÀ¡ÔùÈÎÎñ
	CallScriptFunction( 500619, "CheckUnlineGift", sceneId, selfId )
	
	--µç»°ÃÜ±£µÄÓÊ¼şÌáÊ¾¡£²ß»®ÒªÇóÔİÊ±¹Ø±ÕÓÊ¼şÌáÊ¾ by hukai #38665
	--CallScriptFunction( 210245, "SendMail", sceneId, selfId, nowtime )
	-- ÉèÖÃÍæ¼ÒÑ§»á¡°°ïÅÉÊÕ¼¯¡±¼¼ÄÜ
	if QueryHumanAbilityLevel(sceneId, selfId, 50) < 1 then
		SetHumanAbilityLevel(sceneId, selfId, 50, 1);
	end
	-- ÉèÖÃÍæ¼ÒÑ§»á°ïÕ½ÖĞ²É¿ó¼¼ÄÜ
	if QueryHumanAbilityLevel(sceneId, selfId, 51) < 1 then
		SetHumanAbilityLevel(sceneId, selfId, 51, 1);
	end	
	
	--ºÍĞ³¹â»·
	CallScriptFunction( 808124, "OnPlayerLogin", sceneId, selfId )
	
	--°µÆ÷ÌáÊ¾ÓÊ¼ş
	CallScriptFunction( 332207, "NotifyMailOnLogin", sceneId, selfId )

	x888888_AskDeleteMinorPasswordTime(sceneId, selfId) 
	-- ÓŞÈË½Ú»î¶¯£¬·¢Í¨¸æ
	CallScriptFunction( 808079, "OnPlayerLogin", sceneId, selfId )
	
	-- ÌìÁú¼ÎÄê»ª
	-- CallScriptFunction( 889055, "OnPlayerLogin", sceneId, selfId )
	--ÌìÁúÉÏÏß¹«¸æ
	CallScriptFunction( 380002, "OnDefaultEvent", sceneId, selfId )
	--ĞŞÁ¶ÊôĞÔ
	CallScriptFunction( 002193, "ReturnAttr", sceneId, selfId )	
end

--Íæ¼Ò´´½¨½ÇÉ«ºóµÚÒ»´ÎµÇÂ½ÓÎÏ·ÊÂ¼ş, ´ËÊÂ¼ş»áÔÚÍæ¼Òµ÷ÓÃx888888_OnScenePlayerEnterÊÂ
--¼şÖ®ºó¡¢x888888_OnScenePlayerLoginÊÂ¼şÖ®Ç°µ÷ÓÃ
function x888888_OnScenePlayerFirstLogin( sceneId, selfId, nowtime )
	SetMissionData(sceneId, selfId, XIULIAN_LILIANG, 0);
	SetMissionData(sceneId, selfId, XIULIAN_LINGQI, 0);
	SetMissionData(sceneId, selfId, XIULIAN_TILI, 0);
	SetMissionData(sceneId, selfId, XIULIAN_DINGLI, 0);
	SetMissionData(sceneId, selfId, XIULIAN_SHENFA, 0);

	local  PlayerName=GetName(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " thiªu hi®p "
	end
	LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{DLYJ_081009_01}"..PlayerName..PlayerSex.."#{DLYJ_081009_02}" )
	LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#e00f000Nh¡c nhö: #e000000#r#rBän ğ° nhö · góc trên bên phäi hi¬n th¸ #GToÕ ğµ#W hi®n tÕi cüa các hÕ. #Y„n chuµt phäi#W và giæ nguyên r°i d¸ch chuy¬n sang hai bên là có th¬ xoay tròn, ¤n chuµt trái có th¬ hành t¦u. #Y„n chuµt phäi#W giæ cho chuy¬n ğµng sang trái phäi, có th¬ xoay chuy¬n hi¬n th¸ góc nhìn. #YVòng tròn trên con chuµt#W di chuy¬n t¾i lui trß¾c sau, có th¬ ği«u chïnh t¥m nhìn xa hay g¥n. #GALT+HOME/END#W#Y có th¬ thay ğ±i góc nhìn#W." )
	
	CallScriptFunction( 808065, "SendMail", sceneId, selfId )

	--ĞÂÊÖÉÏÏßÔùËÍÒ»¸öĞÂÀ¶¹â»·
        --LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 8000, 0)

	local ItemID ={10100100,10101100,10102100,10103100,10104100,10105100}
	local i = random(1,6)

	BeginAddItem(sceneId)

	--ËÍ¸øÍæ¼ÒÒ»¸ö½­ºş¸ÉÀ¤´ü
	local WorldReferenceID = 10141581 --Canh: Tuyet Vu--
	local WorldReferenceID1 = 10141030 --Bach Bao Nang--
	local WorldReferenceID2 = 31000115 --Tan Thu Le Bao--
	local WorldReferenceID3 = 30008014 --X2.5 Exp--
	local DenglongID = 30008014
	local UniverseBagID = 30008030
	AddItem( sceneId, 30308021, 1 ) --Giang Ho Chi Nam--
	AddItem( sceneId, 10124302, 1 ) --Thoi Trang Tan Thu--
	AddItem( sceneId, WorldReferenceID, 1 )
	AddItem( sceneId, WorldReferenceID1, 1 )
	AddItem( sceneId, WorldReferenceID2, 1 )
	AddItem( sceneId, WorldReferenceID3, 1 )

	--AddItem( sceneId, UniverseBagID, 1 )

	local nowYear = GetTodayYear();
	local nowMonth = GetTodayMonth();
	local nowDate = GetTodayDate();
	
	--PrintNum(nowYear);
	--PrintNum(nowMonth);
	--PrintNum(nowDate);
	
	if (nowYear == 2008) then
		if(nowMonth==0) then
			if(nowDate>=16 and nowDate<=27) then
				AddItem( sceneId, DenglongID, 1 )
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{TQLQ_20071218_01}" )
			end
		end
	end
	
	--AddItem( sceneId,ItemID[i],1)

	EndAddItem(sceneId,selfId)
	AddItemListToHuman(sceneId,selfId)
	--Ôö¼ÓÁìÈ¡¸ÉÀ¤´ü±êÖ¾
	SetMissionFlag(sceneId, selfId, MF_GetQianKunDai, 1)

	AddMission( sceneId,selfId, 718, 210238, 0, 0, 0 )

	SetMissionData( sceneId, selfId, MD_RELATION_QIANHONGYU, 500 )	-- ÉèÖÃºÍÇ®ºêÓîµÄ³õÊ¼¹ØÏµ

	--Ë«ÏìÅÚÌáÊ¾ÓÊ¼ş....
	CallScriptFunction( 808075, "OnPlayerFirstLogin", sceneId, selfId )
	
end

-- Í³Ò»×öÒ»¸ö¼ì²é
function x888888_CheckSubmit( sceneId, selfId, missionId )
	local bHave = IsHaveMission( sceneId, selfId, missionId )
	local bHaveDone = IsMissionHaveDone( sceneId, selfId, missionId )

	-- Ã»ÓĞ½Ó
	if bHave <= 0 then
		return 0
	end

	-- ÒÑ¾­Íê³É¹ı
	if bHaveDone >= 1 then
		return 0
	end

	return 1
end

-- ³¡¾°ÖĞµÄ½ÇÉ«¿ªÆô³ğÉ±
function x888888_OnScenePlayerOpenRevenge(sceneId, openerGUID, targetGUID)
	LuaFnSendMailToGUID(sceneId, openerGUID, "Các hÕ ğã tuyên chiªn v¾i ğ¯i phß½ng!")
	LuaFnSendMailToGUID(sceneId, targetGUID, "Hành t¦u giang h°, ğ×ng gây chuy®n sinh sñ, có ngß¶i ğ® ğ½n giªt ngß½i, ğã ğßşc phê chu¦n. Giai ğoÕn này ngß½i phäi chú ı an toàn thì t¯t h½n!")
	return 1
end

-- ³¡¾°ÖĞµÄ½ÇÉ«¹Ø±Õ³ğÉ±
function x888888_OnScenePlayerCloseRevenge(sceneId, openerGUID, targetGUID)
	LuaFnSendMailToGUID(sceneId, openerGUID, "Các hÕ ğã kªt thúc tuyên chiªn v¾i ğ¯i phß½ng!")
	LuaFnSendMailToGUID(sceneId, targetGUID, "İ mu¯n tuyên chiªn cüa các hÕ ğã d×ng lÕi!")

	return 1
end

function x888888_PlayBackSound( sceneId, selfId, soundId )
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, soundId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 124)
end

function x888888_StopBackSound( sceneId, selfId, soundId )
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, soundId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 125)
end

-- Ò»ÏÂÊÇ¿ª·Å¸ø²ß»®Ê¹ÓÃµÄÓÃ½Å±¾Ó°ÏìÍæ¼ÒµÄHP¡¢MP¡¢Vigor¡¢VigorRegenerate¡¢Energy¡¢EnergyRegenerateÊôĞÔ×î´óÖµ
-- Hp×î´óÖµĞŞÕı
function x888888_MaxHpRefix( sceneId, selfId )
  local nValue = 0
  local nAbilityID = 40 --Ó°ÏìHP×î´óÖµµÄÉú»î¼¼ÄÜµÄID
  local nMulti = 1 --HP×î´óÖµµÃÓ°ÏìÏµÊı
  nValue = QueryHumanAbilityLevel(sceneId, selfId, nAbilityID) * nMulti;
  return nValue
end

-- Mp×î´óÖµĞŞÕı
function x888888_MaxMpRefix( sceneId, selfId)
  local nValue = 0
  local nAbilityID = 41 --Ó°ÏìMP×î´óÖµµÄÉú»î¼¼ÄÜµÄID
  local nMulti = 1 --MP×î´óÖµµÃÓ°ÏìÏµÊı
  nValue = QueryHumanAbilityLevel(sceneId, selfId, nAbilityID) * nMulti;
  return nValue
end
-- Vigor×î´óÖµĞŞÕı
function x888888_MaxVigorRefix( sceneId, selfId)
  local nValue = 0
  local nAbilityID = 42 --Ó°ÏìVigor×î´óÖµµÄÉú»î¼¼ÄÜµÄID
  local nMulti = 1 --HP×î´óÖµµÃÓ°ÏìÏµÊı
  nValue = QueryHumanAbilityLevel(sceneId, selfId, nAbilityID) * nMulti;
  return nValue
end
-- VigorRegenerateÖµĞŞÕı
function x888888_VigorRegenerateRefix( sceneId, selfId)
  local nValue
  local nAbilityID = 44 --Ó°ÏìVigorRegenerateÖµµÄÉú»î¼¼ÄÜµÄID
  local nMulti = 1 --HP×î´óÖµµÃÓ°ÏìÏµÊı
  nValue = QueryHumanAbilityLevel(sceneId, selfId, nAbilityID) * nMulti;
  return nValue
end
-- Energy×î´óÖµĞŞÕı
function x888888_MaxEnergyRefix( sceneId, selfId)
  local nValue
  local nAbilityID = 43 --Ó°ÏìEnergy×î´óÖµµÄÉú»î¼¼ÄÜµÄID
  local nMulti = 1 --Energy×î´óÖµµÃÓ°ÏìÏµÊı
  nValue = QueryHumanAbilityLevel(sceneId, selfId, nAbilityID) * nMulti;
  return nValue
end
-- EnergyRegenerateÖµĞŞÕı
function x888888_EnergyRegenerateRefix( sceneId, selfId)
  local nValue
  local nAbilityID = 45 --Ó°ÏìEnergyRegenerateÖµµÄÉú»î¼¼ÄÜµÄID
  local nMulti = 1 --HP×î´óÖµµÃÓ°ÏìÏµÊı
  nValue = QueryHumanAbilityLevel(sceneId, selfId, nAbilityID) * nMulti;
  return nValue
end

function x888888_OnPlayerPickupItemFromDropBox(sceneId, selfId, itemId, bagidx, bGem)

	local playerName = GetName(sceneId, selfId)
	local itemName = GetItemName(sceneId, itemId)
	local transfer = GetBagItemTransfer(sceneId,selfId,bagidx)

	-- ¹ÅÄ¹ ×°±¸µôÂäµÄÊÀ½ç¹«¸æ
--	if itemId == 10401002 or
--		 itemId == 10401003 or
--		 itemId == 10401004 or
--		 itemId == 10403002 or
--		 itemId == 10403003 or
--		 itemId == 10403004 or
--		 itemId == 10405001 or
--		 itemId == 10405002 or
--		 itemId == 10405003 or
		 
--		 itemId == 10404002 or
--		 itemId == 10404003 or
--		 itemId == 10404004    then
		
--		CallScriptFunction( 212220, "ItemBulletin", sceneId, selfId, itemId, bagidx, bGem ) ;
		
--	end
	
	-- ¼ñµ½ÁúÖéµÄÊÀ½ç¹«¸æ
	if itemId == 30505136 or
		 itemId == 30505137 or
		 itemId == 30505138 or
		 itemId == 30505139 or
		 itemId == 30505140 or
		 itemId == 30505141 or
		 itemId == 30505142    then
		
		CallScriptFunction( 808058, "PlayerPickUpLongZhu", sceneId, selfId, bagidx ) ;
		
	end
	
	--»ñµÃÌ«ÑôËéÆ¬¹«¸æ....
	if itemId == 30505120 then
		CallScriptFunction( 210242, "PickupItem", sceneId, selfId, itemId, bagidx ) ;
	end
	
	--»ñµÃ¶ëÃ¼¼¼ÄÜ
	if itemId == 30308043 and sceneId == 25 then

		local TeammateCount = GetTeamMemberCount( sceneId, selfId );
		local sNameBroad = playerName;


		local randMessage = random(3);
		if randMessage == 1 then
	   		message = format("#{JinGang_00}#W#{_INFOUSR%s}#P#{JinGang_01}#W#{_INFOUSR%s}#P#{JinGang_02}#{_INFOMSG%s}¡£", sNameBroad, sNameBroad, transfer );
		elseif randMessage == 2 then
			message = format("#{JinGang_03}#W#{_INFOUSR%s}#P#{JinGang_04}#{_INFOMSG%s}#P#{JinGang_05}", sNameBroad, transfer );
		else
			message = format("#{JinGang_06}#W#{_INFOUSR%s}#P#{JinGang_07}#W#{_INFOUSR%s}#P#{JinGang_08}#{_INFOMSG%s}#P#{JinGang_09}", sNameBroad, sNameBroad, transfer );
		end
		BroadMsgByChatPipe(sceneId, selfId, message, 4);

		return 0;
	end
	--»ñµÃÉÙÁÖ¼¼ÄÜ
	if itemId == 30308045 and sceneId == 32 then

		local TeammateCount = GetTeamMemberCount( sceneId, selfId );
		local sNameBroad = playerName;

		local randMessage = random(3);
		if randMessage == 1 then
	   		message = format("#{JinGang_10}#W#{_INFOUSR%s}#P#{JinGang_11}#W#{_INFOUSR%s}#P#{JinGang_12}#{_INFOMSG%s}#P#{JinGang_13}", sNameBroad, sNameBroad, transfer );
		elseif randMessage == 2 then
			message = format("#{JinGang_14}#W#{_INFOUSR%s}#P#{JinGang_15}#W#{_INFOUSR%s}#P#{JinGang_16}#{_INFOMSG%s}#P#{JinGang_17}", sNameBroad, sNameBroad, transfer );
		else
			message = format("#{JinGang_18}#W#{_INFOUSR%s}#P#{JinGang_19}#{_INFOMSG%s}#P#{JinGang_20}", sNameBroad, transfer );
		end
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		return 0;
	end

	--¾µºşÇ§Äê²İ
	if itemId == 40004414 then
		local nCurTime = LuaFnGetCurrentTime()
		local nItemBagIndex = GetBagPosByItemSn(sceneId, selfId, 40004414);
		SetBagItemParam( sceneId, selfId, nItemBagIndex, 4, 2, nCurTime )
		return 0;
	end

	--07Ê¥µ®Ôªµ©»î¶¯....
	--Ê¥µ®ÊØÒ¹»î¶¯....ÂåÑôÑ©ÈËÉ¢Âä±¦ÏäÊ°È¡¹«¸æ....
	local bSend = 0
	if sceneId == 0 then
		bSend = CallScriptFunction( 050023, "OnPlayerPickUpItemInLuoyang", sceneId, selfId, itemId, bagidx )
	end
	if bSend == 1 then
		return
	end

	--ÉúËÀ¶á±¦Ê°È¡¹«¸æ....
	local bSend = 0
	if sceneId == 410 then
		bSend = CallScriptFunction( 891000, "OnPlayerPickUpItemInLuoyang", sceneId, selfId, itemId, bagidx )
	end
	if bSend == 1 then
		return
	end

	--º®Óñ´²±¦ÏäÊ°È¡¹«¸æ....
	if sceneId == x888888_g_HanYuBed_SceneId and bGem == 3 then
		CallScriptFunction( 808072, "OnPlayerPickUpItemInHanYuBed", sceneId, selfId, itemId, bagidx )
	end


	--ÄêÊŞµÃÎïÆ·¹«¸æ....
	if sceneId == x888888_g_NianShou_SceneId then
		CallScriptFunction( 050052, "OnPlayerPickUpItemInNianShou", sceneId, selfId, itemId, bagidx )
	end
	
	--Ê¥ÊŞÉ½»ñµÃÒ°ÖíÍõ×Ù¼£¹«¸æ....
	--[ QUFEI 2008-04-16 14:38 UPDATE BugID 31936 ]
	if itemId == 40004429 then
		CallScriptFunction( 808066, "OnPlayerPickUpItemInBoar", sceneId, selfId, itemId, bagidx ) ;
	end
	
	
	local str
	if bGem == 1 then
		local a = { "#W#{_INFOUSR%s}#cffffcc trong lúc m· Bäo Sß½ng ğã l¤y ğßşc 1 miªng#W#{_INFOMSG%s}. ",
								"#W#{_INFOUSR%s}#cffffcc trong lúc chu¦n b¸ ğóng thùng Bäo Sß½ng lÕi phát hi®n trong g¯c thùng có 1 miªng#W#{_INFOMSG%s}. ",
								"#W#{_INFOUSR%s}#cffffcc dùng chân ğá vào Bäo Sß½ng, b²ng 1 miªng#W#{_INFOMSG%s} r½i ra ngoài."
							}
		local index = random(getn(a))
		str = format(a[index], playerName, transfer)
		BroadMsgByChatPipe(sceneId, selfId, str, 4)

	elseif  bGem == 2 then

		--µ±Íæ¼Ò»ñµÃ35¼¶ĞÄ·¨ÃØ¼®¼°65¼¶Îä¹¦ÃØ¼®£¬»áÔÚÊÀ½ç¹«¸æ
		local bFlag = 0;
		--for i = 0, 8 do
		--	if ( x888888_MenPaiBroadMsg[ i ].XinFa == itemId ) or ( x888888_MenPaiBroadMsg[ i ].MiJi == itemId ) then
		--		bFlag = 1;
		--		break;
		--	end
		--end

		if bFlag > 0 then

			local TeammateCount = GetTeamMemberCount( sceneId, selfId )
			local sTeamLeaderName = playerName;
			for i=0, TeammateCount-1 do
				TeammateID = GetNearTeamMember( sceneId, selfId, i )
				if LuaFnIsTeamLeader( sceneId, selfId ) then
					sTeamLeaderName = GetName(sceneId, selfId);
					break;
				end
			end

			local mp = LuaFnGetCopySceneData_Param(sceneId, 11);
			local mpName = x888888_MenPaiBroadMsg[mp].mp;

			local message;

			local randMessage = random(3);

			if randMessage == 1 then
	   			message = format("#W#{_INFOUSR%s}#P#{DropItem_00}#G%s#P#{DropItem_01}#Y%s#P#{DropItem_02}#{_INFOMSG%s}#P#{DropItem_03}", sTeamLeaderName, mpName, mpName, transfer );
			elseif randMessage == 2 then
				message = format("#{DropItem_04}#G%s#P#{DropItem_05}#W#{_INFOUSR%s}#P#{DropItem_06}#{_INFOMSG%s}#P#{DropItem_07}", mpName, sTeamLeaderName, transfer );
			else
				message = format("#{DropItem_08}#G%s#P#{DropItem_09}#W#{_INFOUSR%s}#P#{DropItem_10}#{_INFOUSR%s}#P#{DropItem_11}#{_INFOMSG%s}#P#{DropItem_12}", mpName, sTeamLeaderName,sTeamLeaderName, transfer );
			end
			BroadMsgByChatPipe(sceneId, selfId, message, 4);
		end

	elseif bGem == 0 then

		local a = { "#W#{_INFOUSR%s}#cffffcc trong lúc m· Bäo Sß½ng ğã l¤y ğßşc #W#{_INFOMSG%s}. ",
								"#W#{_INFOUSR%s}#cffffcc phát hi®n trong g¯c thùng Bäo Sß½ng có 1 t¤m #W#{_INFOMSG%s} cû nát.",
								"#W#{_INFOUSR%s}#cffffcc l§t ngßşc Bäo Sß½ng lÕi, phát hi®n 1 t¤m #W#{_INFOMSG%s}#cffffcc dán dß¾i ğáy thùng Bäo Sß½ng."
							}
		local index = random(getn(a))
		str = format(a[index], playerName, transfer)
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
		
	elseif bGem == 3 then
		
		--¼¼ÄÜÊé±¦Ïä¹«¸æ
		local	rnd	= random( 3 )
		local	msg	= nil
		local	fnd	= 0
		local	lst	=
		{
			30402012, 30402014, 30402016, 30402018, 30402020, 
			30402025, 30402026, 30402029, 30402030, 30402033, 
			30402034, 30402035, 30402036, 30402037, 30402038, 
			30402039, 30402040, 30402041, 30402042, 30402043, 
			30402044, 30402045, 30402046, 30402047, 30402048, 
			30402049, 30402050, 30402051, 30402052, 30402053, 
			30402054, 30402055, 30402056, 30402059, 30402060, 
			30402061, 30402062, 30402063, 30402064, 30402065, 
			30402066, 30402067, 30402068, 30402069, 30402070, 
			30402072, 30402073, 30402074, 30402075, 30402076, 
			30402077, 30402078, 30402079, 30402080, 30402081, 
			30402082, 30402083, 30402084, 30402085, 30402086, 
			30402087, 30402088, 30402089, 30402090,	
		}
		for i = 1, getn( lst ) do
			if lst[ i ] == itemId then
				fnd		= 1
				break
			end
		end
		if fnd == 1 then
			if rnd == 1 then
		   	msg	= format( "#W#{_INFOUSR%s}#I trong lúc m· Bäo Sß½ng ğã l¤y ğßşc 1 quy¬n #W#{_INFOMSG%s}.",
		   					playerName, transfer )
			elseif rnd == 2 then
				msg	= format( "#W#{_INFOUSR%s}#I trong lúc chu¦n b¸ ğóng thùng Bäo Sß½ng lÕi phát hi®n trong g¯c thùng có 1 quy¬n #W#{_INFOMSG%s} cû nát.",
								playerName, transfer )
			else
				msg	= format( "#W#{_INFOUSR%s}#I dùng chân ğá vào Bäo Sß½ng, phát hi®n mµt quy¬n #W#{_INFOMSG%s}#I dán tÕi ğáy hòm.",
								playerName, transfer )
			end
			BroadMsgByChatPipe( sceneId, selfId, msg, 4 )
			return
		end

	end
	
	-- ñÒÉÙÎ¢£¬2008.6.10¡£ÊøºÓ¹ÅÕò420£¬ÏûÃğËªÓ°BOSSÍ³¼Æ...
	if sceneId == 420 then
		CallScriptFunction( 808040, "OnPlayerPickUpItemFromShangyingBoss", sceneId, selfId, itemId, bagidx )
	end
	
	--»Æ½ğÖ®Á´
	if itemId == 40004453 then
		CallScriptFunction( 050220, "PickupItem", sceneId, selfId, itemId, bagidx ) ;
	end
	
	--Ğş·ğÖé
	if itemId == 40004454 then
		CallScriptFunction( 050221, "PickupItem", sceneId, selfId, itemId, bagidx ) ;
	end

end

--¶ÔÈÎÎñ¿ÉÓÃĞÔ½øĞĞ¼ì²â
function x888888_Check_MissionAvailable(sceneId, playerId, missionId)
	--//////////////////////////////////////////////////////////
	--ÈÎÎñÁ´¿ÉÓÃĞÔ¼ì²â
	local renwulianMissionId = 1202
	if missionId == renwulianMissionId then
	if IsHaveMission(sceneId, playerId, renwulianMissionId) > 0 then
		local MissionType = {wenhou=1, suoqu=2, fubenjiaoxun=3, fubenduowu=4, chongwu=5}
		local misIndex = GetMissionIndexByID(sceneId, playerId, renwulianMissionId)
		local missionType = GetMissionParam(sceneId, playerId, misIndex, 1)

		local bAvailable = 1
		if missionType == MissionType.wenhou then
			local npcId = GetMissionParam(sceneId, playerId, misIndex, 5)
			if 0 == CheckNpcAvailable(sceneId, playerId, npcId) then
						MissionLog(sceneId, "error: x888888_Check_MissionAvailable..renwulian..wenhou..npcId=" .. tostring(npcId))
				bAvailable = 0
			end
		elseif missionType == MissionType.suoqu then
			local itemId = GetMissionParam(sceneId, playerId, misIndex, 5)
			local npcId = GetMissionParam(sceneId, playerId, misIndex, 6)
			if 0 == CheckNpcAvailable(sceneId, playerId, npcId) or
				 0 == CheckItemAvailable(sceneId, playerId, itemId)	then
						 MissionLog(sceneId, "error: x888888_Check_MissionAvailable..renwulian..suoqu..npcId=" .. tostring(npcId)
					 .. ",itemId=" .. tostring(itemId))
				 bAvailable = 0
			end
		elseif missionType == MissionType.chongwu then
			local npcId = GetMissionParam(sceneId, playerId, misIndex, 6)
			if 0 == CheckNpcAvailable(sceneId, playerId, npcId) then
				bAvailable = 0
						MissionLog(sceneId, "error: x888888_Check_MissionAvailable..renwulian..chongwu..npcId=" .. tostring(npcId))
			end
		elseif missionType == MissionType.fubenjiaoxun then
			local npcId = GetMissionParam(sceneId, playerId, misIndex, 5)
			if 0 == CheckNpcAvailable(sceneId, playerId, npcId) then
						MissionLog(sceneId, "error: x888888_Check_MissionAvailable..renwulian..fubenjiaoxun..npcId=" .. tostring(npcId))
				bAvailable = 0
			end
		end
		-- Èç¹û²»¿ÉÓÃÔòÉ¾³ı
		if 0 == bAvailable then
			DelMission(sceneId, playerId, renwulianMissionId)
		end
	end
	end
	--//////////////////////////////////////////////////////////

	--Add other code ...
	local xingxiuMissionId = 1095
	if missionId == xingxiuMissionId then
		if IsHaveMission(sceneId, playerId, xingxiuMissionId) > 0 then
			local bAvailable = 1
			local MissionType = {XunWu=1, SongXin=2, DingDianYinDao=3, FuBenZhanDou=4, BuZhuo=5, ShouJi=6, KaiGuang=7, otherMenpaiFuben=8,  killMonster=9}
			local misIndex = GetMissionIndexByID(sceneId, playerId, xingxiuMissionId)
			local missionType = GetMissionParam(sceneId, playerId, misIndex, 1)
			if missionType == MissionType.XunWu then
				local demandItemId = GetMissionParam(sceneId, playerId, misIndex, 5)
				if demandItemId <= 0 then
					MissionLog(sceneId, "error: x888888_Check_MissionAvailable..xingxiushimen.XunWu..demandItemId=" .. type(demandItemId))
					bAvailable = 0
				end
				local itemId, itemName, itemDesc = GetItemInfoByItemId(demandItemId)
				if itemName == nil or itemDesc == nil or itemId == nil then
					MissionLog(sceneId, "error: x888888_Check_MissionAvailable..xingxiushimen.XunWu..itemName=" .. type(itemName)
						.. ",itemDesc=" .. itemDesc .. ",itemId=" .. itemId)
					bAvailable = 0
				end
			elseif missionType == MissionType.KaiGuang then
				local demandItemId = GetMissionParam(sceneId, playerId, misIndex, 6)
				if demandItemId <= 0 then
					MissionLog(sceneId, "error: x888888_Check_MissionAvailable..xingxiushimen.KaiGuang..demandItemId=" .. type(demandItemId))
					bAvailable = 0
				end
				local itemId, itemName, itemDesc = GetItemInfoByItemId(demandItemId)
				if itemName == nil or itemDesc == nil or itemId == nil then
					MissionLog(sceneId, "error: x888888_Check_MissionAvailable..xingxiushimen.KaiGuang..itemName=" .. type(itemName)
						.. ",itemDesc=" .. itemDesc .. ",itemId=" .. itemId)
					bAvailable = 0
				end
			elseif missionType == MissionType.ShouJi then
				local demandItemId = GetMissionParam(sceneId, playerId, misIndex, 6)
				if demandItemId <= 0 then
					MissionLog(sceneId, "error: x888888_Check_MissionAvailable..xingxiushimen.ShouJi..demandItemId=" .. type(demandItemId))
					bAvailable = 0
				end
				local itemId, itemName, itemDesc = GetItemInfoByItemId(demandItemId)
				if itemName == nil or itemDesc == nil or itemId == nil then
					MissionLog(sceneId, "error: x888888_Check_MissionAvailable..xingxiushimen.ShouJi..itemName=" .. type(itemName)
						.. ",itemDesc=" .. itemDesc .. ",itemId=" .. itemId)
					bAvailable = 0
				end
			end
			if bAvailable == 0 then
				DelMission(sceneId, playerId, xingxiuMissionId)
			end
		end
	end

end

function x888888_OnAcceptCheck( sceneId, objId, level )

	-- ÈÎÎñÊÇ·ñÒÑÂú
	if IsMissionFull( sceneId, objId ) == 1 then
		return 0
	end

	local missioninfo = x888888_g_AutoAccept_MissionList[level]
	--¼ì²âµÈ¼¶
	if not missioninfo then
		return 0
	end

	--ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, objId, missioninfo.MissionId ) > 0 then
		return 0
	end

	--ÒÑ¾­×ö¹ıÔò²»·ûºÏÌõ¼ş
	if IsMissionHaveDone(sceneId, objId, missioninfo.MissionId) > 0   then
		return 0
	end

	--¼ì²âÇ°ĞøÈÎÎñ
	if missioninfo.PreMissionId > 0 then
		if IsMissionHaveDone(sceneId, objId, missioninfo.PreMissionId) <= 0   then
			return 0
		end
	end
	
	return 1
end

function x888888_OnAutoAcceptMission( sceneId, objId, level )

	-- ¼ì²âÈÎÎñ½ÓÊÜÌõ¼ş
	if x888888_OnAcceptCheck( sceneId, objId, level ) > 0 then
		local missioninfo = x888888_g_AutoAccept_MissionList[level]

		if missioninfo ~= nil then
			local ret = AddMission( sceneId, objId, missioninfo.MissionId, missioninfo.MissionIndex, missioninfo.pKill, missioninfo.pArea, missioninfo.pItem )	-- kill¡¢area¡¢item
			if ret == 1 and missioninfo.EventId ~= 0 then
				SetMissionEvent( sceneId, objId, missioninfo.MissionId, missioninfo.EventId )
			end
		end
	end
end

function x888888_OnCompleteCheck( sceneId, objId, level )

	local missioninfo = x888888_g_FullLevel_MissionList[level]
	--¼ì²âµÈ¼¶
	if not missioninfo then
		return 0
	end

	if IsHaveMission( sceneId, objId, missioninfo.MissionId ) <= 0 then
		return 0
	end

	-- ÊÇ·ñ´ïµ½ĞèÇóµÈ¼¶
	local Playerlvl = LuaFnGetLevel( sceneId, objId )
	if Playerlvl < missioninfo.LevelLimit then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,objId,missioninfo.MissionId)

	-- ¼ì²âÈÎÎñÊÇ·ñÍê³É	
	if GetMissionParam(sceneId, objId, misIndex, missioninfo.CompleteIdx) <= 0 then
		return 1
	end
	
	return 0
	
end

function x888888_OnSetCompleteMission( sceneId, objId, level )

	-- ¼ì²âÈÎÎñÍê³ÉÌõ¼ş
	if x888888_OnCompleteCheck( sceneId, objId, level ) > 0 then
		local missioninfo = x888888_g_FullLevel_MissionList[level]
		
		if missioninfo ~= nil then

			local misIndex = GetMissionIndexByID(sceneId,objId,missioninfo.MissionId)
			SetMissionByIndex( sceneId, objId, misIndex, missioninfo.CompleteIdx, 1 )
			SetMissionByIndex( sceneId, objId, misIndex, missioninfo.RecordIdx, 1 )
			
			BeginEvent( sceneId )
				AddText( sceneId, missioninfo.MsgStr )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, objId )
		end
	end

end

-- ¸üĞÂÍæ¼ÒµÄÊı¾İ£¬ÓÃÓÚÔÚ½Å±¾ÀïĞŞ¸ÄÍæ¼ÒÊı¾İ£¬È»ºóÔÚServer³ÌĞòÀïÓÃµÄÇé¿ö
function x888888_UpdatePlayerData(sceneId, playerId)
	-- ¸üĞÂ°µÆ÷£¨·¨±¦£©N±¶¾­Ñé×´Ì¬
	CallScriptFunction( 332207, "CalcDarkMultiExpRate", sceneId, playerId ) ;
	
end


-- µ±Íæ¼ÒµÄ°µÆ÷Éı¼¶Ê±»áµ÷ÓÃµÄº¯Êı
function x888888_OnDarkLevelUp(sceneId, playerId, levelaftlevel)
	
	--ÏÔÊ¾°µÆ÷Éı¼¶ÌØĞ§
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
	
	--ºóĞø¹¦ÄÜÌí¼Ó
	
end

function x888888_AskDeleteMinorPasswordTime(sceneId, playerId)
	local lefttime = LuaFnGetPasswordDeleteRemainTime(sceneId, playerId)
	if lefttime >= 0 then	
		LuaFnSendSystemMail( sceneId, GetName(sceneId,playerId), "#{SMTX_090309_1}"..tostring(lefttime).."#{SMTX_090309_2}" )
	end
end

