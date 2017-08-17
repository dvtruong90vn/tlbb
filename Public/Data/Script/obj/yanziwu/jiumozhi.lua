-- 402248
-- Cßu Ma Trí

x402248_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9999
}

function x402248_OnDie( sceneId, selfId, killerId )
	--LuaFnNpcChat(sceneId, selfId, 0, "Ê®°ËÄêºó,Ò¯Ò¯ÎÒÓÖÐúngmµt ÌõºÃºº!")
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 0)

	local szNpcName = GetName(sceneId, selfId)

	if szNpcName == "Diêu Bá Ðß½ng"  then
		LuaFnNpcChat(sceneId, selfId, 0, "18 Nåm sau, ta vçn là mµt häo hán.")
		x402248_ClearMonsterByName(sceneId, "T¥n Gia TrÕi Thân Binh")
		x402248_TipAllHuman( sceneId, "Diêu Bá Ðß½ng ðã tØ nÕn" )
		
	elseif szNpcName == "Tß Mã Lâm"  then
		LuaFnNpcChat(sceneId, selfId, 0, "18 Nåm sau, ta vçn là mµt häo hán.")
		x402248_ClearMonsterByName(sceneId, "Ð® tØ phái Thanh Thành")
		x402248_TipAllHuman( sceneId, "Tß Mã Lâm ðã tØ nÕn" )
		
	elseif szNpcName == "Cßu Ma Trí"  then
		LuaFnNpcChat(sceneId, selfId, 0, "Ha Ha Ha....Không ng¶ trên ð¶i lÕi có ngß¶i mÕnh nhß ngß½i, các ngß½i s¨ không thoát khöi Yªn tØ ‘ ðßþc ðâu")
		x402248_ClearMonsterByName(sceneId, "Th± Ph°n LÕc Ma")
		x402248_ClearMonsterByName(sceneId, "Mµc Nhân Khôi L²i")
		x402248_TipAllHuman( sceneId, "Cßu Ma Trí ðã tØ nÕn" )	
		
		if LuaFnGetCopySceneData_Param(sceneId, 8) == 12  then
			LuaFnSetCopySceneData_Param(sceneId, 8, 14)
			-- ¸ø¸±±¾ÄÚtoÕ ðµ Íæ¼Òmµt cáiÈÎÎñ³É¹¦»òÕßth¤t bÕitoÕ ðµ ÌáÊ¾
		end
	end
	
	-- ¼ì²âÄ¿Ç°toÕ ðµ ¸±±¾½ø¶È

end

function x402248_OnHeartBeat(sceneId, selfId, nTick)
--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, x402248_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402248_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "³¢³¢ä±Ñô½­ÉÏtoÕ ðµ ÁÒÑæ°É!")
--					end
--				end
--			end
--		end
--	end
end

function x402248_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 0)
end

function x402248_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)		
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. ",Äã¾ÍËãÔÙÀ÷º¦Ê®±¶,ÓöÉÏÒ¯Ò¯Ò²Ö»ÓÐËÀÂ·mµt Ìõ!")
--	end
end

function x402248_OnEnterCombat(sceneId, selfId, enmeyId)
--	if(0<x402248_TBL.BossBuff) then
--		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402248_TBL.BossBuff, 0)
--	end
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, x402248_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 1)
end

function x402248_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 0)
end


--**********************************
-- Çå³ý³¡¾°ÄÚtoÕ ðµ XX¹Ö
--**********************************
function x402248_ClearMonsterByName(sceneId, szName)
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId)== szName  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x402248_TipAllHuman( sceneId, Str )
	--  ðÕt ðßþc³¡¾°ÀïÍ·toÕ ðµ ËùÓÐÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end
