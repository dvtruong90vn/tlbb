--Æ®Ãì·å ²»Æ½µÀÈËAI

--F	¡¾°µÀ×¡¿¶Ô×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ó¸ö½áÊøºó»á»Øµ÷½Å±¾µÄbuff....»Øµ÷Ê±ÈÃBOSS¸øÆäÖÜÎ§ÈË¼ÓÉËº®buff²¢º°»°....
--G ¡¾¾«Ëã¡¿¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....
--H ¡¾ÑÌ»¨¡¿¶Ô×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ó¸ö½áÊøºó»á»Øµ÷½Å±¾µÄbuff....»Øµ÷Ê±º°»°....
--I	¡¾ÅóÓÑ¡¿Trác B¤t PhàmËÀÊ±¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....


--È«³Ì¶¼´øÓÐÃâÒßÖÆ¶¨¼¼ÄÜµÄbuff....
--Ã¿¸ô30Ãë¶ÔËæ»úÍæ¼ÒËæ»úÊ¹ÓÃFH....
--Ã¿¸ô45Ãë¶Ô×Ô¼ºÊ¹ÓÃG....
--ËÀÍö»òÍÑÀëÕ½¶·Ê±¸øËùÓÐÍæ¼ÒÇå³ýFHµÄbuff....
--ËÀÍöÊ±Ñ°ÕÒ²»Æ½µÀÈË....ÉèÖÃÆäÐèÒªÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
--ËÀÍöÊ±·¢ÏÖ²»Æ½µÀÈËÒÑ¾­ËÀÁË....Ôò´´½¨ÁíÒ»¸öBOSS....


--½Å±¾ºÅ
x895065_g_ScriptId	= 895065

--¸±±¾Âß¼­½Å±¾ºÅ....
x895065_g_FuBenScriptId = 895063

--ÃâÒßBuff....
x895065_Buff_MianYi1	= 10472	--ÃâÒßÒ»Ð©¸ºÃæÐ§¹û....
x895065_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--¼¼ÄÜ....
x895065_SkillID_F		= 1805
x895065_BuffID_F1		= 19416

x895065_SkillID_G		= 1806
x895065_SkillID_G_SpecObj		= 188

x895065_SkillID_H		= 1807
x895065_BuffID_H		= 19629

x895065_SkillID_I		= 1804

x895065_SkillCD_FH	=	10000
x895065_SkillCD_G		=	12000
x895065_SkillCD_H	=	12000
x895065_SkillCD_I	=	5000


x895065_MyName			= "Tiêu Nhß Quân"	--×Ô¼ºµÄÃû×Ö....
x895065_BrotherName = "Tiêu Nhß Úy"	--ÐÖµÜµÄÃû×Ö....

--AI Index....
x895065_IDX_KuangBaoMode	= 1	--¿ñ±©Ä£Ê½....0Î´¿ñ±© 1ÐèÒª½øÈë¿ñ±© 2ÒÑ¾­½øÈë¿ñ±©
x895065_IDX_CD_SkillFH		= 2	--FH¼¼ÄÜµÄCD....
x895065_IDX_CD_SkillG			= 3	--G¼¼ÄÜµÄCD....
x895065_IDX_CD_Talk				= 4	--FH¼¼ÄÜº°»°µÄCD....
x895065_IDX_CD_SkillI			= 5	--G¼¼ÄÜµÄCD....

x895065_IDX_CombatFlag 		= 1	--ÊÇ·ñ´¦ÓÚÕ½¶·×´Ì¬µÄ±êÖ¾....

x895065_LootItem_1 = {
39901048, 39901048, 
}

x895065_LootItem_2 = {
20310184,
}

