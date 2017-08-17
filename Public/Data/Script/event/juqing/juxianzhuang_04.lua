-- ½øÈëÒ¹¼ätoÕ ğµ ¾ÛÏÍ×¯

--200023
-- TÕi Cái Bang³¤ÀÏtoÕ ğµ °ï×éÏÂ,½øÈë¾ÛÏÍ×¯¸±±¾

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200023_g_ScriptId = 200023

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200023_g_CopySceneName = "Tø Hi«n Trang"

x200023_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200023_g_CopySceneMap = "juxian.nav"
x200023_g_Exit = "juxian.ini"
x200023_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x200023_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200023_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200023_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200023_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x200023_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x200023_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200023_g_Fuben_X = 61					--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x200023_g_Fuben_Z = 110					--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x200023_g_Back_X = 66					--Ô´³¡¾°Î»ÖÃX
x200023_g_Back_Z = 56					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200023_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾İÍæ¼ÒtoÕ ğµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ğµ ¸±±¾
	x200023_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200023_OnEnumerate( sceneId, selfId, targetId )
	-- Èç¹ûÍæ¼ÒÒÑ¾­Íê³ÉÁË20ÈÎÎñ,¾Í¿ÉÒÔ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 23) > 0   then
		return 0
	end

	-- 1,ÒÑ¾­Íê³É22
	if IsMissionHaveDone( sceneId, selfId, 22 ) > 0 then
		AddNumText( sceneId, x200023_g_ScriptId, "Ğªn Tø Hi«n Trang (ngày)", 10 ,-1  )
		return 0
	end
	
	-- 2,ÓµÓĞÈÎÎñºÅÎª23toÕ ğµ ÈÎÎñ,
	if IsHaveMission( sceneId, selfId, 23 ) > 0 then
		AddNumText( sceneId, x200023_g_ScriptId, "Ğªn Tø Hi«n Trang (ngày)", 10 ,-1  )
		return 0
	end
end


