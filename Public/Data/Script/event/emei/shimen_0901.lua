--¸±±¾ÈÎÎñ
--Ä¾ÈË

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x226901_g_ScriptId = 226901

--¸±±¾Ãû³Æ
x226901_g_CopySceneName="Ğào Hoa Tr§n"

--ÈÎÎñºÅ
x226901_g_MissionId = 1091

--Ä¿±êNPC
x226901_g_Name = ""

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x226901_g_IfMissionElite = 1

--ÈÎÎñ¹éÀà
x226901_g_MissionKind = 26

--ÈÎÎñµÈ¼¶
x226901_g_MissionLevel = 10000

--********ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--Ñ­»·ÈÎÎñµÄÊı¾İË÷Òı£¬ÀïÃæ´æ×ÅÒÑ×öµÄ»·Êı MD_MURENXIANG_HUAN
--g_MissionRound =
--**********************************ÒÔÉÏÊÇ¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x226901_g_MissionName="Ğào Hoa Tr§n"
x226901_g_MissionInfo="#{MPFB_081023_04}"  --ÈÎÎñÃèÊö
x226901_g_MissionTarget="#{MPFB_081023_05}"	--ÈÎÎñÄ¿±ê
x226901_g_ContinueInfo="Các hÕ phäi tiªp tøc c¯ g¡ng nhé!"	--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x226901_g_MissionComplete="Cäm ½n!"	--Íê³ÉÈÎÎñnpcËµ»°µÄ»°
x226901_g_Parameter_Kill_CountRandom = { { id = 1700076, numNeeded = 6, numKilled = 4 } }

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿ËµÃ÷
x226901_g_Param_huan		=0	--0ºÅ£ºÒÑ¾­Íê³ÉµÄ»·Êı£¬ÔÚ½ÓÊÕÈÎÎñÊ±ºò¸³Öµ
x226901_g_Param_ok			=1	--1ºÅ£ºµ±Ç°ÈÎÎñÊÇ·ñÍê³É(0Î´Íê³É£»1Íê³É)
x226901_g_Param_sceneid		=2	--2ºÅ£ºµ±Ç°¸±±¾ÈÎÎñµÄ³¡¾°ºÅ
x226901_g_Param_teamid		=3	--3ºÅ£º½Ó¸±±¾ÈÎÎñÊ±ºòµÄ¶ÓÎéºÅ
x226901_g_Param_killcount	=4	--4ºÅ£ºÉ±ËÀÈÎÎñ¹ÖµÄÊıÁ¿
x226901_g_Param_time		=5	--5ºÅ£ºÍê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»£ºÃë)
--6ºÅ£ºÎ´ÓÃ
--7ºÅ£ºÎ´ÓÃ

x226901_g_CopySceneType=FUBEN_TAOHUAZHEN	--¸±±¾ÀàĞÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x226901_g_LimitMembers=1			--¿ÉÒÔ½ø¸±±¾µÄ×îĞ¡¶ÓÎéÈËÊı
x226901_g_TickTime=5				--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x226901_g_LimitTotalHoldTime=360	--¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x226901_g_LimitTimeSuccess=500		--¸±±¾Ê±¼äÏŞÖÆ£¨µ¥Î»£º´ÎÊı£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x226901_g_CloseTick=6				--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x226901_g_NoUserTime=300			--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x226901_g_DeadTrans=0				--ËÀÍö×ªÒÆÄ£Ê½£¬0£ºËÀÍöºó»¹¿ÉÒÔ¼ÌĞøÔÚ¸±±¾£¬1£ºËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x226901_g_Fuben_X=26				--½øÈë¸±±¾µÄÎ»ÖÃX
x226901_g_Fuben_Z=46				--½øÈë¸±±¾µÄÎ»ÖÃZ
x226901_g_Back_X=97				--Ô´³¡¾°Î»ÖÃX
x226901_g_Back_Z=74					--Ô´³¡¾°Î»ÖÃZ
x226901_g_TotalNeedKill=10			--ĞèÒªÉ±ËÀ¹ÖÎïÊıÁ¿

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x226901_OnDefaultEvent( sceneId, selfId, targetId )
	if( IsHaveMission(sceneId,selfId,x226901_g_MissionId) > 0)  then	--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁËÕâ¸öÈÎÎñ
		misIndex = GetMissionIndexByID(sceneId,selfId,x226901_g_MissionId)
		bDone = x226901_CheckSubmit( sceneId, selfId )
		if bDone==0 then						--ÈÎÎñÎ´Íê³É
			BeginEvent(sceneId)
				AddText(sceneId,"Nhi®m vø th¤t bÕi, hãy hüy bö nhi®m vø và nh§n nhi®m vø m¾i.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif bDone==1 then					--ÈÎÎñÒÑ¾­Íê³É
			BeginEvent(sceneId)
				AddText(sceneId,x226901_g_MissionName)
				AddText(sceneId,x226901_g_MissionComplete)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x226901_g_ScriptId,x226901_g_MissionId,bDone)
		end
  elseif x226901_CheckAccept(sceneId,selfId) > 0 then		--Ã»ÓĞÈÎÎñ£¬Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x226901_g_MissionName)
			AddText(sceneId,x226901_g_MissionInfo)
			AddText(sceneId,"Møc tiêu nhi®m vø: ")
			AddText(sceneId,x226901_g_MissionTarget)
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x226901_g_ScriptId,x226901_g_MissionId)
  end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x226901_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x226901_g_MissionId) > 0 then
		AddNumText(sceneId, x226901_g_ScriptId,x226901_g_MissionName);
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
  else
 		local ret = CallScriptFunction(229000, "IsFubenMission",sceneId, selfId, targetId)
		if ret > 0 then
			AddNumText(sceneId,x226901_g_ScriptId,x226901_g_MissionName,10,0);
		end
	end

