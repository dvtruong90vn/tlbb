--Æ®Ãì·å ²»Æ½µÀÈËAI

--F	¡¾°µÀ×¡¿¶Ô×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ó¸ö½áÊøºó»á»Øµ÷½Å±¾µÄbuff....»Øµ÷Ê±ÈÃBOSS¸øÆäÖÜÎ§ÈË¼ÓÉËº®buff²¢º°»°....
--G ¡¾¾«Ëã¡¿¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....
--H ¡¾ÑÌ»¨¡¿¶Ô×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ó¸ö½áÊøºó»á»Øµ÷½Å±¾µÄbuff....»Øµ÷Ê±º°»°....
--I	¡¾ÅóÓÑ¡¿×¿²»·²ËÀÊ±¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....


--È«³Ì¶¼´øÓĞÃâÒßÖÆ¶¨¼¼ÄÜµÄbuff....
--Ã¿¸ô30Ãë¶ÔËæ»úÍæ¼ÒËæ»úÊ¹ÓÃFH....
--Ã¿¸ô45Ãë¶Ô×Ô¼ºÊ¹ÓÃG....
--ËÀÍö»òÍÑÀëÕ½¶·Ê±¸øËùÓĞÍæ¼ÒÇå³ıFHµÄbuff....
--ËÀÍöÊ±Ñ°ÕÒ²»Æ½µÀÈË....ÉèÖÃÆäĞèÒªÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
--ËÀÍöÊ±·¢ÏÖ²»Æ½µÀÈËÒÑ¾­ËÀÁË....Ôò´´½¨ÁíÒ»¸öBOSS....


--½Å±¾ºÅ
x894069_g_ScriptId	= 894069

--¸±±¾Âß¼­½Å±¾ºÅ....
x894069_g_FuBenScriptId = 894063

--ÃâÒßBuff....
x894069_Buff_MianYi1	= 10472	--ÃâÒßÒ»Ğ©¸ºÃæĞ§¹û....
x894069_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒşÉí....

--¼¼ÄÜ....
x894069_SkillID_F		= 1820  --ÆÕÍ¨¹¥»÷
x894069_SkillID_F2		= 1821
x894069_BuffID_F		= 19451

--Ê¯¶Ñ
x894069_SkillID_G		= 1822

x894069_SkillID_H		= 1823
x894069_BuffID_H		= 19741

x894069_SkillID_I		= 1036
x894069_BuffID_I1		= 10253
x894069_BuffID_I2		= 10254

x894069_SkillID_J		= 1824
x894069_BuffID_J		= 19434

x894069_SkillCD_FH	=	8000
x894069_SkillCD_G		=	45000
x894069_SkillCD_J	=	31000
x894069_SkillCD_H		=	60000
x894069_SkillCD_K	=	5000


x894069_MyName			= "Gia Lu§t Liên Thành"	--×Ô¼ºµÄÃû×Ö....

--AI Index....
x894069_IDX_KuangBaoMode	= 1	--¿ñ±©Ä£Ê½....0Î´¿ñ±© 1ĞèÒª½øÈë¿ñ±© 2ÒÑ¾­½øÈë¿ñ±©
x894069_IDX_CD_SkillFH		= 2	--FH¼¼ÄÜµÄCD....
x894069_IDX_CD_SkillG			= 3	--G¼¼ÄÜµÄCD....
x894069_IDX_CD_Talk				= 4	--FH¼¼ÄÜº°»°µÄCD....
x894069_IDX_CD_SkillJ			= 5	--G¼¼ÄÜµÄCD....
x894069_IDX_CD_SkillH			= 6	--G¼¼ÄÜµÄCD....
x894069_IDX_CD_SkillK			= 7	--G¼¼ÄÜµÄCD....

x894069_IDX_CombatFlag 		= 1	--ÊÇ·ñ´¦ÓÚÕ½¶·×´Ì¬µÄ±êÖ¾....

