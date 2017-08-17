--¸±±¾ÈÎÎñ
--³ÂÓÀÈÊÒıµ¼¸±±¾

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x311004_g_ScriptId = 311004

--¸±±¾Ãû³Æ
x311004_g_CopySceneName="Chiêng ğ°ng cong"

--ÈÎÎñºÅ
x311004_g_MissionId = 4001

--Ä¿±êNPC
x311004_g_Name = "Tr¥n Vînh Nhân"

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x311004_g_IfMissionElite = 1

--ÈÎÎñ¹éÀà
x311004_g_MissionKind = 1

--********ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--Ñ­»·ÈÎÎñµÄÊı¾İË÷Òı£¬ÀïÃæ´æ×ÅÒÑ×öµÄ»·Êı MD_PINPAN_HUAN
x311004_g_MissionRound = 1
--**********************************ÒÔÉÏÊÇ¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x311004_g_MissionName="Bình ğ¸nh phiªn loÕn"
x311004_g_MissionInfo="Chúng ta ğã n¡m rõ tình hình toàn bµ tình hình cüa Ngû Ğài S½n phän quân, các hÕ và Tr¥n Vînh Nhân liên kªt, giªt hªt toàn bµ phän quân, mµt tên cûng không ch×a!"  --ÈÎÎñÃèÊö
x311004_g_MissionTarget="Nh¶ sñ giúp ğŞ cüa Tr¥n Vînh Nhân tiªn vào doanh ğ¸a cüa phän quân, giªt chªt 1 tên Phän Quân Thü Lînh, 13 tên Phän Quân Thü V®, 6 tên Phän Quân Môn V®."	--Møc tiêu nhi®m vø
x311004_g_ContinueInfo="Các hÕ phäi tiªp tøc c¯ g¡ng nhé!"	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x311004_g_MissionComplete="Cám ½n, chúng tôi cu¯i cùng cûng ğã dám ra khöi cØa r°i"	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°


--ÈÎÎñ½±Àø
x311004_g_MoneyBonus=909

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿ËµÃ÷
--0ºÅ£ºÒÑ¾­Íê³ÉµÄ»·Êı£¬ÔÚ½ÓÊÕÈÎÎñÊ±ºò¸³Öµ
--1ºÅ£ºµ±Ç°ÈÎÎñÊÇ·ñÍê³É(0Î´Íê³É£»1Íê³É)
--2ºÅ£ºµ±Ç°¸±±¾ÈÎÎñµÄ³¡¾°ºÅ
--3ºÅ£º½Ó¸±±¾ÈÎÎñÊ±ºòµÄ¶ÓÎéºÅ
--4ºÅ£ºÎ´ÓÃ
--5ºÅ£ºÎ´ÓÃ
--6ºÅ£ºÎ´ÓÃ
--7ºÅ£ºÎ´ÓÃ

