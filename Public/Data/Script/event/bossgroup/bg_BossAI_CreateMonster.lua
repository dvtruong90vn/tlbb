-- BOSSÈº Ë¢Ğ¡¹ÖÍ¨ÓÃAI
--×£¿­ 2007-09-30
--¹¦ÄÜ: Ã¿¸ôÖ¸¶¨Ê±¼äÔÚ×Ô¼º¸½½üË¢³öĞ¡¹Ö....

--(²ß»®Ê¹ÓÃ±¾AIĞèÒªÏò±¾ÈË½»ÄÉÊ¹ÓÃ·Ñ4000Ôª±¦£¬³ÌĞòÔ±4ÕÛ)


--Ë¢Ğ¡¹ÖµÄÊı¾İ±í....
x810100_CreateChildTbl = {

	-- MotherID			Ê¹ÓÃ±¾AIµÄBOSSµÄMonsterID....
	-- CreateTime		´ËBOSS¶à¾ÃË¢Ò»´ÎĞ¡¹Ö....
	-- CreateNum		´ËBOSSÃ¿´ÎË¢¶àÉÙ¸öĞ¡¹Ö....
	-- AllChildNum	´ËBOSS×î¶àË¢³ö¶àÉÙ¸öĞ¡¹Ö....
	-- ChildID			´ËBOSSÒªË¢µÄĞ¡¹ÖµÄID....
	-- BaseAI				Ğ¡¹ÖµÄBaseAI....
	-- ExtAIScript	Ğ¡¹ÖµÄÀ©Õ¹AI....
	-- ScriptID			Ğ¡¹ÖµÄ½Å±¾ID....
	-- LifeTime			Ğ¡¹ÖµÄÊÙÃü(ºÁÃë)....Ğ¡ÓÚµÈÓÚ0ÎªÎŞÏŞ....

	--¾ÙÀı:
	--ÏëÈÃË®¹íÌ½×Ó(962)Ë¢ÔÆÄ¸Ê¯ÈË(1082)....Ã¿5ÃëË¢Ò»¸ö....Ã¿´ÎË¢2¸öÒ»¹²Ë¢5¸ö....ÔÆÄ¸Ê¯ÈËÊÙÃüÎª10Ãë....
	--ĞèÒª¸øË®¹íÌ½×Ó¹ÒÉÏ±¾AI½Å±¾....È»ºóÔÚÏÂ±ßÅäÖÃÒ»ÌõË¢¹ÖµÄÊı¾İ....
	--{ MotherID=962, CreateTime=5*1000, CreateNum=2, AllChildNum=5, ChildID=1082, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=10*1000 }


	--ĞşÎäµºBOSSÈº ¶¾¸òÍõË¢Ğ¡¹Ö....
	{ MotherID=9100, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9150, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	--ĞşÎäµºBOSSÈº Ğ¡BOSSË¢Ğ¡¹Ö....
	{ MotherID=9101, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9151, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9102, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9152, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9103, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9153, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9104, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9154, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9105, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9155, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9106, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9156, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9107, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9157, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9108, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9158, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9109, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9159, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },


	--ÎäÒÄBOSSÈº  Ç§Äê±ùÆÇË¢Ğ¡¹Ö....
	{ MotherID=9120, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9140, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	--ÎäÒÄBOSSÈº  Ğ¡BOSSË¢Ğ¡¹Ö....
	{ MotherID=9121, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9141, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9122, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9142, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9123, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9143, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9124, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9144, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9125, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9145, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9126, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9146, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9127, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9147, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9128, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9148, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9129, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9149, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },

	--ËÄ¾øBOSSË¢Ğ¡¹Ö....
	{ MotherID=42180, CreateTime=60000, CreateNum=1, AllChildNum=2, ChildID=42188, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=1200000 },
	{ MotherID=42181, CreateTime=60000, CreateNum=1, AllChildNum=2, ChildID=42189, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=1200000 },
	{ MotherID=42182, CreateTime=60000, CreateNum=1, AllChildNum=2, ChildID=42190, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=1200000 },
	{ MotherID=42183, CreateTime=60000, CreateNum=1, AllChildNum=2, ChildID=42191, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=1200000 },
	{ MotherID=42184, CreateTime=60000, CreateNum=1, AllChildNum=2, ChildID=42192, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=1200000 },
	{ MotherID=42185, CreateTime=60000, CreateNum=1, AllChildNum=2, ChildID=42193, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=1200000 },
	{ MotherID=42186, CreateTime=60000, CreateNum=1, AllChildNum=2, ChildID=42194, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=1200000 },
	{ MotherID=42187, CreateTime=60000, CreateNum=1, AllChildNum=4, ChildID=42194, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=1200000 },

}

--Ğ¡¹ÖË¢ĞÂµãÁĞ±í....
--×ø±êÎªÏà¶ÔÓÚ±¾BOSSµÄÏà¶Ô×ø±ê....¿ÉÒÔÌîĞ´ÈÎÒâÊıÄ¿¸ö×ø±ê....Ë¢Ğ¡¹ÖÊ±´ÓÖĞËæ»úÑ¡È¡Ò»¸öÊ¹ÓÃ....
x810100_MonsterPosTbl = {

	{ x = 0,  y = 0  },

}

x810100_IDX_UpdateMonsterTime = 1
x810100_IDX_NeedCreateMonsterNum = 2
x810100_IDX_EnableCreateMonster = 1
x810100_IDX_CombatFlag = 2

function x810100_OnDie( sceneId, selfId, killerId )
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 0)
end

function x810100_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag) then
		return
	end

	--¼ì²âÊÇ·ñÒÑ¾­²»ĞèÒªÔÙË¢Ğ¡¹ÖÁË....
	if 0 == MonsterAI_GetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster) then
		return
	end

	--»¹Î´µ½Ë¢Ğ¡¹ÖµÄÊ±¼ä....
	local UpdateTime = MonsterAI_GetIntParamByIndex(sceneId, selfId, x810100_IDX_UpdateMonsterTime)
	if nTick < UpdateTime then
		UpdateTime = UpdateTime - nTick
		MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, UpdateTime)
		return
	end


	--µ½ÁËË¢Ğ¡¹ÖµÄÊ±¼äÁË....Ë¢Ğ¡¹Ö....

	--Ñ°ÕÒ±¾BOSSµÄË¢¹ÖÊı¾İ±í....
	local BossDataID = GetMonsterDataID( sceneId, selfId )
	local bFind = 0
	local CreateData
	for _, Data in x810100_CreateChildTbl do
		if BossDataID == Data.MotherID then
			CreateData = Data
			bFind = 1
			break
		end
	end

	local CreateNum = 0
	local NeedCreateNum = MonsterAI_GetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, 0)

	if NeedCreateNum <= CreateData.CreateNum then
		CreateNum = NeedCreateNum
		MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster, 0)
	else
		CreateNum = CreateData.CreateNum
	end
	LuaFnNpcChat(sceneId, selfId, 0, "M¤y tên chán s¯ng này, ngày này sang nåm s¨ là ngày d² cüa các ngß½i!")
	for i = 1, CreateNum do
		x810100_CreateChildMonster( sceneId, selfId, CreateData )
	end

	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, NeedCreateNum-CreateNum)
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, CreateData.CreateTime)

