--¾çÇéÈÎÎñ
--Íò½Ù¹È,Ò¹¼ä

-- TÕi »ªºÕôÞtoÕ ðµ °ïÖúÏÂ½øÈëÍò½Ù¹È,TÕi Íò½Ù¹ÈÖÐÕÒÈË´òÌýÐoàn DñtoÕ ðµ ÏûÏ¢.
-- ¶Ó³¤¿ÉÒÔ´ø×Ô¼ºtoÕ ðµ Ð¡¶ÓÈ¥Íê³ÉCái này ÈÎÎñ,Ö»Òª¶Ó³¤ÓÐCái này ÈÎÎñ¾Í¿ÉÒÔ,
-- Ðµi viên Ö»ÄÜ¶À×Ô½øÈë¸±±¾,µ¥¶ÀÍê³ÉCái này ÈÎÎñ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200001_g_ScriptId = 200001

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200001_g_CopySceneName = "VÕn Kiªp C¯c"

x200001_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200001_g_CopySceneMap = "wanjie_1.nav"
x200001_g_Exit = "wanjie_1.ini"
x200001_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x200001_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200001_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200001_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200001_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x200001_g_NoUserTime = 300				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x200001_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200001_g_Fuben_X = 108					--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x200001_g_Fuben_Z = 115					--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x200001_g_Back_X = 192					--Ô´³¡¾°Î»ÖÃX
x200001_g_Back_Z = 110					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200001_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾ÝÍæ¼ÒtoÕ ðµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ðµ ¸±±¾
	x200001_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200001_OnEnumerate( sceneId, selfId, targetId )
	-- 0,Èç¹ûÍæ¼ÒÒÑ¾­ÓÐ4ÈÎÎñ,¾Í²»ÄÜTÕi ½øÈëCái này ¸±±¾
	if IsHaveMission( sceneId, selfId, 4 ) > 0 then
		return 0
	end
	if IsMissionHaveDone(sceneId, selfId, 4) > 0   then
		return 0
	end

	-- 1,ÓµÓÐÈÎÎñºÅÎª2toÕ ðµ ÈÎÎñ,
	if IsHaveMission( sceneId, selfId, 2 ) > 0 then
		AddNumText( sceneId, x200001_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ðêm)", 10 ,-1  )
		return 0
	end

	-- 2,Ö»ÒªÍæ¼ÒÓÐ3ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 3 ) > 0 then
		AddNumText( sceneId, x200001_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ðêm)", 10 ,-1  )
		return 0
	end
	
	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË2,Ã»ÓÐ3,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 2) > 0   then
		if IsHaveMission( sceneId, selfId, 3 ) < 1 then
			AddNumText( sceneId, x200001_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ðêm)", 10 ,-1  )
			return 0
		end
	end
	
	-- 4,Èç¹ûÍæ¼ÒÍê³ÉÁË3,µ«ÐúngÃ»ÓÐ4,Ò²Ðúng¿ÉÒÔ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 3) > 0   then
		if IsHaveMission( sceneId, selfId, 4 ) < 1 then
			AddNumText( sceneId, x200001_g_ScriptId, "Hãy ðßa ta t¾i VÕn Kiªp C¯c (ðêm)", 10 ,-1  )
			return 0
		end
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200001_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÐúng·ñÒª½øÈë¸±±¾
--**********************************
function x200001_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200001_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200001_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200001_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "wanjie_1.nav"); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200001_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200001_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200001_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200001_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
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
	LuaFnSetSceneLoad_Area( sceneId, "wanjie_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "wanjie_1_monster.ini" )

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
function x200001_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾toÕ ðµ ¹æÔò
	-- 1,Èç¹ûCái này ÎÄ¼þÃ»ÓÐ×é¶Ó,¾Í´«ËÍCái này ÎÄ¼þ×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,µ«ÐúngÍæ¼Ò²»Ðúng¶Ó³¤,¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3,Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,²¢ÇÒCái này Íí¼äÐúng¶Ó³¤,¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑmµt Æð½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
		return
	end
	
	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓÐ¶ÓÎé
		NewWorld( sceneId, leaderObjId, destsceneId, x200001_g_Fuben_X, x200001_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200001_g_Fuben_X, x200001_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				
				NewWorld( sceneId, mems[i], destsceneId, x200001_g_Fuben_X, x200001_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x200001_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x200001_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200001_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓÐThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200001_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x200001_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200001_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200001_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200001_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200001_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200001_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x200001_OnCopySceneTimer( sceneId, nowTime )
--PrintNum(111)
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) --¿ØÖÆËµ»°
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9)	--Ê±¼ä
	-- paopao 
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) --¿ØÖÆËµ¹ý»°
	
	-- Î¢Ð¦Ö®ÂÃ »¤ËÍÍê³Éºó 
	if nStep1==1 then

		if nStep2==0    	then
			CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "VÕn Kiªp C¯c", "#{JQ_PaoPao_66}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==1  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end

		elseif nStep2==2    	then
			CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "VÕn Kiªp C¯c", "#{JQ_PaoPao_67}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		end
	end

	local nJuqingStep = LuaFnGetCopySceneData_Param(sceneId, 11)
	local targetId = LuaFnGetCopySceneData_Param(sceneId, 12)
	if nJuqingStep == 1  then
		LuaFnSetCopySceneData_Param(sceneId, 11, 2)
		for i=0, 	nHumanNum-1  do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			
			-- µ÷ÓÃ½ÓÈÎÎñtoÕ ðµ Óï¾ä
			CallScriptFunction((200003), "OnDefaultEvent",sceneId, nHumanId, targetId )
		end
		LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		-- TÕi ÕâÀïÌí¼Ómµt Ð©NPCtoÕ ðµ paopao,Ê¹ ði¬m¾çÇé¿´ÉÏÈ¥¸ü¼ÓÏÎ½Ómµt Ð©
		CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "VÕn Kiªp C¯c", "#{juqing_start_001}")
		LuaFnSetCopySceneData_Param(sceneId, 11, 3)
		
		--elseif nJuqingStep == 2  then

	elseif nJuqingStep == 3  then
		
		-- TÕi ÕâÀïÌí¼Ómµt Ð©NPCtoÕ ðµ paopao,Ê¹ ði¬m¾çÇé¿´ÉÏÈ¥¸ü¼ÓÏÎ½Ómµt Ð©
		CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "VÕn Kiªp C¯c", "#{juqing_start_002}")
		LuaFnSetCopySceneData_Param(sceneId, 11, 4)

	elseif nJuqingStep == 4  then
		
		-- TÕi ÕâÀïÌí¼Ómµt Ð©NPCtoÕ ðµ paopao,Ê¹ ði¬m¾çÇé¿´ÉÏÈ¥¸ü¼ÓÏÎ½Ómµt Ð©
		CallScriptFunction((200060), "Paopao",sceneId, "Chung Linh", "VÕn Kiªp C¯c", "#{juqing_start_003}")
		LuaFnSetCopySceneData_Param(sceneId, 11, 5)
		
	elseif nJuqingStep == 5  then
		-- µ÷ÕûNpcÊôÐÔ,ÕóÓª
		SetUnitReputationID(sceneId, selfId, targetId, 0)
		SetMonsterFightWithNpcFlag(sceneId, targetId, 1)

		SetPatrolId(sceneId, targetId, 0)
		LuaFnSetCopySceneData_Param(sceneId, 11, 6)
		
	elseif nJuqingStep == 6  then  --¼ì²â»¤ËÍ¶ÔÏóÐúng²»Ðúngµ½ÁË
		local targetX, targetZ = GetWorldPos(sceneId, targetId)
		local patrolPathIndex = 0
		local x, z = GetLastPatrolPoint(sceneId, patrolPathIndex)
		local distance2 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
		if distance2 <= 1 then
			LuaFnSetCopySceneData_Param(sceneId, 11, 7)
			
			-- Í¨Öª¸±±¾ÄÚtoÕ ðµ ËùÓÐÈË,¾çÇéÍê³É
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			  BeginEvent(sceneId)
			  	AddText(sceneId, "Nhi®m vø hoàn thành: \"Vi Tiªu Chi Læ\"")
			  EndEvent()
			  DispatchMissionTips(sceneId, nHumanId)
			  
			  -- ¸øÓÐCái này ÈÎÎñtoÕ ðµ ÈË¼ÓÉÏÍê³É±êÖ¾
			  if IsHaveMission(sceneId, nHumanId, 3) > 0 then
					local misIndex = GetMissionIndexByID(sceneId,nHumanId,3)
					SetMissionByIndex( sceneId, nHumanId, misIndex, 0, 1)
					SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
			  end
			end
			LuaFnSetCopySceneData_Param(sceneId, 8, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		end
	end
end

