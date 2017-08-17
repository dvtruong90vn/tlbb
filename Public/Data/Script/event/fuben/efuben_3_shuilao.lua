--¸±±¾ÈÎÎñ
--Thüy Lao

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x401020_g_ScriptId = 401020

--¸±±¾Ãû³Æ
x401020_g_CopySceneName="Thüy Lao"

--ÈÎÎñºÅ
x401020_g_MissionId = 1055

--Ä¿±êNPC
x401020_g_Name = "Thüy Lao"

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x401020_g_IfMissionElite = 1

--ÈÎÎñ¹éÀà
x401020_g_MissionKind = 1

--********ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--Ñ­»·ÈÎÎñµÄÊı¾İË÷Òı£¬ÀïÃæ´æ×ÅÒÑ×öµÄ»·Êı MD_SHUILAO_HUAN
x401020_g_MissionRound = 7
--**********************************ÒÔÉÏÊÇ¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x401020_g_MissionName="Thüy Lao"
x401020_g_MissionInfo="Giªt hªt toàn bµ quái v§t, 1 con cûng không tha!"  --ÈÎÎñÃèÊö
x401020_g_MissionTarget="Giªt hªt toàn bµ quái v§t"	--ÈÎÎñÄ¿±ê
x401020_g_ContinueInfo="Các hÕ phäi tiªp tøc c¯ g¡ng nhé!"	--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x401020_g_MissionComplete="Cám ½n, chúng tôi cu¯i cùng cûng ğã dám ra khöi cØa r°i"	--Íê³ÉÈÎÎñnpcËµ»°µÄ»°


--ÈÎÎñ½±Àø
x401020_g_MoneyBonus=9999

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿ËµÃ÷
x401020_g_Param_huan		=0	--0ºÅ£ºÒÑ¾­Íê³ÉµÄ»·Êı£¬ÔÚ½ÓÊÕÈÎÎñÊ±ºò¸³Öµ
x401020_g_Param_ok			=1	--1ºÅ£ºµ±Ç°ÈÎÎñÊÇ·ñÍê³É(0Î´Íê³É£»1Íê³É)
x401020_g_Param_sceneid		=2	--2ºÅ£ºµ±Ç°¸±±¾ÈÎÎñµÄ³¡¾°ºÅ
x401020_g_Param_teamid		=3	--3ºÅ£º½Ó¸±±¾ÈÎÎñÊ±ºòµÄ¶ÓÎéºÅ
x401020_g_Param_killcount	=4	--4ºÅ£ºÉ±ËÀÈÎÎñ¹ÖµÄÊıÁ¿
x401020_g_Param_time		=5	--5ºÅ£ºÍê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»£ºÃë)
--6ºÅ£ºÎ´ÓÃ
--7ºÅ£ºÎ´ÓÃ

