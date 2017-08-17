-- 805045
-- É½Éñboss


x805045_IDX_BossFightingState	= 20

x805045_SKILL_TBL = 
{
	[1]	=	{
				IDX_TimerPrepare 	= 1,
				IDX_TimerInterval 	= 2,
				IDX_Count			= 3,
				IDX_State			= 4,	
				BossSkill			= 1101,
				AlarmTime 			= 0,
				SkillCondition		= 0,						--0:cooldownµ½¾ÍÊÍ·Å	1:ÑªÁ¿Ìõ¼ş
				SkilCoolDown		= 20000,
				SkillBlood			= 0,						--ÑªÁ¿µÍÓÚ¸ÃÖµÊ±ÊÍ·Å
				TargetType			= 1,						--0:µ±Ç°target  1:Ëæ»úÍæ¼Ò
				TargetCord			= 0,						--0:µ±Ç°target	1:×Ô¼º
				MsgAlarmType		= 0,						--0:NpcËµ»°		1:³¡¾°ÌáÊ¾
				MsgAlarm			= "",
				MsgFire				= "%s, Nghe s½n th¥n  tri®u h°i ği",
				BuffList			= {154, 5945, 5946}				--buffĞ§¹û
			},
		
	[2]	=	{
				IDX_TimerPrepare 	= 5,
				IDX_TimerInterval 	= 6,
				IDX_Count			= 7,
				IDX_State			= 8,	
				BossSkill			= 1102,
				AlarmTime 			= 1000,
				SkillCondition		= 0,						--0:cooldownµ½¾ÍÊÍ·Å	1:ÑªÁ¿Ìõ¼ş
				SkilCoolDown		= 25000,
				SkillBlood			= 0,						--ÑªÁ¿µÍÓÚ¸ÃÖµÊ±ÊÍ·Å
				TargetType			= 0,						--0:µ±Ç°target  1:Ëæ»úÍæ¼Ò
				TargetCord			= 1,						--0:µ±Ç°target	1:×Ô¼º
				MsgAlarmType		= 0,						--0:NpcËµ»°		1:³¡¾°ÌáÊ¾
				MsgAlarm			= "Cäm thø s½n th¥n  phçn nµ ği",
				MsgFire				= ""
			},

	[3]	=	{
				IDX_TimerPrepare 	= 9,
				IDX_TimerInterval 	= 10,
				IDX_Count			= 11,
				IDX_State			= 12,	
				BossSkill			= 1103,
				AlarmTime 			= 1000,
				SkillCondition		= 1,						--0:cooldownµ½¾ÍÊÍ·Å	1:ÑªÁ¿Ìõ¼ş
				SkilCoolDown		= 0,
				SkillBlood			= 50,						--ÑªÁ¿µÍÓÚ¸ÃÖµÊ±ÊÍ·Å
				TargetType			= 0,						--0:µ±Ç°target  1:Ëæ»úÍæ¼Ò
				TargetCord			= 2,						--0:µ±Ç°target	1:×Ô¼º	2:ÕÙ»½¼¼ÄÜ
				MsgAlarmType		= 0,						--0:NpcËµ»°		1:³¡¾°ÌáÊ¾
				MsgAlarm			= "Ta không phäi là mµt chiªn binh, phàm nhân",
				MsgFire				= ""
			},
		
}



--¹ÖÎïÁĞ±í
x805045_g_monster_list = {
	[1]={
			StageId=1,
			MonsterList={
				{mType=9626,	x=128, 	z=98,	aiType=25,	aiScript=-1,	scriptId=805044	},
			}
		},
}


--¸±±¾Êı¾İË÷Òı¶ÔÕÕ
x805045_g_keySD					= {}
x805045_g_keySD["typ"]			= 0		--ÉèÖÃ¸±±¾ÀàĞÍ
x805045_g_keySD["spt"]			= 1		--ÉèÖÃ¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
x805045_g_keySD["tim"]			= 2		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
x805045_g_keySD["currStage"]	= 3		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
x805045_g_keySD["scn"]			= 4		--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
x805045_g_keySD["cls"]			= 5		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
x805045_g_keySD["dwn"]			= 6		--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
x805045_g_keySD["tem"]			= 7		--±£´æ¶ÓÎéºÅ
x805045_g_keySD["x"]			= 8			--ÈËÎïÔÚÈë¿Ú³¡¾°ÖĞµÄxÎ»ÖÃ
x805045_g_keySD["z"]			= 9			--ÈËÎïÔÚÈë¿Ú³¡¾°ÖĞµÄzÎ»ÖÃ
x805045_g_keySD["killMonsterNum"]	= 10		--É±ËÀ¹ÖÎïÊıÁ¿
x805045_g_keySD["genMonsterNum"]	= 11			--Éú³É¹ÖÎïÊıÁ¿
x805045_g_keySD["playerLevel"]	= 12		--¼ÇÂ¼µ±Ç°¸±±¾µÄ¼¶±ğ