x894069_LootItem_1 = {
39910001, 39910002, 39910003, 
}

x894069_LootItem_2 = {
20310184,
}
--**********************************
--³õÊ¼»¯....
--**********************************
function x894069_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x894069_ResetMyAI( sceneId, selfId )
end


--**********************************
--ĞÄÌø....
--**********************************
function x894069_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x894069_IDX_CombatFlag ) then
		return
	end

	--FH¼¼ÄÜĞÄÌø....
	if 1 == x894069_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

	--G¼¼ÄÜĞÄÌø....
	if 1 == x894069_TickSkillG( sceneId, selfId, nTick ) then
		return
	end

	--H¼¼ÄÜĞÄÌø....
	if 1 == x894069_TickSkillH( sceneId, selfId, nTick ) then
		return
	end

	--I¼¼ÄÜĞÄÌø....
	if 1 == x894069_TickSkillI( sceneId, selfId, nTick ) then
		return
	end

	--J¼¼ÄÜĞÄÌø....
	if 1 == x894069_TickSkillJ( sceneId, selfId, nTick ) then
		return
	end

	--K¼¼ÄÜĞÄÌø....
	if 1 == x894069_TickSkillK( sceneId, selfId, nTick ) then
		return
	end
end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x894069_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894069_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894069_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x894069_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëÕ½¶·×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894069_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x894069_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x894069_ResetMyAI( sceneId, selfId )

	--É¾³ı×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

	--´´½¨¶Ô»°NPC....
	local MstId = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "LiFan_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )
end


--**********************************
--É±ËÀµĞÈË....
--**********************************
function x894069_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x894069_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x894069_ResetMyAI( sceneId, selfId )

	--ÉèÖÃÒÑ¾­ÌôÕ½¹ıÀîÇïË®....
	CallScriptFunction( x894069_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "YeLvLian", 2 )

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
		str = format("Ğánh bÕi #GGia Lu§t Liên Thành#W nhßng #{_INFOUSR%s}#P và t± ğµi vçn còn thoang thoäng sş hãi. Hãy còn ğang th· dài thì viên ThÕch Tiªt trß¾c m£t vŞ vøn ra, bên trong chÑa mµt cái Bäo Sß½ng quı giá...", playerName); --ÀîÇïË®
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

			local WuPin = random( getn(x894069_LootItem_1) )
			AddMonsterDropItem( sceneId, selfId, mems[i], x894069_LootItem_1[WuPin] )
			AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )
			AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )

			rand = random(100)
			if rand < 80 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 39910001 )--Ôª±¦1W
			end

			rand = random(100)
			if rand < 60 then
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
			if rand < 80 then
				local WuPin = random( getn(x894069_LootItem_2) )
				AddMonsterDropItem( sceneId, selfId, mems[i], x894069_LootItem_2[WuPin]  )

			end

			rand = random(100)
			if rand < 60 then
				AddMonsterDropItem( sceneId, selfId, mems[i], 20310184 )--Ä§ºĞ
			end

		end
	end

end


--**********************************
--ÖØÖÃAI....
--**********************************
function x894069_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊı....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillFH, x894069_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillG, x894069_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillJ, x894069_SkillCD_J )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillH, x894069_SkillCD_H )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillK, x894069_SkillCD_K )

	MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x894069_IDX_CombatFlag, 0 )

	--¸øËùÓĞÍæ¼ÒÇå³ıFHµÄbuff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894069_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x894069_BuffID_H )
		end
	end

end


--**********************************
--FH¼¼ÄÜĞÄÌø....
--**********************************
function x894069_TickSkillFH( sceneId, selfId, nTick )

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillFH, cd-nTick )
		return 0

	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillFH, x894069_SkillCD_FH-(nTick-cd) )
		return x894069_UseSkillF( sceneId, selfId )
	end

end


