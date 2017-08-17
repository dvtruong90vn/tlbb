-- ÀÞ¹ÄÉ½  200040

-- 	TÕi ·¶°ÙÁätoÕ ðµ Ö¸ÒýÏÂÇ°ÍùÀÞ¹ÄÉ½

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200040_g_ScriptId = 200040

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200040_g_CopySceneName = "Lôi C± S½n"

x200040_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200040_g_CopySceneMap = "leigu_1.nav"
x200040_g_Exit = "leigu_1.ini"
x200040_g_LimitMembers = 1					--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x200040_g_TickTime = 5							--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200040_g_LimitTotalHoldTime = 360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200040_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200040_g_CloseTick = 3							--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x200040_g_NoUserTime = 300					--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x200040_g_DeadTrans = 0							--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200040_g_Fuben_X = 56							--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x200040_g_Fuben_Z = 104							--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x200040_g_Back_X = 66								--Ô´³¡¾°Î»ÖÃX
x200040_g_Back_Z = 56								--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200040_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾ÝÍæ¼ÒtoÕ ðµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ðµ ¸±±¾
	x200040_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200040_OnEnumerate( sceneId, selfId, targetId )
	-- 0,Èç¹ûÍæ¼ÒÒÑ¾­ÓÐ4ÈÎÎñ,¾Í²»ÄÜTÕi ½øÈëCái này ¸±±¾
	if IsHaveMission( sceneId, selfId, 36 ) > 0 then
		return 0
	end
	if IsMissionHaveDone(sceneId, selfId, 36) > 0   then
		return 0
	end

	-- 1,ÓµÓÐÈÎÎñºÅÎª34toÕ ðµ ÈÎÎñ,
	if IsHaveMission( sceneId, selfId, 34 ) > 0 then
		AddNumText( sceneId, x200040_g_ScriptId, "Hãy ðßa ta t¾i Lôi C± S½n (ðêm)", 10 ,-1  )
		return 0
	end

	-- 2,Ö»ÒªÍæ¼ÒÓÐ35ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 35 ) > 0 then
		AddNumText( sceneId, x200040_g_ScriptId, "Hãy ðßa ta t¾i Lôi C± S½n (ðêm)", 10 ,-1  )
		return 0
	end
	
	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË34,Ã»ÓÐ35,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 34) > 0   then
		if IsHaveMission( sceneId, selfId, 35 ) < 1 then
			AddNumText( sceneId, x200040_g_ScriptId, "Hãy ðßa ta t¾i Lôi C± S½n (ðêm)", 10 ,-1  )
			return 0
		end
		if IsHaveMission( sceneId, selfId, 36 ) < 1 then
			AddNumText( sceneId, x200040_g_ScriptId, "Hãy ðßa ta t¾i Lôi C± S½n (ðêm)", 10 ,-1  )
			return 0
		end
	end
	
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200040_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÐúng·ñÒª½øÈë¸±±¾
--**********************************
function x200040_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200040_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200040_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200040_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "leigu_1.nav"); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200040_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200040_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200040_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200040_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
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
	LuaFnSetSceneLoad_Area( sceneId, "leigu_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "leigu_1_monster.ini" )

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
function x200040_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200040_g_Fuben_X, x200040_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200040_g_Fuben_X, x200040_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--misIndex = GetMissionIndexByID(sceneId,mems[i],x200040_g_MissionId)
				
				--½«ÈÎÎñtoÕ ðµ µÚ2ºÅÊý¾ÝÉèÖÃÎª¸±±¾toÕ ðµ ³¡¾°ºÅ
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200040_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200040_g_Fuben_X, x200040_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x200040_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x200040_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200040_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓÐThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200040_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x200040_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200040_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200040_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200040_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200040_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200040_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x200040_OnCopySceneTimer( sceneId, nowTime )
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId, 0)

	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) ;--¿ØÖÆËµ»°
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9);--Ê±¼ä
	local nStartTime = LuaFnGetCopySceneData_Param(sceneId, 11)
	-- paopao 
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) ;--¿ØÖÆËµ¹ý»°
	
	nowTime = LuaFnGetCurrentTime()
	
	-- Íê³É±£»¤ÏÂÆåtoÕ ðµ ÈÎÎñºó,Hß Trúc×ß×Ô¼ºtoÕ ðµ Â·,×ßÖ®Ç°ÓÐ¶Ô°×
	if nStep1==3 then
		local nMonsterNum = GetMonsterCount(sceneId)
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			-- Hß TrúcC¥n µ÷AI
			if GetName(sceneId, nMonsterId)  == "Hß Trúc"  then
				SetPatrolId(sceneId, nMonsterId, 1)
				
				LuaFnSetCopySceneData_Param(sceneId, 8, 4)
			end
		end
	end	
	
	if nStep1==2 then
		if nStep2 == 1  then
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				-- Hß TrúcC¥n µ÷AI
				if GetName(sceneId, nMonsterId)  == "Hß Trúc"  then
					SetUnitReputationID(sceneId,selfId, nMonsterId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 7) -- ²»Ö÷¶¯¹¥»÷,²»»áËæ»úÒÆ¶¯,¿ÉÒÔ¹¥»÷,²»»á»¹»÷
					
					SetPatrolId(sceneId, nMonsterId, 0)
				end
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		end
		if nStep2 == 2  then
			if nowTime - nStartTime < 120  then
				if nowTime - nTime > 10  then
					local nNpcId = LuaFnCreateMonster(sceneId, 408, 76, 32, 1, 0, -1)
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 0)
					SetCharacterName(sceneId, nNpcId, "Cß½ng Thi")

					LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
				end
			
			else
				-- Ê±¼äµ½,Çå³ýÐ¡¹Ö,¿´Hß TrúcÐúng²»Ðúng»¹»î×Å
				local bOk = 0
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "Hß Trúc"  then
						bOk = 1
					end
					if GetName(sceneId, nMonsterId)  == "Cß½ng Thi"  then
						-- É¾³ýËùÓÐtoÕ ðµ ½©Ê¬
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
				end
				
				if bOk == 1 then
					LuaFnSetCopySceneData_Param(sceneId, 15, 1)
					-- Í¨ÖªÍæ¼Ò,Íê³ÉÁËÈÎÎñ
					for i=0, 	nHumanNum-1  do
						local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
						
						--¿´Cái này Íæ¼ÒÐúng²»ÐúngÓÐCái này ÈÎÎñ
						if IsHaveMission( sceneId, nHumanId, 35 ) > 0 then
							local misIndex = GetMissionIndexByID(sceneId, nHumanId, 35)
							SetMissionByIndex(sceneId, nHumanId, misIndex, 0, 1)
							SetMissionByIndex(sceneId, nHumanId, misIndex, 1, 1)
							BeginEvent(sceneId)
							AddText(sceneId,"Ðã bäo hµ Hß Trúc: 1/1")
							EndEvent(sceneId)
							DispatchMissionTips(sceneId,nHumanId)
						end
					end
				end
				LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			end
		end
				
	end
	
	
	-- µÚmµt ´ÎtoÕ ðµ ¶Ô°× ÌìÊ±²»ÈçµØÀû Hoàn t¤t nhi®m vøtoÕ ðµ Ê±ºò´¥·¢
	if nStep1==1 then
		if nStep2==0 then
			-- Tiêu Phong paopao
			CallScriptFunction((200060), "Paopao",sceneId, "Tô Tinh Hà", "Lôi C± S½n", "#{JQ_PaoPao_91}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end
			
		elseif nStep2==2 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Huy«n NÕn", "Lôi C± S½n", "#{JQ_PaoPao_92}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==3 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			end
		elseif nStep2==4 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Diên Khánh", "Lôi C± S½n", "#{JQ_PaoPao_93}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==5 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 6)
			end
		elseif nStep2==6 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Huy«n NÕn", "Lôi C± S½n", "#{JQ_PaoPao_94}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==7 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 8)
			end
		elseif nStep2==8 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Diên Khánh", "Lôi C± S½n", "#{JQ_PaoPao_95}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==9 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 10)
			end
		elseif nStep2==10 then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðinh Xuân Thu", "Lôi C± S½n", "#{JQ_PaoPao_96}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==11 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 12)
			end
		elseif nStep2==12 then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Diên Khánh", "Lôi C± S½n", "#{JQ_PaoPao_97}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==13 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 14)
			end
		elseif nStep2==14 then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Diên Khánh", "Lôi C± S½n", "#{JQ_PaoPao_98}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 15)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==15 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 16)
			end
		elseif nStep2==16 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Lôi C± S½n", "#{JQ_PaoPao_99}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 17)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==17 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 18)
			end
		elseif nStep2==18 then
			CallScriptFunction((200060), "Paopao",sceneId, "Tô Tinh Hà", "Lôi C± S½n", "#{JQ_PaoPao_100}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 19)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==19 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 20)
			end
		elseif nStep2==20 then
			CallScriptFunction((200060), "Paopao",sceneId, "Tô Tinh Hà", "Lôi C± S½n", "#{JQ_PaoPao_101}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 21)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		end
	end
	
end