--**********************************
--³õÊ¼»¯....
--**********************************
function x895065_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x895065_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x895065_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895065_IDX_CombatFlag ) then
		return
	end

	--FH¼¼ÄÜÐÄÌø....
	if 1 == x895065_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

	--G¼¼ÄÜÐÄÌø....
	if 1 == x895065_TickSkillG( sceneId, selfId, nTick ) then
		return
	end

	--H¼¼ÄÜÐÄÌø....
	if 1 == x895065_TickSkillH( sceneId, selfId, nTick ) then
		return
	end

	--I¼¼ÄÜÐÄÌø....
	if 1 == x895065_TickSkillI( sceneId, selfId, nTick ) then
		return
	end

	local nCount = GetMonsterCount(sceneId)
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 15040 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19421, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19422, 0 )
		elseif MosDataID == 15060 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19429, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19430, 0 )
		elseif MosDataID == 15050 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19425, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19426, 0 )
		elseif MosDataID == 15065 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19431, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19432, 0 )
		elseif MosDataID == 15055 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19427, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19428, 0 )
		elseif MosDataID == 15045 then
			LuaFnSendSpecificImpactToUnit( sceneId, nObjId, nObjId, selfId, 19423, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19424, 0 )
		end
	end

end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x895065_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895065_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895065_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x895065_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëÕ½¶·×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895065_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x895065_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x895065_ResetMyAI( sceneId, selfId )

	--±éÀú³¡¾°ÀïËùÓÐµÄ¹Ö....Ñ°ÕÒÐÖµÜ²¢½«ÆäÉ¾³ý....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895065_BrotherName == GetName( sceneId, MonsterId ) then
			LuaFnDeleteMonster( sceneId, MonsterId )
		end
	end

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )
	CallScriptFunction( x895065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "PlayHp", 0 )

	--´´½¨¶Ô»°NPC....
	local MstIdA = CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoRuJun_NPC", -1, -1 )
	local MstIdB = CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoRuWei_NPC", -1, -1 )

	SetUnitReputationID( sceneId, MstIdA, MstIdA, 0 )
	SetUnitReputationID( sceneId, MstIdB, MstIdB, 0 )

	local nCount = GetMonsterCount(sceneId)
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 15040 or MosDataID == 15045 or MosDataID == 15050 or MosDataID == 15055 or MosDataID == 15060 or MosDataID == 15065 or MosDataID == 15140 or MosDataID == 15145 or MosDataID == 15150 or MosDataID == 15155 or MosDataID == 15160 or MosDataID == 15165 then
			LuaFnDeleteMonster( sceneId, nObjId )
		end
	end

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x895065_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x895065_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x895065_ResetMyAI( sceneId, selfId )

	--Èç¹û»¹Ã»ÓÐÌôÕ½¹ýÎÚÀÏ´óÔò¿ÉÒÔÌôÕ½ÎÚÀÏ´ó....
	if 1 ~= CallScriptFunction( x895065_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "YeLvYan" )	then
		CallScriptFunction( x895065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "YeLvYan", 1 )
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
	       LuaFnSendSpecificImpactToUnit( sceneId, leaderID, leaderID, leaderID, 19446, 0 )
	end
	
	if playerName ~= nil then
		str = format("ÐÕi phá trúc lâm, #{_INFOUSR%s}#P ðang ð¸nh r¶i ði thì chþt phát hi®n trong ð¯ng Ð°ng Tâm Trúc tan tác cüa #cFF0000Tiêu Nhß Quân#W xu¤t hi®n mµt b÷c l¾n chÑa ð¥y báu v§t, li«n vui m×ng ðem theo luôn!", playerName); --É£ÍÁ¹«
		AddGlobalCountNews( sceneId, str )
	end

	CallScriptFunction( x894065_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ÐÕo Nhân: Tuy ðã ðánh chªt Tiêu Nhß Quân nhßng vi®c tiªp theo là phäi l§p tÑc tiêu di®t ngay Tiêu Nhß Úy. Nªu không sau 30 giây Tiêu Nhß Quân s¨ s¯ng lÕi, lúc ðó h§u quä khó mà di­n tä n±i..." )

   if 2 ~= CallScriptFunction( x895065_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoRuJun" )	then
	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊý
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	for i = 0, num - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and LuaFnIsCharacterLiving( sceneId, mems[i] ) == 1 then					-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷

			local WuPin = random( getn(x895065_LootItem_1) )
			AddMonsterDropItem( sceneId, selfId, mems[i], x895065_LootItem_1[WuPin] )

			rand = random(100)
			if rand < 70 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )--Ôª±¦1W
			end

			rand = random(100)
			if rand < 50 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--Ãµ¹åÖ®Áµ
			end

			rand = random(100)
			if rand < 100 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--ÕòÄÏ
			end

			rand = random(100)
			if rand < 50 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--ÕòÄÏ
			end

			rand = random(100)
			if rand < 70 then
				local WuPin = random( getn(x895065_LootItem_2) )
				AddMonsterDropItem( sceneId, selfId, mems[i], x895065_LootItem_2[WuPin]  )

			end

			rand = random(100)
			if rand < 50 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 39910003)--Ôª±¦5W
			end
		end
	end
   end

	--ÉèÖÃÒÑ¾­ÌôÕ½¹ýÉ£ÍÁ¹«....
	CallScriptFunction( x895065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "XiaoRuJun", 2 )
