--ThÕch Lâm ÉîÇétoÕ ðµ Ò£Íû
--212124
-- ×¢ÒâÊ¹ÓÃ³¡¾°¼ÆÊ±Æ÷À´Íê³É.
-- »¤ËÍÈÎÎñ

--MisDescBegin
--½Å±¾ºÅ
x212124_g_ScriptId = 212124

--Tiªp thøÈÎÎñNPCÊôÐÔ
x212124_g_Position_X=183
x212124_g_Position_Z=168
x212124_g_SceneID=26
x212124_g_AccomplishNPC_Name="Tr¸nh Viên"

--ÈÎÎñºÅ
x212124_g_MissionId = 940

--Ç°ÐøÈÎÎñ
x212124_g_MissionIdPre = 605

--Ä¿±êNPC
x212124_g_Name	="Tr¸nh Viên"

--ÈÎÎñ¹éÀà
x212124_g_MissionKind = 37

--ÐÆng c¤p nhi®m vø 
x212124_g_MissionLevel = 56

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x212124_g_IfMissionElite = 0

--ÈÎÎñÃû
x212124_g_MissionName="Cái nhìn say ð¡m"
x212124_g_MissionInfo="#{Mis_30_60_desc_015}"
x212124_g_MissionTarget="    Hµ t¯ng Dß½ng Thiªt Tín ðªn Viên Nguy®t Thôn, sau ðó ðªn ThÕch Lâm Viên Nguy®t Thôn tìm Tr¸nh Viên #{_INFOAIM183,167,26, Tr¸nh Viên}. "
x212124_g_MissionContinue="  Tß¾ng công cüa ta nh¤t ð¸nh s¨ tr· v«, nh¤t ð¸nh nhß thª, ta tin là v§y!"
x212124_g_MissionComplete="  Ta hình nhß cäm nh§n ðßþc ánh m¡t ¤m áp cüa tß¾ng công, chàng nh¤t ð¸nh cách ta không xa. Thiªt Tín! Chàng ðang · ðâu ? Ta s¨ ðþi chàng quay v«."

x212124_g_MoneyBonus=16000
x212124_g_exp=20000

x212124_g_Custom	= { {id="Ðã hµ t¯ng Dß½ng Thiªt Tín",num=1} }
x212124_g_IsMissionOkFail = 0
--MisDescEnd

-- »¤ËÍÂ·ÏßId
x212124_g_PatrolPathIndex = 0

