-- 402030
-- ½Ë·Ë¸±±¾  °ïÅÉ¸£Àû£¬Ð§ÂÊ¸±±¾
-- Íæ¼Ò½øÈë¸±±¾»á±»¿Û³ýÊýÖµ£¬
-- Íæ¼ÒËÀÍö£¬ÔÚÈë¿Ú¸´»î£¬Õý³£ËÀÍöÏûºÄ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x402030_g_ScriptId = 402030
x402030_g_Name = "T« Sát Vân"

x402030_TIME_2000_01_03_ = 946828868
--MisDescEnd
--************************************************************************

x402030_g_Item = 40004426

--¸±±¾Ãû³Æ
x402030_g_CopySceneName = "Kính H° Thüy TrÕi"

x402030_g_CopySceneType = FUBEN_JIAOFEI	--¸±±¾ÀàÐÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ

x402030_g_CopySceneMap = "jiaofei.nav"
x402030_g_Exit = "jiaofei.ini"
x402030_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾µÄ×îÐ¡¶ÓÎéÈËÊý
x402030_g_TickTime = 1						--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»: Ãë/´Î£©
x402030_g_LimitTotalHoldTime = 360--¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»: ´ÎÊý£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x402030_g_LimitTimeSuccess = 500	--¸±±¾Ê±¼äÏÞÖÆ£¨µ¥Î»: ´ÎÊý£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x402030_g_CloseTick = 3						--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»: ´ÎÊý£©
x402030_g_NoUserTime = 300				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´æµÄÊ±¼ä£¨µ¥Î»: Ãë£©
x402030_g_DeadTrans = 0						--ËÀÍö×ªÒÆÄ£Ê½£¬0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøÔÚ¸±±¾£¬1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x402030_g_Fuben_X = 33						--½øÈë¸±±¾µÄÎ»ÖÃX
x402030_g_Fuben_Z = 168						--½øÈë¸±±¾µÄÎ»ÖÃZ
x402030_g_Back_X = 66							--Ô´³¡¾°Î»ÖÃX
x402030_g_Back_Z = 56							--Ô´³¡¾°Î»ÖÃZ
x402030_g_Back_SceneId = 5				--Ô´³¡¾°Id

x402030_g_BossPoint={x=137, z=41}

x402030_g_MonsterPoint={
							{x=31, z=165},{x=36, z=162},{x=37, z=158},{x=32, z=154},
							{x=31, z=148},{x=34, z=142},{x=41, z=142},{x=48, z=143},
							{x=56, z=147},{x=62, z=151},{x=68, z=154},{x=73, z=157},
							{x=80, z=161},{x=88, z=163},{x=95, z=162},{x=103, z=163},
							{x=114, z=163},{x=111, z=157},{x=104, z=152},{x=94, z=147},
							{x=87, z=142},{x=81, z=136},{x=74, z=133},{x=68, z=125},
							{x=62, z=122},{x=54, z=115},{x=48, z=110},{x=43, z=103},
							{x=38, z=97},{x=36, z=89},{x=43, z=86},{x=48, z=87},
							{x=51, z=92},{x=57, z=90},{x=64, z=93},{x=69, z=96},
							{x=75, z=101},{x=82, z=105},{x=91, z=112},{x=97, z=117},
							{x=101, z=121},{x=108, z=125},{x=112, z=129},{x=116, z=133},
							{x=123, z=137},{x=131, z=143},{x=136, z=146},{x=139, z=150},
							{x=146, z=153},{x=153, z=151},{x=157, z=144},{x=153, z=139},
							{x=149, z=135},{x=149, z=130},{x=155, z=128},{x=159, z=124},
							{x=159, z=118},{x=153, z=116},{x=151, z=111},{x=142, z=108},
							{x=134, z=106},{x=126, z=104},{x=120, z=101},{x=114, z=96},
							{x=106, z=91},{x=99, z=86},{x=92, z=81},{x=86, z=77},
							{x=81, z=73},{x=76, z=71},{x=71, z=68},{x=65, z=66},
							{x=62, z=64},{x=58, z=61},{x=53, z=59},{x=49, z=57},
							{x=45, z=55},{x=42, z=49},{x=36, z=46},{x=38, z=38},
							{x=45, z=35},{x=52, z=36},{x=61, z=35},{x=70, z=36},
							{x=79, z=37},{x=87, z=44},{x=95, z=49},{x=101, z=53},
							{x=111, z=56},{x=119, z=56},{x=128, z=55},{x=139, z=53},
							{x=147, z=41},{x=153, z=47},{x=157, z=55},{x=156, z=63},
							{x=151, z=64},{x=145, z=63},{x=140, z=63},{x=129, z=63},
							}

