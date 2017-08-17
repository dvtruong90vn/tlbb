-- TÕi  ºÕÁ¬ÌúÊ÷ °ï×éÏÂ,½øÈëmµt Æ·ÌÃ,
-- 200050

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200050_g_ScriptId = 200050

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200050_g_CopySceneName = "Nh¤t ph¦m ðß¶ng"

x200050_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200050_g_CopySceneMap = "yipin_1.nav"
x200050_g_Exit = "yipin_1.ini"
x200050_g_LimitMembers = 1					--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x200050_g_TickTime = 5							--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200050_g_LimitTotalHoldTime = 360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200050_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200050_g_CloseTick = 3							--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x200050_g_NoUserTime = 300					--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x200050_g_DeadTrans = 0							--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200050_g_Fuben_X = 32							--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x200050_g_Fuben_Z = 113							--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x200050_g_Back_X = 66								--Ô´³¡¾°Î»ÖÃX
x200050_g_Back_Z = 56								--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200050_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾ÝÍæ¼ÒtoÕ ðµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ðµ ¸±±¾
	x200050_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200050_OnEnumerate( sceneId, selfId, targetId )
	--AddNumText( sceneId, x200050_g_ScriptId, "Ðßa ta ðimµt Æ·ÌÃ(Ò¹¼ä)", 10 ,-1  )
	-- 0,Èç¹ûÍæ¼ÒÒÑ¾­ÓÐ44ÈÎÎñ,¾Í²»ÄÜTÕi ½øÈëCái này ¸±±¾
	if IsHaveMission( sceneId, selfId, 44 ) > 0 then
		return 0
	end
	
	-- Èç¹ûÍæ¼ÒÒÑ¾­Íê³ÉÁË43,¾Í²»ÄÜÔÙ½øÈëÁË
	if IsMissionHaveDone(sceneId, selfId, 43) > 0   then
		return 0
	end
	
	-- Èç¹ûÍæ¼ÒÒÑ¾­Íê³ÉÁË42,¾Í²»ÄÜÔÙ½øÈëÁË
	if IsMissionHaveDone(sceneId, selfId, 42) > 0   then
		return 0
	end
	
	-- Èç¹ûÍæ¼ÒÒÑ¾­ÓÐÁË42ÈÎÎñ,²»ÄÜ ½øÈ¥
	if IsHaveMission( sceneId, selfId, 42 ) > 0 then
		return 0
	end

	-- 1,ÓµÓÐÈÎÎñºÅÎª40toÕ ðµ ÈÎÎñ,
	if IsHaveMission( sceneId, selfId, 40 ) > 0 then
		AddNumText( sceneId, x200050_g_ScriptId, "Ðªn Nh¤t ph¦m ðß¶ng (ðêm)", 10 ,-1  )
		return 0
	end

	-- 2,Ö»ÒªÍæ¼ÒÓÐ41ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 41 ) > 0 then
		AddNumText( sceneId, x200050_g_ScriptId, "Ðªn Nh¤t ph¦m ðß¶ng (ðêm)", 10 ,-1  )
		return 0
	end
	
	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË40,Ã»ÓÐ41,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 40) > 0   then
		if IsHaveMission( sceneId, selfId, 41 ) < 1 then
			AddNumText( sceneId, x200050_g_ScriptId, "Ðªn Nh¤t ph¦m ðß¶ng (ðêm)", 10 ,-1  )
			return 0
		end
	end
	
	-- 4,Èç¹ûÍæ¼ÒÍê³ÉÁË40,µ«ÐúngÃ»ÓÐ42,Ò²Ðúng¿ÉÒÔ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 40) > 0   then
		if IsHaveMission( sceneId, selfId, 42 ) < 1 then
			AddNumText( sceneId, x200050_g_ScriptId, "Ðªn Nh¤t ph¦m ðß¶ng (ðêm)", 10 ,-1  )
			return 0
		end
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200050_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÐúng·ñÒª½øÈë¸±±¾
--**********************************
function x200050_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200050_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200050_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200050_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "yipin_1.nav"); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200050_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200050_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200050_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200050_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
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
	LuaFnSetSceneLoad_Area( sceneId, "yipin_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "yipin_1_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!")
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!")
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x200050_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200050_g_Fuben_X, x200050_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200050_g_Fuben_X, x200050_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--misIndex = GetMissionIndexByID(sceneId,mems[i],x200050_g_MissionId)
				
				--½«ÈÎÎñtoÕ ðµ µÚ2ºÅÊý¾ÝÉèÖÃÎª¸±±¾toÕ ðµ ³¡¾°ºÅ
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200050_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200050_g_Fuben_X, x200050_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x200050_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x200050_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200050_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓÐThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200050_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x200050_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200050_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200050_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200050_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200050_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200050_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x200050_OnCopySceneTimer( sceneId, nowTime )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)
	
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) --¿ØÖÆËµ»°
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9)	--Ê±¼ä

	-- ¶Ô°× 
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) --¿ØÖÆËµ¹ý»°
	
	-- paopao 
	local nStep3 = LuaFnGetCopySceneData_Param(sceneId, 11) --¿ØÖÆËµ¹ý»°
	
	-- ¶Ô°× mµt Ð¦ÈË¼äÍòÊÂ ½ÓÈÎÎñtoÕ ðµ Ê±ºò´¥·¢
	if nStep1==1 then
		if nStep2==0 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0024}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_DB_0024}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end
		
		elseif nStep2==2 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0025}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng ", "#{JQ_DB_0025}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==3 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			end
		
		elseif nStep2==4 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0026}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Thiên S½n Ð°ng Lão", "Nh¤t ph¦m ðß¶ng ", "#{JQ_DB_0026}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==5 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 6)
			end

		elseif nStep2==6 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0027}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_DB_0027}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==7 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 8)
			end

		elseif nStep2==8 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0028}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_DB_0028}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==9 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 10)
			end

		elseif nStep2==10 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0029}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_DB_0029}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==11 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 12)
			end

		elseif nStep2==12 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0030}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Thiên S½n Ð°ng Lão", "Nh¤t ph¦m ðß¶ng ", "#{JQ_DB_0030}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==13 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 14)
			end
		
		elseif nStep2==14 then
			-- ´´½¨ Lý Thu Thüy,¸Ä±äThiên S½nÍ¯ÀÏtoÕ ðµ Cuµc chiªn ¹ØÏµ,Íæ¼Ò²»²ÎÓë
			local nNpcId = LuaFnCreateMonster(sceneId, 454, 22, 27, 1, 0, -1)
			SetUnitReputationID(sceneId,selfId, nNpcId, 24)
			SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
			SetNPCAIType(sceneId, nNpcId, 16)
			SetCharacterName(sceneId, nNpcId, "Lý Thu ThuÖ")
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, nNpcId, nNpcId, 44, 2)
			
			--Thiên S½nÍ¯ÀÏC¥n »»Ä£ÐÍ
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				if GetName(sceneId, nMonsterId)  == "Thiên S½n Ð°ng Lão"  then
					-- ÏÈ ðÕt ðßþcCái này Î»ÖÃ,È»ºóÉ¾³ýCái này Ä£ÐÍ,Ö®ºó´´½¨mµt cáiÐÂtoÕ ðµ 
					LuaFnDeleteMonster(sceneId, nMonsterId)
					
					local newMonster = LuaFnCreateMonster(sceneId, 453, 20, 25, 1, 0, -1)

					SetUnitReputationID(sceneId,selfId, newMonster, 25)
					SetMonsterFightWithNpcFlag(sceneId, newMonster, 1)
					SetNPCAIType(sceneId, newMonster, 16)
					SetCharacterName(sceneId, newMonster, "Thiên S½n Ð°ng Lão")
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, newMonster, newMonster, 44, 2)
					break
				end
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 10, 15)
		
		elseif nStep2==15 then
			if nowTime - nTime > 60  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 16)
			end

		elseif nStep2==16 then
			-- ¶þÈËÍ£Õ½
			
			local newMonst1
			local newMonst2
			
			--ÉèThiên S½nÍ¯ÀÏtoÕ ðµ ÕóÓª
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				-- Hß TrúcC¥n µ÷AI
				if GetName(sceneId, nMonsterId)  == "Thiên S½n Ð°ng Lão"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					newMonst1 = LuaFnCreateMonster(sceneId, 491, 20, 25, 1, 0, -1)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, newMonst1, newMonst1, 44, 2)
					
				end
				if GetName(sceneId, nMonsterId)  == "Lý Thu ThuÖ"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					newMonst2 = LuaFnCreateMonster(sceneId, 492, 22, 27, 1, 0, -1)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, newMonst2, newMonst2, 44, 2)
					
				end
			end
			
			-- ´´½¨2cáiËÀÍöÄ£ÐÍ,ÉèÖÃÑªÎª1
			SetUnitReputationID(sceneId,selfId, newMonst1, 0)
			SetMonsterFightWithNpcFlag(sceneId, newMonst1, 1)
			SetNPCAIType(sceneId, newMonst1, 3)
			SetCharacterName(sceneId, newMonst1, "Thiên S½n Ð°ng Lão")
			SetHp(sceneId, newMonst1, 1)
				
			SetUnitReputationID(sceneId,selfId, newMonst2, 0)
			SetMonsterFightWithNpcFlag(sceneId, newMonst2, 1)
			SetNPCAIType(sceneId, newMonst2, 3)
			SetCharacterName(sceneId, newMonst2, "Lý Thu ThuÖ")
			SetHp(sceneId, newMonst2, 1)
			
			LuaFnSetCopySceneData_Param(sceneId, 8, 2)
			LuaFnSetCopySceneData_Param(sceneId, 10, 17)
			
		end
	end

	-- paopao mµt Ð¦ÈË¼äÍòÊÂ 
	if nStep1==2 then
		if nStep3==0    	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_104}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==1  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 2)
			end

		elseif nStep3==2  then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_105}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==3  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 4)
			end

		elseif nStep3==4  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ð°ng Lão", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_106}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==5  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 6)
			end

		elseif nStep3==6  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ð°ng Lão", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_107}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep3==7  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 8)
			end

		elseif nStep3==8  then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_108}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==9  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 10)
			end

		elseif nStep3==10  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ð°ng Lão", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_109}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==11  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 12)
			end

		elseif nStep3==12  then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_110}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==13  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 14)
			end

		elseif nStep3==14  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ð°ng Lão", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_111}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 15)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==15  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 16)
			end
			
		elseif nStep3==16  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ð°ng Lão", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_112}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 17)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==17  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 18)
			end

		elseif nStep3==18  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_113}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 19)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==19  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 20)
			end

		elseif nStep3==20  then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_114}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 21)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==21  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 22)
			end

		elseif nStep3==22  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_115}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 23)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==23  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 24)
			end

		elseif nStep3==24  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_116}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 25)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==25  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 26)
			end

		elseif nStep3==26  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_117}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 27)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==27  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 28)
			end

		elseif nStep3==28  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Thu ThuÖ", "Nh¤t ph¦m ðß¶ng ", "#{JQ_PaoPao_118}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 29)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==29  then
			LuaFnSetCopySceneData_Param(sceneId, 15, 1)
			
		end
	end
	
end

