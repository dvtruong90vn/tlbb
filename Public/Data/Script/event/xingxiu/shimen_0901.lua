--¸±±¾ÈÎÎñ
--Ä¾ÈË

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x227901_g_ScriptId = 227901

--¸±±¾Ãû³Æ
x227901_g_CopySceneName="Ngû Th¥n Ğµng"

--ÈÎÎñºÅ
x227901_g_MissionId = 1096

--Ä¿±êNPC
x227901_g_Name = ""

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x227901_g_IfMissionElite = 1

--ÈÎÎñ¹éÀà
x227901_g_MissionKind = 27

--ĞÆng c¤p nhi®m vø 
x227901_g_MissionLevel = 10000

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı MD_MURENXIANG_HUAN
--g_MissionRound =
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x227901_g_MissionName="Ngû Th¥n Ğµng"
x227901_g_MissionInfo="#{MPFB_081023_25}"  --ÈÎÎñÃèÊö
x227901_g_MissionTarget="#{MPFB_081023_26}"	--Møc tiêu nhi®m vø
x227901_g_ContinueInfo="Các hÕ phäi tiªp tøc c¯ g¡ng nhé!"	--Î´Íê³ÉÈÎÎñtoÕ ğµ npc¶Ô»°
x227901_g_MissionComplete="Cám ½n. "	--Íê³ÉÈÎÎñnpcËµ»°toÕ ğµ »°
x227901_g_Parameter_Kill_CountRandom = { { id = 1700079, numNeeded = 6, numKilled = 4 } }

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
x227901_g_Param_huan		=0	--0ºÅ: ÒÑ¾­Íê³ÉtoÕ ğµ »·Êı,TÕi ½ÓÊÕÈÎÎñÊ±ºò¸³Öµ
x227901_g_Param_ok			=1	--1ºÅ: µ±Ç°ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É)
x227901_g_Param_sceneid		=2	--2ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ
x227901_g_Param_teamid		=3	--3ºÅ: ½Ó¸±±¾ÈÎÎñÊ±ºòtoÕ ğµ ¶ÓÎéºÅ
x227901_g_Param_killcount	=4	--4ºÅ: É±ËÀÈÎÎñ¹ÖtoÕ ğµ ÊıÁ¿
x227901_g_Param_time		=5	--5ºÅ: Íê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»:  giây)
--6ºÅ: Î´ÓÃ
--7ºÅ: Î´ÓÃ

