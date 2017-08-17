--Æ®Ãì·å É£ÍÁ¹«AI

--A ¡¾ÍÁ¶Ý¡¿BOSSµÄHPÃ¿ËðÊ§20%Ôò»áÏûÊ§20Ãë....Í¬Ê±´´½¨Ð¡¹ÖÒÀ´ÎÎª1122Ö»..ËÀÍöorÍÑÀëÕ½¶·ÏûÊ§....
--B ¡¾Å£Ã«¶¾Õë¡¿·ÇÍÁ¶Ý×´Ì¬Ê±Ã¿¸ô20Ò»´Î´ó·¶Î§¹¥»÷....ÍÁ¶Ý×´Ì¬ÏÂCDÕý³£×ßÖ»ÊÇ²»Ê¹ÓÃ....ÍÁ¶Ý½áÊøÊ±ÇåCD....
--C ¡¾³öÍÁÎÄÎï¡¿½øÈëÍÁ¶ÝÊ±Ëæ»ú»ñµÃ2¸öbuff....Í¬Ê±Çå³ýÉÏ´ÎµÄ2¸öbuff....
--D ¡¾·è¿ñ¡¿Õ½¶·5·ÖÖÓºó¸ø×Ô¼ººÍËùÓÐ½©Ê¬¼ÓÒ»»÷ÖÂÃübuff....²»ÔÙÊ¹ÓÃAB(C)....

--È«³Ì¶¼´øÓÐÃâÒßÖÆ¶¨¼¼ÄÜµÄbuff....
--ÍÑÀëÕ½¶·»òËÀÍöÊ±É¾³ý½©Ê¬....


--½Å±¾ºÅ
x893065_g_ScriptId	= 893065

--¸±±¾Âß¼­½Å±¾ºÅ....
x893065_g_FuBenScriptId = 893063


--ÃâÒßÌØ¶¨¼¼ÄÜbuff....
x893065_Buff_MianYi1	= 10472	--ÃâÒßÒ»Ð©¸ºÃæÐ§¹û....
x893065_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--AÍÁ¶Ý....
x893065_SkillID_H				= 1635
x893065_SkillA_TuDun				= 1028
x893065_MianYi_Buff				= 22431
x893065_SkillA_AChildName		= "M£c H±: Bång"
x893065_SkillA_BChildName		= "M£c H±: Höa"
x893065_SkillA_CChildName		= "M£c H±: Ðµc"
x893065_SkillA_DChildName		= "M£c H±: Huy«n"
x893065_SkillA_AChildBuff		= 22422
x893065_SkillA_BChildBuff		= 22423
x893065_SkillA_CChildBuff		= 22424
x893065_SkillA_DChildBuff		= 22425

x893065_SkillA_ChildTime		= 5000		--ÍÁ¶Ý¶à³¤Ê±¼äºó¿ªÊ¼Ë¢Ð¡¹Ö....
x893065_SkillA_Time					= 20000		--ÍÁ¶Ý³ÖÐøµÄÊ±¼ä....


--BÅ£Ã«¶¾Õë....
x893065_SkillB_NiuMaoDuZhen = 1634
x893065_SkillE_SanFeng = 1637
x893065_SkillE_Buff				= 22429
--ÀäÈ´Ê±¼ä....
x893065_SkillB_CD						= 30000


--C³öÍÁÎÄÎï¼¼ÄÜµÄbuffÁÐ±í....
x893065_SkillC_ChutuBuff1 = { 22428, 22428 }
x893065_SkillC_ChutuBuff2 = { 22430, 22430, 22430, 22430 }


--D·è¿ñ....
x893065_SkillD_Buff1	= 10234
x893065_SkillD_Buff2	= 10235
--¿ªÊ¼½øÈë¿ñ±©×´Ì¬µÄÊ±¼ä....
x893065_EnterKuangBaoTime	= 10*60*1000


--AI Index....
x893065_IDX_HPStep							= 1	--ÑªÁ¿¼¶±ð....
x893065_IDX_SkillB_CD						= 2	--B¼¼ÄÜµÄCDÊ±¼ä....
x893065_IDX_KuangBaoTimer				= 3	--¿ñ±©µÄ¼ÆÊ±Æ÷....
x893065_IDX_TuDunTimer					= 4	--ÍÁ¶ÝµÄ¼ÆÊ±Æ÷....ÓÃÓÚ¼ÆËãºÎÊ±ÍÁ¶Ý½áÊø....
x893065_IDX_NeedCreateChildNum	= 5	--ÐèÒª´´½¨µÄÐ¡¹ÖµÄÊýÁ¿....

