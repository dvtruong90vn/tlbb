--µ÷Èë±¦²Ø--µ¥ÈË¸±±¾
--

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x229021_g_ScriptId = 229021

--¸±±¾Ãû³Æ
x229021_g_CopySceneName="Kho Báu"

--ÈÎÎñºÅ
x229021_g_MissionId = 702

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x229021_g_MissionIdPre = 701

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x229021_g_IfMissionElite = 1

--ÈÎÎñ¹éÀà
x229021_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x229021_g_MissionLevel = 7

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı MD_MURENXIANG_HUAN
--g_MissionRound = 9
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x229021_g_MissionName=""
x229021_g_MissionInfo=""  --ÈÎÎñÃèÊö
x229021_g_MissionTarget=""	--Møc tiêu nhi®m vø
x229021_g_ContinueInfo=""	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x229021_g_MissionComplete=""	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

--ÈÎÎñ½±Àø
x229021_g_MoneyBonus=1

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
x229021_g_Param_huan		=0	--0ºÅ: ÒÑ¾­Íê³ÉtoÕ ğµ »·Êı,TÕi ½ÓÊÕÈÎÎñÊ±ºò¸³Öµ
x229021_g_Param_ok			=1	--1ºÅ: µ±Ç°ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É)
x229021_g_Param_sceneid		=2	--2ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ
x229021_g_Param_guid		=3	--3ºÅ: ½Ó¸±±¾ÈÎÎñÊ±ºòtoÕ ğµ Íæ¼ÒGUID
x229021_g_Param_killcount	=4	--4ºÅ: É±ËÀÈÎÎñ¹ÖtoÕ ğµ ÊıÁ¿
x229021_g_Param_time		=5	--5ºÅ: Íê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»:  giây)
--6ºÅ: Î´ÓÃ
--7ºÅ: Î´ÓÃ

x229021_g_CopySceneType=FUBEN_BAOZANG	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x229021_g_LimitMembers=1			--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x229021_g_TickTime=5				--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x229021_g_LimitTotalHoldTime=36000	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x229021_g_LimitTimeSuccess=50000		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x229021_g_CloseTick=210				--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x229021_g_NoUserTime=300			--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x229021_g_DeadTrans=0				--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x229021_g_Fuben_X=23				--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x229021_g_Fuben_Z=23				--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x229021_g_Back_X=160				--Ô´³¡¾°Î»ÖÃX
x229021_g_Back_Z=150				--Ô´³¡¾°Î»ÖÃZ
x229021_g_TotalNeedKill=1000			--C¥n É±ËÀ¹ÖÎïÊıÁ¿
x229021_g_MissionIdPre=701			--C¥n ÌáÇ°ÓµÓĞtoÕ ğµ ÈÎÎñ
x229021_g_CopySceneTotalTime=6000

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x229021_OnDefaultEvent( sceneId, selfId, targetId )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x229021_OnEnumerate( sceneId, selfId, targetId )
end

--**********************************
--¼ì²â¶ÓÎéTiªp thøÌõ¼ş
--**********************************
function x229021_CheckTeamLeader( sceneId, selfId )
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x229021_CheckAccept( sceneId, selfId )
	--if IsHaveMission(sceneId,selfId,x229021_g_MissionIdPre) > 0 then
		return 1
	--end
end

--**********************************
--Tiªp thø
--**********************************
function x229021_OnAccept( sceneId, selfId )
	local selfguid = LuaFnGetGUID( sceneId, selfId)
	x229021_MakeCopyScene( sceneId, selfId, 0 ) ;
end

--**********************************
--·ÅÆú
--**********************************
function x229021_OnAbandon( sceneId, selfId )
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x229021_MakeCopyScene( sceneId, selfId, nearmembercount )

	--PrintStr("MakeCopyScene")
	local leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "muxue.nav"); --µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x229021_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x229021_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x229021_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x229021_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, leaderguid); --±£´æÍæ¼ÒºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBosstoÕ ğµ ÊıÁ¿
	--LuaFnSetSceneLoad_Monster(sceneId, "muxue_monster_10.ini")	--7c¤pÄ¾ÈËÏï×½³è¸±±¾

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel = 0
	local playerLevel = GetLevel(sceneId, selfId)
	if playerLevel < 10 then
		iniLevel = 10
	elseif playerLevel < PlayerMaxLevel then
		iniLevel = floor( playerLevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Monster( sceneId, "muxue_monster_" .. tostring(iniLevel) .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, playerLevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"Xây dñng phø bän th¤t bÕi");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¼ÌĞø
--**********************************
function x229021_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x229021_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x229021_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É

end

--**********************************
--Ìá½»
--**********************************
function x229021_OnSubmit( sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x229021_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x229021_OnCopySceneReady( sceneId, destsceneId )
	--PrintStr("OnCopySceneReady...")
	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;	
	local leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	--local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
	--PrintNum(nearteammembercount)
	--local mems = {}
	--for	i=0,nearteammembercount-1 do
		--mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
		--misIndex = GetMissionIndexByID(sceneId,leaderObjId,x229021_g_MissionId)
		
		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
		--SetMissionByIndex(sceneId,leaderObjId,misIndex,x229021_g_Param_sceneid,destsceneId)
	
		--PrintStr("OnCopySceneReady...NewWorld...")			
		NewWorld( sceneId, leaderObjId, destsceneId, x229021_g_Fuben_X, x229021_g_Fuben_Z) ;
	--end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x229021_OnPlayerEnter( sceneId, selfId )
	--ÉèÖ giâyÀÍöºó¸´»î ği¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", 2, x229021_g_Fuben_X, x229021_g_Fuben_Z );
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x229021_OnHumanDie( sceneId, selfId, killerId )
	if x229021_g_DeadTrans==1 then --ËÀÍöºóC¥n ±»Ç¿ÖÆÌß³ö³¡¾°
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x229021_g_Back_X, x229021_g_Back_Z )
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x229021_OnCopySceneTimer( sceneId, nowTime )
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(sceneId) ;	
	local leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
		
	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;
	
	--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
	local leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
	local leaveTickCount = leaveTickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;
	
	if leaveTickCount == x229021_g_CloseTick then --µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
	
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		
		--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			NewWorld( sceneId, mems[i], oldsceneId, x229021_g_Back_X, x229021_g_Back_Z )
		end
		
	elseif leaveTickCount>x229021_g_CloseTick-4 then
	
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

		--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
  			BeginEvent(sceneId)
  				local strText = format("Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x229021_g_CloseTick-leaveTickCount)*x229021_g_TickTime )
  				AddText(sceneId,strText);
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end
	elseif TickCount == x229021_g_CopySceneTotalTime then
		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end

end