end


--**********************************
--ÖØÖÃAI....
--**********************************
function x895065_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillFH, x895065_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillG, x895065_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillH, x895065_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillI, x895065_SkillCD_I )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895065_IDX_CombatFlag, 0 )

	--¸øËùÓÐÍæ¼ÒÇå³ýFHµÄbuff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895065_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x895065_BuffID_H )
		end
	end

end


--**********************************
--FH¼¼ÄÜÐÄÌø....
--**********************************
function x895065_TickSkillFH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8555 then
		return 0
	end

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillFH, x895065_SkillCD_FH-(nTick-cd) )
		return x895065_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G¼¼ÄÜÐÄÌø....
--**********************************
function x895065_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.8333 then
		return 0
	end

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillG, x895065_SkillCD_G-(nTick-cd) )
		return x895065_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H¼¼ÄÜÐÄÌø....
--**********************************
function x895065_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.3333 then
		return 0
	end

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillH, x895065_SkillCD_H-(nTick-cd) )
		return x895065_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--I¼¼ÄÜÐÄÌø....
--**********************************
function x895065_TickSkillI( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillI )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillI, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895065_IDX_CD_SkillI, x895065_SkillCD_I-(nTick-cd) )
		return x895065_UseSkillI( sceneId, selfId )
	end

end


