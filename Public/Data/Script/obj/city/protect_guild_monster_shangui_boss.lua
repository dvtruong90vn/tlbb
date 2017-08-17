-- 805044
-- É½¹íboss

x805044_SKILL_TBL = 
{
	[1]	=	{
				IDX_TimerAlarm 	= 1,
				IDX_TimerInterval 	= 2,
				IDX_Count			= 3,
				IDX_State			= 4,						--
				BossSkill			= 1100,
				AlarmTime 			= 0,
				SkillCondition		= 1,						--0:cooldownµ½¾ÍÊÍ·Å	1:ÑªÁ¿Ìõ¼ş
				SkilCoolDown		= 0,
				SkillBlood			= 10,						--ÑªÁ¿µÍÓÚ¸ÃÖµÊ±ÊÍ·Å
				TargetType			= 0,						--0:µ±Ç°target  1:Ëæ»úÍæ¼Ò
				TargetCord			= 1,						--0:µ±Ç°target	1:×Ô¼º
				MsgAlarmType		= 0,						--0:NpcËµ»°		1:³¡¾°ÌáÊ¾
				MsgAlarm			= "S½n quÖ phçn nµ  nhìn chung quanh m÷i ngß¶i",
				MsgFire				= "",
			}
}


--¸±±¾Êı¾İË÷Òı¶ÔÕÕ
x805044_g_keySD					= {}
x805044_g_keySD["typ"]			= 0		--ÉèÖÃ¸±±¾ÀàĞÍ
x805044_g_keySD["spt"]			= 1		--ÉèÖÃ¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
x805044_g_keySD["tim"]			= 2		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
x805044_g_keySD["currStage"]	= 3		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
x805044_g_keySD["scn"]			= 4		--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
x805044_g_keySD["cls"]			= 5		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
x805044_g_keySD["dwn"]			= 6		--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
x805044_g_keySD["tem"]			= 7		--±£´æ¶ÓÎéºÅ
x805044_g_keySD["x"]			= 8			--ÈËÎïÔÚÈë¿Ú³¡¾°ÖĞµÄxÎ»ÖÃ
x805044_g_keySD["z"]			= 9			--ÈËÎïÔÚÈë¿Ú³¡¾°ÖĞµÄzÎ»ÖÃ
x805044_g_keySD["killMonsterNum"]	= 10		--É±ËÀ¹ÖÎïÊıÁ¿
x805044_g_keySD["genMonsterNum"]	= 11			--Éú³É¹ÖÎïÊıÁ¿
x805044_g_keySD["playerLevel"]	= 12		--¼ÇÂ¼µ±Ç°¸±±¾µÄ¼¶±ğ

--**********************************
-- ×Ô¼ºËÀÍö
--**********************************
function x805044_OnDie( sceneId, selfId, killerId )
	local killNum = LuaFnGetCopySceneData_Param( sceneId, x805044_g_keySD["killMonsterNum"] )	
	killNum = killNum + 1
	LuaFnSetCopySceneData_Param( sceneId, x805044_g_keySD["killMonsterNum"], killNum )	
	
	local currStage = LuaFnGetCopySceneData_Param( sceneId, x805044_g_keySD["currStage"] )
	
	if currStage == 1 then
		local genNum = LuaFnGetCopySceneData_Param( sceneId, x805044_g_keySD["genMonsterNum"] )	
		x805044_TipAllHuman(sceneId, "Ğã giªt chªt s½n quÖ "..killNum.." / "..genNum )
	end
end

