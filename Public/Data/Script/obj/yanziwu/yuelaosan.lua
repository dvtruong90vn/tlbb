-- ÔÀÀÏÈý
-- 402242
-- Ñà×ÓÎë´óÕ½¸±±¾

x402242_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9999
}

function x402242_OnDie( sceneId, selfId, killerId )
	
	LuaFnNpcChat(sceneId, selfId, 0, "Nh¸ ca, Nh¸ t¦u xin hãy tiªp Ñng ta không còn ðü sÑc næa r°i, thÑ l²i cho ta...")
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402242_TBL.IDX_FlagCombat, 0)
	
	-- ËÀÍötoÕ ðµ Ê±ºò,Í¨Öª¸±±¾Ë¢¹Ö
	LuaFnSetCopySceneData_Param(sceneId, 8, 4)
end

function x402242_OnHeartBeat(sceneId, selfId, nTick)
--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402242_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerInterval, x402242_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402242_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "³¢³¢ä±Ñô½­ÉÏtoÕ ðµ ÁÒÑæ°É!")
--					end
--				end
--			end
--		end
--	end
end

function x402242_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402242_TBL.IDX_FlagCombat, 0)
end

function x402242_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)		
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. ",Äã¾ÍËãÔÙÀ÷º¦Ê®±¶,ÓöÉÏÒ¯Ò¯Ò²Ö»ÓÐËÀÂ·mµt Ìõ!")
--	end
end

function x402242_OnEnterCombat(sceneId, selfId, enmeyId)
--	if(0<x402242_TBL.BossBuff) then
--		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402242_TBL.BossBuff, 0)
--	end
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerPrepare, x402242_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402242_TBL.IDX_FlagCombat, 1)
end

function x402242_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402242_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402242_TBL.IDX_FlagCombat, 0)
end