end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x226901_CheckAccept( sceneId, selfId )
	if GetMissionCount( sceneId, selfId) >= 20 then	--¶ÓÓÑÉíÉÏÈÎÎñÊıÁ¿ÊÇ·ñ´ïµ½ÉÏÏŞ20¸ö
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi®m vø ghi chép cüa các hÕ ğã ğ¥y");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	elseif IsHaveMission(sceneId,selfId,x226901_g_MissionId)>0 then
		--¶ÓÓÑÊÇ·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ»òÕßÁíÍâÒ»¸öÈÎÎñ
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ğã nh§n nhi®m vø này");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end

	return	1
end

--**********************************
--½ÓÊÜ
--**********************************
function x226901_OnAccept( sceneId, selfId, targetId )
	if( IsHaveMission(sceneId,selfId,x226901_g_MissionId) > 0)  then	--ÒÑ¾­ÓĞÈÎÎñµÄ
		misIndex = GetMissionIndexByID(sceneId,selfId,x226901_g_MissionId)
		copysceneid = GetMissionParam( sceneId, selfId, misIndex, x226901_g_Param_sceneid)
		saveteamid = GetMissionParam( sceneId, selfId, misIndex, x226901_g_Param_teamid)

		if copysceneid > 0 then --½ø¹ı¸±±¾
			--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			NewWorld( sceneId, selfId, copysceneid, x226901_g_Fuben_X, x226901_g_Fuben_Z) ;
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ği«u ki®n không phù hşp");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		if x226901_CheckAccept(sceneId,selfId) <= 0 then	--ÅĞ¶Ï½ÓÊÕÌõ¼ş
			return 0
		end

		AddMission( sceneId, selfId, x226901_g_MissionId, x226901_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, selfId, x226901_g_MissionId )

		--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉµÄÈÎÎñ
		SetMissionByIndex(sceneId,selfId,misIndex,x226901_g_Param_ok,0)

		--½«ÈÎÎñµÄµÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾µÄ³¡¾°ºÅ
		SetMissionByIndex(sceneId,selfId,misIndex,x226901_g_Param_sceneid,-1)

		SetMissionByIndex(sceneId, selfId,misIndex,6,10)
		
		x226901_MakeCopyScene( sceneId, selfId) ;
	end
	CallScriptFunction(229000, "SetFubenMissionSucc", sceneId, selfId, targetId)
end