x227901_g_CopySceneType=FUBEN_WUSHENDONG	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x227901_g_LimitMembers=1			--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x227901_g_TickTime=5				--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x227901_g_LimitTotalHoldTime=360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x227901_g_LimitTimeSuccess=500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x227901_g_CloseTick=6				--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x227901_g_NoUserTime=300			--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x227901_g_DeadTrans=0				--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x227901_g_Fuben_X=14				--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x227901_g_Fuben_Z=40				--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x227901_g_Back_X=126				--Ô´³¡¾°Î»ÖÃX
x227901_g_Back_Z=77					--Ô´³¡¾°Î»ÖÃZ
x227901_g_TotalNeedKill=10			--C¥n É±ËÀ¹ÖÎïÊıÁ¿

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x227901_OnDefaultEvent( sceneId, selfId, targetId )
	if( IsHaveMission(sceneId,selfId,x227901_g_MissionId) > 0)  then	--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁËCái này ÈÎÎñ
		misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
		bDone = x227901_CheckSubmit( sceneId, selfId )
		if bDone==0 then						--ÈÎÎñÎ´Íê³É
			BeginEvent(sceneId)
				AddText(sceneId,"Nhi®m vø th¤t bÕi, xin vÑt bö ğ¬ nh§n nhi®m vø m¾i.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif bDone==1 then					--ÈÎÎñÒÑ¾­Íê³É
			BeginEvent(sceneId)
				AddText(sceneId,x227901_g_MissionName)
				AddText(sceneId,x227901_g_MissionComplete)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x227901_g_ScriptId,x227901_g_MissionId,bDone)
		end
  elseif x227901_CheckAccept(sceneId,selfId) > 0 then		--Ã»ÓĞÈÎÎñ,Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x227901_g_MissionName)
			AddText(sceneId,x227901_g_MissionInfo)
			AddText(sceneId,"Møc tiêu nhi®m vø: ")
			AddText(sceneId,x227901_g_MissionTarget)
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x227901_g_ScriptId,x227901_g_MissionId)
				
  end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x227901_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x227901_g_MissionId) > 0 then
		AddNumText(sceneId, x227901_g_ScriptId,x227901_g_MissionName);
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  else
		local ret = CallScriptFunction(229000, "IsFubenMission",sceneId, selfId, targetId)
			if ret > 0 then
				AddNumText(sceneId,x227901_g_ScriptId,x227901_g_MissionName,10,0);
			end
  end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x227901_CheckAccept( sceneId, selfId )
	if GetMissionCount( sceneId, selfId) >= 20 then	--¶ÓÓÑÉíÉÏÈÎÎñÊıÁ¿Ğúng·ñ´ïµ½ÉÏÏŞ20cái
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi®m vø ghi chép cüa các hÕ ğã ğ¥y.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	elseif IsHaveMission(sceneId,selfId,x227901_g_MissionId)>0 then
		--¶ÓÓÑĞúng·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ»òÕßÁíÍâmµt cáiÈÎÎñ
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ğã nh§n ğßşc nhi®m vø này.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end

	return	1
end

--**********************************
--Tiªp thø
--**********************************
function x227901_OnAccept( sceneId, selfId, targetId )

	if( IsHaveMission(sceneId,selfId,x227901_g_MissionId) > 0)  then	--ÒÑ¾­ÓĞÈÎÎñtoÕ ğµ 
		misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
		copysceneid = GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_sceneid)
		saveteamid = GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_teamid)
		if copysceneid > 0 then --½ø¹ı¸±±¾
			BeginEvent(sceneId)
				AddText(sceneId,"Nhi®m vø th¤t bÕi, xin vÑt bö ğ¬ nh§n nhi®m vø m¾i.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end

	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		if x227901_CheckAccept(sceneId,selfId) <= 0 then	--ÅĞ¶Ï½ÓÊÕÌõ¼ş
			return 0
		end

		AddMission( sceneId, selfId, x227901_g_MissionId, x227901_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, selfId, x227901_g_MissionId )

		--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex(sceneId, selfId,misIndex,x227901_g_Param_ok,0)

		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾toÕ ğµ ³¡¾°ºÅ
		SetMissionByIndex(sceneId, selfId,misIndex,x227901_g_Param_sceneid,-1)

		SetMissionByIndex(sceneId, selfId,misIndex,6,10)
		
		x227901_MakeCopyScene( sceneId, selfId) ;
	end
	CallScriptFunction(229000, "SetFubenMissionSucc", sceneId, selfId, targetId)
end

--**********************************
--·ÅÆú
--**********************************
function x227901_OnAbandon( sceneId, selfId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_sceneid)

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x227901_g_MissionId )

	if sceneId==copyscene then --Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		--BeginEvent(sceneId)
		--	AddText(sceneId,"ÈÎÎñth¤t bÕi!");
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

		NewWorld( sceneId, selfId, oldsceneId, x227901_g_Back_X, x227901_g_Back_Z )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x227901_MakeCopyScene( sceneId, selfId, nearmembercount )

	mylevel = GetLevel(sceneId, selfId)

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "wushendong.nav"); --µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x227901_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x227901_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x227901_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x227901_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBosstoÕ ğµ ÊıÁ¿

	--Nhi®m vø sß môn....È¥±ğtoÕ ğµ ÃÅÅÉtoÕ ğµ ¸±±¾ÈÎÎñ....40c¤p(º¬)ÒÔÉÏtoÕ ğµ Íæ¼ÒÊ¹ÓÃKinh nghi®m¸ßtoÕ ğµ ¹Ö....
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
		LuaFnSetSceneLoad_Monster( sceneId, "wushendong_monster_" .. iniLevel .. ".ini" )
	else
		if mylevel < 50 then
			iniLevel = 40
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor( mylevel/10 ) * 10
		else
			iniLevel = PlayerMaxLevel
		end
		LuaFnSetSceneLoad_Monster( sceneId, "wushendong_20monster_" .. iniLevel .. ".ini" )
	end

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

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
function x227901_OnContinue( sceneId, selfId, targetId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_sceneid)>=1	then
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x227901_g_ScriptId, x227901_g_MissionId)
	end