-- Ò»°ãÐ¡¹Ö		
x402030_g_SmallMonsterId={2510,2511,2512,2513,2514,2515,2516,2517,2518,2519,32510,32511,32512,32513,32514,32515,32516,32517,32518,32519}
-- ¾«Ó¢¹Ö
x402030_g_MiddleMonsterId={2520,2521,2522,2523,2524,2525,2526,2527,2528,2529,32520,32521,32522,32523,32524,32525,32526,32527,32528,32529}
-- BOSS¹Ö
x402030_g_BossMonsterId={2530,2531,2532,2533,2534,2535,2536,2537,2538,2539,32530,32531,32532,32533,32534,32535,32536,32537,32538,32539}

x402030_g_SmallMonsterName 		= "Kính H° ThuÖ Phï"
x402030_g_MiddleMonsterName		= "Kính H° ThuÖ Phï Tinh Anh"
x402030_g_BossMonsterName			= "Kính H° ThuÖ Phï Ð¥u Lînh"
x402030_g_MinHumanCount = 1

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x402030_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetNumText() == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"#{function_help_096}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	--if GetName(sceneId, targetId) ~= x402030_g_Name  then
	--	return
	--end

	-- ¸ù¾ÝÍæ¼ÒµÄÇé¿ö£¬½«Íæ¼ÒËÍµ½²»Í¬µÄ¸±±¾
	-- 1£¬¼ì²âÍæ¼ÒÊÇ²»ÊÇ×é¶ÓÁË
	if GetTeamSize(sceneId,selfId) < x402030_g_MinHumanCount  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BDi®t phï Kính H°");
			AddText(sceneId,"Kính H° thüy trÕi ngß¶i ðông thª mÕnh, các hÕ ð½n thân ðµc mã th§t sñ r¤t nguy hi¬m, chí ít cûng phäi ðü 3 ngß¶i r°i hãy ðªn tham gia.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 2£¬¼ì²âÍæ¼ÒÊÇ²»ÊÇ¶Ó³¤
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"#BDi®t phï Kính H°");
			AddText(sceneId,"Ta c¥n g£p ðµi trß·ng");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 3£¬¼ì²âÊÇ²»ÊÇÈË¶¼µ½Î»ÁË
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BDi®t phï Kính H°");
			AddText(sceneId,"Có thành viên không · g¥n ðây");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- ËùÓÐµÄ¼ì²âÍ¨¹ý£¬ÏÖÔÚ¿ªÊ¼¿ÛÎïÆ·
	x402030_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x402030_OnEnumerate( sceneId, selfId, targetId )
	-- ×îºÃÔÚÕâÀï×öÒ»¸öÃû×ÖÅÐ¶¨
	--if GetName(sceneId, targetId) == x402030_g_Name  then
		AddNumText( sceneId, x402030_g_ScriptId, "Ðßa ta ðªn Kính H° Thüy TrÕi",10 ,-1  )
		AddNumText( sceneId, x402030_g_ScriptId, "¹Liên quan ðªn Di®t phï Kính H°",8 ,1  )
		
	--end
	
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x402030_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÊÇ·ñÒª½øÈë¸±±¾
--**********************************
function x402030_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--½ÓÊÜ
--**********************************
function x402030_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x402030_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x402030_MakeCopyScene( sceneId, selfId )
	
	-- Ê¹ÓÃ¶ÓÔ±µÄµÈ¼¶À´Ëã³ö¹ÖÎïµÄµÈ¼¶
	local param0 = 4;
	local param1 = 3;

	--×îÖÕ½á¹û
	local mylevel = 0;

	--ÁÙÊ±±äÁ¿
	local memId;
	local tempMemlevel = 0;
	local level0 = 0;
	local level1 = 0;
	local i;
	
	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, memId);
		level0 = level0 + (tempMemlevel ^ param0);
		level1 = level1 + (tempMemlevel ^ param1);
	end
	
	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1;
	end
	
	if nearmembercount == -1  then  --Ã»ÓÐ¶ÓÎé
		mylevel = GetLevel(sceneId, selfId)
	end
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "jiaofei.nav"); --µØÍ¼ÊÇ±ØÐëÑ¡È¡µÄ£¬¶øÇÒ±ØÐëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402030_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x402030_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x402030_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý£¬ÕâÀï½«0ºÅË÷ÒýµÄÊý¾ÝÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402030_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);		--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--É±ËÀBossµÄÊýÁ¿
	
	-- ¾çÇéÓÃµ½µÄ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 1;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10);
	else
		iniLevel = PlayerMaxLevel/10;
	end

	-- Ê¹ÓÃ¸±±¾±äÁ¿8£¬9£¬10À´±£´æ¹ÖÎï±àºÅ
	LuaFnSetCopySceneData_Param(sceneId, 8, x402030_g_SmallMonsterId[iniLevel]) --Ð¡¹ÖID
	LuaFnSetCopySceneData_Param(sceneId, 9, x402030_g_MiddleMonsterId[iniLevel])--¾«Ó¢ID
	LuaFnSetCopySceneData_Param(sceneId,10, x402030_g_BossMonsterId[iniLevel]) 	--BossID
	
	-- Ê¹ÓÃµÚ11Î»£¬¼ÇÂ¼¹ÖÎïÊµ¼ÊµÄµÈ¼¶
	LuaFnSetCopySceneData_Param(sceneId,11, mylevel)
	
	--ÉèÖÃ³¡¾°ÖÐµÄ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, "jiaofei_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "jiaofei_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x402030_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾µÄ¹æÔò
	-- 1£¬Èç¹ûÕâ¸öÎÄ¼þÃ»ÓÐ×é¶Ó£¬¾Í´«ËÍÕâ¸öÍæ¼Ò×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓÐ¶ÓÎé£¬µ«ÊÇÍæ¼Ò²»ÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3£¬Èç¹ûÍæ¼ÒÓÐ¶ÓÎé£¬²¢ÇÒÕâ¸öÍæ¼ÒÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑÒ»Æð½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­µÄ×´Ì¬
		return
	end
	
	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÓÐ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓÐ¶ÓÎé
		x402030_GotoScene(sceneId, leaderObjId, destsceneId)
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			x402030_GotoScene(sceneId, leaderObjId, destsceneId)
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				x402030_GotoScene(sceneId, mems[i], destsceneId)
			end
		end
	end