--**********************************
-- ĞÄÌø
--**********************************
function x805044_OnHeartBeat(sceneId, selfId, nTick)

	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then

		local i = 0;
		for i = 1, getn(x805044_SKILL_TBL) do
			local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_TimerInterval)
			local nCount = MonsterAI_GetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_Count)
			local nState = MonsterAI_GetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_State)
			
			if nState == 0 then
				if x805044_SKILL_TBL[i].SkillCondition == 0 then
					if 0<TimeInterval then
						TimeInterval = TimeInterval - nTick;
						MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_TimerInterval, TimeInterval)
					else
						nState = 1
					end
				end
				
				if x805044_SKILL_TBL[i].SkillCondition == 1   then
					if nCount==0 then
						--x805044_TipAllHuman(sceneId, GetHp(sceneId, selfId) .. "/" .. GetMaxHp(sceneId, selfId))
						if GetHp(sceneId, selfId) < (GetMaxHp(sceneId, selfId)*x805044_SKILL_TBL[i].SkillBlood)/100 then
							nState = 1	
						end
					end
				end
			end
			
			if nState == 1 then
				if( TimeInterval <=0 and x805044_SKILL_TBL[i].MsgAlarm ~= "") then
					if x805044_SKILL_TBL[i].MsgAlarmType == 0 then
						LuaFnNpcChat(sceneId, selfId, 1, x805044_SKILL_TBL[i].MsgAlarm)
					elseif x805044_SKILL_TBL[i].MsgAlarmType == 1 then
						x805044_TipAllHuman(sceneId, x805044_SKILL_TBL[i].MsgAlarm)
					end
				end
				
				nState = 2
			end
			
			
			if nState == 2 then
				--Countdown TimerPrepare
				local TimeAlarm = MonsterAI_GetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_TimerAlarm)
				if(0<TimeAlarm) then
					TimeAlarm = TimeAlarm - nTick;
					MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_TimerAlarm, TimeAlarm)
				else
					MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_TimerAlarm, x805044_SKILL_TBL[i].AlarmTime)
					MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_TimerInterval, x805044_SKILL_TBL[i].SkilCoolDown)
					
					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
					
					if x805044_SKILL_TBL[i].TargetType == 1 then
						nTarget = x805044_RandPlayer(sceneId)
					else 
						nTarget = LuaFnGetTargetObjID(sceneId, selfId)
					end
					
					if(-1~=nTarget) then
						
						if (x805044_SKILL_TBL[i].MsgFire ~= "") then
							local msgFire = format(x805044_SKILL_TBL[i].MsgFire, LuaFnGetName(sceneId, nTarget) )
							LuaFnNpcChat(sceneId, selfId, 1, msgFire)
						end
						
						local posX, posZ = GetWorldPos(sceneId,nTarget)
						local fDir = 0.0
						
						if (x805044_SKILL_TBL[i].TargetCord == 1) then
							posX, posZ = GetWorldPos(sceneId,selfId)
						end
						
						LuaFnUnitUseSkill(sceneId, selfId, x805044_SKILL_TBL[i].BossSkill, nTarget, posX, posZ, fDir)
						MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_Count, nCount + 1)	
					end
					
					nState = 0
				end
			end
			
			MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_State, nState)
		end
		
	end
end

--**********************************
-- ³õÊ¼»¯
--**********************************
function x805044_OnInit(sceneId, selfId)
	local i = 0;
	for i = 1, getn(x805044_SKILL_TBL) do
		MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_TimerAlarm, x805044_SKILL_TBL[i].AlarmTime)
		MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_TimerInterval, x805044_SKILL_TBL[i].SkilCoolDown)
		MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_Count, 0)
		MonsterAI_SetIntParamByIndex(sceneId, selfId, x805044_SKILL_TBL[i].IDX_State, 0)
	end
	
	local genNum = LuaFnGetCopySceneData_Param( sceneId, x805044_g_keySD["genMonsterNum"] )	
	genNum = genNum + 1
	LuaFnSetCopySceneData_Param( sceneId, x805044_g_keySD["genMonsterNum"], genNum )
end

--**********************************
-- É±ËÀÍæ¼Ò
--**********************************
function x805044_OnKillCharacter(sceneId, selfId, targetId)

end

--**********************************
-- ½øÈëÕ½¶·
--**********************************
function x805044_OnEnterCombat(sceneId, selfId, enmeyId)

end

--**********************************
-- ÍÑÀëÕ½¶·
--**********************************
function x805044_OnLeaveCombat(sceneId, selfId)

end

--**********************************
--ÌáÊ¾ËùÓĞ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x805044_TipAllHuman( sceneId, Str )
	-- »ñµÃ³¡¾°ÀïÍ·µÄËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËµÄ³¡¾°£¬Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end
end

--Ëæ»úÑ¡ÔñÒ»¸öÍæ¼Ò
function x805044_RandPlayer( sceneId )
	-- »ñµÃ³¡¾°ÀïÍ·µÄËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËµÄ³¡¾°
	if nHumanNum < 1 then
		return -1
	end
	
	
	local rPlayerIndex = random( nHumanNum )

	local PlayerId = LuaFnGetCopyScene_HumanObjId( sceneId, rPlayerIndex )
	return PlayerId
end
