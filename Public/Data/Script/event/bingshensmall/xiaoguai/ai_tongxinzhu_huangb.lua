
--½Å±¾ºÅ
x895088_g_ScriptId	= 895088

--¸±±¾Âß¼­½Å±¾ºÅ....
x895088_g_FuBenScriptId = 890063

--ÃâÒßBuff....
x895088_Buff_MianYi1	= 10472	--ÃâÒßÒ»Ð©¸ºÃæÐ§¹û....
x895088_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--¼¼ÄÜ....
x895088_SkillID_F		= 1827

x895088_SkillID_G		= 903
x895088_SkillID_G_SpecObj		= 1022

x895088_SkillID_H		= 905
x895088_SkillID_J		= 909
x895088_BuffID_H		= 19629

x895088_SkillID_I		= 1036
x895088_BuffID_I1		= 10253
x895088_BuffID_I2		= 10254

x895088_SkillCD_FH	=	5000
x895088_SkillCD_G		=	6000
x895088_SkillCD_H	=	12000


x895088_MyName			= "Tiêu Nhß Quân"	--×Ô¼ºµÄÃû×Ö....
x895088_BrotherName			= "Ð°ng Tâm Trúc - Hoàng"	--×Ô¼ºµÄÃû×Ö....

--AI Index....
x895088_IDX_KuangBaoMode	= 1	--¿ñ±©Ä£Ê½....0Î´¿ñ±© 1ÐèÒª½øÈë¿ñ±© 2ÒÑ¾­½øÈë¿ñ±©
x895088_IDX_CD_SkillFH		= 2	--FH¼¼ÄÜµÄCD....
x895088_IDX_CD_SkillG			= 3	--G¼¼ÄÜµÄCD....
x895088_IDX_CD_Talk				= 4	--FH¼¼ÄÜº°»°µÄCD....
x895088_IDX_CD_SkillH			= 5	--G¼¼ÄÜµÄCD....

x895088_IDX_CombatFlag 		= 1	--ÊÇ·ñ´¦ÓÚÕ½¶·×´Ì¬µÄ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x895088_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x895088_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x895088_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895088_IDX_CombatFlag ) then
		return
	end

	--FH¼¼ÄÜÐÄÌø....
	if 1 == x895088_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x895088_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895088_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895088_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x895088_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëÕ½¶·×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895088_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x895088_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x895088_ResetMyAI( sceneId, selfId )

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x895088_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x895088_OnDie( sceneId, selfId, killerId )

	--±éÀú³¡¾°ÀïËùÓÐµÄ¹Ö....Ñ°ÕÒÐÖµÜ....¸øÆäÉèÖÃÐèÒªÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895088_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19411, 0 )
		end
	end

	CallScriptFunction( x894088_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ÐÕo Nhân: #c2ebeff"..GetName( sceneId, selfId ).." cüa Tiêu Nhß Quân ðã b¸ phá hüy!" )

end


--**********************************
--ÖØÖÃAI....
--**********************************
function x895088_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillFH, x895088_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillG, x895088_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillH, x895088_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895088_IDX_CombatFlag, 0 )

	--¸øËùÓÐÍæ¼ÒÇå³ýFHµÄbuff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895088_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895088_BuffID_H )
		end
	end

end


--**********************************
--FH¼¼ÄÜÐÄÌø....
--**********************************
function x895088_TickSkillFH( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillFH, x895088_SkillCD_FH-(nTick-cd) )
		return x895088_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G¼¼ÄÜÐÄÌø....
--**********************************
function x895088_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent <= 0.6666 then
		return 0
	end

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillG, x895088_SkillCD_G-(nTick-cd) )
		return x895088_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H¼¼ÄÜÐÄÌø....
--**********************************
function x895088_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_CD_SkillH, x895088_SkillCD_H-(nTick-cd) )
		return x895088_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I¼¼ÄÜÐÄÌø....
--**********************************
function x895088_TickSkillI( sceneId, selfId, nTick )

	--»ñµÃµ±Ç°¿ñ±©mode....
	local CurMode = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895088_IDX_KuangBaoMode )

	if CurMode == 0 or CurMode == 2 then

		--Èç¹û²»ÐèÒª¿ñ±©»òÕßÒÑ¾­¿ñ±©ÁËÔò·µ»Ø....
		return 0

	elseif CurMode == 1 then

		--Èç¹ûÐèÒª¿ñ±©ÔòÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
		local ret =  x895088_UseSkillI( sceneId, selfId )
		if ret == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x895088_IDX_KuangBaoMode, 2 )
			return 1
		else
			return 0
		end

	end

end


--**********************************
--Ê¹ÓÃF¼¼ÄÜ....
--**********************************
function x895088_UseSkillF( sceneId, selfId )

	--±éÀú³¡¾°ÀïËùÓÐµÄ¹Ö....Ñ°ÕÒÐÖµÜ....¸øÆäÉèÖÃÐèÒªÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "ÏôÈçÎµ" and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			local x,z = GetWorldPos( sceneId, PlayerId )
			LuaFnUnitUseSkill( sceneId, selfId, x895088_SkillID_F, MonsterId, x, z, 0, 1 )
		end
	end

	return 1

end


--**********************************
--Ê¹ÓÃG¼¼ÄÜ....
--**********************************
function x895088_UseSkillG( sceneId, selfId )


	return 1

end


--**********************************
--Ê¹ÓÃH¼¼ÄÜ....
--**********************************
function x895088_UseSkillH( sceneId, selfId )


	return 1

end


--**********************************
--Ê¹ÓÃI¼¼ÄÜ....
--**********************************
function x895088_UseSkillI( sceneId, selfId )


	return 1

end


--**********************************
--°µÀ×ºÍÑÌ»¨µÄbuff½áÊøµÄÊ±ºò»Øµ÷±¾½Ó¿Ú....
--**********************************
function x895088_OnImpactFadeOut( sceneId, selfId, impactId )

end