-- ³¡¾°¼ÆÊ±Æ÷Index
x212124_g_SceneTimerIndex = -1
x212124_g_Step = 0
x212124_g_StartTime = 0
x212124_g_PlayerNum = 0
x212124_g_PlayerId= {-1,-1,-1,-1,-1,-1}


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212124_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x212124_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212124_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212124_g_Name then
			--x212124_OnContinue( sceneId, selfId, targetId )
			local bDone = x212124_CheckSubmit( sceneId, selfId )
			BeginEvent(sceneId)
				AddText(sceneId,x212124_g_MissionName)
				AddText(sceneId,x212124_g_MissionContinue)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212124_g_ScriptId,x212124_g_MissionId,bDone)		
			
			
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212124_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212124_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212124_g_MissionName)
				AddText(sceneId,x212124_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212124_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212124_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212124_g_ScriptId,x212124_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212124_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212124_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212124_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212124_g_Name then
			AddNumText(sceneId, x212124_g_ScriptId,x212124_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212124_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212124_g_Name then
			AddNumText(sceneId,x212124_g_ScriptId,x212124_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x212124_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212124_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel(sceneId, selfId) < x212124_g_MissionLevel then
		return 0
	end
	
	if (IsMissionHaveDone(sceneId,selfId,x212124_g_MissionIdPre) < 1 ) then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x212124_OnAccept( sceneId, selfId, targetId )
	if x212124_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- ¼ì²éÍæ¼ÒtoÕ ðµ ÐÄ·¨Ðúng²»Ðúng´ïµ½ÁËÒªÇó(Ç°ÁùÖÖÐÆng c¤p tâm pháp ´óÓÚµÈÓÚ25c¤p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 25 ) == 0  then -- zchw
   	--BeginEvent(sceneId)
	--		local strText = format("Nhi®m vø này yêu c¥u 6 loÕi tâm pháp ð«u ðÕt c¤p 55.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	-- Ê¹ÓÃmµt cái³¡¾°¼ÆÊ±Æ÷À´½øÐÐ...
	if x212124_g_Step ~= 0  and x212124_g_Step ~= 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "Møc tiêu ðang b§n, xin ðþi")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		return
	end
	
	-- ÕâÀïtoÕ ðµ »¤ËÍC¥n Æô¶¯³¡¾°toÕ ðµ ¼ÆÊ±Æ÷,Í¬Ê±ÆôÓÃÈËÉíÉÏtoÕ ðµ ¼ÆÊ±Æ÷
	if x212124_g_Step == 0   then
		local ret = AddMission( sceneId,selfId, x212124_g_MissionId, x212124_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
			return
		end
		
		-- TÕi ÈËÉíÉÏ¿ªmµt cái¼ÆÊ±Æ÷,
		StartMissionTimer(sceneId, selfId, x212124_g_MissionId)

		-- Cái này ³¡¾°¼ÆÊ±Æ÷,Ó¦¸ÃÐúngmµt Ö±±»Cái này »î¶¯Õ¼ÓÃtoÕ ðµ ,ËùÒÔ,Ö»ÒªCái này Öµ²»µÈÓÚ-1,¾Í²»ÒªÔÙÉÐúngë
		if x212124_g_SceneTimerIndex == -1  then
			x212124_g_SceneTimerIndex = SetTimer(sceneId, selfId, x212124_g_ScriptId, "OnSceneTimer", 1)
		end
		
		x212124_g_StartTime = LuaFnGetCurrentTime()
		x212124_g_Step = 1
		
		x212124_g_PlayerId[1] = selfId
		x212124_g_PlayerNum = 1
		
		Msg2Player(  sceneId, selfId,"#Y Hoàn thành nhi®m vø: Cái nhìn thâm tình",MSG2PLAYER_PARA )

		-- ÈÎÎñ±äÁ¿
		local misIndex = GetMissionIndexByID(sceneId,selfId,x212124_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 0)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 0)
	end
	
	if x212124_g_Step == 2   then
		
	end
	
	
end

function x212124_OnSceneTimer(sceneId, selfId)

	if x212124_g_Step < 3  then
		local nSelfId = -1
		local bHavePlayer = 0
			for i=1, x212124_g_PlayerNum  do	
				if x212124_g_PlayerId[i] ~= -1  then
					if LuaFnIsObjValid(sceneId, x212124_g_PlayerId[i])==1  and
						 LuaFnIsCanDoScriptLogic(sceneId, x212124_g_PlayerId[i]) == 1   then
						bHavePlayer = 1
						nSelfId = x212124_g_PlayerId[i]
						break
					end
				end
			end
		
		if bHavePlayer == 0   then
			-- ¼ÆÊ±Æ÷Í£Ö¹,Çå³ýËùÓÐtoÕ ðµ È«¾Ö±äÁ¿
			x212124_g_Step = 0
			x212124_g_StartTime = 0
			x212124_g_PlayerId[1] = -1
			x212124_g_PlayerId[2] = -1
			x212124_g_PlayerId[3] = -1
			x212124_g_PlayerId[4] = -1
			x212124_g_PlayerId[5] = -1
			x212124_g_PlayerId[6] = -1
			x212124_g_PlayerNum = 0
			x212124_g_StartTime = 0
			return
		end
	end
	
	-- Ö»Òª»¤ËÍÄ¿±ê×ßµ½ÖÕ ði¬m,¾Í»Ö¸´ËùÓÐtoÕ ðµ ±äÁ¿
	if x212124_g_Step == 1   then
		-- ¸øÐ¡¶ÓtoÕ ðµ ËùÓÐÍæ¼Ò·¢ËÍmµt Æð»¤ËÍtoÕ ðµ ÑûÇë
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nYangTX = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Dß½ng Thiªt Tín"  then
				nYangTX = nMonsterId
				bHaveMonster = 1
			end
		end
		
		for i=1, x212124_g_PlayerNum  do	
			if x212124_g_PlayerId[i] ~= -1  then
				if LuaFnIsObjValid(sceneId, x212124_g_PlayerId[i])==1  and
					 LuaFnIsCanDoScriptLogic(sceneId, x212124_g_PlayerId[i]) == 1   then
					bHavePlayer = 1
					nSelfId = x212124_g_PlayerId[i]
					
					break
				end
			end
		end
		local nTeamCount = GetNearTeamCount(sceneId, nSelfId)
		for i=0, nTeamCount-1 do
			local PlayerId = GetNearTeamMember(sceneId, nSelfId, i)
			if PlayerId ~= nSelfId    then
				CallScriptFunction((212124), "OnDefaultEvent", sceneId, PlayerId, nYangTX )
			end
		end
		
		-- ¼ÇÏÂCái này ½ÓÁËÈÎÎñtoÕ ðµ Íæ¼Ò
		x212124_g_StartTime = LuaFnGetCurrentTime()
		x212124_g_Step = 2
		
	elseif x212124_g_Step == 2   then
		-- µÈ´ý5 giây,Cái này Ê±¼äÐúngµÈ´ý±ðtoÕ ðµ Íæ¼Òmµt Æð½øÐÐCái này »¤ËÍtoÕ ðµ Ê±¼ä
		if LuaFnGetCurrentTime() - x212124_g_StartTime > 5   then
			--CallScriptFunction((200060), "Paopao",sceneId, "Dß½ng Thiªt Tín", "ThÕch Lâm", "Xu¤t phát, xu¤t phát!!!")
			x212124_g_Step = 3
			return
		end
		
	elseif x212124_g_Step == 3   then
		CallScriptFunction((200060), "Paopao",sceneId, "Dß½ng Thiªt Tín", "ThÕch Lâm", "Xu¤t phát, xu¤t phát!!!")
		
		-- b¡t ð¥u»¤ËÍ
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nHaveMonster = 0
		local nYangTX = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Dß½ng Thiªt Tín"  then
				nYangTX = nMonsterId
				nHaveMonster = 1
			end
		end
		
		if nHaveMonster == 0  then
			PrintStr("Tìm không th¤y Dß½ng Thiªt Tín")
			return 
		end
		-- ði¬mµ½»¤ËÍÑ²ÂßÂ·Ïß
		--SetNPCAIType(sceneId, nYangTX, 0)
		SetPatrolId(sceneId, nYangTX, x212124_g_PatrolPathIndex)
		x212124_g_Step = 4


	elseif x212124_g_Step == 4   then
		-- Èç¹û»¤ËÍÄ¿±êµ½ÁËÂ·ÏßÖÕ ði¬m,
		local Patrol_x
		local Patrol_z
		Patrol_x,Patrol_z = GetLastPatrolPoint(sceneId, x212124_g_PatrolPathIndex)
		
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nHaveMonster = 0
		local nYangTX = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Dß½ng Thiªt Tín"  then
				nYangTX = nMonsterId
				nHaveMonster = 1
			end
		end
		
		-- Èç¹ûÕÒ²»µ½Cái này ÈË.....ÔÝÊ±Ã»ÓÐ´¦Àí,
		
		local targetX, targetZ = GetWorldPos(sceneId, nYangTX)
		local distance = floor(sqrt((Patrol_x-targetX)*(Patrol_x-targetX)+(Patrol_z-targetZ)*(Patrol_z-targetZ)))
		
		if distance <= 2 then
			CallScriptFunction((200060), "Paopao",sceneId, "Dß½ng Thiªt Tín", "ThÕch Lâm", "Ðªn r°i, ðªn r°i!!!")
			x212124_g_Step = 0
			
			-- ÉèÖÃÍæ¼ÒtoÕ ðµ ÈÎÎñÍê³É,¸øÍæ¼ÒÌáÊ¾,µÈµÈtoÕ ðµ ²Ù×÷¶¼TÕi ÕâÀïÖ´ÐÐ
			for i=1, x212124_g_PlayerNum   do
				if x212124_g_PlayerId[i]~=-1   then
					local misIndex = GetMissionIndexByID(sceneId, x212124_g_PlayerId[i], x212124_g_MissionId)-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
					SetMissionByIndex(sceneId, x212124_g_PlayerId[i], misIndex, 0, 1)
					SetMissionByIndex(sceneId, x212124_g_PlayerId[i], misIndex, 1, 1)
					BeginEvent(sceneId)
						AddText(sceneId, "Hµ t¯ng Dß½ng Thiªt Tín thành công.")
					EndEvent()
					DispatchMissionTips(sceneId, x212124_g_PlayerId[i])
				end
			end
			return
		end
		
		-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÈÎÎñth¤t bÕi,
			-- th¤t bÕiÔ­Òò
				-- 1,¾àÀëNpc¹ýÔ¶
				-- 2,Àë¿ªÁËCái này ³¡¾°
				-- 3,ËÀÍö(ÓÃÀë¿ªCái này ³¡¾°À´ÊµÏÖ)
		for i=1, x212124_g_PlayerNum  do	
			if x212124_g_PlayerId[i] ~= -1  then
				if LuaFnIsObjValid(sceneId, x212124_g_PlayerId[i])~=1  and
					 LuaFnIsCanDoScriptLogic(sceneId, x212124_g_PlayerId[i]) ~= 1   then
					
					x212124_g_PlayerId[i] = -1
				end
			end
			
			if x212124_g_PlayerId[i] ~= -1  then
				local x, z = GetWorldPos(sceneId, x212124_g_PlayerId[i])
				local distance = floor(sqrt((x-targetX)*(x-targetX)+(z-targetZ)*(z-targetZ)))
				
				if distance>15   then
					BeginEvent(sceneId)
						AddText(sceneId, "Hµ t¯ng Dß½ng Thiªt Tín th¤t bÕi.")
					EndEvent()
					DispatchMissionTips(sceneId, x212124_g_PlayerId[i])
					
					local misIndex = GetMissionIndexByID(sceneId, x212124_g_PlayerId[i], x212124_g_MissionId)
					
					SetMissionByIndex(sceneId, x212124_g_PlayerId[i], misIndex, 0, 2)
					SetMissionByIndex(sceneId, x212124_g_PlayerId[i], misIndex, 1, 0)

					StopMissionTimer(sceneId, x212124_g_PlayerId[i],x212124_g_MissionId)
					x212124_g_PlayerId[i] = -1
				end
			end
		end
	end
	
end

--**********************************
--·ÅÆú
--**********************************
function x212124_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x212124_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x212124_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x212124_g_MissionName)
	AddText(sceneId,x212124_g_MissionComplete)
	AddMoneyBonus( sceneId, x212124_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212124_g_ScriptId,x212124_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212124_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212124_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId, selfId, x212124_g_MissionId)-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
	if GetMissionParam(sceneId, selfId, misIndex, 0) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--Ìá½»
--**********************************
function x212124_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212124_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x212124_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212124_g_exp)
		DelMission( sceneId, selfId, x212124_g_MissionId )
		MissionCom( sceneId, selfId, x212124_g_MissionId )
		Msg2Player( sceneId, selfId,"#YHoàn thành nhi®m vø: Cái nhìn thâm tình",MSG2PLAYER_PARA )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212124_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212124_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212124_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x212124_OnTimer(sceneId,selfId)
	if sceneId ~= 26   then
		BeginEvent(sceneId)
			AddText(sceneId, "Hµ t¯ng Dß½ng Thiªt Tín th¤t bÕi.")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		
		local misIndex = GetMissionIndexByID(sceneId, selfId, x212124_g_MissionId)
		SetMissionByIndex(sceneId, selfId, misIndex, 0, 2)
		SetMissionByIndex(sceneId, selfId, misIndex, 1, 0)
		
		StopMissionTimer(sceneId,selfId,x212124_g_MissionId)
	end
end
