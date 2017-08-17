--Æ®Ãì·å ²»Æ½µÀÈËAI

--F	¡¾°µÀ×¡¿¶Ô×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ó¸ö½áÊøºó»á»Øµ÷½Å±¾µÄbuff....»Øµ÷Ê±ÈÃBOSS¸øÆäÖÜÎ§ÈË¼ÓÉËº®buff²¢º°»°....
--G ¡¾¾«Ëã¡¿¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....
--H ¡¾ÑÌ»¨¡¿¶Ô×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ó¸ö½áÊøºó»á»Øµ÷½Å±¾µÄbuff....»Øµ÷Ê±º°»°....
--I	¡¾ÅóÓÑ¡¿×¿²»·²ËÀÊ±¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....


--È«³Ì¶¼´øÓÐÃâÒßÖÆ¶¨¼¼ÄÜµÄbuff....
--Ã¿¸ô30Ãë¶ÔËæ»úÍæ¼ÒËæ»úÊ¹ÓÃFH....
--Ã¿¸ô45Ãë¶Ô×Ô¼ºÊ¹ÓÃG....
--ËÀÍö»òÍÑÀëÕ½¶·Ê±¸øËùÓÐÍæ¼ÒÇå³ýFHµÄbuff....
--ËÀÍöÊ±Ñ°ÕÒ²»Æ½µÀÈË....ÉèÖÃÆäÐèÒªÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
--ËÀÍöÊ±·¢ÏÖ²»Æ½µÀÈËÒÑ¾­ËÀÁË....Ôò´´½¨ÁíÒ»¸öBOSS....


--½Å±¾ºÅ
x894097_g_ScriptId	= 894097

--¸±±¾Âß¼­½Å±¾ºÅ....
x894097_g_FuBenScriptId = 894063

--ÃâÒßBuff....
x894097_Buff_MianYi1	= 10472	--ÃâÒßÒ»Ð©¸ºÃæÐ§¹û....
x894097_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--¼¼ÄÜ....
x894097_SkillID_F		= 1825
x894097_BuffID_F1		= 19417

x894097_SkillID_G		= 1806
x894097_SkillID_G_SpecObj		= 188

x894097_SkillID_H		= 1807
x894097_BuffID_H		= 19629

x894097_SkillID_I		= 1804

x894097_SkillCD_FH	=	5000
x894097_SkillCD_G		=	12000
x894097_SkillCD_H	=	12000
x894097_SkillCD_I	=	5000

x894097_MyName			= "Tiêu Nhß Quân"	--×Ô¼ºµÄÃû×Ö....
x894097_BrotherName			= "Ð°ng Tâm Trúc - BÕch"	--×Ô¼ºµÄÃû×Ö....

--AI Index....
x894097_IDX_KuangBaoMode	= 1	--¿ñ±©Ä£Ê½....0Î´¿ñ±© 1ÐèÒª½øÈë¿ñ±© 2ÒÑ¾­½øÈë¿ñ±©
x894097_IDX_CD_SkillFH		= 2	--FH¼¼ÄÜµÄCD....
x894097_IDX_CD_SkillG			= 3	--G¼¼ÄÜµÄCD....
x894097_IDX_CD_Talk				= 4	--FH¼¼ÄÜº°»°µÄCD....
x894097_IDX_CD_SkillI			= 5	--G¼¼ÄÜµÄCD....

x894097_IDX_CombatFlag 		= 1	--ÊÇ·ñ´¦ÓÚÕ½¶·×´Ì¬µÄ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x894097_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x894097_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x894097_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

		local enemyId = GetMonsterCurEnemy( sceneId, selfId )
		if enemyId > 0 then
			local x,z = GetWorldPos(sceneId,selfId)
			local DogX, DogZ = GetWorldPos( sceneId, enemyId )
			if (x - DogX) * (x - DogX) + (z - DogZ) * (z - DogZ) < 2*2 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, enemyId, 19434, 0 )
				LuaFnDeleteMonster( sceneId, selfId )
				--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, enemyId, 19434, 0 )
			end
		end
end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x894097_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894097_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894097_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x894097_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëÕ½¶·×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894097_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x894097_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x894097_ResetMyAI( sceneId, selfId )

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x894097_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x894097_OnDie( sceneId, selfId, killerId )

end


--**********************************
--ÖØÖÃAI....
--**********************************
function x894097_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillFH, x894097_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillG, x894097_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillH, x894097_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillI, x894097_SkillCD_I )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894097_IDX_CombatFlag, 0 )

	--¸øËùÓÐÍæ¼ÒÇå³ýFHµÄbuff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894097_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894097_BuffID_H )
		end
	end