end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x227901_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x227901_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É
	misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x227901_g_Param_ok)>=1 then
		return	1
	else
		return	0
	end
end

--**********************************
--Ìá½»
--**********************************
function x227901_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x227901_CheckSubmit( sceneId, selfId, selectRadioId )>0 then		--ÒÑ¾­Hoàn t¤t nhi®m vøÁË
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		DelMission( sceneId,selfId,  x227901_g_MissionId )

		CallScriptFunction(229000, "SetFubenMissionSucc", sceneId, selfId, targetId)		
		
		BeginEvent(sceneId)
			strText = "#{MPFB_081023_27}"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x227901_OnKillObject( sceneId, selfId, objdataId ,objId )

	--Ğúng·ñĞúng¸±±¾
	sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType~=1 then
		return
	end
	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	fubentype = LuaFnGetCopySceneData_Param(sceneId,0)
	if fubentype~=x227901_g_CopySceneType then
		return
	end
	--¸±±¾¹Ø±Õ±êÖ¾
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;
	if 	leaveFlag==1 then --Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
		return
	end

	--È¡ ği¬mµ±Ç°³¡¾°ÀïtoÕ ğµ ÈËÊı
	num = LuaFnGetCopyScene_HumanCount(sceneId)

	killednumber = LuaFnGetCopySceneData_Param(sceneId, 7) ;--É±ËÀ¹ÖtoÕ ğµ ÊıÁ¿
	killednumber = killednumber+1
	LuaFnSetCopySceneData_Param(sceneId, 7, killednumber) ;--ÉèÖÃÉ±ËÀ¹ÖtoÕ ğµ ÊıÁ¿

	if killednumber<x227901_g_TotalNeedKill then

		BeginEvent(sceneId)
			strText = format("Ğã giªt chªt quái v§t:  %d/%d", killednumber, x227901_g_TotalNeedKill )
			AddText(sceneId,strText);
		EndEvent(sceneId)

		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)--È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId
			DispatchMissionTips(sceneId,humanObjId)

			misIndex = GetMissionIndexByID(sceneId,humanObjId,x227901_g_MissionId) --È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ
			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x227901_g_Param_killcount) --È¡ ği¬mÒÑ¾­É±ÁËtoÕ ğµ ¹ÖÎïÊı
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x227901_g_Param_killcount,killedcount) --ÉèÖÃÈÎÎñÊı¾İ
		end
	elseif killednumber>=x227901_g_TotalNeedKill then
		--ÉèÖÃÈÎÎñÍê³É±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1)

		--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
		TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;

		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)	--È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId
			misIndex = GetMissionIndexByID(sceneId,humanObjId,x227901_g_MissionId)--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ

			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x227901_g_Param_killcount) --È¡ ği¬mÒÑ¾­É±ÁËtoÕ ğµ ¹ÖÎïÊı
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x227901_g_Param_killcount,killedcount) --ÉèÖÃÈÎÎñÊı¾İ

			--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
			SetMissionByIndex(sceneId,humanObjId,misIndex,x227901_g_Param_ok,1)--ÉèÖÃÈÎÎñÊı¾İ
			--Íê³É¸±±¾ËùÓÃÊ±¼ä
			SetMissionByIndex(sceneId,humanObjId,misIndex,x227901_g_Param_time,TickCount*x227901_g_TickTime)--ÉèÖÃÈÎÎñÊı¾İ

			BeginEvent(sceneId)
				AddText(sceneId,"Nhi®m vø hoàn thành, các hÕ ğßşc chuy¬n t¾i v¸ trí vào cØa");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,humanObjId)
			
			DelMission( sceneId, humanObjId, x227901_g_MissionId )
			--local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
			--NewWorld( sceneId, humanObjId, oldsceneId, x227901_g_Back_X, x227901_g_Back_Z )
			
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x227901_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x227901_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x227901_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	misIndex = GetMissionIndexByID(sceneId,leaderObjId,x227901_g_MissionId)

	--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
	SetMissionByIndex(sceneId,leaderObjId,misIndex,x227901_g_Param_sceneid,destsceneId)

	NewWorld( sceneId, leaderObjId, destsceneId, x227901_g_Fuben_X, x227901_g_Fuben_Z) ;

