--¸±±¾ÈÎÎñ
--Ä¾ÈË

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x210222_g_ScriptId = 210222

--¸±±¾Ãû³Æ
x210222_g_CopySceneName="H§u Hoa Viên"
x210222_g_CopySceneMap = "newbie_2.nav"
x210222_g_CopySceneMonster = "newbie_2_monster.ini"

--ÈÎÎñºÅ
x210222_g_MissionId = 702

--ÉÏÒ»¸öÈÎÎñµÄID
x210222_g_MissionIdPre = 701

--Ä¿±êNPC
x210222_g_Name = "Th± Phï"

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210222_g_IfMissionElite = 1

--ÈÎÎñ¹éÀà
x210222_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210222_g_MissionLevel = 7

--********ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--Ñ­»·ÈÎÎñµÄÊı¾İË÷Òı£¬ÀïÃæ´æ×ÅÒÑ×öµÄ»·Êı MD_MURENXIANG_HUAN
--g_MissionRound = 9
--**********************************ÒÔÉÏÊÇ¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210222_g_MissionName="H§u Hoa Viên"
x210222_g_MissionInfo="#{event_dali_0032}"  --ÈÎÎñÃèÊö
x210222_g_MissionTarget="Tiªn vào H§u Hoa Viên"	--ÈÎÎñÄ¿±ê
x210222_g_ContinueInfo="Tiªn vào H§u Hoa Viên"	--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x210222_g_MissionComplete="Nhi®m vø hoàn thành"	--Íê³ÉÈÎÎñnpcËµ»°µÄ»°
x210222_g_SignPost = {x = 435, z = 202, tip = "Hoàng Mi Tång"}
x210222_g_PetDataID=558	--ÈÎÎñ³èÎïµÄ±àºÅ

--½ÇÉ«Mission±äÁ¿ËµÃ÷
x210222_g_Param_huan		=0	--0ºÅ£ºÒÑ¾­Íê³ÉµÄ»·Êı£¬ÔÚ½ÓÊÕÈÎÎñÊ±ºò¸³Öµ
x210222_g_IsMissionOkFail	=1	--1ºÅ£ºµ±Ç°ÈÎÎñÊÇ·ñÍê³É(0Î´Íê³É£»1Íê³É)
x210222_g_Param_sceneid		=2	--2ºÅ£ºµ±Ç°¸±±¾ÈÎÎñµÄ³¡¾°ºÅ
x210222_g_Param_guid		=3	--3ºÅ£º½Ó¸±±¾ÈÎÎñÊ±ºòµÄÍæ¼ÒGUID
x210222_g_Param_killcount	=4	--4ºÅ£ºÉ±ËÀÈÎÎñ¹ÖµÄÊıÁ¿
x210222_g_Param_time		=5	--5ºÅ£ºÍê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»£ºÃë)
--6ºÅ£ºÎ´ÓÃ
--7ºÅ£ºÎ´ÓÃ

--ÈÎÎñ½±Àø
x210222_g_MoneyBonus=2

--MisDescEnd
--************************************************************************

