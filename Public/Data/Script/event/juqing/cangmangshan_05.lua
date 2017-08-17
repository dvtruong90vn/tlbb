--200034
--TÕi NhÕn Nam Ò®ÂÉÄª¸çtoÕ ðµ °ï×éÏÂ,½øÈë°×ÌìtoÕ ðµ ²ÔÃ£É½

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200034_g_ScriptId = 200034

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200034_g_CopySceneName = "Thß½ng Mang S½n"

x200034_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200034_g_CopySceneMap = "cangmang.nav"
x200034_g_Exit = "cangmang.ini"
x200034_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x200034_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200034_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200034_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200034_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x200034_g_NoUserTime = 300				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x200034_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200034_g_Fuben_X = 102					--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x200034_g_Fuben_Z = 19					--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x200034_g_Back_X = 66					--Ô´³¡¾°Î»ÖÃX
x200034_g_Back_Z = 56					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200034_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾ÝÍæ¼ÒtoÕ ðµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ðµ ¸±±¾
	x200034_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200034_OnEnumerate( sceneId, selfId, targetId )
	
	--Íê¼ÒÄÜ¹»½øÈëÒ¹¼ätoÕ ðµ ¸±±¾toÕ ðµ Ç°ÌáÌõ¼þ
--	-- 0,Èç¹ûÍæ¼ÒÒÑ¾­ÓÐ32ÈÎÎñ,¾Í²»ÄÜTÕi ½øÈëCái này ¸±±¾
	if IsMissionHaveDone(sceneId, selfId, 32) > 0   then
		return 0
	end

	-- 1,ÓµÓÐÈÎÎñºÅÎª29toÕ ðµ ÈÎÎñ,
	if IsHaveMission( sceneId, selfId, 29 ) > 0 then
		AddNumText( sceneId, x200034_g_ScriptId, "Ðªn Thß½ng Mang S½n (ngày)", 10 ,-1  )
		return 0
	end

	-- 2,Ö»ÒªÍæ¼ÒÓÐ30ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 30 ) > 0 then
		AddNumText( sceneId, x200034_g_ScriptId, "Ðªn Thß½ng Mang S½n (ngày)", 10 ,-1  )
		return 0
	end
	-- 3,Ö»ÒªÍæ¼ÒÓÐ31ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 31 ) > 0 then
		AddNumText( sceneId, x200034_g_ScriptId, "Ðªn Thß½ng Mang S½n (ngày)", 10 ,-1  )
		return 0
	end
	
	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË29,Ã»ÓÐ30,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 29) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 30) < 1   then
			if IsHaveMission( sceneId, selfId, 30 ) < 1 then
				AddNumText( sceneId, x200034_g_ScriptId, "Ðªn Thß½ng Mang S½n (ngày)", 10 ,-1  )
				return 0
			end
		end
	end

	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË29,Ã»ÓÐ30,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 29) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 31) < 1   then
			if IsHaveMission( sceneId, selfId, 31 ) < 1 then
				AddNumText( sceneId, x200034_g_ScriptId, "Ðªn Thß½ng Mang S½n (ngày)", 10 ,-1  )
				return 0
			end
		end
	end
	
	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË29,Ã»ÓÐ30,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 29) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 32) < 1   then
			if IsHaveMission( sceneId, selfId, 32 ) < 1 then
				AddNumText( sceneId, x200034_g_ScriptId, "Ðªn Thß½ng Mang S½n (ngày)", 10 ,-1  )
				return 0
			end
		end
	end
	
	-- ÓÐ32,¿ÉÒÔ½øÈë
	if IsHaveMission( sceneId, selfId, 32 ) > 0 then
		AddNumText( sceneId, x200034_g_ScriptId, "Ðªn Thß½ng Mang S½n (ngày)", 10 ,-1  )
		return 0
	end
	
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200034_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÐúng·ñÒª½øÈë¸±±¾
--**********************************
function x200034_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200034_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200034_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200034_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "cangmang.nav"); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200034_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200034_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200034_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200034_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
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
	LuaFnSetSceneLoad_Area( sceneId, "cangmang_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "cangmang_monster.ini" )

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
function x200034_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200034_g_Fuben_X, x200034_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200034_g_Fuben_X, x200034_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x200034_g_Fuben_X, x200034_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x200034_OnPlayerEnter( sceneId, selfId )
	-- Íæ¼Ò½øÈë³¡¾°ºó,C¥n ¸üÐÂ³¡¾°ÖÐtoÕ ðµ ËùÓÐÊý¾Ý
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x200034_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200034_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓÐThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200034_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x200034_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200034_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200034_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200034_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200034_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200034_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x200034_OnCopySceneTimer( sceneId, nowTime )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1    then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId, 0)
	
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) ;--¿ØÖÆËµ»°
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9);--Ê±¼ä
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) ;--¿ØÖÆËµ¹ý»°

	-- paopao 
	local nStep3 = LuaFnGetCopySceneData_Param(sceneId, 11) ;--¿ØÖÆËµ¹ý»°
	
	-- ¶Ô°×
	local nStep4 = LuaFnGetCopySceneData_Param(sceneId, 12) ;--¿ØÖÆËµ¹ý»°
	local nStep5 = LuaFnGetCopySceneData_Param(sceneId, 13) ;--¿ØÖÆËµ¹ý»°
	local nStep6 = LuaFnGetCopySceneData_Param(sceneId, 14) ;--¿ØÖÆËµ¹ý»°
	local nStep7 = LuaFnGetCopySceneData_Param(sceneId, 15) ;--¿ØÖÆËµ¹ý»°

	--
	local nStep8 = LuaFnGetCopySceneData_Param(sceneId, 20) ;--¿ØÖÆËµ¹ý»°
	
	-- µÚmµt ¶Î¾çÇé,´´½¨³þÍõ,°´ÕÕÂ·ÏßÐÐ×ß
	if nStep1 == 1  then
		
		-- TÕi 75,115 ´´½¨ ³þÍõ 406 Åä¸øÑ²ÂßÂ·Ïß
		-- ÏÈ¿´³¡¾°ÖÐÐúng²»ÐúngÒÑ¾­ÓÐ³þÍõÁË
		local nMonsterNum = GetMonsterCount(sceneId)
		local nMonster = {}
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Gia Lu§t Niªt L² C±"  then
				bHaveMonster = 1
			end
		end
		
		if bHaveMonster ~= 1  then
			local nNpcId = LuaFnCreateMonster(sceneId, 406, 75, 115, 1, 0, -1)
			SetCharacterName(sceneId, nNpcId, "Gia Lu§t Niªt L² C±")
			SetCharacterTitle(sceneId, nNpcId, "S· Vß½ng")
			SetPatrolId(sceneId, nNpcId, 0)
			
			SetUnitReputationID(sceneId, selfId, nNpcId, 18)
			SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
		end
		
		CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu§t Niªt L² C±", "Thß½ng Mang S½n ", "#{JQ_DB_0015}" )
		CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu§t Niªt L² C±", "Thß½ng Mang S½n ", "#{JQ_DB_0016}" )
		
		LuaFnSetCopySceneData_Param(sceneId, 8, 2)
	end
	
	if nStep1 == 3  then
		-- ¼ì²â³¡¾°ÖÐÐúng²»ÐúngÓÐ³þÍõ,Èç¹ûÃ»ÓÐ,C¥n ·Åmµt cái³öÀ´Íê³É¾çÇé
		local nMonsterNum = GetMonsterCount(sceneId)
		local nMonster = {}
		local ii = 0
		local bHaveMonster1 = 0
		local bHaveMonster2 = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Gia Lu§t Niªt L² C±"  then
				bHaveMonster1 = 1
			end
			if GetName(sceneId, nMonsterId)  == "Gia Lu§t Trùng Nguyên"  then
				bHaveMonster2 = 1
			end
		end
		
		if bHaveMonster1 ~= 1  then
			local nNpcId = LuaFnCreateMonster(sceneId, 406, 77, 44, 1, 0, -1)
			SetCharacterName(sceneId, nNpcId, "Gia Lu§t Niªt L² C±")
			SetCharacterTitle(sceneId, nNpcId, "S· Vß½ng")
			SetUnitReputationID(sceneId, selfId, nNpcId, 18)
			SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
		end

		if bHaveMonster2 ~= 1  then
			local nNpcId1 = LuaFnCreateMonster(sceneId, 422, 45, 105, 1, 0, -1)
			SetCharacterName(sceneId, nNpcId1, "Gia Lu§t Trùng Nguyên")
			SetCharacterTitle(sceneId, nNpcId1, "Hoàng Thái Thúc")
		end
		
		LuaFnSetCopySceneData_Param(sceneId, 8, 4)
	end
	
	-- Íæ¼Ò½øÈëµÚmµt cáiÇøÓò,C¥n ÈÃ³þÍõÅÜ,Tiêu Phong×·
	if nStep1 == 5  then
		local nMonsterNum = GetMonsterCount(sceneId)
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Gia Lu§t Niªt L² C±"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 18)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)

				-- ³þÍõTÕi ¸Ä±äÕóÓª¿ÉÒÔ¹¥»÷ºó,°´ÕÕ2ºÅÂ·ÏßÍù»ØÅÜ,
				SetPatrolId(sceneId, nMonsterId, 2)
			end
			
			if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
				-- Í¬Ê±Tiêu Phong°´ÕÕ3ºÅÂ·ÏßÅÜ,
				SetPatrolId(sceneId, nMonsterId, 1)
				-- ¸øTiêu PhongÉèÖÃÕóÓªÎª0
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				SetNPCAIType(sceneId, nMonsterId, 0)
			end
		end
		
		LuaFnSetCopySceneData_Param(sceneId, 8, 6)
	end
	
	if nStep1 == 6  then
		if nStep8 == 0  then
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{juqing_start_010}" )
			LuaFnSetCopySceneData_Param(sceneId, 20, 1)
			
		elseif nStep8 == 1  then
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{juqing_start_011}" )
			LuaFnSetCopySceneData_Param(sceneId, 20, 2)
			
		elseif nStep8 == 2  then
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{juqing_start_012}" )
			LuaFnSetCopySceneData_Param(sceneId, 20, 3)
			
		end
		
		-- ¼ì²â³þÍõÐúng²»Ðúng±»É±ËÀ,Èç¹ûÉ±ËÀ,¸øËùÓÐtoÕ ðµ ÈË¼ì²â±äÁ¿
		local nMonsterNum = GetMonsterCount(sceneId)
		local bHaveChuwang = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Gia Lu§t Niªt L² C±"  then
				bHaveChuwang = 1
				break
			end
		end
		
		if bHaveChuwang == 0    then
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			  
			  -- ¸øÓÐCái này ÈÎÎñtoÕ ðµ ÈË¼ÓÉÏÍê³É±êÖ¾
			  if IsHaveMission(sceneId, nHumanId, 31) > 0 then
			  	
					local misIndex = GetMissionIndexByID(sceneId,nHumanId,31)
			  	if GetMissionParam(sceneId,nHumanId, misIndex, 1) < 1  then
			  
						SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
					  BeginEvent(sceneId)
					  	AddText(sceneId, "Ðã giªt chªt S· Vß½ng: 1/1")
					  EndEvent()
					  DispatchMissionTips(sceneId, nHumanId)
						--SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
					end
			  end
			end
			LuaFnSetCopySceneData_Param(sceneId, 8, 7)
		end
	end		
	
	if nStep1 == 7  then
		-- ¼ì²âÐúng²»ÐúngÓÐÈË½øÈëÁËÊÂ¼þÇøÓò
		local left=39
		local right=52
		local top=101
		local bottom=111
		for i=0, 	nHumanNum-1  do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			local nHumanX, nHumanZ = GetWorldPos(sceneId, nHumanId)
			if nHumanX >= left and nHumanX <= right  and  nHumanZ >= top and nHumanZ <= bottom    then
				LuaFnSetCopySceneData_Param(sceneId, 8, 8)
				
				break
			end
		end
		
	end

	-- Íæ¼Ò½øÈëµÚ¶þcáiÇøÓò,Tiêu Phong³öÏÖ,
	if nStep1 == 8  then
		local nMonsterNum = GetMonsterCount(sceneId)
		local bHave = 0
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			
			if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
				-- É¾³ýTiêu Phong
				LuaFnDeleteMonster(sceneId, nMonsterId)
				--TÕi ÐÂtoÕ ðµ Î»ÖÃ´´½¨Ä£ÐÍ
				local nNpcId = LuaFnCreateMonster(sceneId, 423, 50,106, 0, 0, 120007)
				SetUnitReputationID(sceneId, selfId, nNpcId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 0)
				SetCharacterName(sceneId, nNpcId, "Tiêu Phong")
				SetNPCAIType(sceneId, nNpcId, 7)
			end
			
			if GetName(sceneId, nMonsterId)  == "Gia Lu§t Trùng Nguyên"  then
				-- Ò®ÂÉÖØÔª
				LuaFnDeleteMonster(sceneId, nMonsterId)
			end
			
			if GetName(sceneId, nMonsterId)  == "Gia Lu§t Niªt L² C±"  then
				-- Ò®ÂÉÖØÔª
				LuaFnDeleteMonster(sceneId, nMonsterId)
			end
			
			-- ËùÓÐtoÕ ðµ Ê¿±øÏÖTÕi ±ä³É²»¿ÉCuµc chiªn 
			if GetName(sceneId, nMonsterId)  == "Thü v® Tây s½n kh¦u"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
			end
			if GetName(sceneId, nMonsterId)  == "S· Vß½ng tinh anh v® sÛ"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
			end
			if GetName(sceneId, nMonsterId)  == "Thü v® Ðông s½n kh¦u"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
			end
			if GetName(sceneId, nMonsterId)  == "Thü v® Hoàng thái thúc"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
			end
			
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			  
			  -- ¸øÓÐCái này ÈÎÎñtoÕ ðµ ÈË¼ÓÉÏÍê³É±êÖ¾
			  if IsHaveMission(sceneId, nHumanId, 31) > 0 then
					local misIndex = GetMissionIndexByID(sceneId,nHumanId,31)
					if GetMissionParam(sceneId,nHumanId, misIndex, 2) < 1  then
						BeginEvent(sceneId)
				  		AddText(sceneId, "Ðã vào ngân kh¯ riêng cüa Hoàng Thái Thúc: 1/1")
				 		EndEvent()
				 	  DispatchMissionTips(sceneId, nHumanId)
						SetMissionByIndex( sceneId, nHumanId, misIndex, 2, 1)
						SetMissionByIndex( sceneId, nHumanId, misIndex, 0, 1)
					end
			  end
			  
			end
			--SetMissionByIndex(sceneId,selfId,misIndex,0,1)
			
			-- ¾çÇéº°»°
			--LuaFnSetCopySceneData_Param(sceneId, 8, 4)
			--LuaFnSetCopySceneData_Param(sceneId, 13, 0)
			--LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
		end

		LuaFnSetCopySceneData_Param(sceneId, 8, 9)
	end
	
	-- Áù¾ü±ÙÒ× »¤ËÍtoÕ ðµ Æô¶¯
	if nStep1 == 10  then
		local nMonsterNum = GetMonsterCount(sceneId)
		if nStep2 == 1  then
			--PrintNum(10)
			-- Í¨Öª±ðtoÕ ðµ Íæ¼Ò½ÓCái này ÈÎÎñ
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				-- µ÷ÓÃ½ÓÈÎÎñtoÕ ðµ Óï¾ä
				
				--  ðÕt ðßþcTiêu PhongtoÕ ðµ Id
				local targetId=0
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
						targetId = nMonsterId
					end
				end
				
				CallScriptFunction((200038), "OnDefaultEvent",sceneId, nHumanId, targetId )
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{juqing_start_013}" )
		
		elseif nStep2 == 2  then
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{juqing_start_014}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			
		elseif nStep2 == 3  then
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{juqing_start_015}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			
		elseif nStep2 == 4  then
			-- b¡t ð¥uÈÃ¡°Tiêu Phong¡±×ß
			local nMonsterNum = GetMonsterCount(sceneId)
			local nqiaofengId = -1
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
					nqiaofengId = nMonsterId
				end
			end
			
			if nqiaofengId ~= -1  then
				SetPatrolId(sceneId, nqiaofengId, 3)
			end
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			
		elseif nStep2 == 5  then
			-- ¼ì²âTiêu PhongÐúng²»Ðúngµ½´ï
			--LuaFnSetCopySceneData_Param(sceneId, 10, 6)
			local nMonsterNum = GetMonsterCount(sceneId)
			local nqiaofengId = -1
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
					nqiaofengId = nMonsterId
				end
			end
			
			if nqiaofengId ~= -1  then
				local targetX, targetZ = GetWorldPos(sceneId, nqiaofengId)
				local x, z = GetLastPatrolPoint(sceneId, 3)
				local distance3 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
				if distance3 <= 1 then
					-- Í¨ÖªÃ¿cáiÈË,»¤ËÍÍê³É
					LuaFnSetCopySceneData_Param(sceneId, 10, 6)
					-- ¸ü»»Ä£ÐÍ
					LuaFnDeleteMonster(sceneId, nqiaofengId)
					-- ´´½¨mµt cáiÐÂtoÕ ðµ Tiêu PhongtoÕ ðµ Ä£ÐÍ
					local nNpcId = LuaFnCreateMonster(sceneId, 424, 75,26, 0, 0, 120008)
					SetUnitReputationID(sceneId, selfId, nNpcId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 0)
					SetCharacterName(sceneId, nNpcId, "Tiêu Phong")
					SetNPCAIType(sceneId, nNpcId, 7)
					
					for i=0, 	nHumanNum-1  do
						local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
					  					  
					  -- ¸øÓÐCái này ÈÎÎñtoÕ ðµ ÈË¼ÓÉÏÍê³É±êÖ¾
					  if IsHaveMission(sceneId, nHumanId, 32) > 0 then
							local misIndex = GetMissionIndexByID(sceneId,nHumanId,32)
							if GetMissionParam(sceneId,nHumanId, misIndex, 1) < 1  then
								BeginEvent(sceneId)
						  		AddText(sceneId, "Hoàn t¤t tình tiªt \"Løc Quân T¸ D¸ch\"")
						  	EndEvent()
						  	DispatchMissionTips(sceneId, nHumanId)
								SetMissionByIndex( sceneId, nHumanId, misIndex, 0, 1)
								SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
							end
					  end
					end
				
				end
			end
		end
		
	end
	
	
	if  1==1 then
		return
	end

	-- Íæ¼Ò½øÈëÖ¸¶¨ÇøÓòºó,´¥·¢toÕ ðµ ¾çÇé
	if nStep1 == 5  then
		if nStep2==1  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0017}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{JQ_DB_0017}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==2  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			end
		
		elseif nStep2==3  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0018}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{JQ_DB_0017}" )
			CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu§t Trùng Nguyên", "Thß½ng Mang S½n ", "#{JQ_DB_0018}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		end
	end
	
	-- µÚ¶þ´Î¶Ô°× Áù¾ü±ÙÒ× »¤ËÍµ½ÖÕ ði¬mtoÕ ðµ Ê±ºò´¥·¢
	if nStep1==2 then
		if nStep3==0 then
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t Trùng Nguyên", "Thß½ng Mang S½n ", "#{JQ_PaoPao_86}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep3==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 2)
			end
			
		elseif nStep3==2 then
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t H°ng C½", "Thß½ng Mang S½n ", "#{JQ_PaoPao_87}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep3==3 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 4)
			end
			
		elseif nStep3==4 then
			CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{JQ_PaoPao_88}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep3==5 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 6)
			end
		
		elseif nStep3==6 then
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t H°ng C½", "Thß½ng Mang S½n ", "#{JQ_PaoPao_89}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep3==7 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 8)
			end
			
		elseif nStep3==8 then
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t H°ng C½", "Thß½ng Mang S½n ", "#{JQ_PaoPao_90}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		end
	end
	
	-- ¶Ô°× ËÄÃæ³þ¸è Hoàn t¤t nhi®m vøtoÕ ðµ Ê±ºò´¥·¢
	if nStep1==3 then
		if nStep4==0  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0015}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu§t Niªt L² C±", "Thß½ng Mang S½n ", "#{JQ_DB_0015}" )
			LuaFnSetCopySceneData_Param(sceneId, 12, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep4==1  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 12, 2)
			end
		
		elseif nStep4==2  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0016}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu§t Niªt L² C±", "Thß½ng Mang S½n ", "#{JQ_DB_0016}" )
			LuaFnSetCopySceneData_Param(sceneId, 12, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		end
	end

	-- ¶Ô°× ½ð¸êµ´¿Ü÷é±ø  Íæ¼Ò½øÈë»ÊÌ«ÊåÇøÓòºó´¥·¢
	if nStep1==4 then
		if nStep5==0  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0017}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{JQ_DB_0017}" )
			LuaFnSetCopySceneData_Param(sceneId, 13, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep5==1  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 13, 2)
			end
		
		elseif nStep5==2  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0018}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Thß½ng Mang S½n ", "#{JQ_DB_0017}" )
			CallScriptFunction((200060), "Duibai",sceneId, "Gia Lu§t Trùng Nguyên", "Thß½ng Mang S½n ", "#{JQ_DB_0018}" )
			LuaFnSetCopySceneData_Param(sceneId, 13, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		end
	end
	
	-- ¶Ô°× Áù¾ü±ÙÒ× Tiªp thøÈÎÎñtoÕ ðµ Ê±ºò´¥·¢
	if nStep1==5 then
		if nStep6==0 or nStep6==6 or nStep6==12  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0019}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Trung Quân", "Thß½ng Mang S½n ", "#{JQ_DB_0019}" )
			LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep6==1 or nStep6==7 or nStep6==13  then
			if nowTime - nTime > 5  then
				LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			end

		elseif nStep6==2 or nStep6==8 or nStep6==14  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0020}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Trung Quân", "Thß½ng Mang S½n ", "#{JQ_DB_0020}" )
			LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		elseif nStep6==3 or nStep6==9 or nStep6==15  then
			if nowTime - nTime > 5  then
				LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			end

		elseif nStep6==4 or nStep6==10 or nStep6==16  then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0021}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Trung Quân", "Thß½ng Mang S½n ", "#{JQ_DB_0021}" )
			LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep6==5 or nStep6==11 or nStep6==17  then
			if nowTime - nTime > 5  then
				LuaFnSetCopySceneData_Param(sceneId, 14, nStep6+1)
			end

		end		
	end
	
	-- ¶Ô°× Áù¾ü±ÙÒ× Hoàn t¤t nhi®m vøtoÕ ðµ Ê±ºò´¥·¢
	if nStep1==6 then
		if nStep7==0 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0022}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Chúng Li­u binh", "Thß½ng Mang S½n ", "#{JQ_DB_0022}" )
			LuaFnSetCopySceneData_Param(sceneId, 14, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		elseif nStep7==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 14, 0)
			end
		end
	end
	

end