end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x227901_OnPlayerEnter( sceneId, selfId )
	--ÉèÖ giâyÀÍöºó¸´»î ği¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x227901_g_Fuben_X, x227901_g_Fuben_Z );
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x227901_OnHumanDie( sceneId, selfId, killerId )
	if x227901_g_DeadTrans==1 then --ËÀÍöºóC¥n ±»Ç¿ÖÆÌß³ö³¡¾°

		misIndex = GetMissionIndexByID(sceneId,selfId,x227901_g_MissionId)--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ

		--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex(sceneId,selfId,misIndex,x227901_g_Param_ok,1)--ÉèÖÃÈÎÎñÊı¾İ
		--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
		local TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı

		--Íê³É¸±±¾ËùÓÃÊ±¼ä
		SetMissionByIndex(sceneId,selfId,misIndex,x227901_g_Param_time,TickCount*x227901_g_TickTime)--ÉèÖÃÈÎÎñÊı¾İ

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x227901_g_Back_X, x227901_g_Back_Z )
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x227901_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	--¸±±¾¹Ø±Õ±êÖ¾
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;

	if leaveFlag == 1 then --C¥n Àë¿ª

		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
		leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
		leaveTickCount = leaveTickCount+1 ;
		LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;

		if leaveTickCount == x227901_g_CloseTick then --µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x227901_g_Back_X, x227901_g_Back_Z )
			end

		elseif leaveTickCount<x227901_g_CloseTick then

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
	  			BeginEvent(sceneId)
	  				strText = format("Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x227901_g_CloseTick-leaveTickCount)*x227901_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
	  		end
			end
		end
	elseif TickCount == x227901_g_LimitTimeSuccess then
		--´Ë´¦ÉèÖÃÓĞÊ±¼äÏŞÖÆtoÕ ğµ ÈÎÎñÍê³É´¦Àí
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
			misIndex = GetMissionIndexByID(sceneId,mems[i],x227901_g_MissionId)--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ
			--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
			SetMissionByIndex(sceneId,mems[i],misIndex,x227901_g_Param_ok,1)--ÉèÖÃÈÎÎñÊı¾İ
			--Íê³É¸±±¾ËùÓÃÊ±¼ä
			SetMissionByIndex(sceneId,mems[i],misIndex,x227901_g_Param_time,TickCount*x227901_g_TickTime)--ÉèÖÃÈÎÎñÊı¾İ
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	elseif TickCount == x227901_g_LimitTotalHoldTime then --¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆtoÕ ğµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x227901_g_MissionId );--ÈÎÎñth¤t bÕi,É¾³ıÖ®
			if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi®m vø th¤t bÕi, quá gi¶!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
  		end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end
end


