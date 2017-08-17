--Æ®Ãì·å ÀîÇïË®AI

--A ¡¾Ğ¡ÎŞÏà¹¦¡¿¸ø×Ô¼ºÓÃ¸ö¿Õ¼¼ÄÜ....ÔÙ¸øËæ»ú¸øÒ»¸öÍæ¼ÒÊ§Ã÷....
--B ¡¾½£Îè¡¿¸ø×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....½ÓÏÂÀ´15sÄÚÒÀ´Î¸øÈ«¸±±¾Íæ¼Ò¼ÓÉËº¦ÖµÖğ½¥¼Ó´óµÄÉËº¦buff....
--C ¡¾È÷ÍÑ¡¿¸ø×Ô¼ºÓÃÒ»¸öÇåbuffµÄ¼¼ÄÜ....
--D ¡¾±ù±¬¡¿¸ø×Ô¼ºÓÃ¸ö¿Õ¼¼ÄÜ....ÔÙ¸øËæ»ú¸øÍæ¼Ò½ÅÏÂ·Å¸öÏİÚå....
--E ¡¾¿ñ±©¡¿¸ø×Ô¼º¼Ó·è¿ñµÄbuff....²»ÔÙÊ¹ÓÃÆäËû¼¼ÄÜ....

--È«³Ì¶¼´øÓĞÃâÒßÖÆ¶¨¼¼ÄÜµÄbuff....
--Õ½¶·¿ªÊ¼Í¬Ê±Ã¿¸ô10ÃëÓÃA¼¼ÄÜ....
--µ±HP½µÎª66%ºÍ33%Ê±·Ö±ğÊ¹ÓÃB¼¼ÄÜ....B¼¼ÄÜµÄ³ÖĞøÊ±¼äÄÚ....ÆäËü¼¼ÄÜCDµ½ÁË²»Ê¹ÓÃ....
--Ã¿¸ô20ÃëÓÃC¼¼ÄÜ....
--Ã¿¸ô20ÃëÓÃD¼¼ÄÜ....


--½Å±¾ºÅ
x895064_g_ScriptId	= 895064

--¸±±¾Âß¼­½Å±¾ºÅ....
x895064_g_FuBenScriptId = 895063

x895064_MyName			= "Tiêu D§t Phong"	--×Ô¼ºµÄÃû×Ö....

--ÃâÒßÌØ¶¨¼¼ÄÜbuff....
x895064_Buff_MianYi1	= 10472	--ÃâÒßÒ»Ğ©¸ºÃæĞ§¹û....
x895064_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒşÉí....

--AÉñÀ´Ö®±Ê....
x895064_SkillA_ID			= 1800
x895064_SkillA_Buff		=	19404
x895064_SkillA_CD			= 5000

--B½£Îè....
x895064_SkillB_ID		= 1803
x895064_SkillB_CD		= 22000


--CÈ÷ÍÑ....
x895064_SkillC_ID		= 1802
x895064_SkillC_CD		= 20000

--D±ù±¬....
x895064_SkillD_ID		= 1801
x895064_SkillD_CD		= 20000
x895064_SkillD_SpecObj = 200
x895064_SkillD_Buff		=	19405

--E¿ñ±©....
x895064_SkillE_Buff1	= 10234
x895064_SkillE_Buff2	= 10235
--¿ªÊ¼½øÈë¿ñ±©×´Ì¬µÄÊ±¼ä....
x895064_EnterKuangBaoTime	= 10*60*1000

--AI Index....
x895064_IDX_StopWatch						= 1	--Ãë±í....
x895064_IDX_SkillA_CD						= 2	--A¼¼ÄÜµÄCDÊ±¼ä....
x895064_IDX_SkillB_HPStep				= 3	--ÑªÁ¿¼¶±ğ....
x895064_IDX_SkillB_Step					= 4	--B¼¼ÄÜµÄStep....0=Î´·¢¶¯ 15=buff1 14=buff2 ¡­¡­ 1=buff15
x895064_IDX_SkillB_Type					= 5	--µ±Ç°ÕıÔÚÊ¹ÓÃÄÄÖÖÀàĞÍµÄ½£Îè....
x895064_IDX_SkillC_CD						= 6	--C¼¼ÄÜµÄCDÊ±¼ä....
x895064_IDX_SkillD_CD						= 7	--C¼¼ÄÜµÄCDÊ±¼ä....
x895064_IDX_KuangBaoTimer				= 8	--¿ñ±©µÄ¼ÆÊ±Æ÷....
x895064_IDX_SkillB_CD						= 9	--C¼¼ÄÜµÄCDÊ±¼ä....