x893065_IDX_CombatFlag 			= 1	--ÊÇ·ñ´¦ÓÚÕ½¶·×´Ì¬µÄ±êÖ¾....
x893065_IDX_IsTudunMode			= 2	--ÊÇ·ñ´¦ÓÚÍÁ¶ÝÄ£Ê½µÄ±êÖ¾....
x893065_IDX_IsKuangBaoMode	= 3	--ÊÇ·ñ´¦ÓÚ¿ñ±©Ä£Ê½µÄ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x893065_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x893065_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x893065_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x893065_IDX_CombatFlag ) then
		return
	end

	--¿ñ±©×´Ì¬²»ÐèÒª×ßÂß¼­....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x893065_IDX_IsKuangBaoMode ) then
		return
	end

	--Ö´ÐÐ¿ñ±©Âß¼­....
	if 1 == x893065_DoSkillD_KuangBao( sceneId, selfId, nTick ) then
		return
	end

	--Ö´ÐÐÍÁ¶ÝÂß¼­....
	if 1 == x893065_SkillLogicA_TunDun( sceneId, selfId, nTick ) then
		return
	end

	--Ö´ÐÐÅ£Ã«¶¾ÕëÂß¼­....
	if 1 == x893065_SkillLogicB_NiuMaoDuZhen( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x893065_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x893065_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëÕ½¶·×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x893065_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x893065_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x893065_ResetMyAI( sceneId, selfId )

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

	--´´½¨¶Ô»°NPC....
	local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "QinYun_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x893065_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x893065_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x893065_ResetMyAI( sceneId, selfId )

	--ÉèÖÃÒÑ¾­ÌôÕ½¹ýÉ£ÍÁ¹«....
	CallScriptFunction( x893065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "QinYun", 2 )

	--Èç¹û»¹Ã»ÓÐÌôÕ½¹ýÎÚÀÏ´óÔò¿ÉÒÔÌôÕ½ÎÚÀÏ´ó....
	if 2 ~= CallScriptFunction( x893065_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "TaoQin" )	then
		CallScriptFunction( x893065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "TaoQin", 1 )
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
		str = format("#{_INFOUSR%s} dçn d¡t ðµi ngû mµt phen quyªt chiªn Ðào Thanh th¡ng lþi, tiªp tøc hành trình Huyªt chiªn TÑ Tuy®t Trang...", playerName); --É£ÍÁ¹«
		AddGlobalCountNews( sceneId, str )
	end
	
end


--**********************************
--ÖØÖÃAI....
--**********************************
function x893065_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_HPStep, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_SkillB_CD, x893065_SkillB_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_KuangBaoTimer, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_TuDunTimer, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_NeedCreateChildNum, 0 )

	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x893065_IDX_CombatFlag, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x893065_IDX_IsTudunMode, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x893065_IDX_IsKuangBaoMode, 0 )

	--Çå³ýbuff....
	for i, buffId in x893065_SkillC_ChutuBuff1 do
		LuaFnCancelSpecificImpact( sceneId, selfId, buffId )
	end

	for i, buffId in x893065_SkillC_ChutuBuff2 do
		LuaFnCancelSpecificImpact( sceneId, selfId, buffId )
	end

	LuaFnCancelSpecificImpact( sceneId, selfId, x893065_SkillD_Buff1 )
	LuaFnCancelSpecificImpact( sceneId, selfId, x893065_SkillD_Buff2 )

	--Çå³ýÐ¡¹Ö....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, MonsterId) == x893065_SkillA_AChildName or GetName(sceneId, MonsterId) == x893065_SkillA_BChildName or GetName(sceneId, MonsterId) == x893065_SkillA_CChildName or GetName(sceneId, MonsterId) == x893065_SkillA_DChildName then
			LuaFnDeleteMonster(sceneId, MonsterId)
		end
	end

end