--**********************************
-- ×Ô¼ºËÀÍö
--**********************************
function x805045_OnDie( sceneId, selfId, killerId )

	local killNum = LuaFnGetCopySceneData_Param( sceneId, x805045_g_keySD["killMonsterNum"] )	
	killNum = killNum + 1
	LuaFnSetCopySceneData_Param( sceneId, x805045_g_keySD["killMonsterNum"], killNum )	
	
	--È«Çò¹«¸æ
	local	nam_ply	= GetName( sceneId, killerId )
	
	--É±ËÀ¹ÖÎïµÄÊÇ³èÎïÔò»ñÈ¡ÆäÖ÷ÈËµÄÃû×Ö....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		nam_ply = GetName( sceneId, playerID )
	end
	
	--Èç¹ûÍæ¼Ò×é¶ÓÁËÔò»ñÈ¡¶Ó³¤µÄÃû×Ö....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		nam_ply = GetName( sceneId, leaderID )
	end
	

	local cityName = LuaFnCityGetNameBySceneId( sceneId )

	local message;
	message = format("#cff99cc#{_INFOUSR%s} ğ¯i m£t cß¶ng ğ¸ch, su¤t lînh ğµi ngû vßşt m÷i khó khån gian kh±, bäo v® %s, S½n th¥n hao binh t±n tß¾ng, vô phß½ng ğánh hÕ, cu¯i cùng buông tha cho thành.", nam_ply, cityName );
	BroadMsgByChatPipe(sceneId, selfId, message, 4);

end

--**********************************
-- ĞÄÌø
--**********************************
function x805045_OnHeartBeat(sceneId, selfId, nTick)
	if(1==LuaFnIsCharacterLiving(sceneId, selfId)  and MonsterAI_GetIntParamByIndex(sceneId, selfId, x805045_IDX_BossFightingState)==1 ) then

		local i = 0;
		for i = 1, getn(x805045_SKILL_TBL) do
			local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_TimerInterval)
			local nCount = MonsterAI_GetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_Count)
			local nState = MonsterAI_GetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_State)
			
			if nState == 0 then
				if x805045_SKILL_TBL[i].SkillCondition == 0 then
					if 0<TimeInterval then
						TimeInterval = TimeInterval - nTick;
						MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_TimerInterval, TimeInterval)
					else
						nState = 1
					end
				end
				
				if x805045_SKILL_TBL[i].SkillCondition == 1   then
					if nCount==0 then
						--x805045_TipAllHuman(sceneId, GetHp(sceneId, selfId) .. "/" .. GetMaxHp(sceneId, selfId))
						if GetHp(sceneId, selfId) < (GetMaxHp(sceneId, selfId)*x805045_SKILL_TBL[i].SkillBlood)/100 then
							nState = 1	
						end
					end
				end
			end
			
			if nState == 1 then
				if( TimeInterval <=0 and x805045_SKILL_TBL[i].MsgAlarm ~= "") then
					if x805045_SKILL_TBL[i].MsgAlarmType == 0 then
						LuaFnNpcChat(sceneId, selfId, 1, x805045_SKILL_TBL[i].MsgAlarm)
					elseif x805045_SKILL_TBL[i].MsgAlarmType == 1 then
						x805045_TipAllHuman(sceneId, x805045_SKILL_TBL[i].MsgAlarm)
					end
				end
				
				nState = 2
			end
			
			
			if nState == 2 then
				--Countdown TimerPrepare
				local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_TimerPrepare)
				if(0<TimePrepare) then
					TimePrepare = TimePrepare - nTick;
					MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_TimerPrepare, TimePrepare)
				else
					MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_TimerPrepare, x805045_SKILL_TBL[i].AlarmTime)
					MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_TimerInterval, x805045_SKILL_TBL[i].SkilCoolDown)
					
					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
					
					if x805045_SKILL_TBL[i].TargetType == 1 then
						nTarget = x805045_RandPlayer(sceneId)
					else 
						nTarget = LuaFnGetTargetObjID(sceneId, selfId)
					end
					
					if(-1~=nTarget) then
						
						if (x805045_SKILL_TBL[i].MsgFire ~= "") then
							local msgFire = format(x805045_SKILL_TBL[i].MsgFire, LuaFnGetName(sceneId, nTarget) )
							LuaFnNpcChat(sceneId, selfId, 1, msgFire)
						end
						
						local posX, posZ = GetWorldPos(sceneId,nTarget)
						local fDir = 0.0
						
						if (x805045_SKILL_TBL[i].TargetCord == 1) then
							posX, posZ = GetWorldPos(sceneId,selfId)
						end
						
						if (x805045_SKILL_TBL[i].TargetCord == 2) then
							posX, posZ = GetWorldPos(sceneId,selfId)
							x805045_GenObj(sceneId, 1, posX, posZ - 1)
						end
						
						LuaFnUnitUseSkill(sceneId, selfId, x805045_SKILL_TBL[i].BossSkill, nTarget, posX, posZ, fDir)
						
						if x805045_SKILL_TBL[i].BuffList ~= nil then
							local bidx = 0
							for bidx=1, getn(x805045_SKILL_TBL[i].BuffList) do
								LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, nTarget, x805045_SKILL_TBL[i].BuffList[bidx], 0)
							end
						end
						
						MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_Count, nCount + 1)	
					end
					
					nState = 0
				end
			end
			
			MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_State, nState)
		end
		
	end

