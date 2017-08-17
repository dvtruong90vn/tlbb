-- 402254
-- Mµ Dung Phøc

x402254_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9998
}

-- ÍõÓïÑÔ¿ªÊ¼ ği¬mÃûtoÕ ğµ ¿ª¹Ø
x402254_g_bWangyuyanSpeak = 24
x402254_g_DuanAndWangFlag = 29

--**********************************
-- ×Ô¼ºËÀÍö
--**********************************
function x402254_OnDie( sceneId, selfId, killerId )

	LuaFnNpcChat(sceneId, selfId, 0, "Các ngß½i hãy ch¶ ğó, ngày này mß¶i nåm sau ta s¨ tìm các ngß½i lo mà s¯ng hªt nhæng ngày còn lÕi ği ha..ha..ha..")

	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- Í£Ö¹ ği¬mÃû
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
	
	-- É¾³ıĞoàn DñÓïæÌµÈÈË
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Vß½ng Ngæ Yên")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ğoàn Dñ")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thiên ThÕch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "PhÕm Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "ChØ VÕn Lı")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C± Ğ¯c Thành")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Phó Tß Quy")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu Ğan Th¥n")
	
	x402254_TipAllHuman( sceneId, "Không ğßşc chÕy" )
	
	--LuaFnDeleteMonster(sceneId, selfId)
	
	-- ·¢ÊÀ½ç¹«¸æ
--#w¡¾¶Ó³¤Ãû¡¿#PÓë#{_BOSS0}µ¥Ìô,È´°µÊ¹¶ÓÓÑTÕi ÆäÉíºóÔÒ°å×©¡¢Ê¹°í×Ó¡¢ÇÃÃÆ¹÷¡¢È÷Ê¯»Ò¡­¡­ÎŞËù²»ÓÃ,ÖÕÓÚ½«#{_BOSS0}´ò ği¬m´ó°Ü,Âä»Ä¶øÌÓ,mµt ¾Ù¹¥ÏÂÁËÑà×ÓÎë¡£
--#w¡¾¶Ó³¤Ãû¡¿#PÂÊÁì¶ÓÓÑÓë#{_BOSS0}º¨Õ½°ëÈÕ,ºö¶øÁìÎòµ½ÎäÑ§toÕ ğµ ÕæÚĞ,¶ÙÊ±Îä¹¦±©ÕÇ,#{_BOSS0}µÖµĞ²»¹ı,Ö» ği¬mÂä»Ä¶øÌÓ,Ñà×ÓÎëËìÏİ¡£
--#w¡¾¶Ó³¤Ãû¡¿#PTÕi Ñà×ÓÎëµ÷±øÇ²½«,ÔË³ïá¡á¢,TÕi SØ døng MÕn thiên quá häi,°µ¶È³Â²ÖµÈÈıÊ®Áù¼ÆÖ®ºó,´ò ği¬m#{_BOSS0}Ö» ği¬mÊ¹ÓÃµÚÈıÊ®Æß¼ÆÌÓÖ®Ø²Ø²ÁË¡£
	
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
	end
		--Èç¹û×éÁË¶ÓÔmµt ñÈ¡¶Ó³¤toÕ ğµ ID....
	local nLeaderId = GetTeamLeader(sceneId, playerID)
	if nLeaderId < 1   then
		nLeaderId = playerID
	end
	local str = ""
	local ran = random(3)
	if ran == 1  then
		str = format("#W#{_INFOUSR%s}#cff99cc cùng #{_BOSS0} quyªt chiªn ác li®t trong yªn tØ ±, #{_BOSS0} th¤y mình sÑc yªu không ğ¸ch lÕi ğ¯i thü, quay ğ¥u bö chÕy.", GetName(sceneId,nLeaderId))
	elseif ran == 2  then
		str = format("#W#{_INFOUSR%s}#cff99cc chiªn ğ¤u v¶i #{_BOSS0} trong Yªn tØ ‘ #{_BOSS0} ğang th¡ng thª b²ng t± ğµi ğ°ng loÕt tung ám khí, kë thù hoän sş tung mình chÕy m¤t hút.", GetName(sceneId,nLeaderId))
	else
		str = format("#W#{_INFOUSR%s}#cff99cc cùng t± ğµi xông vào Yªn TØ ‘ khiêu chiªn v¾i #{_BOSS0} sau nhi«u hi®p quyªt ğ¤u ğã giành th¡ng lôi hoàn toàn", GetName(sceneId,nLeaderId))
	end
	
	BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
	
	
