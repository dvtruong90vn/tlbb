-- °ïÅÉÕ½Õù add by hukai
--************************************************************************
--MisDescBegin

-- ½Å±¾ºÅ
x402047_g_ScriptId = 402047

-- ÈÎÎñÄ¿±ê NPC
x402047_g_Name = "Châu Nhiên"

-- ÈÎÎñÎÄ±¾ÃèÊö
x402047_g_MissionName = "Ði chiªn trß¶ng Trác Lµc C±"
x402047_g_SubmitInfo = "#{BHXZ_081103_115}"									-- Ìá½»Ê±µÄ¶Ô»°

--MisDescEnd
--************************************************************************

x402047_g_NumText_EnterCopyScene = 1		-- ÒªÇó½øÈë¸±±¾µÄÑ¡Ïî
x402047_g_GetPrizeTitle = 2							-- ÁìÈ¡³ÆºÅµÄÑ¡Ïî
x402047_g_GetPrizeTitle_Kill = 3				-- ÁìÈ¡³ÆºÅ£¨É±ÈË´ÎÊý×î¶à£¬Á¬Õ¶¿ñ¿Í£©µÄÑ¡Ïî
x402047_g_GetPrizeTitle_Flag = 4				-- ÁìÈ¡³ÆºÅ£¨Õ¼ÁìÆìÖÄ×î¶à£¬³¬¼¶ÆìÊÖ£©µÄÑ¡Ïî
x402047_g_GetPrizeTitle_Source = 5			-- ÁìÈ¡³ÆºÅ£¨²É¼¯×ÊÔ´×î¶à£¬ËÑ±¦×¨¼Ò£©µÄÑ¡Ïî

x402047_g_CopySceneMap = "zhuluKVK.nav"
x402047_g_CopySceneArea = "zhuluKVK_area.ini"
x402047_g_CopySceneMonsterIni = "zhuluKVK_monster.ini"

x402047_g_CopySceneType = FUBEN_BANGZHAN		-- ¸±±¾ÀàÐÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x402047_g_MaxMembers = 25					-- ±¾°ï¿ÉÒÔ½ø¸±±¾µÄ×î´óÈËÊý  --tt50777 ÈËÊýÉÏÏÞÓÉ80ÈËÐÞ¸ÄÎª25ÈË
x402047_g_TickTime = 1						-- »Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x402047_g_StartPoint = 60*5+5						-- ¿ªÊ¼¼Ç·ÖÊ±¼ä£¨µ¥Î»£º´ÎÊý£©ÎªÁËÏÔÊ¾³ö»¹Ê£5·ÖËùÒÔ¼ÓÁË5s
x402047_g_LimitTotalHoldTime = 60*40 + x402047_g_StartPoint	-- ¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊý£©,Èç¹û´ËÊ±¼äµ½ÁË£¬Ôò°ïÕ½½áÊø
x402047_g_CloseTick = 30+1						-- ¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊý£©
x402047_g_NoUserTime = 10					-- ¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x402047_g_PvpRuler = 3						--¸±±¾¾º¼¼¹æÔò
x402047_g_BackTick = 10						-- µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊý£©

x402047_g_TankMaxEnemyNum = 15			--ÓÐÐ§·¶Î§ÄÚÕ½³µÆðÐ§¹ûµÄ×î´óµÐ·½ÊýÄ¿
x402047_g_TankMaxFriendNum = 20			--ÓÐÐ§·¶Î§ÄÚÕ½³µÆðÐ§¹ûµÄ×î´ó±¾·½ÊýÄ¿

x402047_g_Fuben_A_X = 47--A°ï£¨ÌôÕ½·½£©Èë¿Ú
x402047_g_Fuben_A_Z = 39
x402047_g_Fuben_B_X = 203 --B°ï£¨Ó¦Õ½·½£©Èë¿Ú
x402047_g_Fuben_B_Z = 215

x402047_g_ALive_A_X = 51--A°ï£¨ÌôÕ½·½£©¸´»îµã
x402047_g_ALive_A_Z = 26
x402047_g_ALive_B_X = 205 --B°ï£¨Ó¦Õ½·½£©¸´»îµã
x402047_g_ALive_B_Z = 227

x402047_g_Back_X = 262 --ÆÕÍ¨³ö¿Ú
x402047_g_Back_Z = 51

x402047_g_Exit_SceneID = 409 --´«³ö³¡¾°ID
x402047_g_Win_X = 32 --»ñÊ¤·½³ö¿Ú
x402047_g_Win_Z = 16
x402047_g_Fail_X = 32 --Ê§°Ü·½³ö¿Ú
x402047_g_Fail_Z = 41

x402047_g_Win_PerHonour = 10000 --»ñÊ¤·½Ã¿¸öÈË»ñµÃµÄÈÙÓþÖµ
x402047_g_Fail_TotalHonour = 10000 --Ê§°Ü·½×Ü¹²»ñµÃµÄÈÙÓþÖµÉÏÏÞ£!¡×¢ÒâÊÇ×Ü¹²µÄ£!¡
x402047_g_Fail_PerMaxHonour = 1000 --Ê§°Ü·½Ã¿¸öÈË»ñµÃµÄÈÙÓþÖµÉÏÏÞ

x402047_g_PrizeMsg = {"#{BHXZ_081103_120}",
											"#{BHXZ_081103_121}",
											"#{BHXZ_081103_122}"}

x402047_g_FailMsg = "#{BHXZ_081103_123}"

x402047_g_PrizeFlag = {MF_BangZhan_Kill_Flag, MF_BangZhan_Flag_Flag, MF_BangZhan_Source_Flag}
x402047_g_PrizeBuff = {31549, 31548, 31547} --½±Àøbuff

--³ÆºÅ½±Àø
x402047_g_PrizeTitle = {{AwardPos = 15, SetPos = 39, Index = 252}, --½±ÀøµÄË÷Òý£¬ÉèÖÃÎ»ÖÃµÄË÷Òý£¬³ÆºÅË÷Òý
												{AwardPos = 16, SetPos = 40, Index = 253},
												{AwardPos = 17, SetPos = 41, Index = 254}}

x402047_g_GuildPoint_KillOtherPlayer = 0						--É±ÈË»ý·Ö¹æÔòË÷Òý£¬±íGuildWarPoint.txtµÄID
x402047_g_GuildPoint_KillTower = 2									--Ëþ»ý·Ö¹æÔòË÷Òý£¬±íGuildWarPoint.txtµÄID
x402047_g_GuildPoint_KillTankPlayer = 3							--É±Õ½³µÍæ¼Ò»ý·Ö¹æÔòË÷Òý£¬±íGuildWarPoint.txtµÄID
x402047_g_GuildPoint_KillPlatform = 5								--Õ½Ì¨»ý·Ö¹æÔòË÷Òý£¬±íGuildWarPoint.txtµÄID

x402047_g_IsSetOverFlag = 9										--ÊÇ·ñËãÁË½áÊø»ý·Ö(¸±±¾tickÔÚ´«³ö¸±±¾ºóÃ»ÓÐÂíÉÏ½áÊø£¬ÒªÔÚºóÃæµÄtickÖÐ²»×ß½áÊøÁì½±Á÷³Ì)ÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_OpenFlagSelfIDIndex = 10						--µ±Ç°ÕýÔÚ²Ù×÷ÆìÌ¨µÄselfidÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_OpenFlagStartTime = 11							--µ±Ç°ÕýÔÚ²Ù×÷ÆìÌ¨µÄ¿ªÊ¼Ê±¼äÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_FlagRemainedTime = 12								--ÆìÖÄÉýÆðÒÔºóµÄÊ£ÓàÊ±¼äÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_A_FirstTankManSelfID = 13						--A°ï±ä»¯³ÉÕ½³µµÄÍæ¼ÒµÄselfidÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_A_SecondTankManSelfID = 14					--A°ï±ä»¯³ÉÕ½³µµÄÍæ¼ÒµÄselfidÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_B_FirstTankManSelfID = 15						--B°ï±ä»¯³ÉÕ½³µµÄÍæ¼ÒµÄselfidÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_B_SecondTankManSelfID = 16					--B°ï±ä»¯³ÉÕ½³µµÄÍæ¼ÒµÄselfidÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_A_FirstTankBuff = 17								--A°ï±ä»¯³ÉÕ½³µµÄBuffIDÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_A_SecondTankBuff = 18								--A°ï±ä»¯³ÉÕ½³µµÄBuffIDÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_B_FirstTankBuff = 19								--B°ï±ä»¯³ÉÕ½³µµÄBuffIDÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_B_SecondTankBuff = 20								--B°ï±ä»¯³ÉÕ½³µµÄBuffIDÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_A_FirstTankPos = 21									--A°ï±ä»¯³ÉÕ½³µµÄPosÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_A_SecondTankPos = 22								--A°ï±ä»¯³ÉÕ½³µµÄPosÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_B_FirstTankPos = 23									--B°ï±ä»¯³ÉÕ½³µµÄPosÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_B_SecondTankPos = 24								--B°ï±ä»¯³ÉÕ½³µµÄPosÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_A_TankColdTime = 25									--A°ïÕ½³µÀäÈ´Ê±¼äÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_B_TankColdTime = 26									--B°ïÕ½³µÀäÈ´Ê±¼äÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_A_BroadcastTick = 27								--A°ï±¤ÀÝÑªÁ¿²¥·Å¼ÆÊýÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý
x402047_g_B_BroadcastTick = 28								--B°ï±¤ÀÝÑªÁ¿²¥·Å¼ÆÊýÔÚ32¸ö¸±±¾Êý¾ÝÖÐµÄË÷Òý

--°ïÕ½Êý¾ÝË÷Òý£¬¶ÔÓ¦³ÌÐòÖÐµÄ enum GUILDWAR_INT_ARRAY
x402047_g_A_numIndex = 0
x402047_g_B_numIndex = 1
x402047_g_A_KillManNumIndex = 12							--A°ïÉ±ÈËÊýÔÚ°ïÕ½Êý×éÖÐµÄË÷Òý
x402047_g_B_KillManNumIndex = 13							--B°ïÉ±ÈËÊýÔÚ°ïÕ½Êý×éÖÐµÄË÷Òý
x402047_g_A_KillBuildingNumIndex = 14					--A°ï²ð»Ù½¨Öþ´ÎÊýÔÚ°ïÕ½Êý×éÖÐµÄË÷Òý
x402047_g_B_KillBuildingNumIndex = 15					--B°ï²ð»Ù½¨Öþ´ÎÊýÔÚ°ïÕ½Êý×éÖÐµÄË÷Òý
--x402047_g_A_FlagNumIndex = 16									--A°ïÕ¼Áì´óÆì´ÎÊýÔÚ°ïÕ½Êý×éÖÐµÄË÷Òý
--x402047_g_B_FlagNumIndex = 17									--B°ïÕ¼Áì´óÆì´ÎÊýÔÚ°ïÕ½Êý×éÖÐµÄË÷Òý
x402047_g_A_TotalPointIndex = 18							--A°ï×Ü»ý·ÖÔÚ°ïÕ½Êý×éÖÐµÄË÷Òý
x402047_g_B_TotalPointIndex = 19							--B°ï×Ü»ý·ÖÔÚ°ïÕ½Êý×éÖÐµÄË÷Òý

--¸öÈË»ý·ÖÊý¾ÝË÷Òý£¬¶ÔÓ¦³ÌÐòenum GUILDWAR_INT_INDEX
x402047_g_Human_TotalPointIndex = 0						--¸öÈË×Ü»ý·ÖË÷Òý
x402047_g_Human_KillManIndex = 1							--¸öÈËÉ±ÈËÊýË÷Òý
x402047_g_Human_KillBuildingIndex = 2					--¸öÈË²ð»Ù½¨Öþ´ÎÊýË÷Òý
x402047_g_Human_FlagIndex = 3									--¸öÈËÕ¼Áì´óÆì´ÎÊýË÷Òý
x402047_g_Human_ResourceNumIndex = 4					--¸öÈË½»ÄÉ×ÊÔ´¸öÊýË÷Òý

x402047_g_TankBuff = {31577, 31578, 31579, 31580, 31581,	--ò¿ÓÈ¼ÝÊ»buff
											31582, 31583, 31584, 31585, 31586}	--Ñ×»Æ¼ÝÊ»buff

x402047_g_AttrBuff = {31567, 31568, 31569, 31570, 31571,	--ò¿ÓÈÕ½³µbuff
											31572, 31573, 31574, 31575, 31576}	--Ñ×»ÆÕ½³µbuff