x895064_IDX_CombatFlag 			= 1	--ÊÇ·ñ´¦ÓÚÕ½¶·×´Ì¬µÄ±êÖ¾....
x895064_IDX_IsKuangBaoMode	= 2	--ÊÇ·ñ´¦ÓÚ¿ñ±©Ä£Ê½µÄ±êÖ¾....

x895064_LootItem_1 = {
39901048, 39901048, 
}

x895064_LootItem_2 = {
20310184,
}
--**********************************
--³õÊ¼»¯....
--**********************************
function x895064_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x895064_ResetMyAI( sceneId, selfId )
end


--**********************************
--ĞÄÌø....
--**********************************
function x895064_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895064_IDX_CombatFlag ) then
		return
	end

	--¿ñ±©×´Ì¬²»ĞèÒª×ßÂß¼­....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895064_IDX_IsKuangBaoMode ) then
		return
	end

	--A¼¼ÄÜĞÄÌø....
	if 1 == x895064_TickSkillA( sceneId, selfId, nTick ) then
		return
	end

	--B¼¼ÄÜĞÄÌø....
	if 1 == x895064_TickSkillB( sceneId, selfId, nTick ) then
		return
	end

	--C¼¼ÄÜĞÄÌø....
	if 1 == x895064_TickSkillC( sceneId, selfId, nTick ) then
		return
	end

	--D¼¼ÄÜĞÄÌø....
	if 1 == x895064_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

	--E¼¼ÄÜĞÄÌø....
	if 1 == x895064_TickSkillE( sceneId, selfId, nTick ) then
		return
	end

	--Ãë±íĞÄÌø....
	x895064_TickStopWatch( sceneId, selfId, nTick )

end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x895064_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895064_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895064_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x895064_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëÕ½¶·×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895064_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x895064_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x895064_ResetMyAI( sceneId, selfId )

	--É¾³ı×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

	--´´½¨¶Ô»°NPC....
	local MstId = CallScriptFunction( x895064_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoYiFeng_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )
end


--**********************************
--É±ËÀµĞÈË....
--**********************************
function x895064_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x895064_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x895064_ResetMyAI( sceneId, selfId )

	--ÉèÖÃÒÑ¾­ÌôÕ½¹ı¹ş´ó°Ô....
	CallScriptFunction( x895064_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "XiaoYiFeng", 2 )

	--Èç¹û»¹Ã»ÓĞÌôÕ½¹ıÉ£ÍÁ¹«Ôò¿ÉÒÔÌôÕ½É£ÍÁ¹«....
	if 2 ~= CallScriptFunction( x895064_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoRuJun" ) then
		CallScriptFunction( x895064_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "XiaoRuJun", 1 )
	end
		
	-- zchw È«Çò¹«¸æ
	local	playerName	= GetName( sceneId, killerId )
	
	--É±ËÀ¹ÖÎïµÄÊÇ³èÎïÔò»ñÈ¡ÆäÖ÷ÈËµÄÃû×Ö....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--Èç¹ûÍæ¼Ò×é¶ÓÁËÔò»ñÈ¡¶Ó³¤µÄÃû×Ö....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("M£c cho b¸ vây ch£t tÑ phía, #GTiêu D§t Phong#W m£t không biªn s¡c, vçn thong dong nhßng ğµt nhiên lên tiªng \"KÏ T§t Nhß Phong\" r°i biªn m¤t. #{_INFOUSR%s}#W cùng t± ğµi phäi th¯t lên \"Tiêu D§t Phong quä th§t là danh b¤t hß truy«n\"...", playerName); --¹ş´ó°Ô
		AddGlobalCountNews( sceneId, str )
	end

	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊı
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	for i = 0, num - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and LuaFnIsCharacterLiving( sceneId, mems[i] ) == 1 then					-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷

			local WuPin = random( getn(x895064_LootItem_1) )
			AddMonsterDropItem( sceneId, selfId, mems[i], x895064_LootItem_1[WuPin] )

			rand = random(100)
			if rand < 50 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )--Ôª±¦1W
			end

			rand = random(100)
			if rand < 30 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--Ãµ¹åÖ®Áµ
			end

			rand = random(100)
			if rand < 10 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--ÕòÄÏ
			end

			rand = random(100)
			if rand < 100 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--ÕòÄÏ
			end

			rand = random(100)
			if rand < 50 then
				local WuPin = random( getn(x895064_LootItem_2) )
				AddMonsterDropItem( sceneId, selfId, mems[i], x895064_LootItem_2[WuPin]  )

			end

			rand = random(100)
			if rand < 30 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 39910003)--Ôª±¦5W
			end

		end
	end
	
