--Hµ t¯ng ÈÎÎñ(ËùÓĞÕâÒ»ÀàĞÍ¶¼Ê¹ÓÃÕâ¸öLUA£¬ĞŞ¸ÄÇë×¢ÒâÍ¨ÓÃĞÔ)

--ÈÎÎñ¶Î·ÖÀàÁĞ±í_MissType	1.É±¹ÖÈÎÎñ	2.ËÍĞÅÈÎÎñ	3.Ì½Ë÷ÈÎÎñ	4.Ñ°ÎïÈÎÎñ	5.Hµ t¯ng ÈÎÎñ
x006671_g_MissionTypeList	=	{ {StartIdx = 1000000, EndIdx = 1009999, ScriptId = 006666},
															{StartIdx = 1010000, EndIdx = 1019999, ScriptId = 006668},
															{StartIdx = 1020000, EndIdx = 1029999, ScriptId = 006669},
															{StartIdx = 1030000, EndIdx = 1039999, ScriptId = 006667},
															{StartIdx = 1050000, EndIdx = 1059999, ScriptId = 006671} }

function x006671_DisplayBonus(sceneId, missionIndex)
	local itemCt
	local a = {{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0}}
	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetAwardItem(missionIndex)
	for i=1, itemCt do
		if a[i].id > 0 then
			AddItemBonus( sceneId, a[i].id, a[i].ct)
		end
	end
	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetRadioItem(missionIndex)
	for i=1, itemCt do
		if a[i].id > 0 then
			AddRadioItemBonus( sceneId, a[i].id, a[i].ct)
		end
	end
	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct = TGetHideItem(missionIndex)
	for i=1, itemCt do
		if a[i].id > 0 then
			AddRandItemBonus( sceneId, a[i].id, a[i].ct)
		end
	end
	local awardMoney = TGetAwardMoney(missionIndex)
	AddMoneyBonus( sceneId, awardMoney)