x311004_g_LimitMembers=2 --¿ÉÒÔ½ø¸±±¾µÄ×îĞ¡¶ÓÎéÈËÊı
x311004_g_TickTime=5 --»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x311004_g_LimitTotalHoldTime=120 --¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©
x311004_g_CloseTick=6	--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x311004_g_NoUserTime=300 --¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x311004_g_Fuben_X=57.6
x311004_g_Fuben_Z=107.3

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x311004_OnDefaultEvent( sceneId, selfId, targetId )
	if( IsHaveMission(sceneId,selfId,x311004_g_MissionId) > 0)  then	--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁËÕâ¸öÈÎÎñ
		misIndex = GetMissionIndexByID(sceneId,selfId,x311004_g_MissionId)
		bDone = x311004_CheckSubmit( sceneId, selfId )
		if GetName(sceneId,targetId) == x311004_g_Name then		--ÊÇÄ¿±êNPC
			BeginEvent(sceneId)
				AddText(sceneId,x311004_g_MissionName)
				AddText(sceneId,"Chu¦n b¸ xong chßa?")
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x311004_g_ScriptId,x311004_g_MissionId)
		elseif bDone==1 then	--ÈÎÎñÒÑ¾­Íê³É£¬²¢ÇÒÔÚ½»ÈÎÎñµÄNPCÉÏµã»÷µÄÊÂ¼ş
			BeginEvent(sceneId)
				AddText(sceneId,x311004_g_MissionName)
				AddText(sceneId,x311004_g_MissionComplete)
				AddText(sceneId,"Các hÕ s¨ nh§n ğßşc: ")
				AddMoneyBonus(sceneId,x311004_g_MoneyBonus)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x311004_g_ScriptId,x311004_g_MissionId,bDone)
		end
    elseif x311004_CheckAccept(sceneId,selfId) > 0 then		--Ã»ÓĞÈÎÎñ£¬Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
		if GetName(sceneId,targetId) ~= x311004_g_Name then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x311004_g_MissionName)
				AddText(sceneId,x311004_g_MissionInfo)
				AddText(sceneId,"Møc tiêu nhi®m vø: ")
				AddText(sceneId,x311004_g_MissionTarget)
				AddText(sceneId,"Các hÕ s¨ nh§n ğßşc: ")
				AddMoneyBonus(sceneId,x311004_g_MoneyBonus)
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x311004_g_ScriptId,x311004_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x311004_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x311004_g_MissionId) > 0 then
		bDone = x311004_CheckSubmit( sceneId, selfId )
		if GetName(sceneId,targetId) == x311004_g_Name	and	bDone==0 then --ÈÎÎñNPC£¬ÈÎÎñÃ»Íê³É
			AddNumText(sceneId, x311004_g_ScriptId,x311004_g_MissionName);
		elseif	GetName(sceneId,targetId) ~= x311004_g_Name	and	bDone==1 then --½»ÈÎÎñµÄNPC, ÈÎÎñÍê³É
			AddNumText(sceneId, x311004_g_ScriptId,x311004_g_MissionName);
		end
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x311004_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x311004_g_Name then
			AddNumText(sceneId,x311004_g_ScriptId,x311004_g_MissionName);
		end
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x311004_CheckTeamLeader( sceneId, selfId )
	if	GetTeamId( sceneId, selfId)<0	then	--ÅĞ¶ÏÊÇ·ñÓĞ¶ÓÎé
		BeginEvent(sceneId)
	  		AddText(sceneId,"Các hÕ phäi gia nh§p vào mµt ğµi ngû");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	0
	end
	--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
	local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 
	
	if	nearteammembercount<x311004_g_LimitMembers	then
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
function x311004_CheckAccept( sceneId, selfId )
	if	GetTeamId( sceneId, selfId)<0	then	--ÅĞ¶ÏÊÇ·ñÓĞ¶ÓÎé
		BeginEvent(sceneId)
	  		AddText(sceneId,"Các hÕ phäi gia nh§p vào mµt ğµi ngû");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	0
	end
	
	--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
	local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 

	if	nearteammembercount<x311004_g_LimitMembers	then
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
		elseif IsHaveMission(sceneId,mems[i],x311004_g_MissionId)>0 or IsHaveMission(sceneId,mems[i],4002)>0 then
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
function x311004_OnAccept( sceneId, selfId )
	
	local teamid = GetTeamId( sceneId, selfId)
	
	if( IsHaveMission(sceneId,selfId,x311004_g_MissionId) > 0)  then	--ÒÑ¾­ÓĞÈÎÎñµÄ
		misIndex = GetMissionIndexByID(sceneId,selfId,x311004_g_MissionId)
		copysceneid = GetMissionParam( sceneId, selfId, misIndex, 2)
		saveteamid = GetMissionParam( sceneId, selfId, misIndex, 3)
		
		if copysceneid<0 then --»¹Ã»ÓĞ½ø¹ı¸±±¾
			nearmembercount = x311004_CheckTeamLeader( sceneId, selfId )
			if nearmembercount>0 then --ÓĞ¶ÓÎé£¬ÈËÊı×ã¹»£¬Îª¶Ó³¤, ·µ»ØÖµÎªÈËÊı
			--¶Ó³¤´´½¨¸±±¾³¡¾°
				x311004_MakeCopyScene( sceneId, selfId, nearmembercount ) ;
			end
		elseif teamid==saveteamid then
			--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			NewWorld( sceneId, selfId, copysceneid, x311004_g_Fuben_X, x311004_g_Fuben_Z) ;
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ği«u ki®n không phù hşp");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		if x311004_CheckAccept(sceneId,selfId) <= 0 then	--ÅĞ¶Ï½ÓÊÕÌõ¼ş
			return 0
		end

		--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
		local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 
		local mems = {}
		for	i=0,nearteammembercount-1 do
			mems[i] = GetNearTeamMember(sceneId, selfId, i)
			--¸øÃ¿¸ö¶ÓÎé³ÉÔ±¼ÓÈëÈÎÎñ
			AddMission( sceneId, mems[i], x311004_g_MissionId, x311004_g_ScriptId, 1, 0, 0 )
			
			misIndex = GetMissionIndexByID( sceneId, mems[i], x311004_g_MissionId )
			
			local huan = GetMissionData(sceneId,selfId,x311004_g_MissionRound)
			
			--½«ÈÎÎñµÄµÚ0ºÅÊı¾İÉèÖÃÎªÒÑ¾­Íê³ÉµÄ
			SetMissionByIndex(sceneId,mems[i],misIndex,0,huan)
			
			--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉµÄÈÎÎñ
			SetMissionByIndex(sceneId,mems[i],misIndex,1,0)
			
			--½«ÈÎÎñµÄµÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾µÄ³¡¾°ºÅ
			SetMissionByIndex(sceneId,mems[i],misIndex,2,-1)

			--½«ÈÎÎñµÄµÚ3ºÅÊı¾İ¶ÓÎéºÅ
			SetMissionByIndex(sceneId,mems[i],misIndex,3,teamid)
		end
	end