--**********************************
--G¼¼ÄÜĞÄÌø....
--**********************************
function x894069_TickSkillG( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent < 0.6666 then
		return 0
	end

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillG, x894069_SkillCD_G-(nTick-cd) )
		return x894069_UseSkillG( sceneId, selfId )
	end

end

--**********************************
--H¼¼ÄÜĞÄÌø....
--**********************************
function x894069_TickSkillH( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.6 then
		return 0
	end

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillH )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillH, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillH, x894069_SkillCD_H-(nTick-cd) )
		return x894069_UseSkillH( sceneId, selfId )
	end

end

--**********************************
--J¼¼ÄÜĞÄÌø....
--**********************************
function x894069_TickSkillJ( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent > 0.2 then
		return 0
	end

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillJ )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillJ, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillJ, x894069_SkillCD_J-(nTick-cd) )
		return x894069_UseSkillJ( sceneId, selfId )
	end

end

--**********************************
--K¼¼ÄÜĞÄÌø....
--**********************************
function x894069_TickSkillK( sceneId, selfId, nTick )

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillK )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillK, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_CD_SkillK, x894069_SkillCD_K-(nTick-cd) )
		return x894069_UseSkillK( sceneId, selfId )
	end

end
--**********************************
--I¼¼ÄÜĞÄÌø....
--**********************************
function x894069_TickSkillI( sceneId, selfId, nTick )

	--»ñµÃµ±Ç°¿ñ±©mode....
	local CurMode = MonsterAI_GetIntParamByIndex( sceneId, selfId, x894069_IDX_KuangBaoMode )

	if CurMode == 0 or CurMode == 2 then

		--Èç¹û²»ĞèÒª¿ñ±©»òÕßÒÑ¾­¿ñ±©ÁËÔò·µ»Ø....
		return 0

	elseif CurMode == 1 then

		--Èç¹ûĞèÒª¿ñ±©ÔòÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
		local ret =  x894069_UseSkillI( sceneId, selfId )
		if ret == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x894069_IDX_KuangBaoMode, 2 )
			return 1
		else
			return 0
		end

	end

end


--**********************************
--Ê¹ÓÃF¼¼ÄÜ....
--**********************************
function x894069_UseSkillF( sceneId, selfId )

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

	--¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_F, PlayerId, x, z, 0, 1 )

	--¸øÍæ¼Ò¼Ó½áÊøºó»Øµ÷½Å±¾µÄbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, PlayerId, PlayerId, PlayerId, x894069_BuffID_F, 0 )

	--¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_F2, selfId, x, z, 0, 1 )

	return 1

end


--**********************************
--Ê¹ÓÃG¼¼ÄÜ....
--**********************************
function x894069_UseSkillG( sceneId, selfId )

	--¶ÔÆäÊ¹ÓÃ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_G, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t Liên Thành", "Binh Thánh KÏ Tr§n", "Kim giáp phi tân, b¤t ğµng tña s½n. Các ngß½i chu¦n b¸ nªm ğòn cüa ta ğây!" )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Gia Lu§t Liên Thành tri®u h°i S½n Tr§n. Các v¸ phäi phá hüy chúng th§t nhanh. Nªu không sau 30 giây chÆng nhæng các v¸ phäi ch¸u thß·ng t±n l¾n mà bän thân Gia Lu§t Liên Thành s¨ ğßşc h°i phøc th¬ lñc..." )

	local MstIdA = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSA", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdA, MstIdA, MstIdA, 19457, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdA, 30000 )

	local MstIdB = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSB", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdB, MstIdB, MstIdB, 19457, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdB, 30000 )

	local MstIdC = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSC", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdC, MstIdC, MstIdC, 19457, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdC, 30000 )

	local MstIdD = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSD", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdD, MstIdD, MstIdD, 19457, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdD, 30000 )

	local MstIdE = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSE", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdE, MstIdE, MstIdE, 19458, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdE, 30000 )

	local MstIdF = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSF", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdF, MstIdF, MstIdF, 19458, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdF, 30000 )

	local MstIdG = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSG", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdG, MstIdG, MstIdG, 19458, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdG, 30000 )

	local MstIdH = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "ShiDui_BOSSH", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdH, MstIdH, MstIdH, 19458, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19459, 0 )
	SetCharacterDieTime( sceneId, MstIdH, 30000 )

       --×Ô¼ºÒşÉí
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19452, 0 )

	return 1