--**********************************
--·ÅÆú
--**********************************
function x226901_OnAbandon( sceneId, selfId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x226901_g_MissionId)
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x226901_g_Param_sceneid)

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
  DelMission( sceneId, selfId, x226901_g_MissionId )

	if sceneId==copyscene then --Èç¹ûÔÚ¸±±¾ÀïÉ¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
		--BeginEvent(sceneId)
		--	AddText(sceneId,"ÈÎÎñÊ§°Ü£¡");
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

		NewWorld( sceneId, selfId, oldsceneId, x226901_g_Back_X, x226901_g_Back_Z )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x226901_MakeCopyScene( sceneId, selfId)

	local mylevel = GetLevel(sceneId,selfId)

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "taohuazhen.nav"); --µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x226901_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x226901_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x226901_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x226901_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBossµÄÊıÁ¿

	--Ê¦ÃÅÈÎÎñ....È¥±ğµÄÃÅÅÉµÄ¸±±¾ÈÎÎñ....40¼¶(º¬)ÒÔÉÏµÄÍæ¼ÒÊ¹ÓÃ¾­Ñé¸ßµÄ¹Ö....
	local isMoreExpFuben = 0
	local iniLevel
	for i, v in MENPAI_SHIMEN_MISID do
		if IsHaveMission(sceneId,selfId,v) > 0 then
			local	misIndex = GetMissionIndexByID(sceneId,selfId,v)
			local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
			if missionType == 8 and mylevel >= 40 then
				isMoreExpFuben = 1
			end
		end
	end

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	if isMoreExpFuben == 0 then
		if mylevel < 10 then
			iniLevel = 10
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor( mylevel/10 ) * 10
		else
			iniLevel = PlayerMaxLevel
		end
		LuaFnSetSceneLoad_Monster( sceneId, "taohuazhen_monster_" .. iniLevel .. ".ini" )
	else
		if mylevel < 50 then
			iniLevel = 40
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor( mylevel/10 ) * 10
		else
			iniLevel = PlayerMaxLevel
		end
		LuaFnSetSceneLoad_Monster( sceneId, "taohuazhen_20monster_" .. iniLevel .. ".ini" )
	end

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --¼¶±ğ²î£¬CopyScene_LevelGap ÔÚ scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--¼ÌĞø
--**********************************
function x226901_OnContinue( sceneId, selfId, targetId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x226901_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x226901_g_Param_sceneid)>=1	then
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x226901_g_ScriptId, x226901_g_MissionId)
	end

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x226901_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x226901_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--ÅĞ¶ÏÈÎÎñÊÇ·ñÒÑ¾­Íê³É
	misIndex = GetMissionIndexByID(sceneId,selfId,x226901_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x226901_g_Param_ok)>=1 then
		return	1
	else
		return	0
	end
end

