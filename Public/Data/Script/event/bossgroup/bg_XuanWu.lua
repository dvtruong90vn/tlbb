--ÐþÎäµº BOSSÈºË¢ÐÂ½Å±¾

--½Å±¾ºÅ
x810000_g_ScriptId	= 810000

--Ë¢ÐÂ·½Ê½Îª:
--¼¤»î´Ë½Å±¾Ê±¶¨µãË¢³ö10¸öBOSS....

--ÐèÒªË¢³öµÄBOSSµÄÊý¾Ý±í....
--BOSSµÄMonsterID²»ÄÜÖØ¸´....ÔÚ³¡¾°ÖÐÍ¬Ò»Ê±¿ÌÍ¬Ò»¸öMonsterIDµÄ¹ÖÖ»ÄÜ´æÔÚÒ»¸ö....ÓÐÁË¾Í²»Ë¢ÁË....
x810000_g_BossData = {

	-- ID						BOSSµÄ monster id
	-- PosX					×ø±ê
	-- PosY					×ø±ê
	-- BaseAI				BOSSµÄBaseAI....
	-- ExtAIScript	BOSSµÄÀ©Õ¹AI....
	-- ScriptID			BOSSµÄ½Å±¾ID....
	-- NeedCreate		¶¼Ìî1....
	
	{ ID=9100, PosX=181, PosY=38,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9101, PosX=182, PosY=66,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9102, PosX=233, PosY=37,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9103, PosX=135, PosY=75,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9104, PosX=132, PosY=278, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9105, PosX=42,  PosY=218, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9106, PosX=74,  PosY=141, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9107, PosX=268, PosY=45,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9108, PosX=238, PosY=261, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9109, PosX=271, PosY=184, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
}


--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x810000_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--¿ªÆô»î¶¯....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSSÊý¾Ý±íÎª¿Õ¾Í²»Ë¢BOSS....
	if getn(x810000_g_BossData) < 1 then
		return
	end

	--ÖØÖÃBossÖØ½¨×´Ì¬....
	for _, Data in x810000_g_BossData do
		Data.NeedCreate = 1
	end

	--±éÀú³¡¾°ÖÐËùÓÐµÄ¹Ö....¸üÐÂBOSSÖØ½¨×´Ì¬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810000_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--ÖØ½¨ÐèÒªÖØ½¨µÄBOSS....
	for _, BossData in x810000_g_BossData do
		if BossData.NeedCreate == 1 then
			local MonsterID = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			SetCharacterTitle(sceneId, MonsterID, "#cFF0000Huy«n Vû Ðäo Thü Hµ Thú")
		end
	end

end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x810000_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯ÊÇ·ñ¹ýÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--ÓÃÓÚ¸üÐÂÖØ½¨×´Ì¬....
--**********************************
function x810000_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810000_g_BossData do
		if DataID == Data.ID then
			x810000_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