--x402047_g_TankAttackBuff = {31587, 31594, 31601, 31608}		--Õ½³µ¹¥»÷buff
x402047_g_PanGuTankAttackBuff = 31551											--ÅÌ¹ÅÕ½³µ¹¥»÷buff

x402047_g_LightBuff = {79, 80, 81, 82}	--Õ½³µÉÁ¹âbuff

x402047_g_TankFriendBuff = {{31553,31554}, {31556,31557}, {31559,31560}, {31562,31563}}		--Õ½³µ¼Ó¸ø¼º·½Ä¿±êµÄbuff
x402047_g_TankEnemyBuff = {31552, 31555, 31558, 31561}		--Õ½³µ¼Ó¸øµÐ¶ÔÄ¿±êµÄbuff

x402047_g_ImmuneControlBuff = 10474							--NPCÃâÒß¿ØÖÆbuff
x402047_g_SheepBuff = 31550											--±äÑòbuff

--x402047_g_TankSkillID = {1116, 1123, 1130, 1137, 0,	--ò¿ÓÈÕ½³µ¼¼ÄÜID
--												1116, 1123, 1130, 1137, 0}	--Ñ×»ÆÕ½³µ¼¼ÄÜID

x402047_g_TankID = {13334, 13335, 13336, 13337, 13338,	--¿Éµã»÷ò¿ÓÈÕ½³µNPCµÄID
										13339, 13340, 13341, 13342, 13343}	--¿Éµã»÷Ñ×»ÆÕ½³µNPCµÄID

x402047_g_PhysicsAttack_Buff = {{value = 16000, buff = 31587},{value = 18000, buff = 31588},{value = 20000, buff = 31589},{value = 22500, buff = 31590},
																{value = 26000, buff = 31591},{value = 30000, buff = 31592},{value = 300000, buff = 31593}}

x402047_g_MagicAttack_Buff = {{value = 16000, buff = 31594},{value = 18000, buff = 31595},{value = 20000, buff = 31596},{value = 22500, buff = 31597},
															{value = 26000, buff = 31598},{value = 30000, buff = 31599},{value = 300000, buff = 31600}}

x402047_g_ColdFire_Buff = {{value = 100, buff = 31601},{value = 230, buff = 31602},{value = 420, buff = 31603},{value = 840, buff = 31604},
													{value = 1680, buff = 31605},{value = 2380, buff = 31606},{value = 200000, buff = 31607}}

x402047_g_LightPoison_Buff = {{value = 100, buff = 31608},{value = 230, buff = 31609},{value = 420, buff = 31610},{value = 840, buff = 31611},
															{value = 1680, buff = 31612},{value = 2380, buff = 31613},{value = 200000, buff = 31614}}

x402047_g_LingShiID = {30900051,30900052,30900053,30900054,30900055}	--ÁéÊ¯ID

x402047_g_TankName = {"Thanh Long Chiªn Xa","BÕch H± Chiªn Xa","Chu Tß¾c Chiªn Xa","Huy«n Vû Chiªn Xa","Bàn C± Chiªn Xa","Thanh Long Chiªn Xa","BÕch H± Chiªn Xa","Chu Tß¾c Chiªn Xa","Huy«n Vû Chiªn Xa","Bàn C± Chiªn Xa"}

x402047_g_ColdTime = 60									--Õ½³µÀäÈ´Ê±¼ä

--ÕóÓªNPC
x402047_g_A_Platform = "Viêm Hoàng Thai"
x402047_g_A_FenXiang_Tower = "Viêm Hoàng Ph¥n Hß½ng Tháp"
x402047_g_A_LuoXing_Tower = "Viêm Hoàng LÕc Tinh Tháp"
x402047_g_A_Flag = "Viêm Hoàng Chiªn Kì"

x402047_g_B_Platform = "Xi Vßu Thai"
x402047_g_B_FenXiang_Tower = "Xi Vßu Ph¥n Hß½ng Tháp"
x402047_g_B_LuoXing_Tower = "Xi Vßu LÕc Tinh Tháp"
x402047_g_B_Flag = "Xi Vßu Chiªn Kì"

--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x402047_OnDefaultEvent( sceneId, selfId, targetId )	-- µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x402047_g_Name then		-- ÅÐ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
		return
	end
	
	local numText = GetNumText()
	
	if numText == x402047_g_NumText_EnterCopyScene then
			x402047_AcceptEnterCopyScene( sceneId, selfId, targetId )
	elseif numText == x402047_g_GetPrizeTitle then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_116}")
			AddNumText(sceneId, x402047_g_ScriptId, "Liên Träm Cu°ng Khách", 4, x402047_g_GetPrizeTitle_Kill)
			AddNumText(sceneId, x402047_g_ScriptId, "Siêu c¤p kì thü", 4, x402047_g_GetPrizeTitle_Flag)
			AddNumText(sceneId, x402047_g_ScriptId, "Chuyên gia t¥m bäo", 4, x402047_g_GetPrizeTitle_Source)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif numText == x402047_g_GetPrizeTitle_Kill then
		local bHave = GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[1])
		
		if bHave == 1 then
			SetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[1], 0)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402047_g_PrizeBuff[1], 0 )
			
			LuaFnAwardTitle( sceneId, selfId, x402047_g_PrizeTitle[1].AwardPos, x402047_g_PrizeTitle[1].Index, 1*5) --ÓÐÐ§ÆÚ6Ð¡Ê±
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
			SetCurTitle(sceneId, selfId, x402047_g_PrizeTitle[1].SetPos, x402047_g_PrizeTitle[1].Index)
			LuaFnDispatchAllTitle(sceneId, selfId)
			
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_145}".."Liên Träm Cu°ng Khách".."#{BHXZ_081103_146}" )
			if GetHumanGuildID(sceneId, selfId) ~= -1 then --Ã»ÓÐ°ïÅÉµÄÊ±ºò²»·¢°ïÅÉ¹«¸æ
				local message = format("@*;SrvMsg;GLD:#{_INFOUSR%s}#{BHXZ_090116_01}",LuaFnGetName(sceneId, selfId))
				BroadMsgByChatPipe(sceneId, selfId, message, 6);
			end
			local guid = LuaFnObjId2Guid(sceneId, selfId)
			local log = format("type=%d", 1)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_TITLE_BUFF, guid, log)
		else
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_117}" )
		end
	elseif numText == x402047_g_GetPrizeTitle_Flag then
		local bHave = GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[2])
		
		if bHave == 1 then
			SetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[2], 0)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402047_g_PrizeBuff[2], 0 )
			
			LuaFnAwardTitle( sceneId, selfId, x402047_g_PrizeTitle[2].AwardPos, x402047_g_PrizeTitle[2].Index, 1*4) --ÓÐÐ§ÆÚ6Ð¡Ê±
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
			SetCurTitle(sceneId, selfId, x402047_g_PrizeTitle[2].SetPos, x402047_g_PrizeTitle[2].Index)
			LuaFnDispatchAllTitle(sceneId, selfId)
			
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_145}".."Siêu c¤p kì thü".."#{BHXZ_081103_146}" )
			if GetHumanGuildID(sceneId, selfId) ~= -1 then --Ã»ÓÐ°ïÅÉµÄÊ±ºò²»·¢°ïÅÉ¹«¸æ
				local message = format("@*;SrvMsg;GLD:#{_INFOUSR%s}#{BHXZ_090116_02}",LuaFnGetName(sceneId, selfId))
				BroadMsgByChatPipe(sceneId, selfId, message, 6);
			end
			local guid = LuaFnObjId2Guid(sceneId, selfId)
			local log = format("type=%d", 2)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_TITLE_BUFF, guid, log)
		else
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_117}" )
		end
	elseif numText == x402047_g_GetPrizeTitle_Source then
		local bHave = GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[3])
		
		if bHave == 1 then
			SetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[3], 0)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402047_g_PrizeBuff[3], 0 )
			
			LuaFnAwardTitle( sceneId, selfId, x402047_g_PrizeTitle[3].AwardPos, x402047_g_PrizeTitle[3].Index, 1*3) --ÓÐÐ§ÆÚ6Ð¡Ê±
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
			SetCurTitle(sceneId, selfId, x402047_g_PrizeTitle[3].SetPos, x402047_g_PrizeTitle[3].Index)
			LuaFnDispatchAllTitle(sceneId, selfId)
			
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_145}".."Chuyên gia t¥m bäo".."#{BHXZ_081103_146}" )
			if GetHumanGuildID(sceneId, selfId) ~= -1 then --Ã»ÓÐ°ïÅÉµÄÊ±ºò²»·¢°ïÅÉ¹«¸æ
				local message = format("@*;SrvMsg;GLD:#{_INFOUSR%s}#{BHXZ_090116_03}",LuaFnGetName(sceneId, selfId))
				BroadMsgByChatPipe(sceneId, selfId, message, 6);
			end
			local guid = LuaFnObjId2Guid(sceneId, selfId)
			local log = format("type=%d", 3)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_TITLE_BUFF, guid, log)
		else
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_117}" )
		end
	end
	
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x402047_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x402047_g_Name then		--ÅÐ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
		return
	end

	AddNumText( sceneId, x402047_g_ScriptId, x402047_g_MissionName, 4, x402047_g_NumText_EnterCopyScene )
	AddNumText( sceneId, x402047_g_ScriptId, "Lînh danh hi®u", 4, x402047_g_GetPrizeTitle )
end

--**********************************
-- ÇëÇó½øÈë¸±±¾³¡¾°
--**********************************
function x402047_AcceptEnterCopyScene( sceneId, selfId, targetId )
	
	--±äÑò×´Ì¬ÎÞ·¨°ïÕ½£¬·ÀÖ¹µÚÒ»¸ö°ïÕ½Íæ¼ÒÊÇ±äÑò£¬ËûÓÖÎÞ·¨´«ËÍ½ø³¡¾°£¬ÕâÊ±±ðÈËÃ»ÓÐÂíÉÏ½øÈ¥£¬¸±±¾Ã»ÈË¾ÍoverÁË¹þ¹þ
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x402047_g_SheepBuff) == 1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_105}" )
		return
	end
	
	--ÊÇ·ñÓÐ°ïÕ½³ÆºÅÃ»ÓÐÁìÈ¡
	for i = 1, getn(x402047_g_PrizeFlag) do
		if GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[i]) == 1 then
			x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_106}" )
			return
		end
	end
	
	--»¹Ã»ÓÐ¼ÓÈë°ï»á
	local guildid = GetHumanGuildID(sceneId, selfId)
	if guildid == -1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_19}" )
		return
	end
	
	--Ã»ÓÐºÍÆäËû°ïÅÉ´ï³ÉÕ÷ÌÖ¹ØÏµ
	local guildIDApply,guildIDApplied,CopySceneId = GetGuildWarApply(sceneId, guildid)
	if not guildIDApply or not guildIDApplied or not CopySceneId or guildIDApply == -1 or guildIDApplied == -1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_18}" )
		return
	end

	if CopySceneId >= 0 then --³¡¾°³õÊ¼»¯Íê³ÉÖ®ºóÖ±½Ó¿ÉÒÔ½øÈ¥
		if guildid == guildIDApply then
			local GuildInt = GetGuildIntNum( CopySceneId, guildid, x402047_g_A_numIndex )
			if GuildInt >= x402047_g_MaxMembers or GuildInt == -1 then --±¾°ï¸±±¾ÈËÊýÂúÁË£¬ÕâÀïÈ¡³öµÄÈËÊý²»Ò»¶¨×¼È·
				x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
				return
			end
			
			BeginEvent(sceneId)
			AddText( sceneId, x402047_g_SubmitInfo )
			EndEvent()
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x402047_g_ScriptId, 0 ) --ÈÎÎñºÅÐ´0
		else
			local GuildInt = GetGuildIntNum( CopySceneId, guildid, x402047_g_B_numIndex )
			if GuildInt >= x402047_g_MaxMembers or GuildInt == -1 then --±¾°ï¸±±¾ÈËÊýÂúÁË£¬ÕâÀïÈ¡³öµÄÈËÊý²»Ò»¶¨×¼È·
				x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
				return
			end
			
			BeginEvent(sceneId)
			AddText( sceneId, x402047_g_SubmitInfo )
			EndEvent()
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x402047_g_ScriptId, 0 ) --ÈÎÎñºÅÐ´0
		end
		
		return
	end
	
	BeginEvent(sceneId)
	AddText( sceneId, x402047_g_SubmitInfo )
	EndEvent()
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x402047_g_ScriptId, 0 ) --ÈÎÎñºÅÐ´0
end

