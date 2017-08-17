-- ¾ÛÏÍ×¯Ö® LÕc Dß½ng³¡¾°»¤ËÍ,ÖØ ði¬m²¿·ÖÅ¶
-- ´¥·¢Ìõ¼þ,Hoàn t¤t nhi®m vø21,È»ºó½øÈëLÕc Dß½ngtoÕ ðµ ÊÂ¼þÇøÓò

--MisDescBegin
--½Å±¾ºÅ
x200022_g_ScriptId = 200022

--ÈÎÎñºÅ
x200022_g_MissionId = 22

--Ç°ÐøÈÎÎñºÅ
x200022_g_PreMissionId = 47

--Ä¿±êNPC
x200022_g_Name	="Tiêu Phong"
x200022_g_Name1 ="T× Kinh Lôi"

--ÈÎÎñ¹éÀà
x200022_g_MissionKind = 47

--ÐÆng c¤p nhi®m vø 
x200022_g_MissionLevel = 40

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200022_g_IfMissionElite = 0

--ÈÎÎñÃû
x200022_g_MissionName="Dù vÕn ngß¶i, ta vçn cÑ tiªn"
--ÈÎÎñÃèÊö
x200022_g_MissionInfo="#{Mis_juqing_0022}"
--Møc tiêu nhi®m vø
x200022_g_MissionTarget="#{Mis_juqing_Tar_0022}"		
--Ìá½»Ê±npctoÕ ðµ »°
x200022_g_MissionComplete="  Tiêu Phong th§t là...l¨ nào huynh ta chï vì mµt cô nß½ng, dám quên cä tính mÕng mình? Không khéo gi¶ ðây Tø Hi«n Trang ðã ðÕi loÕn m¤t.."		

x200022_g_MoneyBonus=9000
x200022_g_exp=9600

x200022_g_RadioItemBonus={{id=10423008 ,num=1},{id=10423009,num=1},{id=10423010,num=1},{id=10423011,num=1}}

x200022_g_Custom	= {{id="Dù vÕn ngß¶i, ta vçn cÑ tiªn",num=1}}

--MisDescEnd

-- ¶ÓÎéId
x200022_g_GroupId = 0

-- »¤ËÍÂ·ÏßId
x200022_g_PatrolPathIndex = 4

-- ³¡¾°¼ÆÊ±Æ÷Index
x200022_g_SceneTimerIndex = -1
x200022_g_Step = 0
x200022_g_StartTime = 0
x200022_g_PlayerNum = 0
x200022_g_PlayerId= {-1,-1,-1,-1,-1,-1}

function x200022_DisplayBonus(sceneId, missionIndex)
	
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200022_OnDefaultEvent( sceneId, selfId, targetId, missionIndex )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200022_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200022_g_MissionId) > 0)  then
		if GetName(sceneId, targetId) == x200022_g_Name1   then
			x200022_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200022_CheckAccept(sceneId,selfId) > 0 then
		-- ÅÐ¶ÏÐúngTÕi ¸±±¾,
		if GetName(sceneId, targetId) == x200022_g_Name   then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x200022_g_MissionName)
				AddText(sceneId,x200022_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200022_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				for i, item in x200022_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x200022_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200022_g_ScriptId,x200022_g_MissionId)
		end
	end

end

function x200022_OnMissionRefuse()
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x200022_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetName(sceneId, targetId) == x200022_g_Name   then
		if GetNumText() == 0    then
			BeginEvent(sceneId)
				AddText(sceneId,x200022_g_MissionName)
				AddText(sceneId,x200022_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200022_g_MissionTarget)
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200022_g_ScriptId,x200022_g_MissionId)
		end
	end
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200022_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200022_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200022_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == x200022_g_Name1   then
			AddNumText(sceneId, x200022_g_ScriptId,x200022_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200022_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId, targetId) == x200022_g_Name    then
			AddNumText(sceneId,x200022_g_ScriptId,x200022_g_MissionName,1,-1);
		end
	end

end