end

--**********************************
--·ÅÆú
--**********************************
function x311004_OnAbandon( sceneId, selfId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x311004_g_MissionId)
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, 2)
	
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x311004_g_MissionId )
	
	if sceneId==copyscene then --Èç¹ûÔÚ¸±±¾ÀïÉ¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi®m vø th¤t bÕi!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
		
		NewWorld( sceneId, selfId, oldsceneId, 127, 28 )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x311004_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	mylevel = 0 
	for	i=0,nearmembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, selfId, i)
		mylevel = mylevel+GetLevel(sceneId,mems[i])
	end
	mylevel = mylevel/nearmembercount
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "_pingpan_1.nav"); --µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x311004_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x311004_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, 999);--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x311004_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, 0);--É±ËÀµÄÅÑ¾ü1µÄÊıÁ¿
	LuaFnSetCopySceneData_Param(sceneId, 7, 0);--É±ËÀµÄÅÑ¾ü2µÄÊıÁ¿
	LuaFnSetCopySceneData_Param(sceneId, 8, 0);--É±ËÀµÄÅÑ¾ü3µÄÊıÁ¿
	
	if	mylevel<=40	 then
		LuaFnSetSceneLoad_Monster(sceneId, "_pingpan_1_monster.ini")
		LuaFnSetCopySceneData_Param(sceneId, 9,536);--É±ËÀµÄÅÑ¾ü1µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,10,529);--É±ËÀµÄÅÑ¾ü2µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,11,538);--É±ËÀµÄÅÑ¾ü3µÄ¹ÖÎïÀàĞÍ
	elseif	mylevel<=55	 then
		LuaFnSetSceneLoad_Monster(sceneId, "_pingpan_40_monster.ini")
		LuaFnSetCopySceneData_Param(sceneId, 9,1825);--É±ËÀµÄÅÑ¾ü1µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,10,1835);--É±ËÀµÄÅÑ¾ü2µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,11,539);--É±ËÀµÄÅÑ¾ü3µÄ¹ÖÎïÀàĞÍ
	elseif	mylevel<=70	 then
		LuaFnSetSceneLoad_Monster(sceneId, "_pingpan_55_monster.ini")
		LuaFnSetCopySceneData_Param(sceneId, 9,1845);--É±ËÀµÄÅÑ¾ü1µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,10,1850);--É±ËÀµÄÅÑ¾ü2µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,11,540);--É±ËÀµÄÅÑ¾ü3µÄ¹ÖÎïÀàĞÍ
	elseif	mylevel<=85	 then
		LuaFnSetSceneLoad_Monster(sceneId, "_pingpan_70_monster.ini")
		LuaFnSetCopySceneData_Param(sceneId, 9,517);--É±ËÀµÄÅÑ¾ü1µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,10,518);--É±ËÀµÄÅÑ¾ü2µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,11,541);--É±ËÀµÄÅÑ¾ü3µÄ¹ÖÎïÀàĞÍ
	else
		LuaFnSetSceneLoad_Monster(sceneId, "_pingpan_85_monster.ini")
		LuaFnSetCopySceneData_Param(sceneId, 9,1955);--É±ËÀµÄÅÑ¾ü1µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,10,1950);--É±ËÀµÄÅÑ¾ü2µÄ¹ÖÎïÀàĞÍ
		LuaFnSetCopySceneData_Param(sceneId,11,542);--É±ËÀµÄÅÑ¾ü3µÄ¹ÖÎïÀàĞÍ
	end	
	
	LuaFnSetCopySceneData_Param(sceneId,12,GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ

	local bRetSceneID = LuaFnCreateCopyScene(); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßşng bän sao ğã quá täi, hãy ğşi mµt chút!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¼ÌĞø
--**********************************
function x311004_OnContinue( sceneId, selfId, targetId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x311004_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, 2)>=1	then
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x311004_g_ScriptId, x311004_g_MissionId)
	end

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x311004_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x311004_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--ÅĞ¶ÏÈÎÎñÊÇ·ñÒÑ¾­Íê³É
	misIndex = GetMissionIndexByID(sceneId,selfId,x311004_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, 1)>=1 then 
		return	1
	else
		return	0
	end