--**********************************
--Ìá½»
--**********************************
function x226901_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x226901_CheckSubmit( sceneId, selfId, selectRadioId )>0 then		--ÒÑ¾­Íê³ÉÈÎÎñÁË
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		DelMission( sceneId,selfId,  x226901_g_MissionId )
		
		CallScriptFunction(229000, "SetFubenMissionSucc", sceneId, selfId, targetId)		
		
		BeginEvent(sceneId)
			strText = "#{MPFB_081023_06}"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x226901_OnKillObject( sceneId, selfId, objdataId ,objId )

	--ÊÇ·ñÊÇ¸±±¾
	sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType~=1 then
		return
	end
	--ÊÇ·ñÊÇËùĞèÒªµÄ¸±±¾
	fubentype = LuaFnGetCopySceneData_Param(sceneId,0)
	if fubentype~=x226901_g_CopySceneType then
		return
	end
	--¸±±¾¹Ø±Õ±êÖ¾
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;
	if 	leaveFlag==1 then --Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬£¬ÔòÉ±¹ÖÎŞĞ§
		return
	end

	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊı
	num = LuaFnGetCopyScene_HumanCount(sceneId)

	killednumber = LuaFnGetCopySceneData_Param(sceneId, 7) ;--É±ËÀ¹ÖµÄÊıÁ¿
	killednumber = killednumber+1
	LuaFnSetCopySceneData_Param(sceneId, 7, killednumber) ;--ÉèÖÃÉ±ËÀ¹ÖµÄÊıÁ¿

	if killednumber<x226901_g_TotalNeedKill then

		BeginEvent(sceneId)
			strText = format("Ğã giªt chªt quái v§t: %d/%d ", killednumber, x226901_g_TotalNeedKill )
			AddText(sceneId,strText);
		EndEvent(sceneId)

		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)--È¡µÃµ±Ç°³¡¾°ÀïÈËµÄobjId
			DispatchMissionTips(sceneId,humanObjId)

			misIndex = GetMissionIndexByID(sceneId,humanObjId,x226901_g_MissionId) --È¡µÃÈÎÎñÊı¾İË÷ÒıÖµ
			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x226901_g_Param_killcount) --È¡µÃÒÑ¾­É±ÁËµÄ¹ÖÎïÊı
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x226901_g_Param_killcount,killedcount) --ÉèÖÃÈÎÎñÊı¾İ
		end
	elseif killednumber>=x226901_g_TotalNeedKill then
		--ÉèÖÃÈÎÎñÍê³É±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1)

		--È¡µÃÒÑ¾­Ö´ĞĞµÄ¶¨Ê±´ÎÊı
		TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;

		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)	--È¡µÃµ±Ç°³¡¾°ÀïÈËµÄobjId
			misIndex = GetMissionIndexByID(sceneId,humanObjId,x226901_g_MissionId)--È¡µÃÈÎÎñÊı¾İË÷ÒıÖµ

			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x226901_g_Param_killcount) --È¡µÃÒÑ¾­É±ÁËµÄ¹ÖÎïÊı
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x226901_g_Param_killcount,killedcount) --ÉèÖÃÈÎÎñÊı¾İ

			--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉµÄÈÎÎñ
			SetMissionByIndex(sceneId,humanObjId,misIndex,x226901_g_Param_ok,1)--ÉèÖÃÈÎÎñÊı¾İ
			--Íê³É¸±±¾ËùÓÃÊ±¼ä
			SetMissionByIndex(sceneId,humanObjId,misIndex,x226901_g_Param_time,TickCount*x226901_g_TickTime)--ÉèÖÃÈÎÎñÊı¾İ

			BeginEvent(sceneId)
				AddText(sceneId,"Nhi®m vø hoàn thành, các hÕ ğßşc chuy¬n t¾i v¸ trí vào cØa");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,humanObjId)
			
			DelMission( sceneId, humanObjId, x226901_g_MissionId )
			--local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
			--NewWorld( sceneId, humanObjId, oldsceneId, x226901_g_Back_X, x226901_g_Back_Z )
			
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x226901_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x226901_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x226901_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	misIndex = GetMissionIndexByID(sceneId,leaderObjId,x226901_g_MissionId)

	--½«ÈÎÎñµÄµÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾µÄ³¡¾°ºÅ
	SetMissionByIndex(sceneId,leaderObjId,misIndex,x226901_g_Param_sceneid,destsceneId)

	NewWorld( sceneId,leaderObjId, destsceneId, x226901_g_Fuben_X, x226901_g_Fuben_Z) ;
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x226901_OnPlayerEnter( sceneId, selfId )
	--ÉèÖÃËÀÍöºó¸´»îµãÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x226901_g_Fuben_X, x226901_g_Fuben_Z );
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x226901_OnHumanDie( sceneId, selfId, killerId )
	if x226901_g_DeadTrans==1 then --ËÀÍöºóĞèÒª±»Ç¿ÖÆÌß³ö³¡¾°

		misIndex = GetMissionIndexByID(sceneId,selfId,x226901_g_MissionId)--È¡µÃÈÎÎñÊı¾İË÷ÒıÖµ

		--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉµÄÈÎÎñ
		SetMissionByIndex(sceneId,selfId,misIndex,x226901_g_Param_ok,1)--ÉèÖÃÈÎÎñÊı¾İ
		local TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--È¡µÃÒÑ¾­Ö´ĞĞµÄ¶¨Ê±´ÎÊı
		--Íê³É¸±±¾ËùÓÃÊ±¼ä
		SetMissionByIndex(sceneId,selfId,misIndex,x226901_g_Param_time,TickCount*x226901_g_TickTime)--ÉèÖÃÈÎÎñÊı¾İ

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x226901_g_Back_X, x226901_g_Back_Z )
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x226901_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--È¡µÃÒÑ¾­Ö´ĞĞµÄ¶¨Ê±´ÎÊı
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--ÉèÖÃĞÂµÄ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	--¸±±¾¹Ø±Õ±êÖ¾
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;

	if leaveFlag == 1 then --ĞèÒªÀë¿ª

		--Àë¿ªµ¹¼ÆÊ±¼äµÄ¶ÁÈ¡ºÍÉèÖÃ
		leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
		leaveTickCount = leaveTickCount+1 ;
		LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;

		if leaveTickCount == x226901_g_CloseTick then --µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x226901_g_Back_X, x226901_g_Back_Z )
			end

		elseif leaveTickCount<x226901_g_CloseTick then

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
	  			BeginEvent(sceneId)
	  				strText = format("Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x226901_g_CloseTick-leaveTickCount)*x226901_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
	  		end
			end
		end
	elseif TickCount == x226901_g_LimitTimeSuccess then
		--´Ë´¦ÉèÖÃÓĞÊ±¼äÏŞÖÆµÄÈÎÎñÍê³É´¦Àí
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
  			BeginEvent(sceneId)
  				AddText(sceneId,"Th¶i gian hoàn t¤t nhi®m vø ğã t¾i, hoàn thành!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
			end
			misIndex = GetMissionIndexByID(sceneId,mems[i],x226901_g_MissionId)--È¡µÃÈÎÎñÊı¾İË÷ÒıÖµ
			--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉµÄÈÎÎñ
			SetMissionByIndex(sceneId,mems[i],misIndex,x226901_g_Param_ok,1)--ÉèÖÃÈÎÎñÊı¾İ
			--Íê³É¸±±¾ËùÓÃÊ±¼ä
			SetMissionByIndex(sceneId,mems[i],misIndex,x226901_g_Param_time,TickCount*x226901_g_TickTime)--ÉèÖÃÈÎÎñÊı¾İ
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	elseif TickCount == x226901_g_LimitTotalHoldTime then --¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆµÄÇé¿ö£¬µ±Ê±¼äµ½ºó´¦Àí...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x226901_g_MissionId );--ÈÎÎñÊ§°Ü,É¾³ıÖ®
			if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi®m vø th¤t bÕi, ğã quá th¶i gian!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
  		end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end
end