x401020_g_CopySceneType=FUBEN_EXAMPLE	--¸±±¾ÀàĞÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x401020_g_LimitMembers=1			--¿ÉÒÔ½ø¸±±¾µÄ×îĞ¡¶ÓÎéÈËÊı
x401020_g_TickTime=5				--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x401020_g_LimitTotalHoldTime=360	--¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x401020_g_LimitTimeSuccess=500		--¸±±¾Ê±¼äÏŞÖÆ£¨µ¥Î»£º´ÎÊı£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x401020_g_CloseTick=6				--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x401020_g_NoUserTime=300			--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x401020_g_DeadTrans=1				--ËÀÍö×ªÒÆÄ£Ê½£¬0£ºËÀÍöºó»¹¿ÉÒÔ¼ÌĞøÔÚ¸±±¾£¬1£ºËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x401020_g_Fuben_X=64				--½øÈë¸±±¾µÄÎ»ÖÃX
x401020_g_Fuben_Z=64				--½øÈë¸±±¾µÄÎ»ÖÃZ
x401020_g_Back_X=234				--Ô´³¡¾°Î»ÖÃX
x401020_g_Back_Z=69					--Ô´³¡¾°Î»ÖÃZ
x401020_g_NeedMonsterGroupID=1		--ĞèÒªÉ±ËÀµÄBossµÄGroupID
x401020_g_TotalNeedKillBoss=10		--ĞèÒªÉ±ËÀBossÊıÁ¿

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x401020_OnDefaultEvent( sceneId, selfId, targetId )
	if( IsHaveMission(sceneId,selfId,x401020_g_MissionId) > 0)  then	--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁËÕâ¸öÈÎÎñ
		misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
		bDone = x401020_CheckSubmit( sceneId, selfId )
		if bDone==0 then						--ÈÎÎñÎ´Íê³É
			BeginEvent(sceneId)
				AddText(sceneId,x401020_g_MissionName)
				AddText(sceneId,"Chu¦n b¸ xong chßa?")
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x401020_g_ScriptId,x401020_g_MissionId)
		elseif bDone==1 then					--ÈÎÎñÒÑ¾­Íê³É
			BeginEvent(sceneId)
				AddText(sceneId,x401020_g_MissionName)
				AddText(sceneId,x401020_g_MissionComplete)
				AddText(sceneId,"Các hÕ s¨ nh§n ğßşc: ")
				AddMoneyBonus(sceneId,x401020_g_MoneyBonus)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x401020_g_ScriptId,x401020_g_MissionId,bDone)
		end
    elseif x401020_CheckAccept(sceneId,selfId) > 0 then		--Ã»ÓĞÈÎÎñ£¬Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x401020_g_MissionName)
			AddText(sceneId,x401020_g_MissionInfo)
			AddText(sceneId,"Møc tiêu nhi®m vø: ")
			AddText(sceneId,x401020_g_MissionTarget)
			AddText(sceneId,"Các hÕ s¨ nh§n ğßşc: ")
			AddMoneyBonus(sceneId,x401020_g_MoneyBonus)
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x401020_g_ScriptId,x401020_g_MissionId)
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x401020_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x401020_g_MissionId) > 0 then
		AddNumText(sceneId, x401020_g_ScriptId,x401020_g_MissionName,3,-1);
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x401020_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x401020_g_ScriptId,x401020_g_MissionName,4,-1);
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x401020_CheckTeamLeader( sceneId, selfId )
	if	GetTeamId( sceneId, selfId)<0	then	--ÅĞ¶ÏÊÇ·ñÓĞ¶ÓÎé
		BeginEvent(sceneId)
	  		AddText(sceneId,"Các hÕ phäi gia nh§p vào mµt ğµi ngû");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	0
	end
	--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
	local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 
	
	if	nearteammembercount<x401020_g_LimitMembers	then
		BeginEvent(sceneId)
	  		AddText(sceneId,"S¯ ngß¶i trong ğµi ngû cüa các hÕ không ğü");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	 0
	end
	
	if	LuaFnIsTeamLeader( sceneId, selfId)==0	then	--Ö»ÓĞ¶Ó³¤²ÅÄÜ½ÓÈÎÎñ
		BeginEvent(sceneId)
	  		AddText(sceneId,"Ngß¶i không phäi là nhóm trß·ng");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	 0
	end
	
	return nearteammembercount
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x401020_CheckAccept( sceneId, selfId )
	if	GetTeamId( sceneId, selfId)<0	then	--ÅĞ¶ÏÊÇ·ñÓĞ¶ÓÎé
		BeginEvent(sceneId)
	  		AddText(sceneId,"Các hÕ phäi gia nh§p vào mµt ğµi ngû");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	0
	end
	
	--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
	local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 

	if	nearteammembercount<x401020_g_LimitMembers	then
		BeginEvent(sceneId)
	  		AddText(sceneId,"S¯ ngß¶i trong ğµi ngû cüa các hÕ không ğü");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	 0
	end
	
	if	LuaFnIsTeamLeader( sceneId, selfId)==0	then	--Ö»ÓĞ¶Ó³¤²ÅÄÜ½ÓÈÎÎñ
		BeginEvent(sceneId)
	  		AddText(sceneId,"Ngß¶i không phäi là nhóm trß·ng");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	 0
	end
	
	--¼ì²âĞ¡¶ÓÖĞÊÇ·ñÓĞÈËÈÎÎñ¼ÇÂ¼ÒÑÂú, ¶ÓÓÑÊÇ·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ
	local mems = {}
	for	i=0,nearteammembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, selfId, i)
		if GetMissionCount( sceneId, mems[i]) >= 20 then	--¶ÓÓÑÉíÉÏÈÎÎñÊıÁ¿ÊÇ·ñ´ïµ½ÉÏÏŞ20¸ö
			BeginEvent(sceneId)
				AddText(sceneId,"Ghi chép nhi®m vø cüa ngß¶i trong ğµi ngû ğã ğ¥y");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		elseif IsHaveMission(sceneId,mems[i],x401020_g_MissionId)>0 then
			--¶ÓÓÑÊÇ·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ»òÕßÁíÍâÒ»¸öÈÎÎñ
			BeginEvent(sceneId)
				AddText(sceneId,"Trong ğµi ğã có ngß¶i nh§n nhi®m vø này");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	return	1