x210222_g_CopySceneType=FUBEN_MURENXIANG_7	--¸±±¾ÀàĞÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x210222_g_LimitMembers=1			--¿ÉÒÔ½ø¸±±¾µÄ×îĞ¡¶ÓÎéÈËÊı
x210222_g_TickTime=5				--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x210222_g_LimitTotalHoldTime=360	--¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x210222_g_LimitTimeSuccess=500		--¸±±¾Ê±¼äÏŞÖÆ£¨µ¥Î»£º´ÎÊı£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x210222_g_CloseTick=6				--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x210222_g_NoUserTime=300			--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x210222_g_DeadTrans=0				--ËÀÍö×ªÒÆÄ£Ê½£¬0£ºËÀÍöºó»¹¿ÉÒÔ¼ÌĞøÔÚ¸±±¾£¬1£ºËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x210222_g_Fuben_X=44				--Tiªn vào ¸±±¾µÄÎ»ÖÃX
x210222_g_Fuben_Z=54				--Tiªn vào ¸±±¾µÄÎ»ÖÃZ
x210222_g_Back_X=275				--Ô´³¡¾°Î»ÖÃX
x210222_g_Back_Z=50					--Ô´³¡¾°Î»ÖÃZ
x210222_g_TotalNeedKill=0			--ĞèÒªÉ±ËÀ¹ÖÎïÊıÁ¿
x210222_g_MissionIdPre=701			--ĞèÒªÌáÇ°ÓµÓĞµÄÈÎÎñ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210222_OnDefaultEvent( sceneId, selfId, targetId )
	if IsHaveMission(sceneId,selfId,x210222_g_MissionId) > 0  then	--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁËÕâ¸öÈÎÎñ
		misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
		bDone = x210222_CheckSubmit( sceneId, selfId )
		if bDone==0 then						--ÈÎÎñÎ´Íê³É
			BeginEvent(sceneId)
				AddText(sceneId,x210222_g_MissionName)
				AddText(sceneId,"Thí chü ğã chu¦n b¸ xong chßa?")
				AddMoneyBonus( sceneId, x210222_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210222_g_ScriptId,x210222_g_MissionId)
		elseif bDone==1 then					--ÈÎÎñÒÑ¾­Íê³É
			BeginEvent(sceneId)
				AddText(sceneId,x210222_g_MissionName)
				AddText(sceneId,x210222_g_MissionComplete)
				--AddText(sceneId,"Äã½«µÃµ½£º")
				--AddMoneyBonus(sceneId,x210222_g_MoneyBonus)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x210222_g_ScriptId,x210222_g_MissionId,bDone)
		end
    elseif x210222_CheckAccept(sceneId,selfId) > 0 then		--Ã»ÓĞÈÎÎñ£¬Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210222_g_MissionName)
			AddText(sceneId,x210222_g_MissionInfo)
			--AddText(sceneId,"ÈÎÎñÄ¿±ê£º")
			--AddText(sceneId,x210222_g_MissionTarget)
			--AddText(sceneId,"Äã½«µÃµ½£º")
			--AddMoneyBonus(sceneId,x210222_g_MoneyBonus)
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210222_g_ScriptId,x210222_g_MissionId)
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210222_OnEnumerate( sceneId, selfId, targetId )
	if IsMissionHaveDone(sceneId,selfId,x210222_g_MissionId) > 0 then
		return
	end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210222_g_MissionId) > 0 then
		AddNumText(sceneId, x210222_g_ScriptId,x210222_g_MissionName,2,-1);
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210222_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210222_g_ScriptId,x210222_g_MissionName,1,-1);
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210222_CheckAccept( sceneId, selfId )
	if IsHaveMission(sceneId,selfId,x210222_g_MissionIdPre) <= 0    then
		return 0
	end

	local petcount = LuaFnGetPetCount(sceneId, selfId) --È¡µÃ³èÎïÊıÁ¿
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --È¡µÃ³èÎï±àºÅ
		if petdataid==x210222_g_PetDataID then
			return	0
		end
	end

	return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x210222_OnAccept( sceneId, selfId )

	local selfguid = LuaFnGetGUID( sceneId, selfId)

	if( IsHaveMission(sceneId,selfId,x210222_g_MissionId) > 0)  then	--ÒÑ¾­ÓĞÈÎÎñµÄ
		misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
		copysceneid = GetMissionParam( sceneId, selfId, misIndex, x210222_g_Param_sceneid)
		saveguid = GetMissionParam( sceneId, selfId, misIndex, x210222_g_Param_guid)

		if copysceneid>=0 and selfguid==saveguid then --½ø¹ı¸±±¾
			--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x210222_g_Fuben_X, x210222_g_Fuben_Z )
			else
				x210222_NotifyFailTips( sceneId, selfId, "Phø bän ğã ğóng, hãy hüy bö nhi®m vø r°i nh§n lÕi." )
			end
		else
			x210222_NotifyFailTips( sceneId, selfId, "Hãy nh§n lÕi nhi®m vø này" )
		end
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		if x210222_CheckAccept(sceneId,selfId) <= 0 then	--ÅĞ¶Ï½ÓÊÕÌõ¼ş
			return 0
		end

		--¸øÃ¿¸ö¶ÓÎé³ÉÔ±¼ÓÈëÈÎÎñ
		AddMission( sceneId, selfId, x210222_g_MissionId, x210222_g_ScriptId, 0, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, selfId, x210222_g_MissionId )

		--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉµÄÈÎÎñ
		SetMissionByIndex(sceneId,selfId,misIndex,x210222_g_IsMissionOkFail,0)

		--½«ÈÎÎñµÄµÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾µÄ³¡¾°ºÅ
		SetMissionByIndex(sceneId,selfId,misIndex,x210222_g_Param_sceneid,-1)

		--½«ÈÎÎñµÄµÚ3ºÅÊı¾İ¶ÓÎéºÅ
		SetMissionByIndex(sceneId,selfId,misIndex,x210222_g_Param_guid,selfguid)
		Msg2Player( sceneId, selfId,"#YNh§n nhi®m vø#W: H§u Hoa Viên",MSG2PLAYER_PARA )
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210222_g_SignPost.x, x210222_g_SignPost.z, x210222_g_SignPost.tip )
		x210222_MakeCopyScene( sceneId, selfId, 0 )
	end