--**********************************
--Ìá½»£¬ÐèÒªÖØÐÂÅÐ¶ÏÃ¿¸öÌõ¼þ
--**********************************
function x402047_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x402047_g_Name then		--ÅÐ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
		return
	end
	
	--±äÑò×´Ì¬ÎÞ·¨°ïÕ½£¬·ÀÖ¹µÚÒ»¸ö°ïÕ½Íæ¼ÒÊÇ±äÑò£¬ËûÓÖÎÞ·¨´«ËÍ½ø³¡¾°£¬ÕâÊ±±ðÈËÃ»ÓÐÂíÉÏ½øÈ¥£¬¸±±¾Ã»ÈË¾ÍoverÁË¹þ¹þ
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x402047_g_SheepBuff) == 1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_105}" )
		return
	end
	
	--ÊÇ·ñÓÐ°ïÕ½³ÆºÅÃ»ÓÐÁìÈ¡
	for i = 1, getn(x402047_g_PrizeFlag) do
		if GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[i]) == 1 then
			x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_106}" )
			return
		end
	end
	
	--»¹Ã»ÓÐ¼ÓÈë°ï»á
	local guildid = GetHumanGuildID(sceneId, selfId)
	if guildid == -1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_19}" )
		return
	end
	
	--Ã»ÓÐºÍÆäËû°ïÅÉ´ï³ÉÕ÷ÌÖ¹ØÏµ
	local guildIDApply,guildIDApplied,CopySceneId = GetGuildWarApply(sceneId, guildid)
	if not guildIDApply or not guildIDApplied or not CopySceneId or guildIDApply == -1 or guildIDApplied == -1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_18}" )
		return
	end

	if CopySceneId >= 0 then --³¡¾°³õÊ¼»¯Íê³ÉÖ®ºóÖ±½Ó¿ÉÒÔ½øÈ¥
		if guildid == guildIDApply then
			local GuildInt = GetGuildIntNum( CopySceneId, guildid, x402047_g_A_numIndex )
			if GuildInt >= x402047_g_MaxMembers or GuildInt == -1 then --±¾°ï¸±±¾ÈËÊýÂúÁË£¬ÕâÀïÈ¡³öµÄÈËÊý²»Ò»¶¨×¼È·
				x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
				return
			end
			
			NewWorld( sceneId, selfId, CopySceneId, x402047_g_Fuben_A_X, x402047_g_Fuben_A_Z )
		else
			local GuildInt = GetGuildIntNum( CopySceneId, guildid, x402047_g_B_numIndex )
			if GuildInt >= x402047_g_MaxMembers or GuildInt == -1 then --±¾°ï¸±±¾ÈËÊýÂúÁË£¬ÕâÀïÈ¡³öµÄÈËÊý²»Ò»¶¨×¼È·
				x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
				return
			end
			
			NewWorld( sceneId, selfId, CopySceneId, x402047_g_Fuben_B_X, x402047_g_Fuben_B_Z )
		end
		
		return
	end

	local firstmenguid = LuaFnObjId2Guid( sceneId, selfId ) --°ïÕ½¸±±¾ÖÐµÚÒ»¸ö½øÈëµÄÈË²»Ò»¶¨ÊÇ°ïÖ÷»òÕß¸±°ïÖ÷»ò¶Ó³¤
	LuaFnSetSceneLoad_Map( sceneId, x402047_g_CopySceneMap )						-- µØÍ¼ÊÇ±ØÐëÑ¡È¡µÄ£¬¶øÇÒ±ØÐëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, firstmenguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x402047_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_PvpRuler( sceneId, x402047_g_PvpRuler )
	LuaFnSetCopySceneData_Timer( sceneId, x402047_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x402047_g_CopySceneType )			-- ÉèÖÃ¸±±¾ÀàÐÍÊý¾Ý£¬ÕâÀï½«0ºÅË÷ÒýµÄÊý¾ÝÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x402047_g_ScriptId )					-- ½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, 6, guildIDApply*10000+guildIDApplied )-- °ïÅÉIDÈ¡Öµ·¶Î§ÊÇ0~1024£¬ËùÒÔ10000ÒÔÉÏA°ïID£¬10000ÒÔÏÂB°ïID
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							-- ÊÇ·ñ¿ªÊ¼¼Ç·Ö
	LuaFnSetCopySceneData_Param( sceneId, 8, 0 )							-- ÔÝÊ±Î´ÓÃ
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_IsSetOverFlag, 0 )				-- ÊÇ·ñËãÁË½áÊø»ý·Ö
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_OpenFlagSelfIDIndex, 0 )	-- µ±Ç°ÕýÔÚ²Ù×÷ÆìÌ¨µÄselfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_OpenFlagStartTime, 0 )	-- µ±Ç°ÕýÔÚ²Ù×÷ÆìÌ¨µÄ¿ªÊ¼Ê±¼ä
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_FlagRemainedTime, 0 )	-- ÆìÖÄÉýÆðÒÔºóµÄÊ£ÓàÊ±¼ä
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID, 0 )	--A°ï±ä»¯³ÉÕ½³µµÄÍæ¼ÒµÄselfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID, 0 )--A°ï±ä»¯³ÉÕ½³µµÄÍæ¼ÒµÄselfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID, 0 )	--B°ï±ä»¯³ÉÕ½³µµÄÍæ¼ÒµÄselfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID, 0 )--B°ï±ä»¯³ÉÕ½³µµÄÍæ¼ÒµÄselfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff, 0 )	--A°ï±ä»¯³ÉÕ½³µµÄBuffID
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankBuff, 0 )	--A°ï±ä»¯³ÉÕ½³µµÄBuffID
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankBuff, 0 )	--B°ï±ä»¯³ÉÕ½³µµÄBuffID
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankBuff, 0 )	--B°ï±ä»¯³ÉÕ½³µµÄBuffID
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos, 0 )	  --A°ï±ä»¯³ÉÕ½³µµÄPos
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankPos, 0 )	--A°ï±ä»¯³ÉÕ½³µµÄPos
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankPos, 0 ) 	--B°ï±ä»¯³ÉÕ½³µµÄPos
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankPos, 0 )	--B°ï±ä»¯³ÉÕ½³µµÄPos
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime, 0 )	  --A°ïÕ½³µÀäÈ´Ê±¼ä
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime, 0 )	  --B°ïÕ½³µÀäÈ´Ê±¼ä
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_BroadcastTick, 0 )	--A°ï±¤ÀÝÑªÁ¿²¥·Å¼ÆÊý
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_BroadcastTick, 0 )	--B°ï±¤ÀÝÑªÁ¿²¥·Å¼ÆÊý
	
	LuaFnSetSceneLoad_Area( sceneId, x402047_g_CopySceneArea )

	LuaFnSetSceneLoad_Monster( sceneId, x402047_g_CopySceneMonsterIni )

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	if bRetSceneID > 0 then
		x402047_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công." )
		SetGuildWarApplySceneID(sceneId, guildid, bRetSceneID)
		NotifyGuildBattle(sceneId,selfId,0,guildIDApply,guildIDApplied);
		local log = format("HumanGuildID=%d,Apply_GuildID=%d,Applied_GuildID=%d", guildid, guildIDApply, guildIDApplied)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_CREATEFUBEN, firstmenguid, log)
	else
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_17}" ) --¸±±¾ÊýÁ¿ÒÑ´ïÉÏÏÞ
	end
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x402047_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ

	local firstmanguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local firstmanObjId = LuaFnGuid2ObjId( sceneId, firstmanguid )

	if firstmanObjId == -1 then											-- ÕÒ²»µ½¸ÃÍæ¼Ò
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, firstmanObjId ) ~= 1 then		-- ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­µÄ×´Ì¬
		return
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡µÃ±£´æµÄ°ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	--local Bguildid = mod(totalguildid, 10000)
	local guildid = GetHumanGuildID(sceneId, firstmanObjId)
	
	--SetGuildWarApplySceneID(sceneId, Aguildid, destsceneId)
	
	--Õâ¸öÍæ¼Ò½øÈë³¡¾°
	if guildid == Aguildid then
		NewWorld( sceneId, firstmanObjId, destsceneId, x402047_g_Fuben_A_X, x402047_g_Fuben_A_Z )
	else
		NewWorld( sceneId, firstmanObjId, destsceneId, x402047_g_Fuben_B_X, x402047_g_Fuben_B_Z )
	end
	
end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x402047_OnPlayerEnter( sceneId, selfId )
	--Õ½³µÍæ¼ÒÖØÐÂÉÏÏßµÄÊ±ºòÊÇÏÈ×ßÕâÀï£¬È»ºó²Å×ßÈ¡ÏûÕ½³µbuff!Òò´ËÕâ¸öµØ·½Íæ¼ÒµÄÕ½³µbuf»¹ÊÇ´æÔÚµÄ£¬ÐèÒªÊÖ¶¯È¡Ïû!
	local buf = x402047_HaveTankBuff( sceneId, selfId )
	if buf ~= 0 then
		LuaFnCancelSpecificImpact(sceneId,selfId,buf)
	end
	
	local guildid = GetHumanGuildID(sceneId, selfId)
	if x402047_IsGuildFull( sceneId, guildid ) == 1 then --±¾°ï¸±±¾ÈËÊýÂúÁË
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
		SetCanChangeScene(sceneId, selfId, 1)--ÊÖ¶¯ÉèÖÃ×¢ÒâÕâ¸ö½Ó¿ÚµÄÓÃ·¨£¬ÆäËûµØ·½²»ÒªÂÒÊ¹ÓÃ
		x402047_Exit(sceneId, selfId)
		return
	end
	
	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 and LuaFnGetCopySceneData_Param( sceneId, 5 ) >= x402047_g_CloseTick then
		x402047_NotifyFailTips( sceneId, selfId, "Chinh phÕt bang hµi kªt thúc." )
		SetCanChangeScene(sceneId, selfId, 1)--ÊÖ¶¯ÉèÖÃ×¢ÒâÕâ¸ö½Ó¿ÚµÄÓÃ·¨£¬ÆäËûµØ·½²»ÒªÂÒÊ¹ÓÃ
		x402047_Exit(sceneId, selfId)
		return
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡µÃ±£´æµÄ°ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	
	if guildid == Aguildid then
		if LuaFnGetCopySceneData_Param( sceneId, 7 ) == 1 then --Èç¹û°ïÕ½ÒÑ¾­¿ªÊ¼ÔòÖ±½ÓÉèÖÃÕóÓª
			SetUnitCampID(sceneId, selfId, selfId, 10+Aguildid)
		end
		SetPlayerDefaultReliveInfoEx( sceneId, selfId, "%10", -1, "0", sceneId, x402047_g_ALive_A_X, x402047_g_ALive_A_Z, x402047_g_ScriptId )
	elseif guildid == Bguildid then
		if LuaFnGetCopySceneData_Param( sceneId, 7 ) == 1 then --Èç¹û°ïÕ½ÒÑ¾­¿ªÊ¼ÔòÖ±½ÓÉèÖÃÕóÓª
			SetUnitCampID(sceneId, selfId, selfId, 11+Aguildid)
		end
		SetPlayerDefaultReliveInfoEx( sceneId, selfId, "%10", -1, "0", sceneId, x402047_g_ALive_B_X, x402047_g_ALive_B_Z, x402047_g_ScriptId )
	else  --°ÑÅÐ¶ÏÐ´ÑÏ¸ñÒ»Ð©!¾ÙÀý£ºÍæ¼Ò°ïÕ½¸±±¾ÏÂÏß£¬È»ºó°ïÖ÷Ìß³öÕâ¸öÍæ¼Ò£¬Õâ´Î°ïÕ½Ã»ÓÐ½áÊøµÄÊ±ºòÍæ¼ÒÖØÐÂÉÏÏßµÄÊ±ºòÓ¦¸Ã²»ÄÜ½øÈë¸±±¾³¡¾°
		x402047_NotifyFailTips( sceneId, selfId, "Ngß½i không có Bang hµi, không th¬ tiªn vào." )
		SetCanChangeScene(sceneId, selfId, 1)--ÊÖ¶¯ÉèÖÃ×¢ÒâÕâ¸ö½Ó¿ÚµÄÓÃ·¨£¬ÆäËûµØ·½²»ÒªÂÒÊ¹ÓÃ
		x402047_Exit(sceneId, selfId)
		return
	end
	
	--Ç¿ÖÆ¶¥³ö°ïÅÉ³ÆºÅ£¬Ìí¼ÓÌáÊ¾
	if GetCurTitle(sceneId, selfId) ~= 23 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081205_1}" )
		Msg2Player(sceneId, selfId, "#{BHXZ_081205_1}" , MSG2PLAYER_PARA)
	end
	SetCurTitle(sceneId, selfId, 23, 0)