end

--**********************************
--½ÓÊÜ
--**********************************
function x401020_OnAccept( sceneId, selfId )
	
	local teamid = GetTeamId( sceneId, selfId)
	
	if( IsHaveMission(sceneId,selfId,x401020_g_MissionId) > 0)  then	--ÒÑ¾­ÓĞÈÎÎñµÄ
		misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
		copysceneid = GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_sceneid)
		saveteamid = GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_teamid)
		
		if copysceneid>=0 and teamid==saveteamid then --½ø¹ı¸±±¾
			--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			NewWorld( sceneId, selfId, copysceneid, x401020_g_Fuben_X, x401020_g_Fuben_Z) ;
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ği«u ki®n không phù hşp");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		if x401020_CheckAccept(sceneId,selfId) <= 0 then	--ÅĞ¶Ï½ÓÊÕÌõ¼ş
			return 0
		end

		--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
		local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 
		local mems = {}
		for	i=0,nearteammembercount-1 do
			mems[i] = GetNearTeamMember(sceneId, selfId, i)
			--¸øÃ¿¸ö¶ÓÎé³ÉÔ±¼ÓÈëÈÎÎñ
			AddMission( sceneId, mems[i], x401020_g_MissionId, x401020_g_ScriptId, 1, 0, 0 )
			
			misIndex = GetMissionIndexByID( sceneId, mems[i], x401020_g_MissionId )
			
			local huan = GetMissionData(sceneId,selfId,x401020_g_MissionRound)
			
			--½«ÈÎÎñµÄµÚ0ºÅÊı¾İÉèÖÃÎªÒÑ¾­Íê³ÉµÄ
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_huan,huan)
			
			--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉµÄÈÎÎñ
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_ok,0)
			
			--½«ÈÎÎñµÄµÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾µÄ³¡¾°ºÅ
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_sceneid,-1)

			--½«ÈÎÎñµÄµÚ3ºÅÊı¾İ¶ÓÎéºÅ
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_teamid,teamid)
		end
		
		x401020_MakeCopyScene( sceneId, selfId, nearteammembercount ) ;
	end
end

