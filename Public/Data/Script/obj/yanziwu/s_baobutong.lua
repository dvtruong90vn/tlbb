-- 402252
-- °ü²»Í¬

x402252_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9999
}

x402252_g_BuffId = 10175

function x402252_OnDie( sceneId, selfId, killerId )
	
	-- ×Ô¼ºËÀÍötoÕ ðµ Ê±ºò,ÈÃ×Ô¼ºtoÕ ðµ  huynh ð®¿ñ±©
	local nNpcNum = GetMonsterCount(sceneId)
	for i=0, nNpcNum-1 do
		local nNpcId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nNpcId)  == "Công Dã Can" or
			 GetName(sceneId, nNpcId)  == "Ð£ng Bách Xuyên" or
			 GetName(sceneId, nNpcId)  == "Bao B¤t Ð°ng" or
			 GetName(sceneId, nNpcId)  == "Phong Ba Ác"   then
			
			if selfId ~= nNpcId  then
				-- Ìí¼Ó¿ñ±©buff 
				if GetHp(sceneId, nNpcId) > 100  then
					LuaFnSendSpecificImpactToUnit(sceneId, nNpcId, nNpcId, nNpcId, x402252_g_BuffId, 0 )
					CallScriptFunction((200060), "Paopao",sceneId, GetName(sceneId, nNpcId), "Yªn TØ ‘", "Có kë xông vào, mau b¡t l¤y nó")
				end
			end
		end
	end

	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402252_TBL.IDX_FlagCombat, 0)
end

function x402252_OnHeartBeat(sceneId, selfId, nTick)
--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402252_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerInterval, x402252_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402252_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "³¢³¢ä±Ñô½­ÉÏtoÕ ðµ ÁÒÑæ°É!")
--					end
--				end
--			end
--		end
--	end
end

function x402252_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402252_TBL.IDX_FlagCombat, 0)
end

function x402252_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)		
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. ",Äã¾ÍËãÔÙÀ÷º¦Ê®±¶,ÓöÉÏÒ¯Ò¯Ò²Ö»ÓÐËÀÂ·mµt Ìõ!")
--	end
end

function x402252_OnEnterCombat(sceneId, selfId, enmeyId)
--	if(0<x402252_TBL.BossBuff) then
--		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402252_TBL.BossBuff, 0)
--	end
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerPrepare, x402252_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402252_TBL.IDX_FlagCombat, 1)
end

function x402252_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402252_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402252_TBL.IDX_FlagCombat, 0)
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x402252_g_BuffId) == 1  then
		LuaFnCancelSpecificImpact(sceneId, selfId, x402252_g_BuffId)
	end
	
end