end
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x006671_OnDefaultEvent( sceneId, selfId, targetId, missionIndex )	--µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)
	local misIndex = GetMissionIndexByID(sceneId, selfId, missionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ

	local missionTarget, missionInfo, missionContinue, missionComplete = TGetMissionDesc(missionIndex)
	
	if IsHaveMission(sceneId,selfId,missionId) > 0 then
		if GetNumText() == 3 then
			--Èç¹ûÑ¡ÖĞµÄ¶ÔÏóÊÇÒªHµ t¯ng µÄnpc
			local x, z = GetWorldPos(sceneId,targetId)--¼ÇÂ¼npcµÄ×ø±ê
			SetMissionByIndex(sceneId,selfId,misIndex,7,sceneId) --Ê¼ÖÕÒÔµ±Ç°³¡¾°Îª×¼
			SetMissionByIndex(sceneId,selfId,misIndex,1,0) --Íê³ÉÇé¿ö
			SetMissionByIndex(sceneId,selfId,misIndex,2,targetId)
			SetMissionByIndex(sceneId,selfId,misIndex,3,x)
			SetMissionByIndex(sceneId,selfId,misIndex,4,z)

      --*********************************************************************	
      -- npcÓĞĞ§ĞÔ¼ì²é
   		local targetNpcScene, targetNpcName = TGetTargetNpcInfo(missionIndex)
			local targetName = GetName(sceneId, targetId)
			if targetNpcScene ~= sceneId 
			 or targetNpcName ~= targetName then
			 -- ¸Ãnpc²»ÊÇÒª²Ù×÷µÄnpc
			 return 0
			end
			-- »ñÈ¡ÉèÖÃÇ°µÄÊı¾İĞÅÏ¢
			local oldAIType = GetNPCAIType(sceneId, targetId)
			local oldUnitReputationId = GetUnitReputationID(sceneId, selfId, targetId)
			-- ÉèÖÃnpcÑ²Âß¿ªÊ¼µÄÊı¾İ
			local patrolPathIndex = TGetHusongPatrolPath(missionIndex)		-- µÃµ½Hµ t¯ng Ñ²ÂßÂ·Ïß
			SetUnitReputationID(sceneId, selfId, targetId, 0) --0ÎªĞÂÊÖÕóÓª,ºÍÍæ¼ÒÓÑºÃ
			SetMonsterFightWithNpcFlag(sceneId, targetId, 1) --´ò¿ªÔÊĞí¹ÖÎïºÍ¹ÖÎï´ò¼ÜµÄ±ê¼Ç
			SetNPCAIType(sceneId, targetId, TGetHusongAIType(missionIndex))
			SetPatrolId(sceneId, targetId, patrolPathIndex)
		  --ÉèÖÃnpcÑ²Âß½áÊøµÄÊı¾İ
      AddNpcPatrolEndPointOperator(sceneId,targetId,"AIS_SetPatrolID", -1) 
      AddNpcPatrolEndPointOperator(sceneId,targetId,"AIS_SetBaseAIType", 0, -1, oldAIType) 
      AddNpcPatrolEndPointOperator(sceneId,targetId,"AIS_SetReputationID_CodingRefix", oldUnitReputationId) 
      AddNpcPatrolEndPointOperator(sceneId,targetId,"AIS_SetMonsterFightWithNpcFlag", 0)
			--*********************************************************************
			
			--Æô¶¯¸ÃÈÎÎñµÄÈÎÎñÊ±ÖÓÆ÷
			StartMissionTimer(sceneId, selfId, missionId)
			SetMissionEvent(sceneId, selfId, missionId, 5)
			SetMissionEvent(sceneId, selfId, missionId, 6)
		end
		BeginEvent(sceneId)
			AddText(sceneId, missionName)
			AddText(sceneId, missionContinue)
		EndEvent( )
		local bDone = x006671_CheckSubmit( sceneId, selfId, missionIndex )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,missionIndex,missionId,bDone)
	elseif x006671_CheckAccept(sceneId,selfId,missionIndex) > 0 then
		local targetscene, targetname = TGetTargetNpcInfo(missionIndex)
		local monsterId = GetMonsterIdByName(sceneId, targetname)
		local targetx, targetz = GetWorldPos(sceneId, monsterId)
		local respawnx, rewpawnz = GetMonsterRespawnPos(sceneId, monsterId)
		local distSqr = (targetx-respawnx)*(targetx-respawnx) + (targetz-rewpawnz)*(targetz-rewpawnz)
		if distSqr > 2.0 then
			BeginEvent(sceneId)
				AddText(sceneId, missionName)
				AddText(sceneId, "Møc tiêu ğã b¸ kë khác h÷ t¯ng v«")
			EndEvent( )
			DispatchEventList(sceneId, selfId, targetId)			
		else	
			BeginEvent(sceneId)
				AddText(sceneId, missionName)
				AddText(sceneId, missionInfo)
				x006671_DisplayBonus(sceneId, missionIndex)
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,missionIndex,missionId)
		end
	end	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x006671_OnEnumerate( sceneId, selfId, targetId, missionIndex )
	--Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)
	
	-- ÅĞ¶¨Íæ¼ÒµÄÌõ¼şÊÇ²»ÊÇ¹»½ÓÊÜÕâ¸öÈÎÎñ£¬Èç¹û¹»¾ÍÏÔÊ¾£¬²»¹»¾Í²»ÏÔÊ¾
	local nLevel,nMis1,nMis2,nMis3 = TGetCheckInfo(missionIndex)
	
	
	if nLevel > GetLevel(sceneId, selfId)  then
		return
	end
	
	if nMis1 > 0   then
		-- Èç¹ûÇ°ĞøÈÎÎñ1Ã»ÓĞÍê³É£¬¾Í·µ»Ø
		if IsMissionHaveDone(sceneId, selfId, nMis1) <= 0   then
			return
		end
	end
	
	if nMis2 > 0   then
		-- Èç¹ûÇ°ĞøÈÎÎñ2Ã»ÓĞÍê³É£¬¾Í·µ»Ø
		if IsMissionHaveDone(sceneId, selfId, nMis2) <= 0   then
			return
		end
	end
	
	if nMis3 > 0   then
		-- Èç¹ûÇ°ĞøÈÎÎñ3Ã»ÓĞÍê³É£¬¾Í·µ»Ø
		if IsMissionHaveDone(sceneId, selfId, nMis3) <= 0   then
			return
		end
	end

	-- Èç¹û±¾ÈÎÎñÒÑ¾­Íê³É£¬¾Í·µ»Ø
	if IsMissionHaveDone(sceneId, selfId, missionId) > 0 then
   	return
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
	elseif IsHaveMission(sceneId, selfId, missionId) > 0 then
		local completeNpcScene, completeNpcName = TGetCompleteNpcInfo(missionIndex)
		if GetName(sceneId, targetId) == completeNpcName then
			--TBeginEvent(sceneId)
				TAddNumText(sceneId, missionIndex, missionName,1,-1);
			--TEndEvent()	
			TDispatchEventList(sceneId, selfId, targetId)
		end
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x006671_CheckAccept(sceneId, selfId, missionIndex) > 0 then
  	local acceptNpcScene, acceptNpcName = TGetAcceptNpcInfo(missionIndex)
		if GetName(sceneId, targetId) == acceptNpcName then
			--TBeginEvent(sceneId)
				TAddNumText(sceneId, missionIndex, missionName,1,-1);
			--TEndEvent()
			TDispatchEventList(sceneId, selfId, targetId)	
		end
  end
  