end


--**********************************
--Ê¹ÓÃH¼¼ÄÜ....
--**********************************
function x894069_UseSkillH( sceneId, selfId )

	--¶ÔÆäÊ¹ÓÃ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_H, selfId, x, z, 0, 1 )

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t Liên Thành", "Binh Thánh KÏ Tr§n", "Núi non trùng ği®p, phong hóa vÕn niên, các ngß½i ğã dính vào vòng vây thì ğ×ng có trách s¯ kiªp ğã an bài..." )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Gia Lu§t Liên Thành - Thiªt C¯t chï có th¬ dùng Nµi Công gây thß½ng t±n còn Gia Lu§t Liên Thành - Nguyên Th¥n cûng chï nh§n sát thß½ng NgoÕi Công mà thôi..." )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Trong tr§n pháp này, Gia Lu§t Liên Thành - Thiªt C¯t các v¸ có th¬ dùng Nµi Công Kích ğ¬ nh§n dÕng, còn Gia Lu§t Liên Thành - Nguyên Th¥n thì hãy dùng NgoÕi Công Kích nh§n dÕng..." )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Trong vòng 60 giây ğánh bÕi phân thân cüa Gia Lu§t Liên Thành s¨ khiªn h¡n ğÕi thß½ng, nh§n thß½ng t±n cñc l¾n. Các v¸ hãy c¯ g¡ng lên!" )

	local x,z = GetWorldPos( sceneId, selfId )
	local MstIdI = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "TieGu_BOSS", x, z )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdI, MstIdI, MstIdI, 19457, 0 )

	local x,z = GetWorldPos( sceneId, selfId )
	local MstIdJ = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "YuanShen_BOSS", x, z )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdJ, MstIdJ, MstIdJ, 19458, 0 )

	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19453, 0 )

	local MstIdK = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "TieFuZhen_BOSS", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdK, MstIdK, MstIdK, 19466, 0 )
	SetCharacterDieTime( sceneId, MstIdK, 60000 )

	local MstIdL = CallScriptFunction( x894069_g_FuBenScriptId, "CreateBOSS", sceneId, "YuanFuZhen_BOSS", -1, -1 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstIdL, MstIdL, MstIdL, 19467, 0 )
	SetCharacterDieTime( sceneId, MstIdL, 60000 )

	return 1

end

--**********************************
--Ê¹ÓÃJ¼¼ÄÜ....
--**********************************
function x894069_UseSkillJ( sceneId, selfId )

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t Liên Thành", "Binh Thánh KÏ Tr§n", "Núi non trùng ği®p. Các ngß½i th§t khinh ngß¶i quá ğáng. Hôm nay các ngß½i s¨ b¸ chôn vùi mãi mãi trong lòng nhæng ng÷n núi này..." )
	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Nªu trong 30 giây không ğánh chªt Gia Lu§t Liên Thành thì h¡n s¨ tri®u h°i tr§n pháp S½n Hşp, lúc ğó chúng ta s¨ táng mÕng n½i ğây..." )

	--¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_J, selfId, x, z, 0, 1 )

	CallScriptFunction( x894069_g_FuBenScriptId, "OpenBQZTimer", sceneId, 30, x894069_g_ScriptId, -1 ,-1 )

	return 1


end

--**********************************
--Ê¹ÓÃI¼¼ÄÜ....
--**********************************
function x894069_UseSkillK( sceneId, selfId )

	local nCount = GetMonsterCount(sceneId)
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 15085 or MosDataID == 15100 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 19453, 0 )
		end
	end

	return 1