end


--**********************************
--FH¼¼ÄÜÐÄÌø....
--**********************************
function x894097_TickSkillFH( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillFH, x894097_SkillCD_FH-(nTick-cd) )
		return x894097_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G¼¼ÄÜÐÄÌø....
--**********************************
function x894097_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8333 then
		return 0
	end

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillG, x894097_SkillCD_G-(nTick-cd) )
		return x894097_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H¼¼ÄÜÐÄÌø....
--**********************************
function x894097_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillH, x894097_SkillCD_H-(nTick-cd) )
		return x894097_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I¼¼ÄÜÐÄÌø....
--**********************************
function x894097_TickSkillI( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillI )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillI, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894097_IDX_CD_SkillI, x894097_SkillCD_I-(nTick-cd) )
		return x894097_UseSkillI( sceneId, selfId )
	end

end


--**********************************
--Ê¹ÓÃF¼¼ÄÜ....
--**********************************
function x894097_UseSkillF( sceneId, selfId )

	--¸±±¾ÖÐÓÐÐ§µÄÍæ¼ÒµÄÁÐ±í....
	local PlayerList = {}

	--½«ÓÐÐ§µÄÈË¼ÓÈëÁÐ±í....
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

	--¶ÔÆäÊ¹ÓÃ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, PlayerId )
	LuaFnUnitUseSkill( sceneId, selfId, x894097_SkillID_F, PlayerId, x, z, 0, 1 )

	return 1

end


--**********************************
--Ê¹ÓÃG¼¼ÄÜ....
--**********************************
function x894097_UseSkillG( sceneId, selfId )


	--¸±±¾ÖÐÓÐÐ§µÄÍæ¼ÒµÄÁÐ±í....
	local PlayerList = {}

	--½«ÓÐÐ§µÄÈË¼ÓÈëÁÐ±í....
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

	--Ê¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894097_SkillID_G, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Nhß Quân", "Binh Thánh KÏ Tr§n", "Núi r×ng sông nß¾c, cänh ð©p b¤t ng¶ #c2ebeff"..GetName( sceneId, PlayerIdA )..", "..GetName( sceneId, PlayerIdB )..",#W tÕi sao hai ngß½i không b¸ cu¯n hút b·i cänh ð©p mê h°n này?" )
	CallScriptFunction( x894097_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ÐÕo Nhân: Tiêu Nhß Quân phát ra cÕm bçy dß¾i chân các v¸, kh¦n trß½ng né tránh, chúng nguy hi¬m khác hÆn vë b« ngoài ðó..." )

	local x,z = GetWorldPos( sceneId, PlayerIdA )
	CreateSpecialObjByDataIndex(sceneId, PlayerIdA, x894097_SkillID_G_SpecObj, x, z, 0)

	local x,z = GetWorldPos( sceneId, PlayerIdB )
	CreateSpecialObjByDataIndex(sceneId, PlayerIdB, x894097_SkillID_G_SpecObj, x, z, 0)

	return 1

end


--**********************************
--Ê¹ÓÃH¼¼ÄÜ....
--**********************************
function x894097_UseSkillH( sceneId, selfId )

		local Last = CallScriptFunction( x894097_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "PlayHp" )
		if Last > 1 then
			return 0
		end

		CallScriptFunction( x894097_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "PlayHp", 2 )

	       --Ê¹ÓÃ¿Õ¼¼ÄÜ....
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x894097_SkillID_H, selfId, x, z, 0, 1 )

		CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Nhß Quân", "Binh Thánh KÏ Tr§n", "Ð°ng Tâm Løc Trúc, hãy ðón hß¾ng gió th±i, nâng ðÞ thân hình ta, ta c¥n nghï ng½i lÕi sÑc ð¬ còn giªt ð¸ch!" )
		CallScriptFunction( x894097_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ÐÕo Nhân: Tiêu Nhß Quân ðã tri®u t§p Ð°ng Tâm Løc Trúc bäo hµ ð¬ dßÞng sÑc. Huynh muµi chúng tÕm th¶i ðßþc mi­n d¸ch. Các hÕ và t± ðµi hãy mau mau phá hüy Ð°ng Tâm Løc Trúc quyªt tr× khØ chúng mµt phen, tránh r¡c r¯i sau này!" )

	return 1

end


--**********************************
--Ê¹ÓÃI¼¼ÄÜ....
--**********************************
function x894097_UseSkillI( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894097_SkillID_I, selfId, x, z, 0, 1 )

	return 1

end