end

--**********************************
--objËÀÍö
--**********************************
function x402047_OnDie( sceneId, objId, selfId )--Õâ¸öselfId¿ÉÄÜÊÇ³èÎï
	local objType = GetCharacterType( sceneId, selfId )
	if objType == 3 then --Èç¹ûÊÇ³èÎïµÄ»°£¬°ÑÕâ¸öIDÉèÖÃ³ÉÖ÷ÈËID
		selfId = GetPetCreator( sceneId, selfId )
	end
	
	if selfId == -1 then
		return
	end
	
	--ÊÇ·ñÊÇ¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--ÊÇ·ñÊÇËùÐèÒªµÄ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x402047_g_CopySceneType then
		return
	end

	--ÊÇ·ñ¿ªÊ¼¼Ç·Ö
	local isStartPoint = LuaFnGetCopySceneData_Param( sceneId, 7 )
	if isStartPoint == 0 then
		return
	end

--	--¸±±¾¹Ø±Õ±êÖ¾
--	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
--	if leaveFlag == 1 then														-- Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬£¬ÔòÉ±¹ÖÎÞÐ§
--		return
--	end

	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊý
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--È¡µÃÉ±ËÀNPCµÄname
	local szName = GetName( sceneId, objId )
	if szName == x402047_g_A_FenXiang_Tower or szName == x402047_g_A_LuoXing_Tower then			--AËþ
		if x402047_IsCommonBGuild( sceneId, selfId ) == 0 then
			return
		end
		local humanguildid = GetHumanGuildID(sceneId, selfId)
		local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTower)
		x402047_AddBGuildPoint(sceneId, selfId, humanguildid, point)
		local alreadynum = GetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillBuildingNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillBuildingNumIndex, alreadynum+1 )
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_KillBuildingIndex, 1 )
	elseif szName == x402047_g_B_FenXiang_Tower or szName == x402047_g_B_LuoXing_Tower then	--BËþ
		if x402047_IsCommonAGuild( sceneId, selfId ) == 0 then
			return
		end
		local humanguildid = GetHumanGuildID(sceneId, selfId)
		local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTower)
		x402047_AddAGuildPoint(sceneId, selfId, humanguildid, point)
		local alreadynum = GetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillBuildingNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillBuildingNumIndex, alreadynum+1 )
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_KillBuildingIndex, 1 )
	elseif szName == x402047_g_A_Platform then		--AÌ¨
		if x402047_IsCommonBGuild( sceneId, selfId ) == 0 then
			return
		end
		local humanguildid = GetHumanGuildID(sceneId, selfId)
		local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillPlatform)
		x402047_AddBGuildPoint(sceneId, selfId, humanguildid, point)
		local alreadynum = GetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillBuildingNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillBuildingNumIndex, alreadynum+1 )
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_KillBuildingIndex, 1 )
	elseif szName == x402047_g_B_Platform then		--BÌ¨
		if x402047_IsCommonAGuild( sceneId, selfId ) == 0 then
			return
		end
		local humanguildid = GetHumanGuildID(sceneId, selfId)
		local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillPlatform)
		x402047_AddAGuildPoint(sceneId, selfId, humanguildid, point)
		local alreadynum = GetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillBuildingNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillBuildingNumIndex, alreadynum+1 )
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_KillBuildingIndex, 1 )
	end
	
	local msg = LuaFnGetGuildName(sceneId, selfId).."#{BHXZ_081103_125}"..GetName(sceneId, selfId).."#{BHXZ_081103_126}"..szName.."!"
	for i = 0, num - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
			x402047_NotifyFailTips(sceneId, mems[i], msg)
			Msg2Player(sceneId, mems[i], msg, MSG2PLAYER_PARA)
		end
	end
end

----**********************************
----É±ËÀ¹ÖÎï»òÍæ¼Ò
----**********************************
--function x402047_OnKillObject( sceneId, selfId, objdataId, objId )						-- ²ÎÊýÒâË¼£º³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
--end

--**********************************
-- Íæ¼Ò¸´»î
--**********************************
function x402047_OnRelive(sceneId, selfId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 78, 100 )
end

--**********************************
--ÓÐÍæ¼ÒÔÚ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x402047_OnHumanDie( sceneId, selfId, killerId ) --Õâ¸ökillerIdÓÐ¿ÉÄÜÊÇ¶Ô·½NPC±ÈÈçËþ£¬¶ø²»Ò»¶¨ÊÇÍæ¼ÒselfId
	--ÊÇ·ñÊÇ¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--ÊÇ·ñÊÇËùÐèÒªµÄ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x402047_g_CopySceneType then
		return
	end
	
	--ÊÇ·ñ¿ªÊ¼¼Ç·Ö
	local isStartPoint = LuaFnGetCopySceneData_Param( sceneId, 7 )
	if isStartPoint == 0 then
		return
	end
	
--	--¸±±¾¹Ø±Õ±êÖ¾£¬Õâ¸öÖµµÃ¿¼ÂÇÒ»ÏÂ
--	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
--	if leaveFlag == 1 then														-- Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬£¬ÔòÉ±¹ÖÎÞÐ§
--		return
--	end
	
	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊý
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡µÃ±£´æµÄ°ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	local humanguildid = GetHumanGuildID(sceneId, selfId) --ËÀÍöÍæ¼Ò°ïÅÉ
	
	if humanguildid == Aguildid then --ËÀÍöÍæ¼ÒÊÇA°ïµÄ
		local objType = GetCharacterType( sceneId, killerId )
		local otherselfId = 0
		
		if objType == 1 then --Èç¹ûÉ±ËÀËûµÄÊÇÍæ¼Ò
			otherselfId = killerId
		elseif objType == 3 then --Èç¹ûÉ±ËÀËûµÄÊÇÆäËûÍæ¼ÒµÄ³èÎï
			otherselfId = GetPetCreator( sceneId, killerId )
			if otherselfId == -1 then
				otherselfId = 0
			end
		else --Èç¹ûÉ±ËÀËûµÄÊÇ¶Ô·½NPC±ÈÈçËþ
			otherselfId = 0
		end
		
		--ÉèÖÃ°ïÅÉÉ±ÈËÊýÄ¿
		local alreadykillnum = GetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillManNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillManNumIndex, alreadykillnum+1 )
		
		local Tankbuf = x402047_HaveTankBuff( sceneId, selfId )
		
		--ÉèÖÃ¸öÈËÉ±ÈËÊýÄ¿£¬Ôö¼Ó°ï¹±
		if otherselfId > 0 then
			x402047_AddHumanGuildArrayInt( sceneId, otherselfId, x402047_g_Human_KillManIndex, 1 )
			--CityChangeAttr(sceneId, otherselfId, GUILD_CONTRIB_POINT, 1)
			if Tankbuf == 0 then --·ÇÕ½³µÍæ¼Ò²Å·¢ËÍÕâ¸öÏµÍ³ÏûÏ¢
				Msg2Player(sceneId, otherselfId, "#{BHXZ_081103_127}"..GetName(sceneId, selfId).."!" , MSG2PLAYER_PARA)
			end
		end
		
		if Tankbuf and Tankbuf ~= 0 then --Õ½³µÍæ¼ÒËÀÍö
			if selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID ) then
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos, 0 )
				--PrintStr(" A first ")
			elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID ) then
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankBuff, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankPos, 0 )
				--PrintStr(" A Second ")
			end
			LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime, x402047_g_ColdTime )
			local tankpoint = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTankPlayer)
			x402047_AddBGuildPoint(sceneId, otherselfId, Bguildid, tankpoint)
			
			local msg = ""
			if otherselfId > 0 then
				msg = LuaFnGetGuildName(sceneId, otherselfId).."#{BHXZ_081103_125}"..GetName(sceneId, otherselfId).."#{BHXZ_081103_126}"..x402047_g_TankName[Tankbuf-x402047_g_AttrBuff[1]+1].."!"
			else
				msg = LuaFnGetGuildName(sceneId, selfId).."#{BHXZ_081103_125}"..x402047_g_TankName[Tankbuf-x402047_g_AttrBuff[1]+1].."Ðã b¸ ð¯i phß½ng phá huÛ!"
			end
			for i = 0, num - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x402047_NotifyFailTips(sceneId, mems[i], msg)
					Msg2Player(sceneId, mems[i], msg, MSG2PLAYER_PARA)
				end
			end
		else --·ÇÕ½³µÍæ¼ÒËÀÍö
			local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillOtherPlayer)
			x402047_AddBGuildPoint(sceneId, otherselfId, Bguildid, point)
		end
	elseif humanguildid == Bguildid then --ËÀÍöÍæ¼ÒÊÇB°ïµÄ
		local objType = GetCharacterType( sceneId, killerId )
		local otherselfId = 0
		
		if objType == 1 then --Èç¹ûÉ±ËÀËûµÄÊÇÍæ¼Ò
			otherselfId = killerId
		elseif objType == 3 then --Èç¹ûÉ±ËÀËûµÄÊÇÆäËûÍæ¼ÒµÄ³èÎï
			otherselfId = GetPetCreator( sceneId, killerId )
			if otherselfId == -1 then
				otherselfId = 0
			end
		else --Èç¹ûÉ±ËÀËûµÄÊÇ¶Ô·½NPC±ÈÈçËþ
			otherselfId = 0
		end
		
		--ÉèÖÃ°ïÅÉÉ±ÈËÊýÄ¿
		local alreadykillnum = GetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillManNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillManNumIndex, alreadykillnum+1 )
		
		local Tankbuf = x402047_HaveTankBuff( sceneId, selfId )
		
		--ÉèÖÃ¸öÈËÉ±ÈËÊýÄ¿£¬Ôö¼Ó°ï¹±
		if otherselfId > 0 then
			x402047_AddHumanGuildArrayInt( sceneId, otherselfId, x402047_g_Human_KillManIndex, 1 )
			--CityChangeAttr(sceneId, otherselfId, GUILD_CONTRIB_POINT, 1)
			if Tankbuf == 0 then --·ÇÕ½³µÍæ¼Ò²Å·¢ËÍÕâ¸öÏµÍ³ÏûÏ¢
				Msg2Player(sceneId, otherselfId, "#{BHXZ_081103_127}"..GetName(sceneId, selfId).."!" , MSG2PLAYER_PARA)
			end
		end
		
		if Tankbuf and Tankbuf ~= 0 then --Õ½³µÍæ¼ÒËÀÍö
			if selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID ) then
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankBuff, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankPos, 0 )
				--PrintStr(" B first ")
			elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID ) then
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankBuff, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankPos, 0 )
				--PrintStr(" B Second ")
			end
			LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime, x402047_g_ColdTime )
			local tankpoint = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTankPlayer)
			x402047_AddAGuildPoint(sceneId, otherselfId, Aguildid, tankpoint)
			
			local msg = ""
			if otherselfId > 0 then
				msg = LuaFnGetGuildName(sceneId, otherselfId).."#{BHXZ_081103_125}"..GetName(sceneId, otherselfId).."#{BHXZ_081103_126}"..x402047_g_TankName[Tankbuf-x402047_g_AttrBuff[1]+1].."!"
			else
				msg = LuaFnGetGuildName(sceneId, selfId).."#{BHXZ_081103_125}"..x402047_g_TankName[Tankbuf-x402047_g_AttrBuff[1]+1].."Ðã b¸ ð¯i phß½ng phá huÛ!"
			end
			for i = 0, num - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x402047_NotifyFailTips(sceneId, mems[i], msg)
					Msg2Player(sceneId, mems[i], msg, MSG2PLAYER_PARA)
				end
			end
		else --·ÇÕ½³µÍæ¼ÒËÀÍö
			local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillOtherPlayer)
			x402047_AddAGuildPoint(sceneId, otherselfId, Aguildid, point)
		end
	end
	
end