end

--**********************************
-- ĞÄÌø
--**********************************
function x402254_OnHeartBeat(sceneId, selfId, nTick)

	-- µ±Mµ Dung PhøcÑªÁ¿µôµ½50%toÕ ğµ Ê±ºò,ÈÃ ÍõÓïæÌ  ği¬mÃû,Í¬Ê±Ğoàn DñÑğ¹¥
	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
			--PrintNum(1)
			-- Èç¹û Mµ Dung Phøc ÑªÉÙÓÚ¶àÉÙ,¾ÍÔõÃ´Ñù×Ó
			if LuaFnGetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak) == 0  then
				if GetHp(sceneId, selfId)*2 <= GetMaxHp(sceneId, selfId) then
					LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 1)
				end
			end
		else
			--PrintNum(2)
		end
	end

--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, x402254_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402254_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "³¢³¢ä±Ñô½­ÉÏtoÕ ğµ ÁÒÑæ°É!")
--					end
--				end
--			end
--		end
--	end
end

--**********************************
-- ³õÊ¼»¯
--**********************************
function x402254_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)
end

--**********************************
-- É±ËÀÍæ¼Ò
--**********************************
function x402254_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. ",Äã¾ÍËãÔÙÀ÷º¦Ê®±¶,ÓöÉÏÒ¯Ò¯Ò²Ö»ÓĞËÀÂ·mµt Ìõ!")
--	end
end

--**********************************
-- ½øÈëCuµc chiªn 
--**********************************
function x402254_OnEnterCombat(sceneId, selfId, enmeyId)
	if(0<x402254_TBL.BossBuff) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402254_TBL.BossBuff, 0)
	end
	
	-- ½øÈëCuµc chiªn ×´Ì¬,
	LuaFnNpcChat(sceneId, selfId, 0, "Các ngß½i dám xông vào ğây v§y thì hôm nay là ngày gi² cüa các ngß½i, n½i ğây s¨ là m° chôn cüa các ngß½i")
	
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, x402254_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 1)
	
	CallScriptFunction((200060), "Paopao",sceneId, "Ğoàn Dñ", "Yªn TØ ‘", "Ğµt nhiên ta cäm th¤y có gì khác lÕ, không biªt có chuy®n gì xäy ra")
	CallScriptFunction((200060), "Paopao",sceneId, "Vß½ng Ngæ Yên", "Yªn TØ ‘", "Muµi cäm nh§n ğßşc có ngß¶i lÕ ğang · ğây")

end

--**********************************
-- ÍÑÀëÕ½¶·
--**********************************
function x402254_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- É¾³ıĞoàn DñÓïæÌµÈÈË
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Vß½ng Ngæ Yên")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ğoàn Dñ")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thiên ThÕch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "PhÕm Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "ChØ VÕn Lı")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C± Ğ¯c Thành")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Phó Tß Quy")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu Ğan Th¥n")

	-- ´ÓĞÂTÕi ³¡¾°ÖĞÉú³ÉÕâĞ©Npc
	CallScriptFunction((401040), "CreateMonster_11",sceneId)

	-- Í£Ö¹ ği¬mÃû
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
end

--**********************************
--ÌáÊ¾ËùÓĞ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x402254_TipAllHuman( sceneId, Str )
	--  ğÕt ğßşc³¡¾°ÀïÍ·toÕ ğµ ËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËtoÕ ğµ ³¡¾°,Ê²Ã´¶¼²»×ö
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