--**********************************
--·ÅÆú
--**********************************
function x401020_OnAbandon( sceneId, selfId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_sceneid)
	
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x401020_g_MissionId )
	
	if sceneId==copyscene then --Èç¹ûÔÚ¸±±¾ÀïÉ¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi®m vø th¤t bÕi!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
		
		NewWorld( sceneId, selfId, oldsceneId, x401020_g_Back_X, x401020_g_Back_Z )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x401020_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	mylevel = 0 
	for	i=0,nearmembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, selfId, i)
		mylevel = mylevel+GetLevel(sceneId,mems[i])
	end
	mylevel = mylevel/nearmembercount
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "shuilao.nav"); --µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x401020_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x401020_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x401020_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x401020_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBossµÄÊıÁ¿
	
	if	mylevel<=10	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_10.ini")
	elseif	mylevel<=15	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_15.ini")
	elseif	mylevel<=20	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_20.ini")
	elseif	mylevel<=25	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_25.ini")
	elseif	mylevel<=30	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_30.ini")
	elseif	mylevel<=35	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_35.ini")
	elseif	mylevel<=40	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_40.ini")
	elseif	mylevel<=45	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_45.ini")
	elseif	mylevel<=50	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_50.ini")
	end	
	

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!");
			--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
			DelMission( sceneId, selfId, x401020_g_MissionId )
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¼ÌĞø
--**********************************
function x401020_OnContinue( sceneId, selfId, targetId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_sceneid)>=1	then
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x401020_g_ScriptId, x401020_g_MissionId)
	end

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x401020_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x401020_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--ÅĞ¶ÏÈÎÎñÊÇ·ñÒÑ¾­Íê³É
	misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_ok)>=1 then 
		return	1
	else
		return	0
	end
end

