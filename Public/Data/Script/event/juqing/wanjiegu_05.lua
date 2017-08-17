-- 

--¾çÇéÈÎÎñ
--Íò½Ù¹È,°×Ìì

-- TÕi »ªºÕôÞtoÕ ðµ °ïÖúÏÂ½øÈë°×ÌìÍò½Ù¹È,TÕi Íò½Ù¹ÈÖÐÕÒÈË´òÌýÐoàn DñtoÕ ðµ ÏûÏ¢.
-- ¶Ó³¤¿ÉÒÔ´ø×Ô¼ºtoÕ ðµ Ð¡¶ÓÈ¥Íê³ÉCái này ÈÎÎñ,Ö»Òª¶Ó³¤ÓÐCái này ÈÎÎñ¾Í¿ÉÒÔ,
-- Ðµi viên Ö»ÄÜ¶À×Ô½øÈë¸±±¾,µ¥¶ÀÍê³ÉCái này ÈÎÎñ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200005_g_ScriptId = 200005

-- ÈºÌå»¤ËÍtoÕ ðµ ¶ÓÎéId
x200005_g_Groupid = 0

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200005_g_CopySceneName = "VÕn Kiªp C¯c"

x200005_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200005_g_CopySceneMap = "wanjie.nav"
x200005_g_Exit = "wanjie.ini"
x200005_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x200005_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200005_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200005_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200005_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x200005_g_NoUserTime = 300				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x200005_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200005_g_Fuben_X = 108					--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x200005_g_Fuben_Z = 115					--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x200005_g_Back_X = 192					--Ô´³¡¾°Î»ÖÃX
x200005_g_Back_Z = 110					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200005_OnDefaultEvent( sceneId, selfId, targetId )
	
	-- ¸ù¾ÝÍæ¼ÒtoÕ ðµ Çé¿ö,½«Íæ¼ÒËÍµ½¸±±¾
	-- ÕâÀï¾Í²»TÕi ¼ì²âÁË,
	x200005_MakeCopyScene(sceneId, selfId)
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200005_OnEnumerate( sceneId, selfId, targetId )
	
	-- Èç¹û8Íê³ÉÁË,¾Í²»ÓÃÔÙ½øÐÐÅÐ¶¨ÁË,¶¼²»ÄÜ½øÈ¥
	if IsMissionHaveDone(sceneId, selfId, 8) > 0   then
		return 0
	end
	
	-- Íæ¼ÒTÕi Ê²Ã´Çé¿öÏÂ¿ÉÒÔ½øÈë¸±±¾,
	-- 1,ÓÐÈÎÎñ5¿ÉÒÔ½øÈ¥
	if IsHaveMission( sceneId, selfId, 5 ) > 0 then
		AddNumText( sceneId, x200005_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ngày)", 10 ,-1  )
		return 0
	end
	
	-- 2,ÓÐÈÎÎñ6¿ÉÒÔ½øÈ¥
	if IsHaveMission( sceneId, selfId, 6 ) > 0 then
		AddNumText( sceneId, x200005_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ngày)", 10 ,-1  )
		return 0
	end
	
	-- 3,ÓÐÈÎÎñ7¿ÉÒÔ½øÈ¥
	if IsHaveMission( sceneId, selfId, 7 ) > 0 then
		AddNumText( sceneId, x200005_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ngày)", 10 ,-1  )
		return 0
	end
	
	-- 4,ÓÐÈÎÎñ8¿ÉÒÔ½øÈ¥
	if IsHaveMission( sceneId, selfId, 8 ) > 0 then
		AddNumText( sceneId, x200005_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ngày)", 10 ,-1  )
		return 0
	end
	
	-- 5,Ö»ÒªÍê³ÉÁËÈÎÎñ5,Ã»ÓÐ6,7,8ÈÎÎñ,¶¼¿ÉÒÔ½øÈ¥
	if IsMissionHaveDone(sceneId, selfId, 5) > 0   then
		if IsHaveMission(sceneId, selfId, 6) < 1   then
			AddNumText( sceneId, x200005_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ngày)", 10 ,-1  )
			return 0
		end
		if IsHaveMission(sceneId, selfId, 7) < 1   then
			AddNumText( sceneId, x200005_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ngày)", 10 ,-1  )
			return 0
		end
		if IsHaveMission(sceneId, selfId, 8) < 1   then
			AddNumText( sceneId, x200005_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ngày)", 10 ,-1  )
			return 0
		end
	end
	
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200005_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÐúng·ñÒª½øÈë¸±±¾
--**********************************
function x200005_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200005_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200005_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200005_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "wanjie.nav"); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200005_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200005_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200005_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200005_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBosstoÕ ðµ ÊýÁ¿

	-- ¾çÇéÓÃµ½toÕ ðµ ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	--ÉèÖÃ³¡¾°ÖÐtoÕ ðµ ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, "wanjie_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "wanjie_monster.ini" )

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
function x200005_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾toÕ ðµ ¹æÔò
	-- 1,Èç¹ûCái này ÎÄ¼þÃ»ÓÐ×é¶Ó,¾Í´«ËÍCái này ÎÄ¼þ×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,µ«ÐúngÍæ¼Ò²»Ðúng¶Ó³¤,¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3,Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,²¢ÇÒCái này Íí¼äÐúng¶Ó³¤,¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑmµt Æð½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;	
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
		return
	end
	
	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓÐ¶ÓÎé
		NewWorld( sceneId, leaderObjId, destsceneId, x200005_g_Fuben_X, x200005_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200005_g_Fuben_X, x200005_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				
				NewWorld( sceneId, mems[i], destsceneId, x200005_g_Fuben_X, x200005_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x200005_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x200005_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200005_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓÐThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200005_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x200005_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200005_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200005_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200005_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200005_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200005_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x200005_OnCopySceneTimer( sceneId, nowTime )
	-- ¾çÇé1,ÈºÌå»¤ËÍ,
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)

	local nJuqingStep = LuaFnGetCopySceneData_Param(sceneId, 11)
	local targetId = LuaFnGetCopySceneData_Param(sceneId, 12)
	
	if nJuqingStep == 1  then
		LuaFnSetCopySceneData_Param(sceneId, 11, 2)
		for i=0, 	nHumanNum-1  do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			
			-- µ÷ÓÃ½ÓÈÎÎñtoÕ ðµ Óï¾ä
			CallScriptFunction((200007), "OnDefaultEvent",sceneId, nHumanId, targetId )
		end
		LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		CallScriptFunction((200060), "Duibai",sceneId, "Ðoàn Chính Thu¥n", "VÕn Kiªp C¯c", "#{juqing_start_004}" )
		
	elseif nJuqingStep == 2  then
		-- Ðoàn Chính Thu¥ntoÕ ðµ º°»°
		CallScriptFunction((200060), "Duibai",sceneId, "Ðoàn Chính Thu¥n", "VÕn Kiªp C¯c", "#{juqing_start_005}" )
		LuaFnSetCopySceneData_Param(sceneId, 11, 3)

	elseif nJuqingStep == 3  then
	
		CallScriptFunction((200060), "Duibai",sceneId, "Ðoàn Chính Thu¥n", "VÕn Kiªp C¯c", "#{juqing_start_006}" )
	
		-- ±ØÐëTÕi ÕâÀïÏÈÇåÀíCái này ¶ÓÎéÊý¾Ý
		ReleaseMonsterGroup(sceneId, x200005_g_Groupid)
		
		--local groupId = AllocateMonsterGroup(sceneId)
		local nFanyi
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "PhÕm Hoa"  then
				AddGroupLeader(sceneId, x200005_g_Groupid, nMonsterId) --leader
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				nFanyi = nMonsterId
			end
			if GetName(sceneId, nMonsterId)  == "Cao Thång Thái"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 2, 1)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)

			end
			if GetName(sceneId, nMonsterId)  == "Ðao BÕch Phøng"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 1, 2)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "ChØ VÕn Lý"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 0, 2)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "Ðoàn Chính Thu¥n"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 1, 0)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "Thôi Bách Tuy«n"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 2, 0)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "Quá NgÕn Chi"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 2, 2)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "C± Ð¯c Thành"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 3, 0)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
			if GetName(sceneId, nMonsterId)  == "Phó Tß Quy"  then
				AddGroupMember(sceneId, x200005_g_Groupid, nMonsterId, 3, 2)
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
			end
		end
		
		SetIntervalDistOfGroupMember(sceneId, x200005_g_Groupid, 1)
	
		-- ði¬mµ½»¤ËÍÑ²ÂßÂ·Ïß
		SetPatrolId(sceneId, nFanyi, 0)
		RefixPosOfGroupMember(sceneId,x200005_g_Groupid,targetId)
		LuaFnSetCopySceneData_Param(sceneId, 11, 4)
		
	elseif nJuqingStep == 4  then
		-- ÅÐ¶ÏNPCÐúng²»ÐúngÒÑ¾­µ½´ïÁË
		local targetX, targetZ = GetWorldPos(sceneId, targetId)
		local patrolPathIndex = 0
		local x, z = GetLastPatrolPoint(sceneId, patrolPathIndex)
		local distance2 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
		if distance2 <= 5 then
			LuaFnSetCopySceneData_Param(sceneId, 11, 5)
			
			-- Í¨Öª¸±±¾ÄÚtoÕ ðµ ËùÓÐÈË,¾çÇéÍê³É
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			  BeginEvent(sceneId)
			  	AddText(sceneId, "Hoàn thành tình tiªt \"ÐÕi tiªn quân\"")
			  EndEvent()
			  DispatchMissionTips(sceneId, nHumanId)
			  
			  -- ¸øÓÐCái này ÈÎÎñtoÕ ðµ ÈË¼ÓÉÏÍê³É±êÖ¾
			  if IsHaveMission(sceneId, nHumanId, 7) > 0 then
					local misIndex = GetMissionIndexByID(sceneId,nHumanId,7)
					SetMissionByIndex( sceneId, nHumanId, misIndex, 0, 1)
					SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
			  end
			end
			
			-- ÉèËùÓÐÈËÄÜ¶Ô»°
			local nMonsterNum = GetMonsterCount(sceneId)
			local jj = 0
			for jj=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,jj)
				if GetName(sceneId, nMonsterId)  == "PhÕm Hoa"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Cao Thång Thái"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Ðao BÕch Phøng"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "ChØ VÕn Lý"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Ðoàn Chính Thu¥n"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Thôi Bách Tuy«n"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Quá NgÕn Chi"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "C± Ð¯c Thành"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
				if GetName(sceneId, nMonsterId)  == "Phó Tß Quy"  then
					SetConvoyNPC(sceneId, nMonsterId, 0)
				end
			end
			CallScriptFunction((200060), "Duibai",sceneId, "Ðoàn Chính Thu¥n ", "VÕn Kiªp C¯c", "Hoàng huynh, chúng ta t¾i cÑu Dñ Nhi ðây!" )
		end
		
	elseif nJuqingStep == 5  then
		--PrintNum(4)
	end
end

