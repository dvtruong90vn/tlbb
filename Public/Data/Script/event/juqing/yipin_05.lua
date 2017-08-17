-- TÕi  ºÕÁ¬ÌúÊ÷ °ï×éÏÂ,½øÈëmµt Æ·ÌÃ,
-- 200054

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200054_g_ScriptId = 200054

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200054_g_CopySceneName = "Nh¤t ph¦m ðß¶ng"

x200054_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200054_g_CopySceneMap = "yipin.nav"
x200054_g_Exit = "yipin.ini"
x200054_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x200054_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200054_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200054_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200054_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x200054_g_NoUserTime = 300				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x200054_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200054_g_Fuben_X = 32					--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x200054_g_Fuben_Z = 113					--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x200054_g_Back_X = 66					--Ô´³¡¾°Î»ÖÃX
x200054_g_Back_Z = 56					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200054_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾ÝÍæ¼ÒtoÕ ðµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ðµ ¸±±¾
	x200054_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200054_OnEnumerate( sceneId, selfId, targetId )
--	-- 0,Èç¹ûÍæ¼ÒÒÑ¾­ÓÐ4ÈÎÎñ,¾Í²»ÄÜTÕi ½øÈëCái này ¸±±¾
--	if IsHaveMission( sceneId, selfId, 4 ) > 0 then
--		return 0
--	end
	if IsMissionHaveDone(sceneId, selfId, 45) > 0   then
		return 0
	end

	-- 1,ÓµÓÐÈÎÎñºÅÎª43toÕ ðµ ÈÎÎñ,
	if IsHaveMission( sceneId, selfId, 43 ) > 0 then
		AddNumText( sceneId, x200054_g_ScriptId, "Ti­n ta t¾i Nh¤t Ph¦m ðß¶ng (ban ngày)", 10 ,-1  )
		return 0
	end

	-- 2,Ö»ÒªÍæ¼ÒÓÐ44ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 44 ) > 0 then
		AddNumText( sceneId, x200054_g_ScriptId, "Ti­n ta t¾i Nh¤t Ph¦m ðß¶ng (ban ngày)", 10 ,-1  )
		return 0
	end
	
	-- 3,Ö»ÒªÍæ¼ÒÓÐ45ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 45 ) > 0 then
		AddNumText( sceneId, x200054_g_ScriptId, "Ti­n ta t¾i Nh¤t Ph¦m ðß¶ng (ban ngày)", 10 ,-1  )
		return 0
	end
	
	-- 4,Èç¹ûÍæ¼ÒÍê³ÉÁË43,Ã»ÓÐ44,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 43) > 0   then
		if IsHaveMission( sceneId, selfId, 34 ) < 1 then
			AddNumText( sceneId, x200054_g_ScriptId, "Ti­n ta t¾i Nh¤t Ph¦m ðß¶ng (ban ngày)", 10 ,-1  )
			return 0
		end
	end
	
	-- 5,Èç¹ûÍæ¼ÒÍê³ÉÁË43,µ«ÐúngÃ»ÓÐ45,Ò²Ðúng¿ÉÒÔ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 43) > 0   then
		if IsHaveMission( sceneId, selfId, 45 ) < 1 then
			AddNumText( sceneId, x200054_g_ScriptId, "Ti­n ta t¾i Nh¤t Ph¦m ðß¶ng (ban ngày)", 10 ,-1  )
			return 0
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200054_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÐúng·ñÒª½øÈë¸±±¾
--**********************************
function x200054_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200054_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200054_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200054_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "yipin.nav"); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200054_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200054_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200054_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200054_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
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
	LuaFnSetSceneLoad_Area( sceneId, "yipin_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "yipin_monster.ini" )

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
function x200054_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200054_g_Fuben_X, x200054_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200054_g_Fuben_X, x200054_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--misIndex = GetMissionIndexByID(sceneId,mems[i],x200054_g_MissionId)
				
				--½«ÈÎÎñtoÕ ðµ µÚ2ºÅÊý¾ÝÉèÖÃÎª¸±±¾toÕ ðµ ³¡¾°ºÅ
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200054_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200054_g_Fuben_X, x200054_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x200054_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x200054_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200054_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓÐThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200054_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x200054_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200054_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200054_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200054_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200054_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200054_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x200054_OnCopySceneTimer( sceneId, nowTime )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) --¿ØÖÆËµ»°
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9)	--Ê±¼ä
	
	local nStepHusong = LuaFnGetCopySceneData_Param(sceneId, 11)

	local targetId = LuaFnGetCopySceneData_Param(sceneId, 15)

	-- paopao 
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) --¿ØÖÆËµ¹ý»°
	local nZhenying = 24
	
	-- »¤ËÍ
	if nStep1==3 then