end

--**********************************
-- ³õÊ¼»¯
--**********************************
function x805045_OnInit(sceneId, selfId)
	local i = 0;
	for i = 1, getn(x805045_SKILL_TBL) do
		MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_TimerPrepare, x805045_SKILL_TBL[i].AlarmTime)
		MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_TimerInterval, x805045_SKILL_TBL[i].SkilCoolDown)
		MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_SKILL_TBL[i].IDX_Count, 0)
		MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_IDX_BossFightingState, 0)
	end
	
	local genNum = LuaFnGetCopySceneData_Param( sceneId, x805045_g_keySD["genMonsterNum"] )	
	genNum = genNum + 1
	LuaFnSetCopySceneData_Param( sceneId, x805045_g_keySD["genMonsterNum"], genNum )
	
	LuaFnNpcChat(sceneId, selfId, 1, "S½n th¥n uy nghiêm! Kh·i dung mÕo phÕm!")
end

--**********************************
-- É±ËÀÍæ¼Ò
--**********************************
function x805045_OnKillCharacter(sceneId, selfId, targetId)

end

--**********************************
-- ½øÈëÕ½¶·
--**********************************
function x805045_OnEnterCombat(sceneId, selfId, enmeyId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_IDX_BossFightingState, 1)
end

--**********************************
-- ÍÑÀëÕ½¶·
--**********************************
function x805045_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x805045_IDX_BossFightingState, 0)
end

--**********************************
--ÌáÊ¾ËùÓĞ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x805045_TipAllHuman( sceneId, Str )
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


function x805045_GenObj( sceneId, listid, x, z )
	if x805045_g_monster_list[listid] == nil then
		return
	end
	
    local IndexList = x805045_g_monster_list[listid].MonsterList
    local IndexListSize = getn( IndexList )
    
    local i=1
    local str
    for i=1, IndexListSize do        
		local MonsterId = x805045_CreateNpc( sceneId, IndexList[i].mType, x, z, IndexList[i].aiType, IndexList[i].aiScript, IndexList[i].scriptId )
    end
end

--Ëæ»úÑ¡ÔñÒ»¸öÍæ¼Ò
function x805045_RandPlayer( sceneId )
	-- »ñµÃ³¡¾°ÀïÍ·µÄËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËµÄ³¡¾°
	if nHumanNum < 1 then
		return -1
	end
	
	local nHumanAliveNum = 0
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsCharacterLiving( sceneId, PlayerId) == 1 then
			nHumanAliveNum = nHumanAliveNum + 1
		end
	end
	
	if nHumanAliveNum < 1 then
		return -1
	end
	
	local rPlayerIndex = random( nHumanAliveNum )
	
	local ind = 0
	local round = 2 * nHumanNum  --×î´óÑ­»·Êı
	while round > 0 do
		local PlayerId = LuaFnGetCopyScene_HumanObjId( sceneId, ind )
		if LuaFnIsCharacterLiving( sceneId, PlayerId) == 1 and LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			if rPlayerIndex > 0 then
				rPlayerIndex = rPlayerIndex - 1
			else
				return PlayerId
			end
		end
		
		ind = ind + 1
		if ind >= nHumanNum then
			ind = 0
		end
		
		round = round - 1
	end

	
	return -1
end


--**********************************
-- Í¨ÓÃ´´½¨¹ÖÎïº¯Êı
--**********************************
function x805045_CreateNpc(sceneId, NpcId, x, y, Ai, AiFile, Script)
	local PlayerLevel = LuaFnGetCopySceneData_Param( sceneId, x805045_g_keySD["playerLevel"])
	local ModifyLevel = 0
	
	--PrintStr("  "..PlayerLevel.." "..x.." "..y.." ")
	
	if PlayerLevel > 80   then
		ModifyLevel = 1
	end
	if PlayerLevel > 90   then
		ModifyLevel = 2
	end
	if PlayerLevel > 100   then         
		ModifyLevel = 3
	end
	if PlayerLevel > 110   then         
		ModifyLevel = 4
	end
	if PlayerLevel > 120   then         
		ModifyLevel = 5
	end
	if PlayerLevel > 130   then         
		ModifyLevel = 6
	end
	if PlayerLevel > 140   then         
		ModifyLevel = 7
	end
	local nNpcId = NpcId + ModifyLevel-1
	local nMonsterId = LuaFnCreateMonster(sceneId, nNpcId, x, y, Ai, AiFile, Script)
	SetLevel(sceneId, nMonsterId, PlayerLevel)
	
	-- ¿´ÓĞÃ»ÓĞÉèÖÃ³ÆºÅ£¬ÓĞ¾Í¼Ó³ÆºÅ
	--x805042_SetNpcTitle(sceneId, nMonsterId)
	local strNpcName = GetName(sceneId, nNpcId )
	if (strNpcName == "ĞÕi S½n QuÖ") or (strNpcName == "S½n Th¥n") then
			SetCharacterTitle(sceneId, nNpcId, "ThÕch ğ¥u quái nhân")
	end
	
	return nMonsterId
end