--**********************************
--¿ñ±©¼¼ÄÜ....
--**********************************
function x893065_DoSkillD_KuangBao( sceneId, selfId )

	--¼Ó¿ñ±©buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_SkillD_Buff1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_SkillD_Buff2, 0 )

	--¸øËùÓÐÐ¡¹Ö¼Ó¿ñ±©....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, MonsterId) == x893065_SkillA_ChildName then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x893065_SkillD_Buff1, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x893065_SkillD_Buff2, 0 )
		end
	end

end


--**********************************
--ÍÁ¶ÝÂß¼­....
--**********************************
function x893065_SkillLogicA_TunDun( sceneId, selfId, nTick )


	--ÍÁ¶ÝÄ£Ê½Ôò¸üÐÂÍÁ¶ÝµÄ¼ÆÊ±Æ÷....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x893065_IDX_IsTudunMode ) then

		local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x893065_IDX_TuDunTimer )
		if cd > nTick then

			MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_TuDunTimer, cd-nTick )
			--Èç¹ûµ½ÁËË¢Ð¡¹ÖµÄÊ±¼ä²¢ÇÒ±¾´ÎÍÁ¶Ý»¹Ã»Ë¢¹ýÐ¡¹Ö....
			if cd < (x893065_SkillA_Time-x893065_SkillA_ChildTime) then
				local needCreateNum = MonsterAI_GetIntParamByIndex( sceneId, selfId, x893065_IDX_NeedCreateChildNum )
				if needCreateNum > 0 then
					--´´½¨Ð¡¹Ö....
					MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_NeedCreateChildNum, 0 )
					local x,z = GetWorldPos( sceneId, selfId )
					if needCreateNum == 1 then
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_AChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_AChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_BChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_BChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_CChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_CChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_DChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_DChildName )
					elseif needCreateNum == 2 then
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_AChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_AChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_BChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_BChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_CChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_CChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_DChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_DChildName )
					elseif needCreateNum == 3 then
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_AChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_AChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_BChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_BChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_CChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_CChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_DChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_DChildName )
					elseif needCreateNum == 4 then
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_AChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_AChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_BChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_BChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_CChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_CChildName )
						local MstId = CallScriptFunction( x893065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x893065_SkillA_DChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x893065_SkillA_DChildName )
					end
				end
			end

		else

			--ÍÁ¶Ý½áÊø....ÉèÖÃÀë¿ªÍÁ¶Ý×´Ì¬....
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_TuDunTimer, 0 )
			MonsterAI_SetBoolParamByIndex( sceneId, selfId, x893065_IDX_IsTudunMode, 0 )
			--ÖØÖÃÅ£Ã«¶¾ÕëCD....
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_SkillB_CD, x893065_SkillB_CD )

		end


	--·ÇÍÁ¶ÝÄ£Ê½Ôò¼ì²âÊÇ·ñ¿ÉÒÔ½øÈëÍÁ¶ÝÄ£Ê½....
	else

	--²»ÄÜ¹¥»÷....
		local nMonsterNum = GetMonsterCount(sceneId)
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId,i)
			if GetName(sceneId, MonsterId) == x893065_SkillA_AChildName or GetName(sceneId, MonsterId) == x893065_SkillA_BChildName or GetName(sceneId, MonsterId) == x893065_SkillA_CChildName or GetName(sceneId, MonsterId) == x893065_SkillA_DChildName then
			   CallScriptFunction((200060), "Paopao",sceneId, "Phan Tinh Tinh", "TÑ Tuy®t Trang", "Ðào Thanh ðã tri®u h°i M£c H±, m÷i ngß¶i hãy t§p trung tiêu di®t M£c H± trß¾c, nªu còn ð¬ lû này lÕi thì s¨ khó lòng ð¯i phó v¾i Ðào Thanh." )
			   LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_MianYi_Buff, 0 )
			end
		end

		--Ã¿¼õÉÙ20%ÑªÊ±½øÈëÍÁ¶ÝÄ£Ê½....
		local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
		local LastStep = MonsterAI_GetIntParamByIndex( sceneId, selfId, x893065_IDX_HPStep )
		local CurStep = -1
		if CurPercent <= 0.2 then
			CurStep = 4
		elseif CurPercent <= 0.4 then
		 	CurStep = 3
		elseif CurPercent <= 0.6 then
		 	CurStep = 2
		elseif CurPercent <= 0.8 then
			CurStep = 1
		end

		--½øÐÐÍÁ¶Ý....
		if CurStep > LastStep then
			--¸ø×Ô¼ºÉèÖÃÒþÉíand²»ÄÜ¹¥»÷....
			local x,z = GetWorldPos( sceneId, selfId )
			LuaFnUnitUseSkill( sceneId, selfId, x893065_SkillA_TuDun, selfId, x, z, 0, 1 )

	              --¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
			local x,z = GetWorldPos( sceneId, selfId )
			LuaFnUnitUseSkill( sceneId, selfId, x893065_SkillID_H, selfId, x, z, 0, 1 )

			--Ëæ»ú»ñµÃ2¸öbuff(³öÍÁÎÄÎï)....
			local idx1 = random( getn(x893065_SkillC_ChutuBuff1) )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_SkillC_ChutuBuff1[idx1], 0 )
			local idx2 = random( getn(x893065_SkillC_ChutuBuff2) )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_SkillC_ChutuBuff2[idx2], 0 )

			local NeedCreateNum = 0
			if CurStep == 1 then
				NeedCreateNum = 1
			elseif CurStep == 2 then
				NeedCreateNum = 2
			elseif CurStep == 3 then
				NeedCreateNum = 3
			elseif CurStep == 4 then
				NeedCreateNum = 4
			end

			MonsterAI_SetBoolParamByIndex( sceneId, selfId, x893065_IDX_IsTudunMode, 1 )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_NeedCreateChildNum, NeedCreateNum )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_HPStep, CurStep )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_TuDunTimer, x893065_SkillA_Time )
			return 1
		end


	end

	return 0