--PrintNum(nStepHusong)
		if nStepHusong == 1   then
			-- ÏÈÍ¨ÖªËùÓÐTÕi ¸±±¾ÄÚtoÕ ðµ ÈË,Ðúng²»Ðúngmµt Æð²ÎÓë»¤ËÍ
			for i=0, 	nHumanNum-1  do
				local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				
				-- µ÷ÓÃ½ÓÈÎÎñtoÕ ðµ Óï¾ä
				CallScriptFunction((200056), "OnDefaultEvent",sceneId, nHumanId, targetId )
			end
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			LuaFnSetCopySceneData_Param(sceneId, 11, 2)
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng", "#{juqing_start_016}")
			
		elseif nStepHusong == 2   then
			-- µÈ´ý5 giây
			if nowTime - nTime >= 5  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 3)
				CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng", "#{juqing_start_017}")
			end
			
		elseif nStepHusong == 3   then
			-- Æô¶¯»¤ËÍÁË,
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng", "#{juqing_start_018}")
			SetPatrolId(sceneId, targetId, 0)
			
			LuaFnSetCopySceneData_Param(sceneId, 11, 4)
		
		elseif nStepHusong == 4   then
			-- »¤ËÍ¹ý³ÌÖÐtoÕ ðµ ¼ì²â
			local x, z = GetLastPatrolPoint(sceneId, 0)
			local targetX, targetZ = GetWorldPos(sceneId, targetId)
			
			local distance2 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
			if distance2 <= 1 then
				-- Ä¿±êµ½´ïÖÕ ði¬m,¸øÃ¿cáiÓÐÈÎÎñtoÕ ðµ Íæ¼ÒÌí¼Ómµt cái
				for i=0, 	nHumanNum-1  do
					local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				  BeginEvent(sceneId)
				  	AddText(sceneId, "Hoàn thành tình cänh \"su¯t ð¶i có muµi\"")
				  EndEvent()
				  DispatchMissionTips(sceneId, nHumanId)
				  
				  -- ¸øÓÐCái này ÈÎÎñtoÕ ðµ ÈË¼ÓÉÏÍê³É±êÖ¾
				  if IsHaveMission(sceneId, nHumanId, 45) > 0 then
						local misIndex = GetMissionIndexByID(sceneId,nHumanId,45)
						SetMissionByIndex( sceneId, nHumanId, misIndex, 0, 1)
						SetMissionByIndex( sceneId, nHumanId, misIndex, 1, 1)
				  end
				  
				  LuaFnSetCopySceneData_Param(sceneId, 11, 5)
				  LuaFnSetCopySceneData_Param(sceneId, 8, 4)
				end
			end

		end
	end

	if nStep1==1 then
		if nStep2==0 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_119}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

			-- ÉèÖÃ»ð¾æÎª29,
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				-- Hß TrúcC¥n µ÷AI
				if GetName(sceneId, nMonsterId)  == "Hß Trúc"  then
					SetUnitReputationID(sceneId,selfId, nMonsterId, 10)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 16)
				end
				
				if GetName(sceneId, nMonsterId)  == "Nh¤t ph¦m ð¯t ðu¯c"  then
					SetUnitReputationID(sceneId,selfId, nMonsterId, 30)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 7)
					
					-- ¸øCái này »ð¾æ+mµt cáiBUFF,ÃâÒß¿Ö¾å.
					LuaFnSendSpecificImpactToUnit(sceneId, nMonsterId, nMonsterId, nMonsterId, 52, 0 )
				end
				
				if GetName(sceneId, nMonsterId)  == "Giang h° hào ki®t"  then
					SetUnitReputationID(sceneId,selfId, nMonsterId, nZhenying)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 16)
					if nZhenying == 24  then
						nZhenying =25
					else
						nZhenying =24
					end
				end
	
				if GetName(sceneId, nMonsterId)  == "Mµ Dung Phøc"  then
					SetUnitReputationID(sceneId,selfId, nMonsterId, 10)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					SetNPCAIType(sceneId, nMonsterId, 3)
				end
			end
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			
		elseif nStep2==1 then
			-- ¼ì²âÐúng²»Ðúng mµt Æ· ði¬mÈ¼»ð¾æ ËÀ¹â
			local bOk = 1
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				-- Hß TrúcC¥n µ÷AI
				if GetName(sceneId, nMonsterId)  == "Nh¤t ph¦m ð¯t ðu¯c"  then
					bOk = 0
				end
			end
			
			if bOk == 1 then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end
		
		elseif nStep2==2 then
			--PrintStr("zhanshou wancheng")
			
			LuaFnSetCopySceneData_Param(sceneId, 8, 2)
			LuaFnSetCopySceneData_Param(sceneId, 10,0)
			
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				-- Hß TrúcC¥n µ÷AI
				if GetName(sceneId, nMonsterId)  == "Giang h° hào ki®t"  then
					SetUnitReputationID(sceneId,selfId, nMonsterId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					SetNPCAIType(sceneId, nMonsterId, 3)
					
				end
				if GetName(sceneId, nMonsterId)  == "Hß Trúc"  then
					SetUnitReputationID(sceneId,selfId, nMonsterId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					SetNPCAIType(sceneId, nMonsterId, 3)
					
				end
			end

		end 
		
	end
	
	-- ¶Ô°× mµt Ð¦ÈË¼äÍòÊÂ ½ÓÈÎÎñtoÕ ðµ Ê±ºò´¥·¢
	if nStep1==2 then
		if nStep2==0 then
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
		elseif nStep2==1 	then
			if nowTime - nTime > 0  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end

		elseif nStep2==2 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_120}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==3 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			end

		elseif nStep2==4 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_121}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==5 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 6)
			end

		elseif nStep2==6 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_122}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==7 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 8)
			end

		elseif nStep2==8 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_123}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==9 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 10)
			end

		elseif nStep2==10 then
			CallScriptFunction((200060), "Paopao",sceneId, "", "mµt Æ·ÌÃ", "#{JQ_PaoPao_124}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==11 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 12)
			end

		elseif nStep2==12 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_125}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==13 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 14)
			end

		elseif nStep2==14 then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_126}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 15)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==15 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 16)
			end

		elseif nStep2==16 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_127}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 17)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==17 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 18)
			end

		elseif nStep2==18 then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_128}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 19)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==19 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 20)
			end

		elseif nStep2==20 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_129}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 21)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==21 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 22)
			end

		elseif nStep2==22 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_130}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 23)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==23 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 24)
			end

		elseif nStep2==24 then
			CallScriptFunction((200060), "Paopao",sceneId, "Mµ Dung Phøc", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_131}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 25)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==25 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 26)
			end

		elseif nStep2==26 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_132}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 27)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==27 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 28)
			end

		elseif nStep2==28 then
			CallScriptFunction((200060), "Paopao",sceneId, "Mµ Dung Phøc", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_133}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 29)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==29 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 30)
			end

		elseif nStep2==30 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_134}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 31)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==31 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 32)
			end

		elseif nStep2==32 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_135}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 33)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==33 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 34)
			end

		elseif nStep2==34 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_136}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 35)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==35 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 36)
			end

		elseif nStep2==36 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_137}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 37)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==37 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 38)
			end

		elseif nStep2==38 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_138}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 39)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==39 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 40)
			end

		elseif nStep2==40 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hi¬u Lôi", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_139}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 41)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==41 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 42)
			end

		elseif nStep2==42 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ðß¶ng", "#{JQ_PaoPao_140}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 43)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

			LuaFnSetCopySceneData_Param(sceneId, 15, 1)
		end
	end

end