--**********************************
-- Í¨Öª±¾°ïÍæ¼Ò°ïÕ½»ý·Ö
--**********************************
function x402047_NotifyPoint( sceneId, humanguildid, point )
	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊý
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end
	
	for i = 0, num - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and GetHumanGuildID(sceneId, mems[i]) == humanguildid then		-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷£¬²»Âß¼­µÄ²»²Ù×÷
			x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_66}"..point )
		end
	end
end

--**********************************
--Àë¿ª¸±±¾
--**********************************
function x402047_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	NewWorld( sceneId, selfId, oldsceneId, x402047_g_Back_X, x402047_g_Back_Z )
end

--**********************************
--Íæ¼ÒÀë¿ªµÄÊ±ºòÇåÀíÉíÉÏµÄÁéÊ¯ÎïÆ·
--**********************************
function x402047_ClearLingShi( sceneId, selfId )
	for i = 1, getn( x402047_g_LingShiID ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x402047_g_LingShiID[i] )
		if num > 0 then
			LuaFnDelAvailableItem( sceneId, selfId, x402047_g_LingShiID[i], num )
		end
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x402047_OnCopySceneTimer( sceneId, nowTime )
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- È¡µÃÒÑ¾­Ö´ÐÐµÄ¶¨Ê±´ÎÊý
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- ÉèÖÃÐÂµÄ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	
	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	--local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end
	
	--ÆìÖÄÊ£ÓàÊ±¼ä
	local FlagRemainTime = LuaFnGetCopySceneData_Param( sceneId, x402047_g_FlagRemainedTime )
	if FlagRemainTime > 0 then
		FlagRemainTime = FlagRemainTime - 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_FlagRemainedTime, FlagRemainTime )
		if FlagRemainTime <= 0 then --Ê±¼äµ½ÁËÆìÖÄÏûÊ§
			local nMonsterNum = GetMonsterCount(sceneId)
			for i=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,i)
				local MonsterName = GetName(sceneId, nMonsterId)
				if MonsterName == x402047_g_A_Flag or MonsterName == x402047_g_B_Flag then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					
					local msg = MonsterName.."#{BHXZ_081103_128}"
					for j = 0, membercount - 1 do
						if LuaFnIsObjValid( sceneId, mems[j] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[j] ) == 1 then
							x402047_NotifyFailTips(sceneId, mems[j], msg)
							Msg2Player(sceneId, mems[j], msg, MSG2PLAYER_PARA)
						end
					end
				end
			end
		end
	end
	
	--Õ½³µÀäÈ´Ê±¼ä
	local AColdTime = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime )
	if AColdTime > 0 then
		AColdTime = AColdTime - 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime, AColdTime )
	end
	local BColdTime = LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime )
	if BColdTime > 0 then
		BColdTime = BColdTime - 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime, BColdTime )
	end
	
	--NPC¼ÓÃâÒß¿ØÖÆ
	if TickCount == 1 then
		local nNpcNum = GetMonsterCount(sceneId)
		for i=0, nNpcNum-1 do
			local nNpcId = GetMonsterObjID(sceneId,i)
			local name = GetName(sceneId, nNpcId)
			if name == x402047_g_A_Platform or name == x402047_g_A_FenXiang_Tower or name == x402047_g_A_LuoXing_Tower or
				name == x402047_g_B_Platform or name == x402047_g_B_FenXiang_Tower or name == x402047_g_B_LuoXing_Tower then
				LuaFnSendSpecificImpactToUnit( sceneId, nNpcId, nNpcId, nNpcId, x402047_g_ImmuneControlBuff, 0 )
			end
		end
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡µÃ±£´æµÄ°ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	
	--±¤ÀÝÑªÁ¿¹«¸æ
	if 1 then
		local nNpcNum = GetMonsterCount(sceneId)
		for i=0, nNpcNum-1 do
			local nNpcId = GetMonsterObjID(sceneId,i)
			local name = GetName(sceneId, nNpcId)
			local broadcast = 0
			local setindex = 0
			local guild = 0
			local iscontinue = 1 --Ã»ÓÐcontinueÓï¾ä??
			
			if name == x402047_g_A_Platform then
				broadcast = LuaFnGetCopySceneData_Param(sceneId, x402047_g_A_BroadcastTick)
				setindex = x402047_g_A_BroadcastTick
				guild = Aguildid
			elseif name == x402047_g_B_Platform then
				broadcast = LuaFnGetCopySceneData_Param(sceneId, x402047_g_B_BroadcastTick)
				setindex = x402047_g_B_BroadcastTick
				guild = Bguildid
			else
				iscontinue = 0
			end
			
			if iscontinue == 1 then
				local nMaxHp = GetMaxHp(sceneId, nNpcId)
				local nHp = GetHp(sceneId, nNpcId)
				local downpercent = ""
				
				if nHp <= nMaxHp*0.9 and broadcast == 0 then
					downpercent = "90%"
					LuaFnSetCopySceneData_Param( sceneId, setindex, 1 )
				elseif nHp <= nMaxHp*0.5 and broadcast == 1 then
					downpercent = "50%"
					LuaFnSetCopySceneData_Param( sceneId, setindex, 2 )
				elseif nHp <= nMaxHp*0.1 and broadcast == 2 then
					downpercent = "10%"
					LuaFnSetCopySceneData_Param( sceneId, setindex, 3 )
				end
				
				if downpercent ~= "" then
					local msg = "#{BHXZ_081103_148}"..name.."#{BHXZ_081103_149}"..downpercent.."#{BHXZ_081103_150}"
					for j = 0, membercount - 1 do
						if LuaFnIsObjValid( sceneId, mems[j] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[j] ) == 1 and GetHumanGuildID(sceneId, mems[j]) == guild then
							x402047_NotifyFailTips(sceneId, mems[j], msg)
							Msg2Player(sceneId, mems[j], msg, MSG2PLAYER_PARA)
						end
					end
				end
			end
		end
	end
	
	--TickCount = (x402047_g_LimitTotalHoldTime-x402047_g_CloseTick)
	if leaveFlag == 1 then															-- ÐèÒªÀë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼äµÄ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )
		
		if leaveTickCount >= x402047_g_CloseTick then										-- µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É
			local IsSetOverFlag = LuaFnGetCopySceneData_Param(sceneId, x402047_g_IsSetOverFlag)
			
			if IsSetOverFlag == 0 then
				LuaFnSetCopySceneData_Param(sceneId, x402047_g_IsSetOverFlag, 1)
				
				local Apoint = GetGuildIntNum( sceneId, Aguildid, x402047_g_A_TotalPointIndex )
				local Bpoint = GetGuildIntNum( sceneId, Bguildid, x402047_g_B_TotalPointIndex )
				
				--°ïÅÉ½±ÀøµÄÑ­»·£¬ÐèÒªÏÈÕÒµ½A°ïµ½µ×¶àÉÙÈË£¬B°ïµ½µ×¶àÉÙÈË!»¹ÒªÕÒµ½xx×î¶àµÄÍæ¼ÒÒÔ¼ÇÂ¼MissionData£¬ÉÔºóËû¿ÉÒÔÁì½±ºÍbuff!
				local AGuildcount = 0
				local BGuildcount = 0
				local KillMax = 0
				local FlagMax = 0
				local SourceMax = 0
				local PrizeSelfId = {0,0,0}
				for i=0, membercount-1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						NotifyBattleScore(sceneId, mems[i])
						local guildid = GetHumanGuildID(sceneId, mems[i])
						local KillNum = GetHumanGuildInt( sceneId, mems[i], x402047_g_Human_KillManIndex )
						local FlagNum = GetHumanGuildInt( sceneId, mems[i], x402047_g_Human_FlagIndex )
						local SourceNum = GetHumanGuildInt( sceneId, mems[i], x402047_g_Human_ResourceNumIndex )
						
						--Í³¼Æxx´ÎÊý
						if KillNum > KillMax then
							KillMax = KillNum
							PrizeSelfId[1] = mems[i]
						end
						if FlagNum > FlagMax then
							FlagMax = FlagNum
							PrizeSelfId[2] = mems[i]
						end
						if SourceNum > SourceMax then
							SourceMax = SourceNum
							PrizeSelfId[3] = mems[i]
						end
						
						--Í³¼ÆÃ¿¸ö°ïÅÉµÄÈËÊý
						if guildid == Aguildid then
							AGuildcount = AGuildcount + 1
						elseif guildid == Bguildid then
							BGuildcount = BGuildcount + 1
						end
					end
				end
				--¼ÆËãÁ½¸öµÄÐ§ÂÊºÍ¼ÆËãÒ»¸öµÄ²î²»¶à£¬ËùÒÔË÷ÐÔÈ«²¿¼ÆËã³öÀ´
				local AFailHonour = 0
				if AGuildcount ~= 0 then --±ÜÃâ·¢Éú³ý0´íÎó
					AFailHonour = floor(x402047_g_Fail_TotalHonour/AGuildcount)
				end
				local BFailHonour = 0
				if BGuildcount ~= 0 then --±ÜÃâ·¢Éú³ý0´íÎó
					BFailHonour = floor(x402047_g_Fail_TotalHonour/BGuildcount)
				end
				if AFailHonour > x402047_g_Fail_PerMaxHonour then
					AFailHonour = x402047_g_Fail_PerMaxHonour
				end
				if BFailHonour > x402047_g_Fail_PerMaxHonour then
					BFailHonour = x402047_g_Fail_PerMaxHonour
				end
				
				local isAWin = 0
				if Apoint > Bpoint then --Èç¹ûÆ½·ÖÔòÅÐÐûÕ½·½Ê§°Ü
					isAWin = 1
					
					local log = format("WinGuildID=%d,WinTotalHonour=%d,FailGuildID=%d,FailTotalHonour=%d", Aguildid, x402047_g_Win_PerHonour*AGuildcount, Bguildid, BFailHonour*BGuildcount)					
					ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_HONOUR, -1, log)
				else
					isAWin = 0
					local log = format("WinGuildID=%d,WinTotalHonour=%d,FailGuildID=%d,FailTotalHonour=%d", Bguildid, x402047_g_Win_PerHonour*BGuildcount, Aguildid, AFailHonour*AGuildcount)
					ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_HONOUR, -1, log)
				end
				
				--¸öÈË½±Àø£¬·¢ËÍÓÊ¼þ£¬ÒòÎªÒ»´Î°ïÕ½Ò»¸öÍæ¼ÒÓÐ¿ÉÄÜ»ñµÃ¶à¸ö³ÆºÅ£¬ËùÒÔÓÃÁË¶à¸öflag
				for i = 1, getn(PrizeSelfId) do
					if PrizeSelfId[i] ~= 0 then
						SetMissionFlag(sceneId, PrizeSelfId[i], x402047_g_PrizeFlag[i], 1)
						LuaFnSendSystemMail(sceneId, GetName(sceneId, PrizeSelfId[i]), x402047_g_PrizeMsg[i])
					end
				end
				
				--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°!´«ËÍ²Ù×÷Ò»¶¨ÊÇ×îºóÒ»²½£¬ÒòÎª´«ËÍÇÐ³¡¾°µÄÊ±ºò²»ÄÜ½øÐÐÂß¼­´¦ÀíÁË
				for i=0, membercount-1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						local Tankbuf = x402047_HaveTankBuff( sceneId, mems[i] )
						if Tankbuf and Tankbuf ~= 0 then --Õ½³µÍæ¼ÒÈ¡Ïûbuff
							LuaFnCancelSpecificImpact(sceneId,mems[i],Tankbuf)
						end
						x402047_ClearLingShi( sceneId, mems[i] )
						--ÇåÀí¸öÈËÁÙÊ±°ïÕ½Êý¾Ý
						for j = x402047_g_Human_TotalPointIndex, x402047_g_Human_ResourceNumIndex do
							SetHumanGuildInt(sceneId, mems[i], j, 0)
						end
						
						local guildid = GetHumanGuildID(sceneId, mems[i])
						if guildid == Aguildid then --ÊÇA°ï³ÉÔ±
							if isAWin == 1 then --A°ï»ñÊ¤
								x402047_AddHonour( sceneId, mems[i], x402047_g_Win_PerHonour )
								NewWorld( sceneId, mems[i], x402047_g_Exit_SceneID, x402047_g_Win_X, x402047_g_Win_Z )
							else
								x402047_AddHonour( sceneId, mems[i], AFailHonour )
								SetCurTitle(sceneId, mems[i], 23, 0) --Ê§°Ü·½Ç¿ÖÆ¶¥³ö°ïÅÉ³ÆºÅ
								LuaFnSendSystemMail(sceneId, GetName(sceneId, mems[i]), x402047_g_FailMsg) --±äÑòÓÊ¼þ
								LuaFnSendSpecificImpactToUnit(sceneId, mems[i], mems[i], mems[i], x402047_g_SheepBuff, 0 )
								NewWorld( sceneId, mems[i], x402047_g_Exit_SceneID, x402047_g_Fail_X, x402047_g_Fail_Z )
							end
						elseif guildid == Bguildid then --ÊÇB°ï³ÉÔ±
							if isAWin == 0 then --B°ï»ñÊ¤
								x402047_AddHonour( sceneId, mems[i], x402047_g_Win_PerHonour )
								NewWorld( sceneId, mems[i], x402047_g_Exit_SceneID, x402047_g_Win_X, x402047_g_Win_Z )
							else
								x402047_AddHonour( sceneId, mems[i], BFailHonour )
								SetCurTitle(sceneId, mems[i], 23, 0)  --Ê§°Ü·½Ç¿ÖÆ¶¥³ö°ïÅÉ³ÆºÅ
								LuaFnSendSystemMail(sceneId, GetName(sceneId, mems[i]), x402047_g_FailMsg) --±äÑòÓÊ¼þ
								LuaFnSendSpecificImpactToUnit(sceneId, mems[i], mems[i], mems[i], x402047_g_SheepBuff, 0 )
								NewWorld( sceneId, mems[i], x402047_g_Exit_SceneID, x402047_g_Fail_X, x402047_g_Fail_Z )
							end
						else --²»ÔÚÕýÈ·°ïÅÉ£¿£¿
							x402047_Exit( sceneId, mems[i] )
						end
					end
				end
			else--²»ÄÜÈÃÍæ¼ÒÖØÐÂ½øÈë×ßÁì½±Á÷³Ì£¬²»ÄÜÇåÀí°ïÅÉIDÒòÎª½áÊøºó»¹ÒªÓÃµ½°ïÅÉID£!¡playerenter¼ÓÁËÈç¹ûÒÑ¾­¹Ø±ÕÔòÂíÉÏ´«³ö¸±±¾
				for i=0, membercount-1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						local Tankbuf = x402047_HaveTankBuff( sceneId, mems[i] )
						if Tankbuf and Tankbuf ~= 0 then --Õ½³µÍæ¼ÒÈ¡Ïûbuff
							LuaFnCancelSpecificImpact(sceneId,mems[i],Tankbuf)
						end
						x402047_ClearLingShi( sceneId, mems[i] )
						--ÇåÀí¸öÈËÁÙÊ±°ïÕ½Êý¾Ý
						for j = x402047_g_Human_TotalPointIndex, x402047_g_Human_ResourceNumIndex do
							SetHumanGuildInt(sceneId, mems[i], j, 0)
						end
						
						x402047_Exit( sceneId, mems[i] )
					end
				end
			end
			
			return
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓÐÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Sau %d giây sau s¨ r¶i khöi.", ( x402047_g_CloseTick - leaveTickCount ) * x402047_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x402047_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
			
			--Õâ¸öµØ·½²»ÐèÒªreturn
		end
	end
	
	if TickCount == (x402047_g_LimitTotalHoldTime-x402047_g_CloseTick) then		-- ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾£¬¿ªÊ¼Í¨Öª
		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == x402047_g_StartPoint then --¿ªÊ¼¼Ç·Ö
		
		--ÉèÖÃ¼Ç·Ö±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 7, 1 )
		
		--ÉèÖÃÍæ¼ÒÕóÓª£¬²¢Í¨ÖªÍæ¼Ò°ïÕ½¿ªÊ¼
		for i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_108}" )
				Msg2Player(sceneId, mems[i], "#{BHXZ_081103_108}", MSG2PLAYER_PARA)
				
				local guildid = GetHumanGuildID(sceneId, mems[i])
				if guildid == Aguildid then
					SetUnitCampID(sceneId, mems[i], mems[i], 10+Aguildid)
				elseif guildid == Bguildid then
					SetUnitCampID(sceneId, mems[i], mems[i], 11+Aguildid)
				else
					x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_147}" )
					x402047_ClearLingShi( sceneId, mems[i] )
					x402047_Exit( sceneId, mems[i] )
				end
			end
		end
		
		--ÉèÖÃNPCÕóÓª
		local nNpcNum = GetMonsterCount(sceneId)
		for i=0, nNpcNum-1 do
			local nNpcId = GetMonsterObjID(sceneId,i)
			local name = GetName(sceneId, nNpcId)
			if name == x402047_g_A_Platform or name == x402047_g_A_FenXiang_Tower or name == x402047_g_A_LuoXing_Tower then
				SetUnitCampID(sceneId,nNpcId, nNpcId, Aguildid+10)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
			elseif name == x402047_g_B_Platform or name == x402047_g_B_FenXiang_Tower or name == x402047_g_B_LuoXing_Tower then
				SetUnitCampID(sceneId,nNpcId, nNpcId, Aguildid+11)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
			end
		end
	else
		
		--°ïÕ½¿ªÊ¼µÄÌáÊ¾
		if TickCount < x402047_g_StartPoint then
			local RemainTick = x402047_g_StartPoint - TickCount
			if mod(RemainTick, 60) == 0 then --Ã¿·ÖÖÓÌáÊ¾
				for	i = 0, membercount - 1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_129}"..floor(RemainTick / 60).."#{BHXZ_081103_130}" )
					end
				end
			end
			if RemainTick <= x402047_g_BackTick then --µ¹¼ÆÊ±ÌáÊ¾
				for	i = 0, membercount - 1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_129}"..RemainTick.."#{BHXZ_081103_131}" )
					end
				end
			end
		end
		
		--ËþÊÍ·Å¼¼ÄÜ£¬Ã¿5sÆðÒ»´Î×÷ÓÃ£¬·ÙÏãËþ²»ÄÜÍ¬Ê±·ÅÁ½¸ö¼¼ÄÜ£¬ËùÒÔºóÒ»ÃëÔÚ·ÅÒ»¸ö¼¼ÄÜ
		local modtick = mod( TickCount, 5 )
		if TickCount >= x402047_g_StartPoint and modtick == 0 then
			local nNpcNum = GetMonsterCount(sceneId)
			local PosX = 0
			local PosZ = 0
			
			for i=0, nNpcNum-1 do
				local nNpcId = GetMonsterObjID(sceneId,i)
				local name = GetName(sceneId, nNpcId)
				if name == x402047_g_A_LuoXing_Tower or name == x402047_g_B_LuoXing_Tower then
					if GetHp(sceneId, nNpcId) > 0 then
						PosX,PosZ = GetWorldPos(sceneId,nNpcId)
						LuaFnUnitUseSkill(sceneId,nNpcId,1067,nNpcId,PosX,PosZ,15,0)
					end
				elseif name == x402047_g_A_FenXiang_Tower or name == x402047_g_B_FenXiang_Tower then
					if GetHp(sceneId, nNpcId) > 0 then
						PosX,PosZ = GetWorldPos(sceneId,nNpcId)
						LuaFnUnitUseSkill(sceneId,nNpcId,1068,nNpcId,PosX,PosZ,15,0)
					end
				end
			end
		end
		if TickCount >= x402047_g_StartPoint and modtick == 1 then
			local nNpcNum = GetMonsterCount(sceneId)
			local PosX = 0
			local PosZ = 0
			
			for i=0, nNpcNum-1 do
				local nNpcId = GetMonsterObjID(sceneId,i)
				local name = GetName(sceneId, nNpcId)
				if name == x402047_g_A_FenXiang_Tower or name == x402047_g_B_FenXiang_Tower then
					if GetHp(sceneId, nNpcId) > 0 then
						PosX,PosZ = GetWorldPos(sceneId,nNpcId)
						LuaFnUnitUseSkill(sceneId,nNpcId,1069,nNpcId,PosX,PosZ,15,0)
					end
				end
			end
		end
		
		--Õ½³µÍæ¼ÒÊÇ·ñµôÏß£¬ÒÔ¼°Õ½³µ×ø±ê¸üÐÂ£¬Ã¿s¸üÐÂÒ»´Î
		local TankInfo = {{},{},{},{}}
		local modtick10 = mod( TickCount, 10 )
		local modtick12 = mod( TickCount, 12 )
		for i=0, 3 do
			local tankman = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID+i )
			local PosX = 0
			local PosZ = 0
			TankInfo[i+1].selfId = tankman
			TankInfo[i+1].type = 0
			TankInfo[i+1].impactfriendnum = 0
			TankInfo[i+1].impactenemynum = 0
			TankInfo[i+1].x = 0
			TankInfo[i+1].z = 0
			
			if tankman ~= 0 then
				if LuaFnIsObjValid( sceneId, tankman ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, tankman ) == 1 then
					local buff = x402047_HaveTankBuff( sceneId, tankman )
					if buff == 0 then
						TankInfo[i+1].type = 0
					else
						TankInfo[i+1].type = buff - x402047_g_AttrBuff[1] + 1
						if TankInfo[i+1].type > 5 then
							TankInfo[i+1].type = TankInfo[i+1].type - 5
						end
					end
					
					if buff == 0 then --Õ½³µÍæ¼ÒÒì³£µôÏß
						local oldbuff = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff+i ) --È¡³ö¸±±¾ÄÚ¼ÇÂ¼µÄbuf
						local totalpos = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i ) --È¡³ö¸±±¾ÄÚ¼ÇÂ¼µÄpos
						PosX = floor(totalpos / 10000)
						PosZ = mod(totalpos, 10000)
						
						if oldbuff > 0 then
							local selfIdindex = 0
							if i == 0 or i == 1 then --A°ïÕ½³µ
								selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, Aguildid, oldbuff-x402047_g_AttrBuff[1]+1 )
							else --B°ïÕ½³µ
								selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, Bguildid, oldbuff-x402047_g_AttrBuff[1]+1 )
							end
							if selfIdindex > 0 and PosX > 0 and PosZ > 0 then
								local monsterID = LuaFnCreateMonster( sceneId, x402047_g_TankID[oldbuff-x402047_g_AttrBuff[1]+1], PosX, PosZ, 3, -1, 402302 )
								LuaFnSendSpecificImpactToUnit( sceneId, monsterID, monsterID, monsterID, x402047_g_ImmuneControlBuff, 0 )
							end
						end
						
						LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID+i, 0 )
						LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff+i, 0 )
						LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i, 0 )
					else --¸üÐÂ×ø±ê
						PosX,PosZ = GetWorldPos(sceneId,tankman)
						LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i, floor(PosX)*10000+floor(PosZ) )
						TankInfo[i+1].x = PosX
						TankInfo[i+1].z = PosZ
						
						--Õ½³µ·Å¹âÐ§
						if i == 0 or i == 1 then--A°ï
							if modtick12 == 7 and TankInfo[i+1].type == 1 then
								LuaFnSendSpecificImpactToUnit( sceneId, tankman, tankman, tankman, x402047_g_LightBuff[TankInfo[i+1].type], 0 )
							elseif modtick10 == 8 and 2 <= TankInfo[i+1].type and TankInfo[i+1].type <= 4 then
								LuaFnSendSpecificImpactToUnit( sceneId, tankman, tankman, tankman, x402047_g_LightBuff[TankInfo[i+1].type], 0 )
							end
						else--B°ï
							if modtick12 == 1 and TankInfo[i+1].type == 1 then
								LuaFnSendSpecificImpactToUnit( sceneId, tankman, tankman, tankman, x402047_g_LightBuff[TankInfo[i+1].type], 0 )
							elseif modtick10 == 3 and 2 <= TankInfo[i+1].type and TankInfo[i+1].type <= 4 then
								LuaFnSendSpecificImpactToUnit( sceneId, tankman, tankman, tankman, x402047_g_LightBuff[TankInfo[i+1].type], 0 )
							end
						end
						
					end
				else --ID²»ÕýÈ·»òÕß²»ÄÜÂß¼­ËµÃ÷Õ½³µÍæ¼ÒÒÑ¾­µôÏß£¬ÐèÒª×öµôÏß´¦Àí
					local oldbuff = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff+i ) --È¡³ö¸±±¾ÄÚ¼ÇÂ¼µÄbuf
					local totalpos = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i ) --È¡³ö¸±±¾ÄÚ¼ÇÂ¼µÄpos
					PosX = floor(totalpos / 10000)
					PosZ = mod(totalpos, 10000)
					
					if oldbuff > 0 then
						local selfIdindex = 0
						if i == 0 or i == 1 then --A°ïÕ½³µ
							selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, Aguildid, oldbuff-x402047_g_AttrBuff[1]+1 )
						else --B°ïÕ½³µ
							selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, Bguildid, oldbuff-x402047_g_AttrBuff[1]+1 )
						end
						if selfIdindex > 0 and PosX > 0 and PosZ > 0 then
							local monsterID = LuaFnCreateMonster( sceneId, x402047_g_TankID[oldbuff-x402047_g_AttrBuff[1]+1], PosX, PosZ, 3, -1, 402302 )
							LuaFnSendSpecificImpactToUnit( sceneId, monsterID, monsterID, monsterID, x402047_g_ImmuneControlBuff, 0 )
						end
					end
					
					LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID+i, 0 )
					LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff+i, 0 )
					LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i, 0 )
				end --end if-else
			end --end if
		end --end for
		
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±µÄ°ïÅÉID£¬Èç¹û²»·ûºÏ£¬ÔòÌß³ö¸±±¾
		--Õ½³µ·Å¼¼ÄÜ
		local Acount = 0
		local Bcount = 0
		local AGuildName = ""
		local BGuildName = ""
		
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				local guildid = GetHumanGuildID(sceneId, mems[i])
				local Tankbuf = x402047_HaveTankBuff( sceneId, mems[i] )
				local isalive = LuaFnIsCharacterLiving( sceneId, mems[i] )
				local xx,zz = GetWorldPos(sceneId,mems[i])
				if guildid == Aguildid then
					Acount = Acount + 1
					if AGuildName == "" then
						AGuildName = LuaFnGetGuildName(sceneId, mems[i])
					end
					
					if modtick10 == 3 and Tankbuf == 0 and isalive == 1 then --°×»¢Õ½³µ,ÖìÈ¸Õ½³µ,ÐþÎäÕ½³µ
						for	j = 1, 2 do --¶Ô¼º·½µÄÐ§¹û
							if TankInfo[j].impactfriendnum < x402047_g_TankMaxFriendNum and (TankInfo[j].type == 2 or TankInfo[j].type == 3 or TankInfo[j].type == 4)
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][1], 0 )
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][2], 0 )
								TankInfo[j].impactfriendnum = TankInfo[j].impactfriendnum + 1
							end
						end
						
						for	j = 3, 4 do --¶ÔµÐ·½µÄÐ§¹û
							if (TankInfo[j].type == 2 or TankInfo[j].type == 3 or TankInfo[j].type == 4)
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								if TankInfo[j].impactenemynum < x402047_g_TankMaxEnemyNum then
									LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankEnemyBuff[TankInfo[j].type], 0 )
									TankInfo[j].impactenemynum = TankInfo[j].impactenemynum + 1
								end
								local Addbuff = x402047_AttackBuffByHuman( sceneId, TankInfo[j].selfId, TankInfo[j].type )
								LuaFnSendSpecificImpactBySkillToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], Addbuff, 0 )
							end
						end
					end
					if modtick12 == 1 and Tankbuf == 0 and isalive == 1 then --ÇàÁúÕ½³µ
						for	j = 1, 2 do --¶Ô¼º·½µÄÐ§¹û
							if TankInfo[j].impactfriendnum < x402047_g_TankMaxFriendNum and TankInfo[j].type == 1
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][1], 0 )
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][2], 0 )
								TankInfo[j].impactfriendnum = TankInfo[j].impactfriendnum + 1
							end
						end
						
						for	j = 3, 4 do --¶ÔµÐ·½µÄÐ§¹û
							if TankInfo[j].type == 1 and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								if TankInfo[j].impactenemynum < x402047_g_TankMaxEnemyNum then
									LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankEnemyBuff[TankInfo[j].type], 0 )
									TankInfo[j].impactenemynum = TankInfo[j].impactenemynum + 1
								end
								local Addbuff = x402047_AttackBuffByHuman( sceneId, TankInfo[j].selfId, TankInfo[j].type )
								LuaFnSendSpecificImpactBySkillToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], Addbuff, 0 )
							end
						end
					end
				elseif guildid == Bguildid then
					Bcount = Bcount + 1
					if BGuildName == "" then
						BGuildName = LuaFnGetGuildName(sceneId, mems[i])
					end
					
					if modtick10 == 8 and Tankbuf == 0 and isalive == 1 then --°×»¢Õ½³µ,ÖìÈ¸Õ½³µ,ÐþÎäÕ½³µ
						for	j = 1, 2 do --¶ÔµÐ·½µÄÐ§¹û
							if (TankInfo[j].type == 2 or TankInfo[j].type == 3 or TankInfo[j].type == 4)
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								if TankInfo[j].impactenemynum < x402047_g_TankMaxEnemyNum then
									LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankEnemyBuff[TankInfo[j].type], 0 )
									TankInfo[j].impactenemynum = TankInfo[j].impactenemynum + 1
								end
								local Addbuff = x402047_AttackBuffByHuman( sceneId, TankInfo[j].selfId, TankInfo[j].type )
								LuaFnSendSpecificImpactBySkillToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], Addbuff, 0 )
							end
						end
						
						for	j = 3, 4 do --¶Ô¼º·½µÄÐ§¹û
							if TankInfo[j].impactfriendnum < x402047_g_TankMaxFriendNum and (TankInfo[j].type == 2 or TankInfo[j].type == 3 or TankInfo[j].type == 4)
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][1], 0 )
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][2], 0 )
								TankInfo[j].impactfriendnum = TankInfo[j].impactfriendnum + 1
							end
						end
					end
					if modtick12 == 7 and Tankbuf == 0 and isalive == 1 then --ÇàÁúÕ½³µ
						for	j = 1, 2 do --¶ÔµÐ·½µÄÐ§¹û
							if TankInfo[j].type == 1 and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								if TankInfo[j].impactenemynum < x402047_g_TankMaxEnemyNum then
									LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankEnemyBuff[TankInfo[j].type], 0 )
									TankInfo[j].impactenemynum = TankInfo[j].impactenemynum + 1
								end
								local Addbuff = x402047_AttackBuffByHuman( sceneId, TankInfo[j].selfId, TankInfo[j].type )
								LuaFnSendSpecificImpactBySkillToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], Addbuff, 0 )
							end
						end
						
						for	j = 3, 4 do --¶Ô¼º·½µÄÐ§¹û
							if TankInfo[j].impactfriendnum < x402047_g_TankMaxFriendNum and TankInfo[j].type == 1 
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][1], 0 )
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][2], 0 )
								TankInfo[j].impactfriendnum = TankInfo[j].impactfriendnum + 1
							end
						end
					end
				else
					if Tankbuf and Tankbuf ~= 0 then --Õ½³µÍæ¼Ò²»ÔÚÕýÈ·°ïÅÉ
						LuaFnCancelSpecificImpact(sceneId,mems[i],Tankbuf)
					end
					x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_147}" )
					x402047_ClearLingShi( sceneId, mems[i] )
					x402047_Exit( sceneId, mems[i] )
				end
			end
		end
		
		SetGuildIntNum( sceneId, Aguildid, x402047_g_A_numIndex, Acount )
		SetGuildIntNum( sceneId, Bguildid, x402047_g_B_numIndex, Bcount )
		
		--Õ½¶·½ø³Ì¹«¸æ²¥·Å¹¦ÄÜ10·Ö£¬20·Ö£¬30·Ö
		if TickCount == (x402047_g_StartPoint+10*60) or TickCount == (x402047_g_StartPoint+20*60) or TickCount == (x402047_g_StartPoint+30*60) then
			local Apoint = GetGuildIntNum( sceneId, Aguildid, x402047_g_A_TotalPointIndex )
			local Bpoint = GetGuildIntNum( sceneId, Bguildid, x402047_g_B_TotalPointIndex )
			if AGuildName == "" then --Èç¹ûÕâ¸ö°ïÅÉÃ»ÈËÔòÎÞ·¨È¡³ö°ïÅÉÃû³Æ
				AGuildName = Aguildid.."ºÅ"
			end
			if BGuildName == "" then --Èç¹ûÕâ¸ö°ïÅÉÃ»ÈËÔòÎÞ·¨È¡³ö°ïÅÉÃû³Æ
				BGuildName = Bguildid.."ºÅ"
			end
			local leadmsg = ""
			if Apoint > Bpoint then
				leadmsg = AGuildName.."#{BHXZ_081103_132}"
			else
				leadmsg = BGuildName.."#{BHXZ_081103_132}"
			end
			local msg = "#{BHXZ_081103_133}"..floor((TickCount-x402047_g_StartPoint)/60).."#{BHXZ_081103_134}"..AGuildName.."#{BHXZ_081103_135}"..Acount.."#{BHXZ_081103_136}"..Apoint..". "..BGuildName.."#{BHXZ_081103_135}"..Bcount.."#{BHXZ_081103_136}"..Bpoint.."."..leadmsg
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then		-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷£¬²»Âß¼­µÄ²»²Ù×÷
					x402047_NotifyFailTips( sceneId, mems[i], msg )
					Msg2Player(sceneId, mems[i], msg , MSG2PLAYER_PARA)
				end
			end
		end
		
		--ÅÌ¹ÅÕ½³µ·Å¼¼ÄÜ
		for j=1, 4 do
			if TankInfo[j].type == 5 and modtick10 == 4 then
				local nNpcNum = GetMonsterCount(sceneId)
				local attckindex = 0
				if j == 1 or j == 2 then
					attckindex = 3
				else
					attckindex = 1
				end
				
				for i=0, nNpcNum-1 do --¹¥»÷¶Ô·½½¨Öþ
					local nNpcId = GetMonsterObjID(sceneId,i)
					local name = GetName(sceneId, nNpcId)
					local xx,zz = GetWorldPos(sceneId,nNpcId)
					
					if (((j == 3 or j == 4) and (name == x402047_g_A_LuoXing_Tower or name == x402047_g_A_FenXiang_Tower or name == x402047_g_A_Platform)) or
							((j == 1 or j == 2) and (name == x402047_g_B_LuoXing_Tower or name == x402047_g_B_FenXiang_Tower or name == x402047_g_B_Platform))) and
							GetHp(sceneId, nNpcId) > 0 and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
						LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, nNpcId, x402047_g_PanGuTankAttackBuff, 0 )
					end
				end
				
				for i=attckindex, attckindex+1 do --¹¥»÷¶Ô·½Õ½³µ
					local xx,zz = GetWorldPos(sceneId,TankInfo[i].selfId)
					
					if TankInfo[i].type ~= 0 and GetHp(sceneId, TankInfo[i].selfId) > 0 and
						(TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
						LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, TankInfo[i].selfId, x402047_g_PanGuTankAttackBuff, 0 )
					end
				end
			end
		end
		
	end