end

function x402030_GotoScene(sceneId, ObjId, destsceneId)
	-- ¼ÇÂ¼´ÎÊý
	local nTimes = GetMissionData(sceneId,ObjId, MD_JIAOFEI_TIMES) 
	local nPreTime = GetMissionData(sceneId,ObjId, MD_JIAOFEI_PRE_TIME)
	local nCurTime = LuaFnGetCurrentTime()
	-- ¿´Ê±¼äÊÇ²»ÊÇ¹ýÁËÒ»Ìì£¬¹ýÁË¾ÍÏÈ¸üÐÂ
	if (nCurTime - nPreTime  >= 3600*24)  or
		 (floor((nCurTime-x402030_TIME_2000_01_03_)/(3600*24)) ~= floor((nPreTime-x402030_TIME_2000_01_03_)/(3600*24)))   then
		nTimes = 0
		nPreTime = nCurTime
	end
	SetMissionData(sceneId, ObjId, MD_JIAOFEI_TIMES, nTimes+1)
	SetMissionData(sceneId, ObjId, MD_JIAOFEI_PRE_TIME, nPreTime)
	
	NewWorld( sceneId, ObjId, destsceneId, x402030_g_Fuben_X, x402030_g_Fuben_Z) ;
	
	-- Í³¼ÆÐÅÏ¢
	LuaFnAuditJiaoFei(sceneId, ObjId)

end


--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x402030_OnPlayerEnter( sceneId, selfId )
	
	-- ½øÈë¸±±¾ÄÚµÄÍæ¼Ò£¬ÏÖÒª¼ì²âÍæ¼ÒÊÇ²»ÊÇÒÑ¾­¿Û¹ýÎïÆ·
	local selfGuid = LuaFnObjId2Guid( sceneId, selfId )
	local nHumanCount = LuaFnGetCopySceneData_Param(sceneId, 27)
	if 	LuaFnGetCopySceneData_Param(sceneId, 21) ~= selfGuid  and
			LuaFnGetCopySceneData_Param(sceneId, 22) ~= selfGuid  and
			LuaFnGetCopySceneData_Param(sceneId, 23) ~= selfGuid  and
			LuaFnGetCopySceneData_Param(sceneId, 24) ~= selfGuid  and
			LuaFnGetCopySceneData_Param(sceneId, 25) ~= selfGuid  and
			LuaFnGetCopySceneData_Param(sceneId, 26) ~= selfGuid  then
				
		if DelItem(sceneId, selfId, x402030_g_Item, 1) == 0  then
			NewWorld( sceneId, selfId, x402030_g_Back_SceneId, x402030_g_Back_X, x402030_g_Back_Z) ;
			return
		end
		
		LuaFnSetCopySceneData_Param(sceneId, 21+nHumanCount, selfGuid)
		LuaFnSetCopySceneData_Param(sceneId, 27, nHumanCount+1)
	end

	-- 3,ÉèÖÃËÀÍöÊÂ¼þ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x402030_g_Fuben_X, x402030_g_Fuben_Z )
	