--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200023_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒĞúng·ñÒª½øÈë¸±±¾
--**********************************
function x200023_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200023_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200023_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200023_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "juxian.nav"); --µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200023_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200023_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200023_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200023_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBosstoÕ ğµ ÊıÁ¿
	
	-- ¾çÇéÓÃµ½toÕ ğµ ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	--ÉèÖÃ³¡¾°ÖĞtoÕ ğµ ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, "juxian_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "juxian_monster.ini" )

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
function x200023_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾toÕ ğµ ¹æÔò
	-- 1,Èç¹ûCái này ÎÄ¼şÃ»ÓĞ×é¶Ó,¾Í´«ËÍCái này ÎÄ¼ş×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓĞ¶ÓÎé,µ«ĞúngÍæ¼Ò²»Ğúng¶Ó³¤,¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3,Èç¹ûÍæ¼ÒÓĞ¶ÓÎé,²¢ÇÒCái này Íí¼äĞúng¶Ó³¤,¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑmµt Æğ½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end
	
	-- ¼ì²âÍæ¼ÒĞúng²»ĞúngÓĞ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓĞ¶ÓÎé
		NewWorld( sceneId, leaderObjId, destsceneId, x200023_g_Fuben_X, x200023_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200023_g_Fuben_X, x200023_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--local misIndex = GetMissionIndexByID(sceneId,mems[i],x200023_g_MissionId)
				
				--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200023_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200023_g_Fuben_X, x200023_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x200023_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x200023_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200023_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200023_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌĞø
--**********************************
function x200023_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200023_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200023_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200023_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200023_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200023_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x200023_OnCopySceneTimer( sceneId, nowTime )


	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËtoÕ ğµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)
	
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 10) --
	local nStartTime  = LuaFnGetCopySceneData_Param(sceneId, 11)	--Ê±¼ä
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 12)	--Ê±¼ä
	local nNowTime = LuaFnGetCurrentTime()
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 13) --
	local nStep5 = LuaFnGetCopySceneData_Param(sceneId, 20)
	
	if nStep1 == 1  then
	
		if nStep2 == 1 then
			-- ÉèÖÃ¿ªÕ½
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
					SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 5)
					
					--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0011}",0)
					CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Tø Hi«n Trang", "#{JQ_DB_0011}" )
				end
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 13, 2)
			LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
		
		elseif nStep2 == 2 then
			if nNowTime - nPreTime > 3 then
				LuaFnSetCopySceneData_Param(sceneId, 13, 3)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
			end

		elseif nStep2 == 3 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0012}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Tø Hi«n Trang", "#{JQ_DB_0012}" )
			LuaFnSetCopySceneData_Param(sceneId, 13, 4)
			
			LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime-55)
			
		else
			-- ¸øÍæ¼ÒÌáÊ¾»¹ÓĞ¶àÉÙ²¨¹Ö
			
			if nStep2 < 16 and nStep2 > 4 then
					
				if nNowTime - nPreTime >= 30 and nStep5 == 0  then
					local str = "Hi®p sî Tø Hi«n Trang s¨ phát ğµng " .. 16 - nStep2   .. " l¥n t¤n công"
					x200023_TipToAllPlayerOnScene(sceneId, str)

					LuaFnSetCopySceneData_Param(sceneId, 20, 1)
				end
				if nNowTime - nPreTime >= 40 and nStep5 == 1  then
					local str = "Hi®p sî Tø Hi«n Trang s¨ phát ğµng " .. 16 - nStep2   .. " l¥n t¤n công"
					x200023_TipToAllPlayerOnScene(sceneId, str)
					
					LuaFnSetCopySceneData_Param(sceneId, 20, 2)
				end
				if nNowTime - nPreTime >= 50 and nStep5 == 2  then
					local str = "Hi®p sî Tø Hi«n Trang s¨ phát ğµng " .. 16 - nStep2   .. " l¥n t¤n công"
					x200023_TipToAllPlayerOnScene(sceneId, str)
					
					LuaFnSetCopySceneData_Param(sceneId, 20, 0)
				end
			end
			
			if nNowTime - nPreTime >= 60 and nStep2 < 16   then
				local nNpcId
				if nStep2 == 8 then
					nNpcId = LuaFnCreateMonster(sceneId, 416, 57, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Ğ½n Bách S½n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
		
					nNpcId = LuaFnCreateMonster(sceneId, 416, 58, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Ğ½n Trung S½n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
		
					nNpcId = LuaFnCreateMonster(sceneId, 416, 59, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Ğ½n Thúc S½n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
		
					nNpcId = LuaFnCreateMonster(sceneId, 416, 60, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Ğ½n Lı S½n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
		
					nNpcId = LuaFnCreateMonster(sceneId, 416, 61, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Ğ½n Ti¬u S½n")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
				
				elseif nStep2 == 11 then
					nNpcId = LuaFnCreateMonster(sceneId, 429, 58, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Du Câu")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
					
					nNpcId = LuaFnCreateMonster(sceneId, 429, 60, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Du Kı")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
				
				elseif nStep2 == 15 then
					nNpcId = LuaFnCreateMonster(sceneId, 427, 58, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Huy«n NÕn ")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
					
					nNpcId = LuaFnCreateMonster(sceneId, 427, 60, 33, 1, 0, -1)
					SetCharacterName(sceneId, nNpcId, "Huy«n T¸ch")
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 16)
					
				else
					for j=0, 9  do
						--415,417,418,425,426,428,431,432,433
						local nNpcModelList={415,417,418,425,426,428,431,432,433}
						local nNpcMode = random( getn(nNpcModelList) )
						local nNpc1 = LuaFnCreateMonster(sceneId, nNpcModelList[nNpcMode], 55+j, 31, 1, 0, -1)
						SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
						SetUnitReputationID(sceneId,selfId, nNpc1, 29)
						SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
						SetNPCAIType(sceneId, nNpc1, 16)
					end
				end
				
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				
			end
			if nStep2 == 16 then
				--¿´Á½cáiºÍÉĞËÀÁËÃ»ÓĞ
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)=="Huy«n NÕn" or GetName(sceneId, nMonsterId)=="Huy«n T¸ch"  then
						bOk = 0	
					end
				end
				
				if bOk == 1  then
					-- É¾³ıËùÓĞtoÕ ğµ Ğ¡¹Ö
					local nMonsterNum = GetMonsterCount(sceneId)
					local ii = 0
					local bHaveMonster = 0
					local bOk =1
					for ii=0, nMonsterNum-1 do
						local nMonsterId = GetMonsterObjID(sceneId,ii)
						if GetName(sceneId, nMonsterId)== "Du Câu" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "Du Kı" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "Ğ½n Bách S½n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "Ğ½n Trung S½n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "Ğ½n Thúc S½n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "Ğ½n Lı S½n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "Ğ½n Ti¬u S½n" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
						if GetName(sceneId, nMonsterId)== "Hi®p sî giang h°" then
							LuaFnDeleteMonster(sceneId, nMonsterId)
						end
					end
					
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				end
			end	
					
			if nStep2 == 17 then
				-- ÇÇ·å¿ªÊ¼Ñ²Âß
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)== "Tiêu Phong" then
						SetPatrolId(sceneId, nMonsterId, 0)
						LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					end
				end	
			end
			
			if nStep2 == 18 then
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)== "Tiêu Phong" then
						--¿´ÇÇ·åĞúng²»Ğúng×ßµ½ÖÕ ği¬mÁË
						--PrintStr("µ½ÖÕ ği¬mÁË")
						local targetX, targetZ = GetWorldPos(sceneId, nMonsterId)
						local x, z = GetLastPatrolPoint(sceneId, 0)
						local distance2 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
						if distance2 <= 1 then
							--BroadMsgByChatPipe(sceneId,selfId,"A Châu: ÎÒ²»ĞĞÁË",0)
							CallScriptFunction((200060), "Duibai",sceneId, "A Châu", "Tø Hi«n Trang", "Ta không xong r°i" )
							LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
							LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
						end
					end
				end	
			end
			
			if nStep2 == 19 then
				--BroadMsgByChatPipe(sceneId,selfId,"Ñ¦ÉñÒ½: ÇÇ·å,ÄãÔõÃ´°ì°.¬»¹¾ÈCái này Ñ¾Í·²»?",0)
				CallScriptFunction((200060), "Duibai",sceneId, "Tiªt Mµ Hoa", "Tø Hi«n Trang", "Tiêu Phong, ngß½i sao thª r°i. Còn cÑu con a ğ¥u này à ?" )
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
			end

			if nStep2 == 20 then	
				if nNowTime - nPreTime > 3  then
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
					
					--ÇÇ·åÑ£ÔÎtoÕ ğµ ÌØĞ§
					local nMonsterNum = GetMonsterCount(sceneId)
					local ii = 0
					local bHaveMonster = 0
					for ii=0, nMonsterNum-1 do
						local nMonsterId = GetMonsterObjID(sceneId,ii)
						if GetName(sceneId, nMonsterId)== "Tiêu Phong" then
							LuaFnSendSpecificImpactToUnit(sceneId,selfId,nMonsterId,nMonsterId,45,10)
						end
					end
				end
			end
			
			if nStep2 == 21 then
				--´´½¨10cái¹ÖÀ´Î§¹¥ÇÇ·å
				local nNpc1 = LuaFnCreateMonster(sceneId, 415, 61, 62, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 59, 62, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 58, 63, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 58, 65, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 58, 66, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 59, 66, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 60, 66, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 61, 65, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 61, 64, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)
				nNpc1 = LuaFnCreateMonster(sceneId, 415, 61, 63, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "Hi®p sî giang h°")
				SetUnitReputationID(sceneId,selfId, nNpc1, 29)
				SetMonsterFightWithNpcFlag(sceneId, nNpc1, 1)
				SetNPCAIType(sceneId, nNpc1, 0)

				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				
			end
			
			-- ´ò5 giâyÖÓ
			if nStep2 == 22 then
				if nNowTime - nPreTime > 3  then
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				end
			end
			
			if nStep2 == 23 then
				--BroadMsgByChatPipe(sceneId,selfId,"ÇÇ·å:ÇÇÄ³×ÔĞĞÁË¶Ï",0)
				CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Tø Hi«n Trang", "Tiêu m² tñ mình kªt li­u" )
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
			end
			
			-- À´ºÚÒÂÈË
			if nStep2 == 24 then
				local nNpc1 = LuaFnCreateMonster(sceneId, 24, 61, 67, 1, 0, -1)
				SetCharacterName(sceneId, nNpc1, "H¡c Y ğÕi hán")
				
				-- ²¥·Åmµt cáiÌØĞ§
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,nNpc1,nNpc1,43,5)
				
				CallScriptFunction((200060), "Duibai",sceneId, "H¡c Y ğÕi hán", "Tø Hi«n Trang", "Ğ° ng¯c, ği theo ta" )
				
				--É±µôËùÓĞtoÕ ğµ ¹Ö
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)== "Hi®p sî giang h°" then
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
				end
				
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)

			end
			
			if nStep2 == 25 then
				if nNowTime - nPreTime > 3  then
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
					CallScriptFunction((200060), "Duibai",sceneId, "Tiêu Phong", "Tø Hi«n Trang", "$N, Ta giao A Châu cho ngß½i ğ¤y! Ği tìm Tiªt Th¥n Y cÑu m®nh cüa cô ta, ği mau!" )
				end
			end
			
			if nStep2 == 26 then
				if nNowTime - nPreTime > 3  then
					LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
					LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				end
			end
			
			if nStep2 == 27 then
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				local bOk =1
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)== "H¡c Y ğÕi hán" then
						LuaFnDeleteMonster(sceneId, nMonsterId)
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,nMonsterId,nMonsterId,44,5)
					end
					if GetName(sceneId, nMonsterId)== "Tiêu Phong" then
						LuaFnDeleteMonster(sceneId, nMonsterId)
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,nMonsterId,nMonsterId,44,5)
					end
				end
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep2+1)
				LuaFnSetCopySceneData_Param(sceneId, 12, nNowTime)
				
				-- ÉèÖÃÈÎÎñÍê³É
				LuaFnSetCopySceneData_Param(sceneId, 15, 1)
				
				--  ğÕt ğßşcÓĞCái này ÈÎÎñtoÕ ğµ ¸±±¾ÄÚtoÕ ğµ ËùÓĞÈË,¸øÉèÖÃÍê³É±êÖ¾ºÍÆÁÄ»ÌáÊ¾
				--PrintNum(nHumanNum)
				for i=0, nHumanNum-1  do
					local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
					-- ÌáÊ¾Íæ¼Ò¾çÇéÍê³É
					BeginEvent(sceneId)
						AddText(sceneId, "Ğã bäo hµ Tiêu Phong thoát nguy: 1/1")
					EndEvent(sceneId)
					DispatchMissionTips(sceneId, nPlayerId)
										
					-- ²âÊÔCái này PlayerĞúng²»ĞúngÓĞCái này ÈÎÎñ
					if IsHaveMission(sceneId,nPlayerId,23) > 0 then
						local misIndex = GetMissionIndexByID(sceneId,nPlayerId,23)
						SetMissionByIndex( sceneId, nPlayerId, misIndex, 0, 1)
						SetMissionByIndex( sceneId, nPlayerId, misIndex, 1, 1)
					end
				end
			end
		end
	end
end

function x200023_TipToAllPlayerOnScene(sceneId, str)
	--  ğÕt ğßşc³¡¾°ÀïÍ·toÕ ğµ ËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËtoÕ ğµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		
		BeginEvent(sceneId)
				AddText(sceneId, str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
	
end