end

--**********************************
-- Õ½³µbuffÈ¡ÏûÊ±ºò»Øµ÷µÄ½Å±¾º¯Êý
--**********************************
function x402047_OnImpactFadeOut( sceneId, selfId, impactId )
	
	local tanktype = impactId-x402047_g_AttrBuff[1]+1
	
	--Õâ¸öÒªÏÈÐ´£¬ÒâÍâÇé¿öÏÂÆäËû³¡¾°Ò²¿ÉÒÔÈ¡ÏûÕâ¸öbuf
	LuaFnCancelSpecificImpact(sceneId,selfId,x402047_g_TankBuff[tanktype])
	LuaFnCancelSpecificImpact(sceneId,selfId,x402047_g_ImmuneControlBuff)
	--LuaFnCancelSpecificImpact(sceneId,selfId,impactId) --×¢ÊÍµôÕâ¸ö
	
	--ÊÇ·ñÊÇ¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end
	
	--ÊÇ·ñÊÇËùÐèÒªµÄ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= FUBEN_BANGZHAN then
		return
	end
	
	--ÊÇ·ñ¿ªÊ¼°ïÕ½»ý·Ö
	if LuaFnGetCopySceneData_Param( sceneId, 7 ) == 0 then
		return
	end
	
	--¸±±¾³¡¾°¼ÇÂ¼µÄÕ½³µÍæ¼ÒselfId
	local isAguild = 0
	if selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID ) then
		isAguild = 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos, 0 )
	elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID ) then
		isAguild = 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankBuff, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankPos, 0 )
	elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID ) then
		isAguild = 0
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankBuff, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankPos, 0 )
	elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID ) then
		isAguild = 0
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankBuff, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankPos, 0 )
	else --ËÀÍöµÄÍæ¼ÒÔÚÇ°Ãæx402047_OnHumanDieÒÑ¾­Çå³ýÁË¸±±¾ÄÚµÄselfid£¬Òò´Ë²»»á¼ÌÐøÍùÏÂ´´½¨Õ½³µ
		return
	end
	
	Msg2Player(sceneId, selfId, "#{BHXZ_081103_137}"..x402047_g_TankName[tanktype].."!" , MSG2PLAYER_PARA)
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )	-- È¡µÃ±£´æµÄ°ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	
	--ÑªÁ¿ÉÙÓÚ20%Ö±½ÓËã±¬µôÁË£¬²»´´½¨Õ½³µ£¬Õ½³µÍæ¼ÒÏÂÏß¹æÔò»¹°´ÕÕÔ­µØ´´½¨Õ½³µ #43231
	if GetHp(sceneId,selfId) >= floor(GetMaxHp(sceneId,selfId)*0.2) then
		--Ò»¶¨ÒªÕÒµ½Ò»¸ö¿ÉÒÔ·ÅÍæ¼ÒselfIdµÄµØ·½²Å´´½¨Õ½³µÄ£ÐÍ£¬·ÀÖ¹²úÉú³ö³¬¹ý2Á¾µÄÕ½³µ£¬»¹ÓÐÕ½³µÀàÐÍ²»ÄÜÖØ¸´
		local selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, isAguild, tanktype )
		if selfIdindex > 0 then
			local PosX,PosZ = GetWorldPos(sceneId,selfId)
			local monsterID = LuaFnCreateMonster( sceneId, x402047_g_TankID[tanktype], PosX, PosZ, 3, -1, 402302 )
			LuaFnSendSpecificImpactToUnit( sceneId, monsterID, monsterID, monsterID, x402047_g_ImmuneControlBuff, 0 )
		end
	else --ÉèÖÃÀäÈ´Ê±¼ä£¬ÌáÊ¾ÐÅÏ¢£¬Ôö¼Ó»ý·Ö£¬ÉèÖÃ°ïÅÉÉ±ÈËÊýÄ¿
		--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊý
		local num = LuaFnGetCopyScene_HumanCount( sceneId )
		local mems = {}
		
		for i = 0, num - 1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
		end
		
		local msg = GetName(sceneId, selfId).."#{BHXZ_090112_38}"
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x402047_NotifyFailTips(sceneId, mems[i], msg)
			end
		end
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;GLD:#{BHXZ_090112_39}", 6); --°ïÅÉÆµµÀ
		
		if isAguild == 1 then
			LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime, x402047_g_ColdTime )
			local tankpoint = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTankPlayer)
			x402047_AddBGuildPoint(sceneId, 0, Bguildid, tankpoint)
			--ÉèÖÃ°ïÅÉÉ±ÈËÊýÄ¿
			local alreadykillnum = GetGuildIntNum( sceneId, Bguildid, x402047_g_B_KillManNumIndex )
			SetGuildIntNum( sceneId, Bguildid, x402047_g_B_KillManNumIndex, alreadykillnum+1 )
		else
			LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime, x402047_g_ColdTime )
			local tankpoint = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTankPlayer)
			x402047_AddAGuildPoint(sceneId, 0, Aguildid, tankpoint)
			--ÉèÖÃ°ïÅÉÉ±ÈËÊýÄ¿
			local alreadykillnum = GetGuildIntNum( sceneId, Aguildid, x402047_g_A_KillManNumIndex )
			SetGuildIntNum( sceneId, Aguildid, x402047_g_A_KillManNumIndex, alreadykillnum+1 )
		end
	end
	
