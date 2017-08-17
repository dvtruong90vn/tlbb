-- TÕi  ði¬mµ½ Mµ Dung Phøc toÕ ðµ ÇëÇóºó,½øÈë°×ÌìtoÕ ðµ Ñà×ÓÎë

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200014_g_ScriptId = 200014

--¸±±¾Ãû³Æ
x200014_g_CopySceneName="Yªn TØ ‘"
--ÈÎÎñÎÄ±¾ÃèÊö
--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200014_g_CopySceneName = "Yªn TØ ‘"

x200014_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200014_g_CopySceneMap = "yanzi.nav"
x200014_g_Exit = "yanzi.ini"
x200014_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x200014_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200014_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200014_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200014_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x200014_g_NoUserTime = 300				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x200014_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200014_g_Fuben_X = 105					--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x200014_g_Fuben_Z = 99					--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x200014_g_Back_X = 66					--Ô´³¡¾°Î»ÖÃX
x200014_g_Back_Z = 56					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200014_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾ÝÍæ¼ÒtoÕ ðµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ðµ ¸±±¾
	x200014_MakeCopyScene(sceneId, selfId)
end


--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200014_OnEnumerate( sceneId, selfId, targetId )

	-- Íæ¼ÒÍê³ÉÁË15,Ö±½ÓTr· v«
	if IsMissionHaveDone(sceneId, selfId, 15) > 0   then
		return 0
	end

	--¼ì²éÍæ¼ÒÉíÉÏÐúng²»ÐúngÓÐCái này ÈÎÎñ
	-- ÓÐÈÎÎñ13¿ÉÒÔ½øÈë
	if IsHaveMission( sceneId, selfId, 13 ) > 0 then
		AddNumText( sceneId, x200014_g_ScriptId, "Hãy ðßa ta t¾i Yªn TØ ‘ (ngày)", 10 ,-1  )
		return 0
	end
	
	-- ÓÐÈÎÎñ14¿ÉÒÔ½øÈë
	if IsHaveMission( sceneId, selfId, 14 ) > 0 then
		AddNumText( sceneId, x200014_g_ScriptId, "Hãy ðßa ta t¾i Yªn TØ ‘ (ngày)", 10 ,-1  )
		return 0
	end

	-- ÓÐÈÎÎñ15¿ÉÒÔ½øÈë
	if IsHaveMission( sceneId, selfId, 15 ) > 0 then
		AddNumText( sceneId, x200014_g_ScriptId, "Hãy ðßa ta t¾i Yªn TØ ‘ (ngày)", 10 ,-1  )
		return 0
	end
	
	-- Èç¹ûÍê³ÉÁË13,Ã»ÓÐ14,15,¶¼¿ÉÒÔ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 13) > 0   then
		if IsHaveMission(sceneId, selfId, 14) < 1   then
			AddNumText( sceneId, x200014_g_ScriptId, "Hãy ðßa ta t¾i Yªn TØ ‘ (ngày)", 10 ,-1  )
			return 0
		end
		if IsHaveMission(sceneId, selfId, 15) < 1   then
			AddNumText( sceneId, x200014_g_ScriptId, "Hãy ðßa ta t¾i Yªn TØ ‘ (ngày)", 10 ,-1  )
			return 0
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200014_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÐúng·ñÒª½øÈë¸±±¾
--**********************************
function x200014_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200014_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200014_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200014_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "yanzi.nav"); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
		
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200014_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200014_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200014_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200014_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBosstoÕ ðµ ÊýÁ¿
	LuaFnSetCopySceneData_Param(sceneId, 8, 0) ;--Ê±¼ä
	
	-- ¾çÇéÓÃµ½toÕ ðµ ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	LuaFnSetSceneLoad_Area( sceneId, "yanzi_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "yanzi_monster.ini" )

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
function x200014_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200014_g_Fuben_X, x200014_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200014_g_Fuben_X, x200014_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x200014_g_Fuben_X, x200014_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x200014_OnPlayerEnter( sceneId, selfId )
	-- Ã¿cái½øÈë¸±±¾toÕ ðµ ÈË,¶¼»á±»Ë¢mµt ´ÎÈÎÎñÊý¾Ý
	-- ±¾¸±±¾C¥n Ë¢ÐÂÊý¾ÝtoÕ ðµ ÈÎÎñÐúng,14,Ö¸ ði¬mÈººÀÏ·
	local nMissionId = 14
	if IsHaveMission( sceneId, selfId, nMissionId ) > 0 then  --Íê¼ÒÈç¹ûÓÐCái này ÈÎÎñ
		local misIndex = GetMissionIndexByID(sceneId,selfId,nMissionId)
		SetMissionByIndex(sceneId,selfId,misIndex,0,0)
		SetMissionByIndex(sceneId,selfId,misIndex,1,0)
		SetMissionByIndex(sceneId,selfId,misIndex,2,0)
		SetMissionByIndex(sceneId,selfId,misIndex,3,0)
		SetMissionByIndex(sceneId,selfId,misIndex,4,0)
		SetMissionByIndex(sceneId,selfId,misIndex,5,0)
	end
	
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x200014_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200014_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓÐThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200014_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x200014_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200014_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200014_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200014_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200014_OnEnterZone( sceneId, selfId, zoneId )

end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200014_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x200014_OnCopySceneTimer( sceneId, nowTime )
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)
	
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 10) --¿ØÖÆËµ»°
	local nStartTime  = LuaFnGetCopySceneData_Param(sceneId, 11)	--Ê±¼ä
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 12)	--Ê±¼ä
	local nNowTime = LuaFnGetCurrentTime()

	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 13) --¿ØÖÆËµ»°

	if nStep1 == 1  then
	
		if nNowTime - nPreTime >= 10 then
			--  ðÕt ðßþc»¹»î×ÅtoÕ ðµ ¹Ö
			LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
			local nMonsterNum = GetMonsterCount(sceneId)
			local nMonster = {}
			local ii = 0
			local jj = 0
			local bHaveMonster = 0
			local nWangId = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Hoàng H° TØ"  then
					nMonster[jj] = nMonsterId
					jj = jj+1
				elseif GetName(sceneId, nMonsterId)  == "Khôi Bào Khách"  then
					nMonster[jj] = nMonsterId
					jj = jj+1
				elseif GetName(sceneId, nMonsterId)  == "Ð® tØ H± Träo môn"  then
					nMonster[jj] = nMonsterId
					jj = jj+1
				elseif GetName(sceneId, nMonsterId)  == "Cù nhi­m võ sî"  then
					nMonster[jj] = nMonsterId
					jj = jj+1
				elseif GetName(sceneId, nMonsterId)  == "Su¤t Giác Cao Thü"  then
					nMonster[jj] = nMonsterId
					jj = jj+1
					
				elseif GetName(sceneId, nMonsterId)  == "Vß½ng Ngæ Yên"  then
					nWangId = nMonsterId
				end
				
			end
			
			--Èç¹û»¹ÓÐ»î×ÅtoÕ ðµ ¹Ö,Ëæ»ú¸ømµt cái¹ÖÏàÓ¦toÕ ðµ DEBUFF
			if jj > 0  then
				local nRand = random( 1, jj ) - 1
				local nSelMonster = nMonster[nRand]
				local nName = GetName(sceneId, nSelMonster)
				
				LuaFnSendSpecificImpactToUnit(sceneId, nWangId, nWangId, nSelMonster, 39, 0 )
				
				-- Í¬Ê±Íõ cô nß½ng C¥n º°»°
				if GetName(sceneId, nSelMonster ) == "Hoàng H° TØ"    then
					x200014_DispatchMissionTipsToAll(sceneId, "Vß½ng Ngæ Yên \"TØ huy®t cüa Hoàng H° TØ · huy®t Ng÷c Ch¦m!\"")
	
				elseif GetName(sceneId, nSelMonster ) == "Khôi Bào Khách"    then
					x200014_DispatchMissionTipsToAll(sceneId, "Vß½ng Ngæ Yên \"TØ huy®t cüa Khôi Bào Khách · huy®t Liêm Tuy«n!\"")
					
				elseif GetName(sceneId, nSelMonster ) == "Ð® tØ H± Träo môn"    then
					x200014_DispatchMissionTipsToAll(sceneId, "Vß½ng Ngæ Yên \"TØ huy®t cüa H± Träo Môn Ð® TØ · huy®t Chí Dß½ng!\"")
					
				elseif GetName(sceneId, nSelMonster ) == "Cù nhi­m võ sî"    then
					x200014_DispatchMissionTipsToAll(sceneId, "Vß½ng Ngæ Yên \"TØ huy®t cüa Cù Nhiêm Võ Sî · huy®t Thiên Trung\"")
					
				elseif GetName(sceneId, nSelMonster ) == "Su¤t Giác Cao Thü"    then
					x200014_DispatchMissionTipsToAll(sceneId, "Vß½ng Ngæ Yên \"TØ huy®t cüa Su¤t Giác Cao Thü · huy®t Bách Hµi!\"")
					
				end
				
			else --Èç¹û¹Ö¶¼ËÀ¹âÁË,¾Í´´½¨Àî³öÀ´
				-- ÏûÊ§ ÇØ¼ÒÕ¯µÜ×Ó	
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bLi = 0
				local bDuan = 0
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "Võ Sî Tây hÕ"  then
						-- É¾³ý ÇØ¼ÒÕ¯µÜ×Ó
						LuaFnDeleteMonster(sceneId, nMonsterId)
						
						-- Ðoàn DñtoÕ ðµ ÅÝÅÝ "Íõ cô nß½ng ,Íõ cô nß½ng ,µÐÈË¶¼´òËÀÁË!"
						local nMonsterNum = GetMonsterCount(sceneId)
						local ii = 0
						local bHaveMonster = 0
						for ii=0, nMonsterNum-1 do
							local nMonsterId = GetMonsterObjID(sceneId,ii)
							
							if GetName(sceneId, nMonsterId)  == "Ðoàn Dñ"  then
								bDuan = 1
								--CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Ñà×ÓÎë", "#{JQ_PaoPao_68}")
							end
							
							if GetName(sceneId, nMonsterId)  == "Lý Diên Tông"  then
								bLi = 1
							end
							
						end
					end
				end				

				if bLi == 0   then
					-- ´´½¨¹ÖÎï
					local nNpcId = LuaFnCreateMonster(sceneId, 419, 62, 76, 3, 0, 200017)
					SetCharacterName(sceneId, nNpcId, "Lý Diên Tông")
				end
				
				-- ÀîÑÓ×Ú paopao
				CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Yªn TØ ‘", "#{JQ_PaoPao_68}")
				CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "#{JQ_PaoPao_69}")
				
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end			
		end
	end

	-- ±¯ËÖÇå·ç toÕ ðµ ¶Ô»°µôÎïÆ·toÕ ðµ ¾çÇé
	if nStep1 == 3    then  -- µ±ÓÐÈÎºÎmµt cáiÈË½ÓÁËCái này ÈÎÎñºó,¿ªÊ¼Õâ¶Î¾çÇé,±£Ö¤Ö»·¢Éúmµt ´Î
		if nStep2 == 1	then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Yªn TØ ‘", "#{JQ_PaoPao_70}")
			LuaFnSetCopySceneData_Param(sceneId, 13, 2)
		elseif nStep2 == 2	then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 3)
			end
		elseif  nStep2 == 3	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "#{JQ_PaoPao_71}")
			LuaFnSetCopySceneData_Param(sceneId, 13, 4)
			
		elseif nStep2 == 4	then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 5)
			end
			
		elseif nStep2 == 5	then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Yªn TØ ‘", "#{JQ_PaoPao_72}")
			LuaFnSetCopySceneData_Param(sceneId, 13, 6)
			
		elseif nStep2 == 6	then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 7)
			end
			
		elseif nStep2 == 7	then
			CallScriptFunction((200060), "Paopao",sceneId, "Vß½ng Ngæ Yên", "Yªn TØ ‘", "#{JQ_PaoPao_73}")
			LuaFnSetCopySceneData_Param(sceneId, 13, 8)
			
		elseif nStep2 == 8	then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 9)
			end
			
		elseif nStep2 == 9	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "#{JQ_PaoPao_74}")
			LuaFnSetCopySceneData_Param(sceneId, 13, 10)
			
		elseif nStep2 == 10	then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 11)
			end
			
		elseif nStep2 == 11	then
			CallScriptFunction((200060), "Paopao",sceneId, "Vß½ng Ngæ Yên", "Yªn TØ ‘", "#{JQ_PaoPao_75}")
			LuaFnSetCopySceneData_Param(sceneId, 13, 12)
		elseif nStep2 == 12	then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 13)
			end
			
		elseif nStep2 == 13	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "#{JQ_PaoPao_76}")
			LuaFnSetCopySceneData_Param(sceneId, 13, 14)
		elseif nStep2 == 14	then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 15)
			end
			
		elseif nStep2 == 15	then
			CallScriptFunction((200060), "Paopao",sceneId, "Vß½ng Ngæ Yên", "Yªn TØ ‘", "#{JQ_PaoPao_77}")
			LuaFnSetCopySceneData_Param(sceneId, 13, 16)
		elseif nStep2 == 16	then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 17)
			end
			
		elseif nStep2 == 17	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "#{JQ_PaoPao_78}")
			LuaFnSetCopySceneData_Param(sceneId, 13, 18)
		elseif nStep2 == 18	then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 19)
			end
		
		elseif nStep2 == 19	then  -- ÀîÏûÊ§,Í¬Ê±¸ø³¡¾°ÄÚtoÕ ðµ ËùÓÐÍê¼Òmµt cáiµÀ¾ß
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "Ðßþc, nªu Vß½ng cô nß½ng không ân h§n, ta s¨ tha cho các ngß½i 1 con ðß¶ng s¯ng. — ðây ta có thu¯c giäi Bi Tô Thanh Phong, mau c¥m ði, nªu không ta thay ð±i chü ý")
			LuaFnSetCopySceneData_Param(sceneId, 15, 1)
			LuaFnSetCopySceneData_Param(sceneId, 13, 20)
			
		elseif nStep2 == 20	then
			if nNowTime - nPreTime > 5 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 21)
			end
			
		elseif nStep2 == 21	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "Ðßþc, nªu Vß½ng cô nß½ng không ân h§n, ta s¨ tha cho các ngß½i 1 con ðß¶ng s¯ng. — ðây ta có thu¯c giäi Bi Tô Thanh Phong, mau c¥m ði, nªu không ta thay ð±i chü ý")
			LuaFnSetCopySceneData_Param(sceneId, 13, 22)
			
		elseif nStep2 == 22	then
			if nNowTime - nPreTime > 5 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 23)
			end
			
		elseif nStep2 == 23	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "Ðßþc, nªu Vß½ng cô nß½ng không ân h§n, ta s¨ tha cho các ngß½i 1 con ðß¶ng s¯ng. — ðây ta có thu¯c giäi Bi Tô Thanh Phong, mau c¥m ði, nªu không ta thay ð±i chü ý")
			LuaFnSetCopySceneData_Param(sceneId, 13, 24)

		elseif nStep2 == 24	then
			if nNowTime - nPreTime > 40 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 25)
			end
			
		elseif nStep2 == 25	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "Ðßþc, nªu Vß½ng cô nß½ng không ân h§n, ta s¨ tha cho các ngß½i 1 con ðß¶ng s¯ng. — ðây ta có thu¯c giäi Bi Tô Thanh Phong, mau c¥m ði, nªu không ta thay ð±i chü ý")
			LuaFnSetCopySceneData_Param(sceneId, 13, 26)

		elseif nStep2 == 26	then
			if nNowTime - nPreTime > 40 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 27)
			end
			
		elseif nStep2 == 27	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "Ðßþc, nªu Vß½ng cô nß½ng không ân h§n, ta s¨ tha cho các ngß½i 1 con ðß¶ng s¯ng. — ðây ta có thu¯c giäi Bi Tô Thanh Phong, mau c¥m ði, nªu không ta thay ð±i chü ý")
			LuaFnSetCopySceneData_Param(sceneId, 13, 28)

		elseif nStep2 == 28	then
			if nNowTime - nPreTime > 40 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 29)
			end

		elseif nStep2 == 29	then
			-- Àî ÏûÊ§ ²éÕÒCái này ÈË,É¾³ý
			local nMonsterNum = GetMonsterCount(sceneId)
			local bHave = 0
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Lý Diên Tông"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					--ItemBoxEnterScene(62,74,-1,sceneId,1,1,40001005)
				end
			end
			LuaFnSetCopySceneData_Param(sceneId, 10, 4)
		end
	end
end

function x200014_DispatchMissionTipsToAll(sceneId, szStr)
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, szStr)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nHumanId)
	end
	
end