end

--**********************************
-- 
--**********************************
function x006671_OnLockedTarget( sceneId, selfId, targetId, missionIndex )
 	local missionId = TGetMissionIdByIndex(missionIndex)
	local misIndex = GetMissionIndexByID(sceneId, selfId, missionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
	local missionName = TGetMissionName(missionIndex)
	
	local nscene1, name1 = TGetCompleteNpcInfo(missionIndex)
	local nscene2, name2 = TGetTargetNpcInfo(missionIndex)
	local targetName = GetName(sceneId, targetId)
	if targetName == name1 then
		--Èç¹ûÑ¡ÖĞµÄ¶ÔÏóÊÇ½»ÈÎÎñµÄnpc
		TAddNumText(sceneId, missionIndex, missionName,1,-1);
	elseif targetName == name2 then
		if GetMissionParam(sceneId, selfId, misIndex, 0) == 1 then --Èç¹ûÈÎÎñÒÑ¾­Íê³ÉÔòÖ±½Ó·µ»Ø
			return
		end
		if GetPatrolId(sceneId, targetId) ~= -1 then
			return
		end

		--Èç¹ûÑ¡ÖĞµÄ¶ÔÏóÊÇÒªHµ t¯ng µÄnpc
		TAddNumText(sceneId, missionIndex, missionName,1,3);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x006671_CheckAccept( sceneId, selfId, missionIndex )
	local nLevel = LuaFnGetLevel(sceneId, selfId)
	local limitLevel, PreMisId1, PreMisId2, PreMisId3 = TGetCheckInfo(missionIndex)

	if nLevel < limitLevel then
		--TBeginEvent(sceneId)
			TAddText(sceneId, "Kinh nghi®m giang h° cüa các hÕ, khi nào ğÕt c¤p ".. tostring(limitLevel) .." hãy ğªn tìm ta")
		--TEndEvent()
		TDispatchEventList(sceneId, selfId)
		return 0
	else
		local a = {}
		local index = 1
		if PreMisId1 > 0 then
			a[index] = PreMisId1
			index = index + 1
		end
		if PreMisId2 > 0 then
			a[index] = PreMisId2
			index = index + 1
		end
		if PreMisId3 > 0 then
			a[index] = PreMisId3
			index = index + 1
		end
		
		for i, v in a do
			if IsMissionHaveDone(sceneId, selfId, v) <= 0 then
				return 0
			end	
		end
		return 1
		
	end

end

--**********************************
--½ÓÊÜ
--**********************************
function x006671_OnAccept( sceneId, selfId, targetId, missionIndex )

	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)

	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÒÑ¾­Íê³É¹ıÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, missionId) > 0   then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, missionId, missionIndex, 0, 0, 0 )
	
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	
	--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïµÄ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
	local misIndex = GetMissionIndexByID(sceneId, selfId, missionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0) --¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿µÄµÚÒ»Î»ÖÃ0	µÚÒ»Î»ÊÇÍê³É/Ê§°ÜÇé¿ö
	SetMissionByIndex(sceneId,selfId,misIndex,1,0) --Ê¼ÖÕÒÔµ±Ç°³¡¾°Îª×¼

	local nscene1, name1 = TGetAcceptNpcInfo(missionIndex)
	local nscene2, name2 = TGetCompleteNpcInfo(missionIndex)
	local nscene3, name3 = TGetTargetNpcInfo(missionIndex)
	-- Èç¹û½»ÈÎÎñµÄÈË²»ÊÇ½ÓÈÎÎñµÄÈË»òÒªHµ t¯ng µÄÈË
	if name1 ~= name2  or name1 ~= name3 then
		SetMissionEvent(sceneId, selfId, missionId, 4)
	end	

	if name1 == name3 then
		local x, z = GetWorldPos(sceneId,targetId)--¼ÇÂ¼npcµÄ×ø±ê
		SetMissionByIndex(sceneId,selfId,misIndex,7,sceneId) --Ê¼ÖÕÒÔµ±Ç°³¡¾°Îª×¼
		SetMissionByIndex(sceneId,selfId,misIndex,2,targetId)
		SetMissionByIndex(sceneId,selfId,misIndex,3,x)
		SetMissionByIndex(sceneId,selfId,misIndex,4,z)
		
    --*********************************************************************	
    -- npcÓĞĞ§ĞÔ¼ì²é	
		local targetNpcScene, targetNpcName = TGetTargetNpcInfo(missionIndex)
		local targetName = GetName(sceneId, targetId)
		if targetNpcScene~= sceneId 
		 or targetNpcName ~= targetName then
		 -- ¸Ãnpc²»ÊÇÒª²Ù×÷µÄnpc
		 return 0
		end
		-- »ñÈ¡ÉèÖÃÇ°µÄÊı¾İĞÅÏ¢
		local oldAIType = GetNPCAIType(sceneId, targetId)
		local oldUnitReputationId = GetUnitReputationID(sceneId, selfId, targetId)
		-- ÉèÖÃnpcÑ²Âß¿ªÊ¼µÄÊı¾İ
		local patrolPathIndex = TGetHusongPatrolPath(missionIndex)		-- µÃµ½Hµ t¯ng Ñ²ÂßÂ·Ïß
		SetUnitReputationID(sceneId, selfId, targetId, 0) --0ÎªĞÂÊÖÕóÓª,ºÍÍæ¼ÒÓÑºÃ
		SetMonsterFightWithNpcFlag(sceneId, targetId, 1) --´ò¿ªÔÊĞí¹ÖÎïºÍ¹ÖÎï´ò¼ÜµÄ±ê¼Ç
		SetNPCAIType(sceneId, targetId, TGetHusongAIType(missionIndex))
		SetPatrolId(sceneId, targetId, patrolPathIndex)
	  --ÉèÖÃnpcÑ²Âß½áÊøµÄÊı¾İ
    AddNpcPatrolEndPointOperator(sceneId,targetId,"AIS_SetPatrolID", -1) 
    AddNpcPatrolEndPointOperator(sceneId,targetId,"AIS_SetBaseAIType", 0, -1, oldAIType) 
    AddNpcPatrolEndPointOperator(sceneId,targetId,"AIS_SetReputationID_CodingRefix", oldUnitReputationId) 
    AddNpcPatrolEndPointOperator(sceneId,targetId,"AIS_SetMonsterFightWithNpcFlag", 0)
		--*********************************************************************
	
		--Æô¶¯¸ÃÈÎÎñµÄÈÎÎñÊ±ÖÓÆ÷
		StartMissionTimer(sceneId, selfId, missionId)
		SetMissionEvent(sceneId, selfId, missionId, 5)
		SetMissionEvent(sceneId, selfId, missionId, 6)
	end
	
	Msg2Player(  sceneId, selfId,"#YTiªp nh§n #W" .. tostring(missionName), MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTiªp nh§n#W " .. tostring(missionName)
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--·ÅÆú
--**********************************
function x006671_OnAbandon( sceneId, selfId, missionIndex )
  --½«Hµ t¯ng npcË²ÒÆ»ØÔ­À´Î»ÖÃ
 	local missionId = TGetMissionIdByIndex(missionIndex)
	local misIndex = GetMissionIndexByID(sceneId, selfId, missionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
	
	local targetScene = GetMissionParam(sceneId, selfId, misIndex, 7)
	local targetId = GetMissionParam(sceneId, selfId, misIndex, 2)
	local x = GetMissionParam(sceneId, selfId, misIndex, 3)
	local z = GetMissionParam(sceneId, selfId, misIndex, 4)
	
  --Í£Ö¹¸ÃÈÎÎñµÄÈÎÎñÊ±ÖÓÆ÷
  StopMissionTimer(sceneId, selfId, missionId)
  --ResetMissionEvent(sceneId, selfId, missionId, 4)
  --ResetMissionEvent(sceneId, selfId, missionId, 5)
  --ResetMissionEvent(sceneId, selfId, missionId, 6)

  DelMission(sceneId, selfId, missionId)
  
end

--**********************************
--¼ÌĞø
--**********************************
function x006671_OnContinue( sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)
	
	local missionTarget
	local missionInfo
	local missionContinue
	local missionComplete 
	missionTarget, missionInfo, missionContinue, missionComplete = TGetMissionDesc(missionIndex)
	
	BeginEvent(sceneId)
	
		AddText(sceneId,missionName)
		AddText(sceneId,missionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,missionTarget)

		x006671_DisplayBonus(sceneId, missionIndex)  
		
	EndEvent( )
	
	DispatchMissionContinueInfo(sceneId, selfId, targetId, missionIndex, missionId)

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x006671_CheckSubmit( sceneId, selfId, missionIndex )
	--ÓĞÕâ¸öÈÎÎñ²¢ÇÒÍê³É±êÖ¾ÒÑ¾­±»ÖÃÎ»
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
	
	local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)	
	if bComplete > 0 then
		return 1
	else
		return 0
	end
	
end

--**********************************
--Ìá½»
--**********************************
function x006671_OnSubmit( sceneId, selfId, targetId, selectRadioId, missionIndex )
	-- ¼ì²âÊÇ²»ÊÇÂú×ãÍê³ÉÈÎÎñµÄÌõ¼ş
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)
	
	if x006671_CheckSubmit(sceneId, selfId, missionIndex) <= 0   then
		return
	end

	if IsHaveMission(sceneId,selfId,missionId) > 0 then
		local nAddItemNum = 0;
		BeginAddItem(sceneId)
			local itemCt
			local a = {{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},} 
			--///////////////////////////////////////////////////////////////////////////////////
			itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetAwardItem(missionIndex)
			for i=1, itemCt do
				if a[i].id > 0 then
					AddItem( sceneId, a[i].id, a[i].ct)
					nAddItemNum = nAddItemNum + 1
				end
			end
			--///////////////////////////////////////////////////////////////////////////////////
			itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetRadioItem(missionIndex)
			for i=1, itemCt do
				if a[i].id > 0 and a[i].id == selectRadioId then
					AddItem( sceneId, a[i].id, a[i].ct)
					nAddItemNum = nAddItemNum + 1
					break
				end
			end
			--///////////////////////////////////////////////////////////////////////////////////
			itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetHideItem(missionIndex)
			for i=1, itemCt do
				if a[i].id > 0 then
					AddItem( sceneId, a[i].id, a[i].ct)
					nAddItemNum = nAddItemNum + 1
				end
			end
		local ret = EndAddItem(sceneId,selfId)
		
		if ret > 0 then
		
			if nAddItemNum > 0  then
				AddItemListToHuman(sceneId,selfId)
			end
			
			--Ìí¼ÓÈÎÎñ½±Àø
			local awardMoney = TGetAwardMoney(missionIndex)
			AddMoney(sceneId,selfId,awardMoney )
			local awardExp = TGetAwardExp(missionIndex)
			LuaFnAddExp( sceneId, selfId, awardExp)
			
			DelMission( sceneId,selfId, missionId )
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
			MissionCom( sceneId,selfId, missionId )
			
			local strText = "#Y" .. missionName .. " nhi®m vø ğã hoàn thành!"
			BeginEvent( sceneId )
				AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
			Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

			-- »ñµÃºóĞøÈÎÎñµÄIndex
			local NextMissIndex = GetNextMissionIndex( missionIndex )

			for i, MissType in x006671_g_MissionTypeList do
				if MissType.ScriptId ~= nil and MissType.ScriptId ~= 0 then
					if NextMissIndex ~= 0 and NextMissIndex >= MissType.StartIdx and NextMissIndex <= MissType.EndIdx then
						local missionId = TGetMissionIdByIndex( NextMissIndex )
						local szNpcName = GetName( sceneId, targetId )
						local AcceptNpcScene, AcceptNpcName = TGetAcceptNpcInfo( NextMissIndex )

						if sceneId == AcceptNpcScene and szNpcName == AcceptNpcName then
							if MissType.ScriptId == 006671 then
								if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
									x006671_OnDefaultEvent( sceneId, selfId, targetId, NextMissIndex )
								end
							else
								if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
									CallScriptFunction( MissType.ScriptId, "OnDefaultEvent", sceneId, selfId, targetId, NextMissIndex )
								end
							end
						end
						
						break;
					end
				end
			end

		else
			--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
			BeginEvent(sceneId)
				AddText(sceneId, "Nhi®m vø th¤t bÕi!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		
		end
	end	
end

function x006671_OnHumanDie(sceneId, selfId, missionIndex)
	--Ö÷½ÇËÀÍöÊ±Í¬ÑùÈÎÎñÊ§°Ü
	local missionId = TGetMissionIdByIndex(missionIndex)
	local misIndex = GetMissionIndexByID(sceneId, selfId, missionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
	local targetScene = GetMissionParam(sceneId, selfId, misIndex, 7)
	local targetId = GetMissionParam(sceneId, selfId, misIndex, 2)
	local x = GetMissionParam(sceneId, selfId, misIndex, 3)
	local z = GetMissionParam(sceneId, selfId, misIndex, 4)

  --Í£Ö¹¸ÃÈÎÎñµÄÈÎÎñÊ±ÖÓÆ÷
  StopMissionTimer(sceneId, selfId, missionId)
  SetMissionByIndex(sceneId, selfId, misIndex, 0, 2)
  ResetMissionEvent(sceneId, selfId, missionId, 4)
  ResetMissionEvent(sceneId, selfId, missionId, 5)
  ResetMissionEvent(sceneId, selfId, missionId, 6)
  
	local targetscene, targetname = TGetTargetNpcInfo(missionIndex)
  BeginEvent(sceneId)
  	AddText(sceneId, "Hµ t¯ng " .. targetname .. " thành công!")
  EndEvent()
  DispatchMissionTips(sceneId, selfId)

end

--**********************************
--¶¨Ê±ÊÂ¼ş
--**********************************
function x006671_OnTimer(sceneId,selfId,missionIndex)
	local playerX, playerZ = GetWorldPos(sceneId, selfId)
	local missionId = TGetMissionIdByIndex(missionIndex)
	local misIndex = GetMissionIndexByID(sceneId, selfId, missionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
	local targetScene = GetMissionParam(sceneId, selfId, misIndex, 7)
	local targetId = GetMissionParam(sceneId, selfId, misIndex, 2)
	local targetX, targetZ = GetWorldPos(sceneId, targetId)
	
	local distance = floor(sqrt((playerX-targetX)*(playerX-targetX)+(playerZ-targetZ)*(playerZ-targetZ)))
	local isTargetObjLive = LuaFnIsCharacterLiving(sceneId, targetId)

	local patrolPathIndex = TGetHusongPatrolPath(missionIndex)
	local x, z = GetLastPatrolPoint(sceneId, patrolPathIndex)
	
	-- ´ÓHµ t¯ng ÈÎÎñ±íÖĞ»ñÈ¡ÕıÈ·µÄHµ t¯ng ¶ÔÏóĞÕÃû
	local targetscene, targetname = TGetTargetNpcInfo(missionIndex)

	if sceneId ~= targetscene  then
	  --Í£Ö¹¸ÃÈÎÎñµÄÈÎÎñÊ±ÖÓÆ÷
	  StopMissionTimer(sceneId, selfId, missionId)
	  ResetMissionEvent(sceneId, selfId, missionId, 4)
	  ResetMissionEvent(sceneId, selfId, missionId, 5)
	  ResetMissionEvent(sceneId, selfId, missionId, 6)
	  SetMissionByIndex(sceneId, selfId, misIndex, 0, 2)
 		
	  BeginEvent(sceneId)
	  	AddText(sceneId, "Hµ t¯ng " .. targetname .. " th¤t bÕi!")
	  EndEvent()
	  DispatchMissionTips(sceneId, selfId)
		return
	end

	
		
	local distance2 = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
	if distance2 <= 2 then
		--Í£Ö¹¸ÃÈÎÎñµÄÈÎÎñÊ±ÖÓÆ÷
	  StopMissionTimer(sceneId, selfId, missionId)
	  --ResetMissionEvent(sceneId, selfId, missionId, 4)
	  ResetMissionEvent(sceneId, selfId, missionId, 5)
	  ResetMissionEvent(sceneId, selfId, missionId, 6)
	  SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
	  SetMissionByIndex(sceneId, selfId, misIndex, 1, 1)
 		
	  BeginEvent(sceneId)
	  	AddText(sceneId, "Hµ t¯ng " .. targetname .. " thành công!")
	  EndEvent()
	  DispatchMissionTips(sceneId, selfId)
		return
	end

	local bfailed = 0
	if isTargetObjLive <= 0  then --Èç¹ûHµ t¯ng µÄnpcËÀÍöÁËÔòÈÎÎñÊ§°Ü
		bfailed = 1
	elseif sceneId ~= targetScene or distance > 20 then
		--ÈÎÎñÊ§°Ü£¬½«ÆäË²ÒÆ»ØÔ­À´µÄÎ»ÖÃ
		bfailed = 1
	end
	
	if bfailed == 1 then
	  --Í£Ö¹¸ÃÈÎÎñµÄÈÎÎñÊ±ÖÓÆ÷
	  StopMissionTimer(sceneId, selfId, missionId)
	  ResetMissionEvent(sceneId, selfId, missionId, 4)
	  ResetMissionEvent(sceneId, selfId, missionId, 5)
	  ResetMissionEvent(sceneId, selfId, missionId, 6)
	  SetMissionByIndex(sceneId, selfId, misIndex, 0, 2)

 	  BeginEvent(sceneId)
	  	AddText(sceneId, "Hµ t¯ng " .. targetname .. " th¤t bÕi!")
	  EndEvent()
	  DispatchMissionTips(sceneId, selfId)
	  
	end 

end