end

--**********************************
-- ÊÇ·ñÓÐÕ½³µbuff£¬ÓÐ·µ»ØbuffIDÃ»ÓÐ·µ»Ø0
--**********************************
function x402047_HaveTankBuff( sceneId, selfId )
	for i = 1, getn( x402047_g_AttrBuff ) do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x402047_g_AttrBuff[i]) == 1 then
			return x402047_g_AttrBuff[i]
		end
	end
	return 0
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x402047_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x402047_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÊÇ·ñ±¾°ï½øÈë¸±±¾µÄÈËÊý³¬¹ýÉÏÏÞ x402047_g_MaxMembers ÈË
--**********************************
function x402047_IsGuildFull( sceneId, guildid )
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡µÃ±£´æµÄ°ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	
	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	--local i
	
	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end
	
	local Acount = 0
	local Bcount = 0
	for	i = 0, membercount - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
			local guildid = GetHumanGuildID(sceneId, mems[i])
			if guildid == Aguildid then
				Acount = Acount + 1
			end
		end
	end
	Bcount = membercount - Acount
	
	if guildid == Aguildid then
		if Acount > x402047_g_MaxMembers then
			return 1
		else
			return 0
		end
	elseif guildid == Bguildid then
		if Bcount > x402047_g_MaxMembers then
			return 1
		else
			return 0
		end
	else --Ó¦¸Ã²»»á×ßµ½ÕâÀïÀ´£¬Õâ¸öº¯Êýµ÷ÓÃºóÃæµÄÂß¼­²¿·ÖÓÐ×¼È·µÄÊÇ·ñÔÚ°ïÅÉÖÐµÄÅÐ¶Ï£¬Òò´ËÕâÀï·µ»Ø0±íÊ¾Í¨¹ý
		return 0
	end
	