--**********************************
--Ê¹ÓÃF¼¼ÄÜ....
--**********************************
function x895065_UseSkillF( sceneId, selfId )

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
	LuaFnUnitUseSkill( sceneId, selfId, x895065_SkillID_F, PlayerId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Nhß Quân", "Binh Thánh KÏ Tr§n", "Mê th¤t vu lâm, "..GetName( sceneId, PlayerId ).." ngß½i làm sao có th¬ thoát thân ðßþc?" )
	CallScriptFunction( x894065_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ÐÕo Nhân: Tiêu Nhß Quân ðã sØ døng súc khí vây kh¯n, súc khí mê ho£c. Ngß¶i nào dính súc khí này l§p tÑc tránh xa t± ðµi tránh bµc phát súc khí gây hÕi cho chiªn hæu xung quanh!" )

	--¸øÍæ¼Ò¼Ó½áÊøºó»Øµ÷½Å±¾µÄbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, PlayerId, PlayerId, PlayerId, x895065_BuffID_F1, 0 )

	return 1

end


--**********************************
--Ê¹ÓÃG¼¼ÄÜ....
--**********************************
function x895065_UseSkillG( sceneId, selfId )


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
	LuaFnUnitUseSkill( sceneId, selfId, x895065_SkillID_G, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Nhß Quân", "Binh Thánh KÏ Tr§n", "Núi r×ng sông nß¾c phong cänh hæu tình. #c2ebeff"..GetName( sceneId, PlayerIdA )..", "..GetName( sceneId, PlayerIdB ).."#W, các ngß½i thØ liên tß·ng mà xem..." )
	CallScriptFunction( x894065_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ÐÕo Nhân: Tiêu Nhß Quân ðã phóng ra cÕm bçy vô hình dß¾i chân các v¸, ð×ng ð¬ ý ðªn vë b« ngoài cüa chúng, hãy né chúng càng nhanh càng t¯t." )

	local x,z = GetWorldPos( sceneId, PlayerIdA )
	CreateSpecialObjByDataIndex(sceneId, selfId, x895065_SkillID_G_SpecObj, x, z, 0)

	local x,z = GetWorldPos( sceneId, PlayerIdB )
	CreateSpecialObjByDataIndex(sceneId, selfId, x895065_SkillID_G_SpecObj, x, z, 0)

	return 1

end


--**********************************
--Ê¹ÓÃH¼¼ÄÜ....
--**********************************
function x895065_UseSkillH( sceneId, selfId )

		local Last = CallScriptFunction( x895065_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "PlayHp" )
		if Last > 1 then
			return 0
		end

		CallScriptFunction( x895065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "PlayHp", 2 )

	       --Ê¹ÓÃ¿Õ¼¼ÄÜ....
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x895065_SkillID_H, selfId, x, z, 0, 1 )

		CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Nhß Quân", "Binh Thánh KÏ Tr§n", "Ð°ng Tâm Løc Trúc, hãy ðón hß¾ng gió th±i, nâng ðÞ thân hình ta, ta c¥n nghï ng½i lÕi sÑc ð¬ còn giªt ð¸ch!" )
		CallScriptFunction( x894065_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ÐÕo Nhân: Tiêu Nhß Quân ðã tri®u t§p Ð°ng Tâm Løc Trúc bäo hµ ð¬ dßÞng sÑc. Huynh muµi chúng tÕm th¶i ðßþc mi­n d¸ch. Các hÕ và t± ðµi hãy mau mau phá hüy Ð°ng Tâm Løc Trúc quyªt tr× khØ chúng mµt phen, tránh r¡c r¯i sau này!" )

		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuBai_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuHong_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuHuang_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuLan_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuLv_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuZi_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Bai_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Hong_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Huang_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Lan_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Lv_BOSS", -1, -1 )
		CallScriptFunction( x895065_g_FuBenScriptId, "CreateBOSS", sceneId, "Zi_BOSS", -1, -1 )

	return 1

end


--**********************************
--Ê¹ÓÃI¼¼ÄÜ....
--**********************************
function x895065_UseSkillI( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x895065_SkillID_I, selfId, x, z, 0, 1 )

	return 1

end


--**********************************
--°µÀ×ºÍÑÌ»¨µÄbuff½áÊøµÄÊ±ºò»Øµ÷±¾½Ó¿Ú....
--**********************************
function x895065_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ñ°ÕÒBOSS....
	local bossId = -1
	local MonsterId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "Tiêu Nhß Quân" then
			bossId = MonsterId
		end
	end

	--Ã»ÕÒµ½Ôò·µ»Ø....
	if bossId == -1 then
		return
	end

	--Èç¹ûÊÇÑÌ»¨µÄbuffÔòÈÃBOSSº°»°....
	if impactId == 19447 then

		local bok = 0
		local MosDataID = 0
		local nCount = GetMonsterCount(sceneId)
		for i=0, nCount-1  do
			local nObjId = GetMonsterObjID(sceneId, i)
			local MosDataID = GetMonsterDataID( sceneId, nObjId )
			if MosDataID == 15130 then
				bok = 1
			end
		end

		if bok == 0 then
			return
		end

		if bok == 1 then

			local MonsterId = CallScriptFunction( x895067_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoRuWei_BOSS", -1, -1 )
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19414, 0 )

			CallScriptFunction( x894067_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ÐÕo Nhân: Huynh ð® ð°ng tâm sÑc mÕnh phi thß¶ng. Nªu trong 30 giây không tiêu di®t Tiêu Nhß Úy thì Tiêu Nhß Quân s¨ h°i sinh, lúc ðó h§u quä th§t khó lß¶ng!" )

			return
		end

		return
	end

	--Èç¹ûÊÇ°µÀ×µÄbuff....ÔòÈÃBOSS¸ø¸½½üµÄÍæ¼Ò¼ÓÒ»¸öÉËº¦µÄbuff²¢º°»°....

	if impactId == x895065_BuffID_F1 then

		local x = 0
		local z = 0
		local xx = 0
		local zz = 0
		x,z = GetWorldPos( sceneId,selfId )
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, PlayerId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, PlayerId) == 1 and LuaFnIsCharacterLiving(sceneId, PlayerId) == 1 then
				xx,zz = GetWorldPos(sceneId,PlayerId)
				if (x-xx)*(x-xx) + (z-zz)*(z-zz) < 12*12 then
					LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, PlayerId, 19418, 0 )
				end
			end
		end

		return

	end


end

