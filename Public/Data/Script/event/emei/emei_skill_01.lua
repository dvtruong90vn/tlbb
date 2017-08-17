-- ¸±±¾ÈÎÎñ  »ØÂíÇ¹
-- Íæ¼ÒµÈ¼¶´óÓÚµÈÓÚ20¼¶£¬Íê³É¡°ÈıÈËÍ¬ĞĞ¡±£¬¶Ó³¤ÇÒ¶ÓÎéÖĞÖÁÉÙÈıÈË¡£


--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x212116_g_ScriptId = 212116

x212116_g_PreMissionId = 921

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x212116_g_CopySceneName = "Chş phiên"

x212116_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàĞÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ

x212116_g_CopySceneMap = "jishi.nav"
x212116_g_LimitMembers = 3				--¿ÉÒÔ½ø¸±±¾µÄ×îĞ¡¶ÓÎéÈËÊı
x212116_g_TickTime = 5					--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x212116_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x212116_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ£¨µ¥Î»£º´ÎÊı£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x212116_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x212116_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x212116_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½£¬0£ºËÀÍöºó»¹¿ÉÒÔ¼ÌĞøÔÚ¸±±¾£¬1£ºËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x212116_g_Fuben_X = 40					--½øÈë¸±±¾µÄÎ»ÖÃX
x212116_g_Fuben_Z = 44					--½øÈë¸±±¾µÄÎ»ÖÃZ
x212116_g_Back_X = 105					--Ô´³¡¾°Î»ÖÃX
x212116_g_Back_Z = 112					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x212116_OnDefaultEvent( sceneId, selfId, targetId )
	-- ½øÈëÌõ¼ş£¬×Ô¼ºÊÇ¶Ó³¤£¬±ØĞë3ÈË£¬
	--1£¬¼ì²â×Ô¼ºÊÇ²»ÊÇÔÚ¶ÓÎéÖĞ
	if GetTeamSize(sceneId,selfId) < 3  then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n tiªn vào bän sao này, các hÕ c¥n mµt nhóm có ít nh¤t 3 ngß¶i, h½n næa thành viên trong nhóm c¥n có t±ng cµng ít nh¤t 3 ngß¶i · g¥n, các hÕ còn c¥n là nhóm trß·ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNearTeamCount(sceneId,selfId) < 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n tiªn vào bän sao này, các hÕ c¥n mµt nhóm có ít nh¤t 3 ngß¶i, h½n næa thành viên trong nhóm c¥n có t±ng cµng ít nh¤t 3 ngß¶i · g¥n, các hÕ còn c¥n là nhóm trß·ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNearTeamCount(sceneId,selfId) < 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n tiªn vào bän sao này, các hÕ c¥n mµt nhóm có ít nh¤t 3 ngß¶i, h½n næa thành viên trong nhóm c¥n có t±ng cµng ít nh¤t 3 ngß¶i · g¥n, các hÕ còn c¥n là nhóm trß·ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"Mu¯n tiªn vào bän sao này, các hÕ c¥n mµt nhóm có ít nh¤t 3 ngß¶i, h½n næa thành viên trong nhóm c¥n có t±ng cµng ít nh¤t 3 ngß¶i · g¥n, các hÕ còn c¥n là nhóm trß·ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	x212116_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x212116_OnEnumerate( sceneId, selfId, targetId )
	
	-- ½øÈë¸±±¾µÄÌõ¼ş£¬Íæ¼ÒµÈ¼¶´óÓÚ20£¬Íæ¼ÒÍê³ÉÁËÈÎÎñ 
	if IsHaveMission( sceneId, selfId, x212116_g_PreMissionId ) > 0 then
		AddNumText( sceneId, x212116_g_ScriptId, "Ğßa tÕi hÕ ğªn chş", 10 ,-1 )
	end
	
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x212116_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÊÇ·ñÒª½øÈë¸±±¾
--**********************************
function x212116_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--½ÓÊÜ
--**********************************
function x212116_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x212116_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x212116_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "jishi.nav"); --µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x212116_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x212116_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x212116_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x212116_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBossµÄÊıÁ¿
	
	-- ¾çÇéÓÃµ½µÄ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	--ÉèÖÃ³¡¾°ÖĞµÄ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, "jishiemeimis_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "jishiemeimis_monster.ini" )

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
--¸±±¾ÊÂ¼ş
--**********************************
function x212116_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾µÄ¹æÔò
	-- 1£¬Èç¹ûÕâ¸öÎÄ¼şÃ»ÓĞ×é¶Ó£¬¾Í´«ËÍÕâ¸öÎÄ¼ş×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓĞ¶ÓÎé£¬µ«ÊÇÍæ¼Ò²»ÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3£¬Èç¹ûÍæ¼ÒÓĞ¶ÓÎé£¬²¢ÇÒÕâ¸öÍí¼äÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑÒ»Æğ½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­µÄ×´Ì¬
		return
	end

	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÓĞ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓĞ¶ÓÎé
		return
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x212116_g_Fuben_X, x212116_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x212116_g_Fuben_X, x212116_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x212116_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x212116_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x212116_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç£¬Ö»ÓĞ³ÇÊĞÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x212116_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌĞø
--**********************************
function x212116_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x212116_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x212116_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212116_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x212116_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212116_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x212116_OnCopySceneTimer( sceneId, nowTime )
	--¼ì²â¸±±¾ÖĞµÄ¹ÖÊÇ²»ÊÇÉ±¹â£¬É±¹â×Ô¶¯´«Íæ¼Ò³ö¸±±¾
	
	
end