end

--**********************************
--ÊÇ·ñÊÇA°ïÍæ¼Ò£¬NPC obj½Å±¾µ÷ÓÃµ½ÕâÀï
--**********************************
function x402047_IsCommonAGuild( sceneId, selfId )
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡µÃ±£´æµÄ°ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	local humanguildid = GetHumanGuildID(sceneId, selfId)
	
	if Aguildid == humanguildid then
		return 1
	end
	
	return 0
end

--**********************************
--ÊÇ·ñÊÇB°ïÍæ¼Ò£¬NPC obj½Å±¾µ÷ÓÃµ½ÕâÀï
--**********************************
function x402047_IsCommonBGuild( sceneId, selfId )
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡µÃ±£´æµÄ°ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	local humanguildid = GetHumanGuildID(sceneId, selfId)

	if Bguildid == humanguildid then
		return 1
	end
	
	return 0
end

--**********************************
--Ôö¼ÓA°ï»ý·Ö²¢Í¨ÖªA°ïÍæ¼Ò£¬É±ÈË¡¢½¨Öþ¡¢´óÆì¡¢ÁéÊ¯NPC½Å±¾µ÷ÓÃµ½ÕâÀï
--**********************************
function x402047_AddAGuildPoint( sceneId, selfId, guildid, addpoint )
	local point = GetGuildIntNum( sceneId, guildid, x402047_g_A_TotalPointIndex )
	point = point + addpoint
	x402047_NotifyPoint( sceneId, guildid, point ) --Í¨ÖªÍæ¼Ò°ïÅÉ
	SetGuildIntNum( sceneId, guildid, x402047_g_A_TotalPointIndex, point )--±£´æ»ý·Ö
	if selfId > 0 then --É±ÈËµÄÊÇ¶Ô·½NPCÔòÕâÀïÊÇ0£¬ÇÐ»»Õ½³µÊôÐÔµÄÊ±ºòÒ²ÊÇ0£¬ÑªÁ¿20%ÒÔÏÂÀë¿ªÕ½³µÒ²ÊÇ0
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_TotalPointIndex, addpoint )
	end
end

--**********************************
--Ôö¼ÓB°ï»ý·Ö²¢Í¨ÖªB°ïÍæ¼Ò£¬É±ÈË¡¢½¨Öþ¡¢´óÆì¡¢ÁéÊ¯NPC½Å±¾µ÷ÓÃµ½ÕâÀï
--**********************************
function x402047_AddBGuildPoint( sceneId, selfId, guildid, addpoint )
	local point = GetGuildIntNum( sceneId, guildid, x402047_g_B_TotalPointIndex )
	point = point + addpoint
	x402047_NotifyPoint( sceneId, guildid, point ) --Í¨ÖªÍæ¼Ò°ïÅÉ
	SetGuildIntNum( sceneId, guildid, x402047_g_B_TotalPointIndex, point )--±£´æ»ý·Ö
	if selfId > 0 then --É±ÈËµÄÊÇ¶Ô·½NPCÔòÕâÀïÊÇ0£¬ÇÐ»»Õ½³µÊôÐÔµÄÊ±ºòÒ²ÊÇ0£¬ÑªÁ¿20%ÒÔÏÂÀë¿ªÕ½³µÒ²ÊÇ0
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_TotalPointIndex, addpoint )
	end
end

--**********************************
--Ôö¼Ó¸öÈË»ý·ÖÊý¾Ý
--**********************************
function x402047_AddHumanGuildArrayInt( sceneId, selfId, ArrayIntIndex, addvalue )
	local value = GetHumanGuildInt( sceneId, selfId, ArrayIntIndex )
	value = value + addvalue
	SetHumanGuildInt( sceneId, selfId, ArrayIntIndex, value )
end

--**********************************
--Ôö¼Ó¸öÈËÈÙÓþÖµ
--**********************************
function x402047_AddHonour( sceneId, selfId, addHonour )
	if addHonour > 0 then
		local Honour = GetHonour( sceneId, selfId )
		Honour = Honour + addHonour
		SetHonour( sceneId, selfId, Honour )
	end
end

--**********************************
-- Çå³ý³¡¾°ÄÚµÄXX¹Ö
--**********************************
function x402047_ClearMonsterByName(sceneId, szName)
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId)== szName  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
end

--**********************************
--¸ù¾ÝÕ½³µÀàÐÍÒÔ¼°¸öÈËÊôÐÔ·µ»ØÒ»¸öÒª¼Ó¸ø¶Ô·½µÄ¹¥»÷buff
--**********************************
function x402047_AttackBuffByHuman( sceneId, selfId, TankType )
	
	if TankType == 1 then --ÇàÁúÕ½³µ
		local PhysicsAttack = GetHumanAttr(sceneId, selfId, 1)
		local nMax = getn( x402047_g_PhysicsAttack_Buff )
		
		for i = 1, nMax do
			if PhysicsAttack <= x402047_g_PhysicsAttack_Buff[i].value then
				return x402047_g_PhysicsAttack_Buff[i].buff
			end
		end
		
		if PhysicsAttack >= x402047_g_PhysicsAttack_Buff[nMax].value then
			return x402047_g_PhysicsAttack_Buff[nMax].buff
		end
		
	elseif TankType == 2 then --°×»¢Õ½³µ
		local MagicAttack = GetHumanAttr(sceneId, selfId, 2)
		local nMax = getn( x402047_g_MagicAttack_Buff )
		
		for i = 1, nMax do
			if MagicAttack <= x402047_g_MagicAttack_Buff[i].value then
				return x402047_g_MagicAttack_Buff[i].buff
			end
		end
		
		if MagicAttack >= x402047_g_MagicAttack_Buff[nMax].value then
			return x402047_g_MagicAttack_Buff[nMax].buff
		end
		
	elseif TankType == 3 then --ÖìÈ¸Õ½³µ
		local cold = GetHumanAttr(sceneId, selfId, 3)
		local fire = GetHumanAttr(sceneId, selfId, 4)
		local nMax = getn( x402047_g_ColdFire_Buff )
		
		for i = 1, nMax do
			if (cold+fire) <= x402047_g_ColdFire_Buff[i].value then
				return x402047_g_ColdFire_Buff[i].buff
			end
		end
		
		if (cold+fire) >= x402047_g_ColdFire_Buff[nMax].value then
			return x402047_g_ColdFire_Buff[nMax].buff
		end
		
	elseif TankType == 4 then --ÐþÎäÕ½³µ
		local light = GetHumanAttr(sceneId, selfId, 5)
		local poison = GetHumanAttr(sceneId, selfId, 6)
		local nMax = getn( x402047_g_LightPoison_Buff )
		
		for i = 1, nMax do
			if (light+poison) <= x402047_g_LightPoison_Buff[i].value then
				return x402047_g_LightPoison_Buff[i].buff
			end
		end
		
		if (light+poison) >= x402047_g_LightPoison_Buff[nMax].value then
			return x402047_g_LightPoison_Buff[nMax].buff
		end
		
	end
	
	return 0
end