end


--**********************************
--ÖØÖÃAI....
--**********************************
function x895064_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊı....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_StopWatch, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillA_CD, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_HPStep, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_Step, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_Type, 1 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_CD, x895064_SkillB_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillC_CD, x895064_SkillC_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillD_CD, x895064_SkillD_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_KuangBaoTimer, 0 )

	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895064_IDX_CombatFlag, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895064_IDX_IsKuangBaoMode, 0 )

end

--**********************************
--A¼¼ÄÜĞÄÌø....
--**********************************
function x895064_TickSkillA( sceneId, selfId, nTick )

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillA_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillA_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillA_CD, x895064_SkillA_CD-(nTick-cd) )
		return x895064_UseSkillA( sceneId, selfId )
	end

end

--**********************************
--B¼¼ÄÜĞÄÌø....
--**********************************
function x895064_TickSkillB( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_CD, x895064_SkillB_CD-(nTick-cd) )
		return x895064_UseSkillB( sceneId, selfId )
	end

end

--**********************************
--C¼¼ÄÜĞÄÌø....
--**********************************
function x895064_TickSkillC( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.5333 then
		return 0
	end

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillC_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillC_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillC_CD, x895064_SkillC_CD-(nTick-cd) )
		return x895064_UseSkillC( sceneId, selfId )
	end

end

--**********************************
--D¼¼ÄÜĞÄÌø....
--**********************************
function x895064_TickSkillD( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8333 then
		return 0
	end

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillD_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillD_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillD_CD, x895064_SkillD_CD-(nTick-cd) )
		return x895064_UseSkillD( sceneId, selfId )
	end

end

--**********************************
--E¼¼ÄÜĞÄÌø....
--**********************************
function x895064_TickSkillE( sceneId, selfId, nTick )

	--Èç¹ûÕıÔÚÓÃB¼¼ÄÜÔòÏÈµÈ´ı....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_Step ) > 0 then
		return 0
	end

	--¼ì²âÊÇ·ñµ½ÁË¿ñ±©µÄÊ±ºò....
	local kbTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_KuangBaoTimer )
	if kbTime < x895064_EnterKuangBaoTime then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_KuangBaoTimer, kbTime+nTick )
		return 0

	else
		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895064_IDX_IsKuangBaoMode, 1 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895064_SkillE_Buff1, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895064_SkillE_Buff2, 0 )
		return 1

	end
end

--**********************************
--Ãë±íĞÄÌø....
--**********************************
function x895064_TickStopWatch( sceneId, selfId, nTick )

	--ÏŞÖÆÃ¿Ãë²Å»áÖ´ĞĞÒ»´Î....
	local time = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_StopWatch )
	if (time + nTick) > 1000 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_StopWatch, time+nTick-1000 )
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_StopWatch, time+nTick )
		return
	end


	-------------------------
	--½£Îè¼¼ÄÜÂß¼­....
	-------------------------
	local buffStep = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_Step )
	local skillType = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_Type )
	if buffStep >= 1 and buffStep <= 15 then

		--Ñ°ÕÒ·ûÃôÒÇ....
		local bossId = CallScriptFunction( x895064_g_FuBenScriptId, "FindBOSS", sceneId, "FuMinYi_NPC" )
		if bossId <= 0 then
			return 0
		end

		--ÈÃ·ûÃôÒÇ¸øÍæ¼Ò¼Óbuff....
		local buffTbl = x895064_SkillB_BuffIDTbl[skillType]
		local buffId = buffTbl[16-buffStep]
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
			end
		end

	end

	if buffStep > 0 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_Step, buffStep-1 )
	end