--**********************************
-- 
--**********************************
function x200022_OnLockedTarget( sceneId, selfId, targetId, missionIndex )

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200022_CheckAccept( sceneId, selfId )
	-- ½ÓÈÎÎñtoÕ ðµ Ìõ¼þÐúng,ÈËÎï´ïµ½20c¤pÒÔÉÏ,²¢ÇÒÍê³ÉÁËÇ°ÐøÈÎÎñ
	if GetLevel(sceneId, selfId) < 40   then
		return 0
	end
	
	if IsMissionHaveDone(sceneId, selfId, x200022_g_PreMissionId ) < 1   then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200022_OnAccept( sceneId, selfId, targetId )

	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­Íê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, x200022_g_MissionId) > 0   then
		return
	end
	
	if x200022_CheckAccept(sceneId, selfId)  < 1   then
		return
	end

	if x200022_g_Step ~= 0  and x200022_g_Step ~= 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "Møc tiêu ðang b§n, xin ðþi")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		return
	end
	
	-- ÕâÀïtoÕ ðµ »¤ËÍC¥n Æô¶¯³¡¾°toÕ ðµ ¼ÆÊ±Æ÷,²»ÄÜÊ¹ÓÃÈÎÎñ¼ÆÊ±Æ÷
	if x200022_g_Step == 0   then
		local ret = AddMission( sceneId,selfId, x200022_g_MissionId, x200022_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
			return
		end
		
		-- Cái này ³¡¾°¼ÆÊ±Æ÷,Ó¦¸ÃÐúngmµt Ö±±»Cái này »î¶¯Õ¼ÓÃtoÕ ðµ ,ËùÒÔ,Ö»ÒªCái này Öµ²»µÈÓÚ-1,¾Í²»ÒªÔÙÉÐúngë
		if x200022_g_SceneTimerIndex == -1  then
			x200022_g_SceneTimerIndex = SetTimer(sceneId, selfId, x200022_g_ScriptId, "OnSceneTimer", 1)
		end
		
		x200022_g_StartTime = LuaFnGetCurrentTime()
		x200022_g_Step = 1
		
		x200022_g_PlayerId[1] = selfId
		x200022_g_PlayerNum = 1
		
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Dù vÕn ngß¶i, ta vçn cÑ tiªn",MSG2PLAYER_PARA )
	end
	
	if x200022_g_Step == 2   then
		-- °ÑCái này Íæ¼Ò¼Óµ½»¤ËÍÁÐ±íÖÐÈ¥
		if x200022_g_PlayerNum >= 6   then
			-- ±¾´Î²Î¼Ó»¤ËÍtoÕ ðµ ÈËÊýÂúÁË,²»ÄÜÔÙ£«Äã
			Msg2Player(  sceneId, selfId,"#Yngß¶i tham gia l¥n hµ t¯ng này ðã ð¥y, xin ch¶ l¥n sau" , MSG2PLAYER_PARA )
			return
		end
		
		local ret = AddMission( sceneId,selfId, x200022_g_MissionId, x200022_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
			return
		end
		
		x200022_g_PlayerNum = x200022_g_PlayerNum + 1
		x200022_g_PlayerId[x200022_g_PlayerNum] = selfId
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Dù vÕn ngß¶i, ta vçn cÑ tiªn",MSG2PLAYER_PARA )
	end
	
end

--**********************************
--³¡¾°Timer
--**********************************
function x200022_OnSceneTimer( sceneId, selfId )
	--PrintNum(x200022_g_Step)

	if x200022_g_Step < 3  then
		local nSelfId = -1
		local bHavePlayer = 0
	--	if LuaFnIsObjValid(sceneId, nSelfId)==1  and
	--		 LuaFnIsCanDoScriptLogic(sceneId, nSelfId) == 0   then
			for i=1, x200022_g_PlayerNum  do	
				if x200022_g_PlayerId[i] ~= -1  then
					if LuaFnIsObjValid(sceneId, x200022_g_PlayerId[i])==1  and
						 LuaFnIsCanDoScriptLogic(sceneId, x200022_g_PlayerId[i]) == 1   then
						bHavePlayer = 1
						nSelfId = x200022_g_PlayerId[i]
						
						break
					end
				end
			end
	--	else
	--		bHavePlayer = 1
	--	end
		
		if bHavePlayer == 0   then
			-- ¼ÆÊ±Æ÷Í£Ö¹,Çå³ýËùÓÐtoÕ ðµ È«¾Ö±äÁ¿
			x200022_g_Step = 0
			x200022_g_StartTime = 0
			x200022_g_PlayerId[1] = -1
			x200022_g_PlayerId[2] = -1
			x200022_g_PlayerId[3] = -1
			x200022_g_PlayerId[4] = -1
			x200022_g_PlayerId[5] = -1
			x200022_g_PlayerId[6] = -1
			x200022_g_PlayerNum = 0
			x200022_g_StartTime = 0
			
			return
		end
		--end
	end
	
	-- ¼ì²âÖ»ÒªTiêu PhongºÍ°¢ÖéÖÐtoÕ ðµ ÈÎºÎmµt cáiÈË²»TÕi ³¡¾°ÖÐÁË,¾ÍÇå¿ÕËùÓÐtoÕ ðµ È«¾Ö±äÁ¿
	local nNpcNum = GetMonsterCount(sceneId)
	local kk = 0
	local bHaveQiao = 0
	for kk = 0, nNpcNum-1 do
		local nNpcId = GetMonsterObjID(sceneId,kk)
		if GetName(sceneId, nNpcId)  == "Tiêu Phong"  then
			bHaveQiao = 1+bHaveQiao
		end
		
		if GetName(sceneId, nNpcId)  == "A Châu"  then
			bHaveQiao = 1+bHaveQiao
		end
	end
	
	if 	bHaveQiao ~= 2   then
		--StopTimer(sceneId, x200022_g_SceneTimerIndex)
		--x200022_g_SceneTimerIndex = -1
		x200022_g_Step = 0
		x200022_g_StartTime = 0
		x200022_g_PlayerId[1] = -1
		x200022_g_PlayerId[2] = -1
		x200022_g_PlayerId[3] = -1
		x200022_g_PlayerId[4] = -1
		x200022_g_PlayerId[5] = -1
		x200022_g_PlayerId[6] = -1
		x200022_g_PlayerNum = 0
		x200022_g_StartTime = 0
		
		return
	end
	
	
	if x200022_g_Step == 1   then
		-- ¸øÐ¡¶ÓtoÕ ðµ ËùÓÐÍæ¼Ò·¢ËÍmµt Æð»¤ËÍtoÕ ðµ ÑûÇë
		--local groupId = AllocateMonsterGroup(sceneId)
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nQiaofenId = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
				nQiaofenId = nMonsterId
				bHaveMonster = 1
			end
		end
		
		for i=1, x200022_g_PlayerNum  do	
			if x200022_g_PlayerId[i] ~= -1  then
				if LuaFnIsObjValid(sceneId, x200022_g_PlayerId[i])==1  and
					 LuaFnIsCanDoScriptLogic(sceneId, x200022_g_PlayerId[i]) == 1   then
					bHavePlayer = 1
					nSelfId = x200022_g_PlayerId[i]
					
					break
				end
			end
		end
--		PrintNum(nSelfId)
--		PrintNum(x200022_g_PlayerNum)
		local nTeamCount = GetNearTeamCount(sceneId, nSelfId)
		for i=0, nTeamCount-1 do
			local PlayerId = GetNearTeamMember(sceneId, nSelfId, i)
			if PlayerId ~= nSelfId    then
				CallScriptFunction((200022), "OnDefaultEvent", sceneId, PlayerId, nQiaofenId )
			end
		end
		
		-- ¼ÇÏÂCái này ½ÓÁËÈÎÎñtoÕ ðµ Íæ¼Ò
		--x200022_g_PlayerNum = 1
		--x200022_g_PlayerId[1]= nSelfId
		x200022_g_StartTime = LuaFnGetCurrentTime()
		
		x200022_g_Step = 2

		CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Phong", "LÕc Dß½ng", "#{juqing_start_007}")
		
	elseif x200022_g_Step == 2   then
		-- µÈ´ý5 giây,Cái này Ê±¼äÐúngµÈ´ý±ðtoÕ ðµ Íæ¼Òmµt Æð½øÐÐCái này »¤ËÍtoÕ ðµ Ê±¼ä
		if LuaFnGetCurrentTime() - x200022_g_StartTime > 5   then
			CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Phong", "LÕc Dß½ng", "#{juqing_start_008}")
			x200022_g_Step = 3
			return
		end
		
	elseif x200022_g_Step == 3   then
		CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Phong", "LÕc Dß½ng", "#{juqing_start_009}")
		
		-- ÉÐúngëmµt cáiÑ²Âß×é,¿ªÊ¼×ß
		--local groupId = AllocateMonsterGroup(sceneId)

		-- Ô­À´ÐúngÓÃtoÕ ðµ ÐúngÉÐúngëmµt cáiÐÂtoÕ ðµ Ñ²Âß×é,ÏÖTÕi Ê¹ÓÃmµt cái¹Ì¶¨toÕ ðµ Ñ²Âß×éÀ´Íê³É
		-- TÕi b¡t ð¥uCái này ÈºÌå»¤ËÍÇ°,ÏÖÇå¿Õmµt ÏÂCái này ×é
		ReleaseMonsterGroup(sceneId, x200022_g_GroupId)
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nHaveMonster = 0
		local nQiaofenId = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "A Châu"  then
				AddGroupMember(sceneId, x200022_g_GroupId, nMonsterId, 2, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
				nHaveMonster = nHaveMonster + 1
			end
			if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
				AddGroupLeader(sceneId, x200022_g_GroupId, nMonsterId)
				nQiaofenId = nMonsterId
				nHaveMonster = nHaveMonster + 1
			end
		end
		SetIntervalDistOfGroupMember(sceneId, x200022_g_GroupId, 1)
		
		RefixPosOfGroupMember(sceneId,x200022_g_GroupId,nQiaofenId)
		-- ði¬mµ½»¤ËÍÑ²ÂßÂ·Ïß
		SetPatrolId(sceneId, nQiaofenId, x200022_g_PatrolPathIndex)
		
		x200022_g_Step = 4
		
	elseif x200022_g_Step == 4   then
	
		-- ¼ÆÊ±Æ÷Ã¿´Î¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐÈÎÎñth¤t bÕitoÕ ðµ Çé¿ö³öÏÖ,
		for i=1, x200022_g_PlayerNum  do
			-- Èç¹ûÍæ¼ÒÀë¿ªÁË³¡¾°,¾ÍÈÎÎñth¤t bÕi
			if x200022_g_PlayerId[i] ~= -1   then
				if LuaFnIsObjValid(sceneId, x200022_g_PlayerId[i])==0  or
					 LuaFnIsCanDoScriptLogic(sceneId, x200022_g_PlayerId[i]) == 0  then
					x200022_g_PlayerId[i] = -1
				end	
			end
		end
		
		-- TÕi ÕâÀïÌí¼ÓLÕc Dß½ng¾ÓÃñtoÕ ðµ ÅÝÅÝ,Ôö¼ÓÆø·Õ
		
		
		-- ¼ì²â»¤ËÍtoÕ ðµ Íê³ÉÌõ¼þ,Tiêu Phong ×ßµ½ÁËÄ¿±ê ði¬m
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
				-- ÅÐ¶ÏTiêu PhongÐúng²»Ðúng×ßµ½ÁË
				local targetX, targetZ = GetWorldPos(sceneId, nMonsterId)
				local x, z = GetLastPatrolPoint(sceneId, x200022_g_PatrolPathIndex)
				local distance = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
				
				if distance<=2   then
					x200022_g_Step = 5
					-- Í¨ÖªËùÓÐÈË,»¤ËÍ³É¹¦
					for i=1, x200022_g_PlayerNum   do
						if x200022_g_PlayerId[i]~=-1   then
							local misIndex = GetMissionIndexByID(sceneId, x200022_g_PlayerId[i], x200022_g_MissionId)-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
							SetMissionByIndex(sceneId, x200022_g_PlayerId[i], misIndex, 0, 1)
							BeginEvent(sceneId)
								AddText(sceneId, "Hµ t¯ng Tiêu Phong thành công")
							EndEvent()
							DispatchMissionTips(sceneId, x200022_g_PlayerId[i])
						end
					end
				end
			end
		end
		
	elseif x200022_g_Step == 5  then
		--º°»°¾çÇé
		CallScriptFunction((200060), "Paopao",sceneId, "T× Kinh Lôi", "LÕc Dß½ng", "#{JQ_PaoPao_79}") 
		x200022_g_Step = 6
		x200022_g_StartTime = LuaFnGetCurrentTime()
		
	elseif x200022_g_Step == 6  then
		if LuaFnGetCurrentTime()-x200022_g_StartTime > 3   then
			CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Phong", "LÕc Dß½ng", "#{JQ_PaoPao_80}")
			x200022_g_Step = 7
			x200022_g_StartTime = LuaFnGetCurrentTime()
		end
		
	elseif x200022_g_Step == 7  then
		if LuaFnGetCurrentTime()-x200022_g_StartTime > 3   then
			CallScriptFunction((200060), "Paopao",sceneId, "T× Kinh Lôi", "LÕc Dß½ng", "#{JQ_PaoPao_81}")
			x200022_g_Step = 8
			x200022_g_StartTime = LuaFnGetCurrentTime()
		end
		
	elseif x200022_g_Step == 8  then
		if LuaFnGetCurrentTime()-x200022_g_StartTime > 5   then
		
			-- ¼ÆÊ±Æ÷Í£Ö¹,Çå³ýËùÓÐtoÕ ðµ È«¾Ö±äÁ¿
			--StopTimer(sceneId, x200022_g_SceneTimerIndex)
			
			--x200022_g_SceneTimerIndex = -1
			x200022_g_Step = 0
			x200022_g_StartTime = 0
			x200022_g_PlayerId[1] = -1
			x200022_g_PlayerId[2] = -1
			x200022_g_PlayerId[3] = -1
			x200022_g_PlayerId[4] = -1
			x200022_g_PlayerId[5] = -1
			x200022_g_PlayerId[6] = -1
			x200022_g_PlayerNum = 0
			x200022_g_StartTime = 0
			
			--É¾³ýTiêu PhongºÍA Châu
		  local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
				end
				
				if GetName(sceneId, nMonsterId)  == "A Châu"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
				end
			end
		end	
	end
	
end

--**********************************
--·ÅÆú
--**********************************
function x200022_OnAbandon( sceneId, selfId )
  --½«»¤ËÍnpcË²ÒÆ»ØÔ­À´Î»ÖÃ
  DelMission(sceneId, selfId, x200022_g_MissionId)
  
end

--**********************************
--¼ÌÐø
--**********************************
function x200022_OnContinue( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,x200022_g_Name)
		AddText(sceneId,x200022_g_MissionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200022_g_MissionTarget)
		AddText(sceneId,"#{M_SHOUHUO}#r")
		AddMoneyBonus( sceneId, x200022_g_MoneyBonus )
		for i, item in x200022_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x200022_g_ScriptId, x200022_g_MissionId)

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200022_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200022_g_MissionId)-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
	local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)	
	if bComplete == 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x200022_OnSubmit( sceneId, selfId, targetId, selectRadioId, missionIndex )
	-- ¼ì²âÐúng²»ÐúngThöa mãnHoàn t¤t nhi®m vøtoÕ ðµ Ìõ¼þ
	if x200022_CheckSubmit(sceneId, selfId) ~= 1 then 
		return
	end
	BeginAddItem(sceneId)
	for i, item in x200022_g_RadioItemBonus do
		if item.id == selectRadioId then
			AddItem( sceneId,item.id, item.num )
		end
	end
	ret = EndAddItem(sceneId,selfId)
	--Ìí¼ÓÈÎÎñ½±Àø
	if ret < 1 then
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
		BeginEvent(sceneId)
			strText = "Nhi®m vø th¤t bÕi!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	AddItemListToHuman(sceneId,selfId)

	AddMoney(sceneId,selfId,x200022_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,x200022_g_exp)
	
	DelMission( sceneId,selfId, x200022_g_MissionId )
	--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
	MissionCom( sceneId,selfId, x200022_g_MissionId )
	Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Dù vÕn ngß¶i, ta vçn cÑ tiªn",MSG2PLAYER_PARA )

end

function x200022_OnHumanDie(sceneId, selfId)

end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200022_OnTimer(sceneId,selfId)--,missionIndex)
	
end