end

--**********************************
--Ìá½»
--**********************************
function x311004_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x311004_CheckSubmit( sceneId, selfId, selectRadioId )>0 then		--ÒÑ¾­Íê³ÉÈÎÎñÁË
	
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		DelMission( sceneId,selfId,  x311004_g_MissionId )
		
		local	i=GetMissionData(sceneId,selfId,x311004_g_MissionRound)
		if	i>=10	then
			i=1
		else
			i=i+1
		end
		
		--Ìí¼ÓÈÎÎñ½±Àø
		money = 100*i+x311004_g_MoneyBonus
		AddMoney(sceneId,selfId,money );
		
		--ÉèÖÃÑ­»·ÈÎÎñµÄ»·Êı
		SetMissionData(sceneId,selfId,x311004_g_MissionRound,i)
		
		BeginEvent(sceneId)
			strText_M = format("Ngß½i ğã ğoÕt ğßşc %d ngân lßşng",money)
	  		strText = format("Nhi®m vø bình ğ¸nh phiªn loÕn ğã hoàn t¤t, hi®n gi¶ là vòng thÑ %d",i)
	  		AddText(sceneId,strText);
	  		AddText(sceneId,strText_M);
	  	EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x311004_OnKillObject( sceneId, selfId, objdataId ,objId )
	
	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊı
	num = LuaFnGetCopyScene_HumanCount(sceneId)
	
	killednumber_1 = LuaFnGetCopySceneData_Param(sceneId, 6) ;--É±ËÀÅÑ¾üµÄÊıÁ¿
	killednumber_2 = LuaFnGetCopySceneData_Param(sceneId, 7) ;--É±ËÀÅÑ¾üµÄÊıÁ¿
	killednumber_3 = LuaFnGetCopySceneData_Param(sceneId, 8) ;--É±ËÀÅÑ¾üµÄÊıÁ¿
	killednumber = killednumber_1+killednumber_2+killednumber_3
	IsKillOK=0		
	if killednumber<20 then
		needkilled_1 = LuaFnGetCopySceneData_Param(sceneId, 9) ;--É±ËÀÅÑ¾üµÄ¹ÖÎïÀàĞÍ
		needkilled_2 = LuaFnGetCopySceneData_Param(sceneId,10) ;--É±ËÀÅÑ¾üµÄ¹ÖÎïÀàĞÍ
		needkilled_3 = LuaFnGetCopySceneData_Param(sceneId,11) ;--É±ËÀÅÑ¾üµÄ¹ÖÎïÀàĞÍ

		BeginEvent(sceneId)
		if objdataId==needkilled_1 then
			killednumber_1 = killednumber_1+1
			strText = format("Ğã giªt chªt quân môn v® phän bµi %d/6", killednumber_1 )
			AddText(sceneId,strText);
			IsKillOK=1
		elseif objdataId==needkilled_2 then
			killednumber_2 = killednumber_2+1
			BeginEvent(sceneId)
			strText = format("Ğã giªt chªt quân thü v® phän bµi %d/13", killednumber_2 )
			AddText(sceneId,strText);
			IsKillOK=1
		elseif objdataId==needkilled_3 then
			killednumber_3 = killednumber_3+1
			strText = format("Ğã giªt chªt quân thü lînh phän bµi %d/1", killednumber_3 )
			AddText(sceneId,strText);
			IsKillOK=1
		end
		EndEvent(sceneId)

		if IsKillOK==1 then
			for i=0,num-1 do
				humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)--È¡µÃµ±Ç°³¡¾°ÀïÈËµÄobjId
				DispatchMissionTips(sceneId,humanObjId)
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 6, killednumber_1);--ÉèÖÃÉ±ËÀµÄÅÑ¾üµÄÊıÁ¿
			LuaFnSetCopySceneData_Param(sceneId, 7, killednumber_2);--ÉèÖÃÉ±ËÀµÄÅÑ¾üµÄÊıÁ¿
			LuaFnSetCopySceneData_Param(sceneId, 8, killednumber_3);--ÉèÖÃÉ±ËÀµÄÅÑ¾üµÄÊıÁ¿
		end
	end
	
	killednumber = killednumber_1+killednumber_2+killednumber_3
	if killednumber>=20 and IsKillOK==1 then
	
		--ÉèÖÃÈÎÎñÍê³É±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1)
		
		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)	--È¡µÃµ±Ç°³¡¾°ÀïÈËµÄobjId
			misIndex = GetMissionIndexByID(sceneId,humanObjId,x311004_g_MissionId)--È¡µÃÈÎÎñÊı¾İË÷ÒıÖµ

			--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉµÄÈÎÎñ
			SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)--ÉèÖÃÈÎÎñÊı¾İ

			BeginEvent(sceneId)
				strText = format("Nhi®m vø hoàn thành, sau %d giây s¨ chuy¬n t¾i v¸ trí vào cØa", x311004_g_CloseTick*x311004_g_TickTime )
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,humanObjId)
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x311004_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x311004_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x311004_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;	
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
	local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
	local mems = {}
	for	i=0,nearteammembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
		misIndex = GetMissionIndexByID(sceneId,mems[i],x311004_g_MissionId)
		
		--½«ÈÎÎñµÄµÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾µÄ³¡¾°ºÅ
		SetMissionByIndex(sceneId,mems[i],misIndex,2,destsceneId)
				
		NewWorld( sceneId, mems[i], destsceneId, x311004_g_Fuben_X, x311004_g_Fuben_Z) ;
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x311004_OnPlayerEnter( sceneId, selfId )
	--ÉèÖÃËÀÍöºó¸´»îµãÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x311004_g_Fuben_X, x311004_g_Fuben_Z );
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x311004_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x311004_OnCopySceneTimer( sceneId, nowTime )
	
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
		
		if leaveTickCount == x311004_g_CloseTick then --µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
			
			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, 127, 28 )
			end
			
		elseif leaveTickCount<x311004_g_CloseTick then
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				strText = format("Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x311004_g_CloseTick-leaveTickCount)*x311004_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x311004_g_LimitTotalHoldTime then --¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆµÄÇé¿ö£¬µ±Ê±¼äµ½ºó´¦Àí...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x311004_g_MissionId );--ÈÎÎñÊ§°Ü,É¾³ıÖ®

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi®m vø th¤t bÕi, ğã hªt th¶i gian!");
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
			if IsHaveMission(sceneId,mems[i],x311004_g_MissionId) > 0 then
				oldteamid = LuaFnGetCopySceneData_Param(sceneId, 12) ; --È¡µÃ±£´æµÄ¶ÓÎéºÅ
				if oldteamid ~= GetTeamId(sceneId,mems[i]) then
				
					DelMission( sceneId, mems[i], x311004_g_MissionId );--ÈÎÎñÊ§°Ü,É¾³ıÖ®

  					BeginEvent(sceneId)
  						AddText(sceneId,"Nhi®m vø th¤t bÕi, ngß½i không · trong ğúng nhóm");
  					EndEvent(sceneId)
  					DispatchMissionTips(sceneId,mems[i])
  					
 					oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
					NewWorld( sceneId, mems[i], oldsceneId, 127, 28 )
  				end
  			end
		end
		
	end
end