--**********************************
--Ìá½»
--**********************************
function x401020_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x401020_CheckSubmit( sceneId, selfId, selectRadioId )>0 then		--ÒÑ¾­Íê³ÉÈÎÎñÁË
	
		local	iHuan=GetMissionData(sceneId,selfId,MD_SHUILAO_HUAN)	--È¡µÃ×Ü¹²×ö¹ıµÄ»·Êı
		iHuan=iHuan+1
		--begin modified by zhangguoxin 090207
		local iDayCount=GetMissionData(sceneId,selfId,MD_SHUILAO_DAYCOUNT)
		local iTime = mod(iDayCount,100000)
		--local iDayTime = floor(iTime/100)	--ÉÏÒ»´Î½»ÈÎÎñµÄÊ±¼ä(ÌìÊı)
		local iDayTime = iTime							--ÉÏÒ»´Î½»ÈÎÎñµÄÊ±¼ä(ÌìÊı)
		--local iHourTime = mod(iTime,100)	--ÉÏÒ»´Î½»ÈÎÎñµÄÊ±¼ä(Ğ¡Ê±)
		local iDayHuan = floor(iDayCount/100000) --µ±ÌìÄÚÍê³ÉµÄÈÎÎñ´ÎÊı
		
		--local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
		local CurDaytime = GetDayTime()	--µ±Ç°Ê±¼ä(Ìì)
		--local CurHourTime = mod(CurTime,100)	--µ±Ç°Ê±¼ä(Ğ¡Ê±)
		
		if CurDaytime==iDayTime then 	--ÉÏ´ÎÍê³ÉÈÎÎñÊÇÍ¬Ò»ÌìÄÚ
			iDayHuan = iDayHuan+1
		else				--ÉÏ´ÎÍê³ÉÈÎÎñ²»ÔÚÍ¬Ò»Ìì£¬ÖØÖÃ
			iDayTime = CurDaytime
			iDayHuan = 1
		end
		
		--iDayCount = iDayHuan*100000+iDayTime*100+CurHourTime
		iDayCount = iDayHuan*100000 + CurDaytime;
		
		--Ìí¼ÓÈÎÎñ½±Àø
		money = 100*iDayHuan
		AddMoney(sceneId,selfId,money );
		
		--ÉèÖÃÑ­»·ÈÎÎñµÄ»·Êı
		SetMissionData(sceneId,selfId,MD_SHUILAO_HUAN,iHuan)
		SetMissionData(sceneId,selfId,MD_SHUILAO_DAYCOUNT,iDayCount)
		--end modified by zhangguoxin 090207
		
		BeginEvent(sceneId)
			strText_M = format("Ngß½i ğã ğoÕt ğßşc %d ngân lßşng",money)
	  		strText = format("Nhi®m vø hoàn thành, hi®n ğang là vòng thÑ %d",iDayHuan)
	  		AddText(sceneId,strText);
	  		AddText(sceneId,strText_M);
	  	EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
	  	
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		DelMission( sceneId,selfId,  x401020_g_MissionId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x401020_OnKillObject( sceneId, selfId, objdataId ,objId )
	
	--ÊÇ·ñÊÇ¸±±¾
	sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType~=1 then
		return
	end 
	--ÊÇ·ñÊÇËùĞèÒªµÄ¸±±¾
	fubentype = LuaFnGetCopySceneData_Param(sceneId,0)
	if fubentype~=x401020_g_CopySceneType then
		return
	end
	--¸±±¾¹Ø±Õ±êÖ¾
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;
	if 	leaveFlag==1 then --Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬£¬ÔòÉ±¹ÖÎŞĞ§
		return 
	end
	
	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊı
	num = LuaFnGetCopyScene_HumanCount(sceneId)
	
	--È¡µÃÉ±ËÀ¹ÖÎïµÄGroupID,ÓÃÓÚÅĞ¶ÏÊÇ·ñÊÇËùĞèÒªÉ±µôµÄBoss
	GroupID = GetMonsterGroupID( sceneId, objId )
	if GroupID ~= x401020_g_NeedMonsterGroupID then
		return --²»ÊÇËùĞèÒªµÄBoss
	end
	
	killedbossnumber = LuaFnGetCopySceneData_Param(sceneId, 7) ;--É±ËÀBossµÄÊıÁ¿
	killedbossnumber = killedbossnumber+1
	LuaFnSetCopySceneData_Param(sceneId, 7, killedbossnumber) ;--ÉèÖÃÉ±ËÀBossµÄÊıÁ¿
	
	if killedbossnumber<x401020_g_TotalNeedKillBoss then

		BeginEvent(sceneId)
			strText = format("Ğã giªt BOSS %d/%d", killedbossnumber, x401020_g_TotalNeedKillBoss )
			AddText(sceneId,strText);
		EndEvent(sceneId)

		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)--È¡µÃµ±Ç°³¡¾°ÀïÈËµÄobjId
			DispatchMissionTips(sceneId,humanObjId)

			misIndex = GetMissionIndexByID(sceneId,humanObjId,x401020_g_MissionId) --È¡µÃÈÎÎñÊı¾İË÷ÒıÖµ
			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x401020_g_Param_killcount) --È¡µÃÒÑ¾­É±ÁËµÄ¹ÖÎïÊı
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401020_g_Param_killcount,killedcount) --ÉèÖÃÈÎÎñÊı¾İ
		end
	elseif killedbossnumber>=x401020_g_TotalNeedKillBoss then
		--ÉèÖÃÈÎÎñÍê³É±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1)
		
		--È¡µÃÒÑ¾­Ö´ĞĞµÄ¶¨Ê±´ÎÊı
		TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;
		
		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)	--È¡µÃµ±Ç°³¡¾°ÀïÈËµÄobjId
			misIndex = GetMissionIndexByID(sceneId,humanObjId,x401020_g_MissionId)--È¡µÃÈÎÎñÊı¾İË÷ÒıÖµ

			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x401020_g_Param_killcount) --È¡µÃÒÑ¾­É±ÁËµÄ¹ÖÎïÊı
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401020_g_Param_killcount,killedcount) --ÉèÖÃÈÎÎñÊı¾İ

			--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉµÄÈÎÎñ
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401020_g_Param_ok,1)--ÉèÖÃÈÎÎñÊı¾İ
			--Íê³É¸±±¾ËùÓÃÊ±¼ä
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401020_g_Param_time,TickCount*x401020_g_TickTime)--ÉèÖÃÈÎÎñÊı¾İ

			BeginEvent(sceneId)
				strText = format("Nhi®m vø hoàn thành, sau %d giây s¨ chuy¬n t¾i v¸ trí vào cØa", x401020_g_CloseTick*x401020_g_TickTime )
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,humanObjId)
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x401020_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x401020_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x401020_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;	
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
	local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
	local mems = {}
	for	i=0,nearteammembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
		misIndex = GetMissionIndexByID(sceneId,mems[i],x401020_g_MissionId)
		
		--½«ÈÎÎñµÄµÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾µÄ³¡¾°ºÅ
		SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_sceneid,destsceneId)
				
		NewWorld( sceneId, mems[i], destsceneId, x401020_g_Fuben_X, x401020_g_Fuben_Z) ;
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x401020_OnPlayerEnter( sceneId, selfId )
	--ÉèÖÃËÀÍöºó¸´»îµãÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x401020_g_Fuben_X, x401020_g_Fuben_Z );
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x401020_OnHumanDie( sceneId, selfId, killerId )
	if x401020_g_DeadTrans==1 then --ËÀÍöºóĞèÒª±»Ç¿ÖÆÌß³ö³¡¾°
	
		misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)--È¡µÃÈÎÎñÊı¾İË÷ÒıÖµ
		
		--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉµÄÈÎÎñ
		SetMissionByIndex(sceneId,selfId,misIndex,x401020_g_Param_ok,1)--ÉèÖÃÈÎÎñÊı¾İ
		local TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--È¡µÃÒÑ¾­Ö´ĞĞµÄ¶¨Ê±´ÎÊı
		--Íê³É¸±±¾ËùÓÃÊ±¼ä
		SetMissionByIndex(sceneId,selfId,misIndex,x401020_g_Param_time,TickCount*x401020_g_TickTime)--ÉèÖÃÈÎÎñÊı¾İ

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x401020_g_Back_X, x401020_g_Back_Z )
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x401020_OnCopySceneTimer( sceneId, nowTime )
	
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
		
		if leaveTickCount == x401020_g_CloseTick then --µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
			
			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x401020_g_Back_X, x401020_g_Back_Z )
			end
			
		elseif leaveTickCount<x401020_g_CloseTick then
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				strText = format("Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x401020_g_CloseTick-leaveTickCount)*x401020_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x401020_g_LimitTimeSuccess then
		--´Ë´¦ÉèÖÃÓĞÊ±¼äÏŞÖÆµÄÈÎÎñÍê³É´¦Àí
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			
  			BeginEvent(sceneId)
  				AddText(sceneId,"Th¶i gian hoàn t¤t nhi®m vø ğã t¾i, hoàn thành!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
  			
			misIndex = GetMissionIndexByID(sceneId,mems[i],x401020_g_MissionId)--È¡µÃÈÎÎñÊı¾İË÷ÒıÖµ
			--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉµÄÈÎÎñ
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_ok,1)--ÉèÖÃÈÎÎñÊı¾İ
			--Íê³É¸±±¾ËùÓÃÊ±¼ä
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_time,TickCount*x401020_g_TickTime)--ÉèÖÃÈÎÎñÊı¾İ
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;
		
	elseif TickCount == x401020_g_LimitTotalHoldTime then --¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆµÄÇé¿ö£¬µ±Ê±¼äµ½ºó´¦Àí...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x401020_g_MissionId );--ÈÎÎñÊ§°Ü,É¾³ıÖ®

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi®m vø th¤t bÕi, quá gi¶!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;
		
	else 
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±µÄ¶ÓÎéºÅ£¬Èç¹û²»·ûºÏ£¬ÔòÌß³ö¸±±¾
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if IsHaveMission(sceneId,mems[i],x401020_g_MissionId) > 0 then
				oldteamid = LuaFnGetCopySceneData_Param(sceneId, 6) ; --È¡µÃ±£´æµÄ¶ÓÎéºÅ
				if oldteamid ~= GetTeamId(sceneId,mems[i]) then
				
					DelMission( sceneId, mems[i], x401020_g_MissionId );--ÈÎÎñÊ§°Ü,É¾³ıÖ®

  					BeginEvent(sceneId)
  						AddText(sceneId,"Nhi®m vø th¤t bÕi, ngß½i không · trong ğúng nhóm!");
  					EndEvent(sceneId)
  					DispatchMissionTips(sceneId,mems[i])
  					
 					oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
					NewWorld( sceneId, mems[i], oldsceneId, x401020_g_Back_X, x401020_g_Back_Z )
  				end
  			end
		end
		
	end
end