end

--**********************************
--Ê¹ÓÃA¼¼ÄÜ....
--**********************************
function x895064_UseSkillA( sceneId, selfId )

	--Èç¹ûÕıÔÚÓÃB¼¼ÄÜÔòÌø¹ı....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x895064_IDX_SkillB_Step ) > 0 then
		return 0
	end

	--¸±±¾ÖĞÓĞĞ§µÄÍæ¼ÒµÄÁĞ±í....
	local PlayerList = {}

	--½«ÓĞĞ§µÄÈË¼ÓÈëÁĞ±í....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--Ëæ»úÌôÑ¡Ò»¸öÍæ¼Ò....
	if numPlayer <= 0 then
		return 0
	end
	local PlayerId = PlayerList[ random(numPlayer) ]

	--¶Ô×Ô¼ºÊ¹ÓÃÒ»¸ö¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x895064_SkillA_ID, selfId, x, z, 0, 1 )

	--¸øÍæ¼Ò¼ÓÊ§Ã÷buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerId, x895064_SkillA_Buff, 0 )

	return 1

end

--**********************************
--Ê¹ÓÃB¼¼ÄÜ....
--**********************************
function x895064_UseSkillB( sceneId, selfId )

	--Ê¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x895064_SkillB_ID, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Tiêu D§t Phong", "Binh Thánh KÏ Tr§n", "T§t nhß phong, khoái nhß hi¬m, phong giáp ra thân. Các ngß½i sØ døng kÛ nång gì ği chång næa thì ta nh¤t ğ¸nh s¨ hoàn trä các ngß¶i b¢ng chính kÛ nång ğó..." )
	CallScriptFunction( x894064_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Tiêu D§t Phong tri®u h°i T§t Phong Hµ Th¬. Liên tøc trong vòng 15 giây, m÷i sát thß½ng gây ra cho h¡n s¨ b¸ phän hoàn toàn tr· lÕi, các v¸ chú ı!" )

	return 1

end

--**********************************
--Ê¹ÓÃC¼¼ÄÜ....
--**********************************
function x895064_UseSkillC( sceneId, selfId )

	--¸±±¾ÖĞÓĞĞ§µÄÍæ¼ÒµÄÁĞ±í....
	local PlayerList = {}

	--½«ÓĞĞ§µÄÈË¼ÓÈëÁĞ±í....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--Ëæ»úÌôÑ¡Ò»¸öÍæ¼Ò....
	if numPlayer <= 0 then
		return 0
	end
	local PlayerId = PlayerList[ random(numPlayer) ]

	--Ê¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x895064_SkillC_ID, PlayerId, x, z, 0, 1 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerId, 19408, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerId, 19406, 0 )
	local x,z = GetWorldPos( sceneId, PlayerId )
	CallScriptFunction( x895064_g_FuBenScriptId, "CreateBOSS", sceneId, "FengLei_BOSS", x, z )
	CallScriptFunction( x895064_g_FuBenScriptId, "CreateBOSS", sceneId, "FengLei_BOSS", x, z )
	CallScriptFunction( x895064_g_FuBenScriptId, "CreateBOSS", sceneId, "FengLei_BOSS", x, z )
	CallScriptFunction( x895064_g_FuBenScriptId, "CreateBOSS", sceneId, "FengLei_BOSS", x, z )
	CallScriptFunction((200060), "Paopao",sceneId, "Tiêu D§t Phong", "Binh Thánh KÏ Tr§n", "TØ tiêu vân tø, Lôi ğµng cØu thiên, Cu°ng lôi kích sát. Phong Lôi ĞÕn, møc tiêu là tên #c2ebeff"..GetName( sceneId, PlayerId ).."#W..." )
	CallScriptFunction( x894064_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: #c2ebeff"..GetName( sceneId, PlayerId ).." ğã trúng Phong Lôi ĞÕn. 5 giây sau trong ngß¶i tñ kh¡c sinh ra 4 tia Phong Lôi ĞÕn töa ra xung quanh, c¦n th§n!" )

	return 1


end

--**********************************
--Ê¹ÓÃD¼¼ÄÜ....
--**********************************
function x895064_UseSkillD( sceneId, selfId )

	--¸±±¾ÖĞÓĞĞ§µÄÍæ¼ÒµÄÁĞ±í....
	local PlayerList = {}

	--½«ÓĞĞ§µÄÈË¼ÓÈëÁĞ±í....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--Ëæ»úÌôÑ¡Ò»¸öÍæ¼Ò....
	if numPlayer <= 0 then
		return 0
	end
	local PlayerIdA = PlayerList[ random(numPlayer) ]
	local PlayerIdB = PlayerList[ random(numPlayer) ]

	--¶Ô×Ô¼ºÊ¹ÓÃÒ»¸ö¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x895064_SkillD_ID, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Tiêu D§t Phong", "Binh Thánh KÏ Tr§n", "Cu°ng Lôi Ch¤n Ğ¸a, phong töa huy¬t ğÕo, chï c¥n ğşi Thiên Lôi giáng thª là #c2ebeff"..GetName( sceneId, PlayerIdA )..", "..GetName( sceneId, PlayerIdB ).."#W tñ kh¡c xu¯ng g£p MÕnh Bà r°i. Ha ha..." )
	CallScriptFunction( x894064_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Cu°ng Lôi 30 giây sau s¨ phát tác, lúc ğó s¨ gây hÕi cho các v¸ r¤t l¾n, hãy nhanh tay phá hüy chúng ği..." )

	--¸øÍæ¼Ò¼ÓÊ§Ã÷buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerIdA, x895064_SkillD_Buff, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerIdA, 19403, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerIdB, x895064_SkillD_Buff, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerIdB, 19403, 0 )

	local x,z = GetWorldPos( sceneId, PlayerIdA )
	CreateSpecialObjByDataIndex(sceneId, selfId, x895064_SkillD_SpecObj, x, z, 0)
	local MstIdA = CallScriptFunction( x895064_g_FuBenScriptId, "CreateBOSS", sceneId, "XuanFeng_BOSS", x, z )
	SetCharacterDieTime( sceneId, MstIdA, 31500 )

	local x,z = GetWorldPos( sceneId, PlayerIdB )
	CreateSpecialObjByDataIndex(sceneId, selfId, x895064_SkillD_SpecObj, x, z, 0)
	local MstIdB = CallScriptFunction( x895064_g_FuBenScriptId, "CreateBOSS", sceneId, "XuanFeng_BOSS", x, z )
	SetCharacterDieTime( sceneId, MstIdB, 31500 )

	return 1

end

--**********************************
--°µÀ×ºÍÑÌ»¨µÄbuff½áÊøµÄÊ±ºò»Øµ÷±¾½Ó¿Ú....
--**********************************
function x895064_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ñ°ÕÒBOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "Tiêu D§t Phong" then
			bossId = MonsterId
		end
	end

	--Ã»ÕÒµ½Ôò·µ»Ø....
	if bossId == -1 then
		return
	end

	--Èç¹ûÊÇÑÌ»¨µÄbuffÔòÈÃBOSSº°»°....
	if impactId == 19403 then

		x,z = GetWorldPos( sceneId,selfId )
		CreateSpecialObjByDataIndex(sceneId, bossId, 193, x, z, 0)

		return
	end

	--Èç¹ûÊÇÑÌ»¨µÄbuffÔòÈÃBOSSº°»°....
	if impactId == 19408 then
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19406, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, selfId, 19409, 0 )

		return
	end

	--Èç¹ûÊÇÑÌ»¨µÄbuffÔòÈÃBOSSº°»°....
	if impactId == 19409 then
		CreateSpecialObjByDataIndex(sceneId, bossId, 191, x, z, 0)
		return
	end

end