end

--**********************************
--·ÅÆú
--**********************************
function x210222_OnAbandon( sceneId, selfId )
	misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x210222_g_Param_sceneid)
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210222_g_MissionId )

	if sceneId==copyscene then --Èç¹ûÔÚ¸±±¾ÀïÉ¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ğã kªt thúc cuµc thám hi¬m H§u hoa viên, hãy quay v« thành ĞÕi Lı!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

		NewWorld( sceneId, selfId, oldsceneId, x210222_g_Back_X, x210222_g_Back_Z )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x210222_MakeCopyScene( sceneId, selfId, nearmembercount )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, x210222_g_CopySceneMap); --µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x210222_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x210222_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x210222_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x210222_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, leaderguid); --±£´æÍæ¼ÒºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBossµÄÊıÁ¿
	LuaFnSetSceneLoad_Monster(sceneId, x210222_g_CopySceneMonster)	--7¼¶H§u Hoa Viên×½³è¸±±¾

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!");
			--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
			DelMission( sceneId, selfId, x210222_g_MissionId )
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--¼ÌĞø
--**********************************
function x210222_OnContinue( sceneId, selfId, targetId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x210222_g_Param_sceneid)>=1	then
		BeginEvent(sceneId)
			AddText(sceneId,x210222_g_MissionComplete);
		EndEvent(sceneId)
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x210222_g_ScriptId, x210222_g_MissionId)
	end

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210222_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210222_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--ÅĞ¶ÏÈÎÎñÊÇ·ñÒÑ¾­Íê³É
	misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x210222_g_IsMissionOkFail)>=1 then
		return	1
	else
		return	0
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210222_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x210222_CheckSubmit( sceneId, selfId, selectRadioId )>0 then		-- ÒÑ¾­Íê³ÉÈÎÎñÁË
		--Ìí¼ÓÈÎÎñ½±Àø
		money = x210222_g_MoneyBonus									-- *iDayHuan
		AddMoney(sceneId,selfId,money );

		BeginEvent(sceneId)
	  		AddText(sceneId,"Nhi®m vø hoàn thành")
	  	EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)

		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		DelMission( sceneId, selfId, x210222_g_MissionId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210222_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--Tiªn vào ÇøÓòÊÂ¼ş
--**********************************
function x210222_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210222_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x210222_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ĞĞÂß¼­µÄ×´Ì¬
		if IsHaveMission( sceneId, leaderObjId, x210222_g_MissionId ) > 0 then
			misIndex = GetMissionIndexByID( sceneId, leaderObjId, x210222_g_MissionId )

			--½«ÈÎÎñµÄµÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾µÄ³¡¾°ºÅ
			SetMissionByIndex( sceneId, leaderObjId, misIndex, x210222_g_Param_sceneid, destsceneId )

			NewWorld( sceneId, leaderObjId, destsceneId, x210222_g_Fuben_X, x210222_g_Fuben_Z )
		else
			x210222_NotifyFailTips( sceneId, leaderObjId, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
		end
	end
end

--**********************************
--ÓĞÍæ¼ÒTiªn vào ¸±±¾ÊÂ¼ş
--**********************************
function x210222_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x210222_g_MissionId ) == 0 then				--Èç¹ûTiªn vào ¸±±¾Ç°É¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
		x210222_NotifyFailTips( sceneId, selfId, "Các hÕ hi®n chßa nh§n nhi®m vø này, hãy quay v« thành ĞÕi Lı!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x210222_g_Back_X, x210222_g_Back_Z )
		return
	end

	--ÉèÖÃËÀÍöºó¸´»îµãÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x210222_g_Fuben_X, x210222_g_Fuben_Z );
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x210222_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x210222_OnCopySceneTimer( sceneId, nowTime )

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

		if leaveTickCount == x210222_g_CloseTick then --µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË´«ËÍ»ØÔ­À´Tiªn vào Ê±ºòµÄ³¡¾°
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x210222_g_Back_X, x210222_g_Back_Z )
			end

		elseif leaveTickCount<x210222_g_CloseTick then

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
	  		local strText = format("Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x210222_g_CloseTick-leaveTickCount)*x210222_g_TickTime )
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x210222_g_LimitTotalHoldTime then --¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆµÄÇé¿ö£¬µ±Ê±¼äµ½ºó´¦Àí...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x210222_g_MissionId );--ÈÎÎñÊ§°Ü,É¾³ıÖ®

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi®m vø th¤t bÕi, ğã hªt th¶i gian!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;
	end
end

function x210222_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent(sceneId)
		AddText(sceneId, Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