end

--**********************************
--Ê¹ÓÃI¼¼ÄÜ....
--**********************************
function x894069_UseSkillI( sceneId, selfId )

	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894069_BuffID_I1, 5000 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x894069_BuffID_I2, 5000 )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x894069_SkillID_I, selfId, x, z, 0, 1 )

	CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId,  "#{PMF_20080530_02}" )

	return 1

end


--**********************************
--°µÀ×ºÍÑÌ»¨µÄbuff½áÊøµÄÊ±ºò»Øµ÷±¾½Ó¿Ú....
--**********************************
function x894069_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ñ°ÕÒBOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x894069_MyName == GetName( sceneId, MonsterId ) then
			bossId = MonsterId
		end
	end

	--Ã»ÕÒµ½Ôò·µ»Ø....
	if bossId == -1 then
		return
	end

	--Èç¹ûÊÇÑÌ»¨µÄbuffÔòÈÃBOSSº°»°....
	if impactId == 19459 then

		x,z = GetWorldPos( sceneId,selfId )
		CreateSpecialObjByDataIndex(sceneId, bossId, 192, x, z, 0)

		local bok = 0
		local nMonsterNum = GetMonsterCount( sceneId )
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId, i)
			if GetName(sceneId, MonsterId) == "Ê¯¶Ñ" and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
		          bok = 1
			end
		end

	       if bok == 1 then
			local nMonsterNum = GetMonsterCount( sceneId )
			for i=0, nMonsterNum-1 do
				local MonsterId = GetMonsterObjID(sceneId, i)
				if GetName(sceneId, MonsterId) == "Gia Lu§t Liên Thành" and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
				 	 LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 19461, 0)
				end
			end
		end

		return
	end

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x894069_OnBQZTimer( sceneId, step, data1, data2 )
	--Ñ°ÕÒBOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName( sceneId, MonsterId ) == "Gia Lu§t Liên Thành" then
			bossId = MonsterId
		end
	end

	--Ã»ÕÒµ½Ôò·µ»Ø....
	if bossId == -1 then
		return
	end
	if 30 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Còn 30 giây ğ¬ ğánh chªt Gia Lu§t Liên Thành!" )
		return
	end

	if 20 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Còn 20 giây ğ¬ ğánh chªt Gia Lu§t Liên Thành!" )
		return
	end

	if 15 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Còn 15 giây ğ¬ ğánh chªt Gia Lu§t Liên Thành!" )
		return
	end

	if 10 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Còn 10 giây ğ¬ ğánh chªt Gia Lu§t Liên Thành!" )
		return
	end

	if 6 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Còn 6 giây ğ¬ ğánh chªt Gia Lu§t Liên Thành!" )
		return
	end

	if 5 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Còn 5 giây ğ¬ ğánh chªt Gia Lu§t Liên Thành!" )
		return
	end

	if 4 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Còn 4 giây ğ¬ ğánh chªt Gia Lu§t Liên Thành!" )
		return
	end

	if 3 == step then
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Còn 3 giây ğ¬ ğánh chªt Gia Lu§t Liên Thành!" )
		return
	end

	if 2 == step then
		--ÌáÊ¾Õ½¶·¿ªÊ¼....
		CallScriptFunction( x894069_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr¥n Dûng ĞÕo Nhân: Còn 2 giây ğ¬ ğánh chªt Gia Lu§t Liên Thành!" )
		return
	end

	if 1 == step then
		CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t Liên Thành", "Binh Thánh KÏ Tr§n", "Kªt thành tr§n pháp. Thôn thñc thiên ğ¸a, vÕn v§t tînh tÑc. Các ngß½i chªt ği!" )
		--ÉËº¦....
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, 19434, 0 )
			end
		end
		return
	end

end