end

function x810100_OnInit(sceneId, selfId)

	--Ñ°ÕÒ±¾BOSSµÄË¢¹ÖÊı¾İ±í....
	local BossDataID = GetMonsterDataID( sceneId, selfId )
	local bFind = 0
	local CreateData
	for _, Data in x810100_CreateChildTbl do
		if BossDataID == Data.MotherID then
			CreateData = Data
			bFind = 1
			break
		end
	end

	--³õÊ¼»¯AI²ÎÊı....
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 0)

	if bFind == 1 then
		if CreateData.CreateTime>0 and CreateData.CreateNum>0 and CreateData.AllChildNum>0 then
			MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, CreateData.CreateTime)
			MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, CreateData.AllChildNum)
			MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster, 1)
		end
	end

end

function x810100_OnKillCharacter(sceneId, selfId, targetId)

	--LuaFnNpcChat(sceneId, selfId, 0, "ÎÒÉ±ËÀÒ»¸öÈËÁË....È¥ËÀ°ÉÄã....")

	--if(-1~=targetId) then
		--local szTarget = GetName(sceneId, targetId)
		--local str = format( "ÎÒÉ±ËÀÒ»¸öÈËÁË....%s(É±ËÀµÄÍæ¼ÒÃû)£¬ÎÒÔç¿´Äã²»Ë¬ÁË....", szTarget )
		--LuaFnNpcChat(sceneId, selfId, 0, str)
	--end

end

function x810100_OnEnterCombat(sceneId, selfId, enmeyId)
	--LuaFnNpcChat(sceneId, selfId, 0, "ÎÒ½øÈëÕ½¶·ÁË....ÄãÃÇµÈ×ÅÈ¥ÕÒÃÏÆÅ°É....")
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 1)
end

function x810100_OnLeaveCombat(sceneId, selfId)
	--LuaFnNpcChat(sceneId, selfId, 0, "ÎÒÀë¿ªÕ½¶·ÁË....´ó¼ÒÏÈÍ£ÏÂ³ÔµãÒ©°É....")
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 0)
end

--´´½¨Ò»¸öĞ¡¹Ö....
function x810100_CreateChildMonster(sceneId, selfId, CreateData)

	local PosX, PosY = LuaFnGetWorldPos( sceneId, selfId )
	local PosNum = getn( x810100_MonsterPosTbl )
	local PosIndex = random( PosNum )
	PosX = PosX + x810100_MonsterPosTbl[PosIndex].x
	PosY = PosY + x810100_MonsterPosTbl[PosIndex].y

	MonId = LuaFnCreateMonster(sceneId, CreateData.ChildID, PosX, PosY, CreateData.BaseAI, CreateData.ExtAIScript, CreateData.ScriptID )
	if CreateData.LifeTime > 0 then
		SetCharacterDieTime(sceneId, MonId, CreateData.LifeTime )
	end

end