end


--**********************************
--Å£Ã«¶¾ÕëÂß¼­....
--**********************************
function x893065_SkillLogicB_NiuMaoDuZhen( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x893065_IDX_SkillB_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_SkillB_CD, cd-nTick )
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_SkillB_CD, x893065_SkillB_CD-(nTick-cd) )
		--·ÇÍÁ¶Ý×´Ì¬²Å¿ÉÒÔÓÃ....
		if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x893065_IDX_IsTudunMode ) then
	              --¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
			local x,z = GetWorldPos( sceneId, selfId )
			LuaFnUnitUseSkill( sceneId, selfId, x893065_SkillE_SanFeng, selfId, x, z, 0, 1 )
		       LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_SkillE_Buff, 0 )

			local x,z = GetWorldPos( sceneId, selfId )
			CallScriptFunction((200060), "Paopao",sceneId, "TÑ Tuy®t Trang", "Bàng Xí", "Lão phu tuy r¢ng 10 nåm nay không bß¾c chân ra khöi n½i này, song công phu vçn không vì thª mà mai mµt. Các ngß½i mu¯n ðªn ðoÕt báu v§t, ð×ng có m½. Tiªp chiêu ði..." )
			LuaFnUnitUseSkill( sceneId, selfId, x893065_SkillB_NiuMaoDuZhen, selfId, x, z, 0, 0 )
			return 1
		end
	end

	return 0

end


--**********************************
--¿ñ±©Âß¼­....
--**********************************
function x893065_DoSkillD_KuangBao( sceneId, selfId, nTick )

	--¼ì²âÊÇ·ñµ½ÁË¿ñ±©µÄÊ±ºò....
	local kbTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x893065_IDX_KuangBaoTimer )
	if kbTime < x893065_EnterKuangBaoTime then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x893065_IDX_KuangBaoTimer, kbTime+nTick )

	else

		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x893065_IDX_IsKuangBaoMode, 1 )
		--¼Ó¿ñ±©buff....
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_SkillD_Buff1, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x893065_SkillD_Buff2, 0 )
		--¸øËùÓÐÐ¡¹Ö¼Ó¿ñ±©buff....
		local nMonsterNum = GetMonsterCount(sceneId)
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId,i)
			if GetName(sceneId, MonsterId) == x893065_SkillA_AChildName or GetName(sceneId, MonsterId) == x893065_SkillA_BChildName or GetName(sceneId, MonsterId) == x893065_SkillA_CChildName or GetName(sceneId, MonsterId) == x893065_SkillA_DChildName then
				LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x893065_SkillD_Buff1, 0 )
				LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x893065_SkillD_Buff2, 0 )
			end
		end
		return 1

	end


	return 0

end