end

--**********************************
--ÓÐÍæ¼ÒÔÚ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x402030_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x402030_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç£¬Ö»ÓÐ³ÇÊÐÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x402030_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x402030_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x402030_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x402030_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x402030_OnDie( sceneId, objId, killerId )
	
	local nMonster1 = LuaFnGetCopySceneData_Param(sceneId, 17)
	local nMonster2 = LuaFnGetCopySceneData_Param(sceneId, 18)
	local nMonster3 = LuaFnGetCopySceneData_Param(sceneId, 19)
	
	if GetName(sceneId, objId) == x402030_g_SmallMonsterName  then
		nMonster1 = nMonster1 + 1
		LuaFnSetCopySceneData_Param(sceneId, 17, nMonster1)
		x402030_TipAllHuman( sceneId, "Ðã giªt chªt " .. x402030_g_SmallMonsterName .. ": " .. tostring(nMonster1) .. "/200")
		
	elseif GetName(sceneId, objId) == x402030_g_MiddleMonsterName  then
		nMonster2 = nMonster2 + 1
		LuaFnSetCopySceneData_Param(sceneId, 18, nMonster2)
		x402030_TipAllHuman( sceneId, "Ðã giªt chªt " .. x402030_g_MiddleMonsterName .. ": " .. tostring(nMonster2) .. "/10")
		
	elseif GetName(sceneId, objId) == x402030_g_BossMonsterName  then
		nMonster3 = nMonster3 + 1
		LuaFnSetCopySceneData_Param(sceneId, 19, nMonster3)
		x402030_TipAllHuman( sceneId, "Ðã giªt chªt " .. x402030_g_BossMonsterName .. ": " .. tostring(nMonster3) .. "/2")
		
		-- ·¢ËÍÊÀ½çÏûÏ¢
		
			--É±ËÀ¹ÖÎïµÄÊÇ³èÎïÔò»ñÈ¡ÆäÖ÷ÈËµÄID....
		local playerID = killerId
		local objType = GetCharacterType( sceneId, killerId )
		if objType == 3 then
			playerID = GetPetCreator( sceneId, killerId )
		end
			--Èç¹û×éÁË¶ÓÔò»ñÈ¡¶Ó³¤µÄID....
		local nLeaderId = GetTeamLeader(sceneId, playerID)
		if nLeaderId < 1   then
			nLeaderId = playerID
		end
		
		local str = ""
		str = format("#{_INFOUSR%s}#P dçn d¡t ðµi vào #GKính H° Phï TrÕi #Pkhiêu chiªn #Y%s#P. ÐÕo cao 1 thß¾c, Ma cao 1 trßþng, trong lúc 2 bên ðang h²n chiªn, #W#{_INFOUSR%s}#P ðã chém chªt #Y%s#P trong phï trÕi!", GetName(sceneId,nLeaderId), "#{_BOSS43}", GetName(sceneId,nLeaderId), "#{_BOSS43}")
		BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
		
		-- ÎªÃ¿¸öÔÚ¸±±¾ÄÚµÄÍæ¼Ò¶¼×öÒ»¸öÉ±bossµÄ¼ÇÂ¼
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1  do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			SetMissionData(sceneId,nHumanId,MD_JIAOFEI_KILL_BOSS_TIME,
											GetMissionData(sceneId,nHumanId,MD_JIAOFEI_KILL_BOSS_TIME)+1 )

			if GetMissionData(sceneId,nHumanId,MD_JIAOFEI_KILL_BOSS_TIME) == 6  then
				AwardTitle(sceneId, nHumanId, 13, 237)
				SetCurTitle(sceneId, nHumanId, 13, 237)
				DispatchAllTitle(sceneId, nHumanId)
				
			elseif GetMissionData(sceneId,nHumanId,MD_JIAOFEI_KILL_BOSS_TIME) == 18  then
				AwardTitle(sceneId, nHumanId, 13, 238)
				SetCurTitle(sceneId, nHumanId, 13, 238)
				DispatchAllTitle(sceneId, nHumanId)
				
			elseif GetMissionData(sceneId,nHumanId,MD_JIAOFEI_KILL_BOSS_TIME) == 50  then
				AwardTitle(sceneId, nHumanId, 13, 239)
				SetCurTitle(sceneId, nHumanId, 13, 239)
				DispatchAllTitle(sceneId, nHumanId)
				
			elseif GetMissionData(sceneId,nHumanId,MD_JIAOFEI_KILL_BOSS_TIME) == 100  then
				AwardTitle(sceneId, nHumanId, 13, 240)
				SetCurTitle(sceneId, nHumanId, 13, 240)
				DispatchAllTitle(sceneId, nHumanId)
			end

		end
	end
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x402030_TipAllHuman( sceneId, Str )
	-- »ñµÃ³¡¾°ÀïÍ·µÄËùÓÐÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËµÄ³¡¾°£¬Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x402030_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x402030_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x402030_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x402030_OnCopySceneTimer( sceneId, nowTime )
	
	-- ¼ÆÊ±Æ÷Ö÷ÒªÒª°´ÕÕÊ±¼äÀ´°²ÅÅË¢¹Ö
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 12)
	local nCurTime = LuaFnGetCurrentTime()
	local nStep = LuaFnGetCopySceneData_Param(sceneId, 13)

	local SmallMonsterId	= LuaFnGetCopySceneData_Param(sceneId, 8)
	local MiddleMonsterId	= LuaFnGetCopySceneData_Param(sceneId, 9)
	local BossMonsterId		= LuaFnGetCopySceneData_Param(sceneId,10)
	
	local nMonsterLevel = LuaFnGetCopySceneData_Param(sceneId,11)

	-- µÚÒ»´ÎÖ´ÐÐ¼ÆÊ±Æ÷	
	if nPreTime == 0 then
		LuaFnSetCopySceneData_Param(sceneId, 12, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 13, 1)
		return
	end
	
	-- ÏÖ°´ÕÕ¼òµ¥µÄÃ¿10ÃëË¢Ò»´Î¹Ö
	if 	(nStep<20  	and nStep>  0 and nCurTime-nPreTime >= 9) or
			(nStep<40 	and nStep>=20 and nCurTime-nPreTime >= 8) or
			(nStep<60 	and nStep>=40 and nCurTime-nPreTime >= 7) or
			(nStep<=100 and nStep>=60	and nCurTime-nPreTime >= 6) then
			
		LuaFnSetCopySceneData_Param(sceneId, 12, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 13, nStep + 1)
		
		-- ¹ÖÎïÉú³Éµã
		local Point = x402030_g_MonsterPoint[nStep]
	
		-- ¹ÖÎïID
		if 	nStep==10 or nStep==30 or nStep==50 or nStep==70 or nStep==90 or
				nStep==20 or nStep==40 or nStep==60 or nStep==80 or nStep==100 then
			-- Ð¡bossÖ»Ë¢Ò»¸ö
			local nNpc1 = LuaFnCreateMonster(sceneId, MiddleMonsterId, Point.x+random(2), Point.z, 17, 0, 402030)
			SetLevel(sceneId, nNpc1, nMonsterLevel)
			SetNPCAIType(sceneId, nNpc1, 0)
			SetCharacterTitle(sceneId, nNpc1, "Ð¥u Møc")
		end
		
		local nNpc1 = LuaFnCreateMonster(sceneId, SmallMonsterId, Point.x+random(2), Point.z, 17, 0, 402030)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		SetNPCAIType(sceneId, nNpc1, 0)
		
		nNpc1 = LuaFnCreateMonster(sceneId, SmallMonsterId, Point.x, Point.z+random(2), 17, 0, 402030)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		SetNPCAIType(sceneId, nNpc1, 0)
	
	elseif nStep==101 then
		LuaFnSetCopySceneData_Param(sceneId, 12, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 13, nStep + 1)
		
		local nNpc1 = LuaFnCreateMonster(sceneId, BossMonsterId, x402030_g_BossPoint.x, x402030_g_BossPoint.z, 17, 123, 402030)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		SetNPCAIType(sceneId, nNpc1, 0)
		SetCharacterTitle(sceneId, nNpc1, "#cFF0000Thiªt Chùy Thüy Thßþng Phiêu")
		
		nNpc1 = LuaFnCreateMonster(sceneId, BossMonsterId, x402030_g_BossPoint.x+2, x402030_g_BossPoint.z+1, 17, 123, 402030)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		SetNPCAIType(sceneId, nNpc1, 0)
		SetCharacterTitle(sceneId, nNpc1, "#cFF0000Thiªt Chùy Thüy Thßþng Phiêu")
		
	else
		return
	end
	
end

