--ÎäÒÄ BOSSÈºË¢ÐÂ½Å±¾

--½Å±¾ºÅ
x810002_g_ScriptId	= 810002

--Ë¢ÐÂ·½Ê½Îª:
--¼¤»î´Ë½Å±¾Ê±¶¨µãË¢³ö10¸öBOSS....

--ÐèÒªË¢³öµÄBOSSµÄÊý¾Ý±í....
--BOSSµÄMonsterID²»ÄÜÖØ¸´....ÔÚ³¡¾°ÖÐÍ¬Ò»Ê±¿ÌÍ¬Ò»¸öMonsterIDµÄ¹ÖÖ»ÄÜ´æÔÚÒ»¸ö....ÓÐÁË¾Í²»Ë¢ÁË....
x810002_g_BossData = {

	-- ID						BOSSµÄ monster id
	-- PosX					×ø±ê
	-- PosY					×ø±ê
	-- BaseAI				BOSSµÄBaseAI....
	-- ExtAIScript	BOSSµÄÀ©Õ¹AI....
	-- ScriptID			BOSSµÄ½Å±¾ID....
	-- NeedCreate		¶¼Ìî1....

	{ ID=9120, PosX=53,  PosY=242, BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
	{ ID=9121, PosX=88,  PosY=260, BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
	{ ID=9122, PosX=54,  PosY=212, BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
	{ ID=9123, PosX=41,  PosY=159, BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
	{ ID=9124, PosX=80,  PosY=147, BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
	{ ID=9125, PosX=114, PosY=43,  BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
	{ ID=9126, PosX=267, PosY=136, BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
	{ ID=9127, PosX=202, PosY=242, BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
	{ ID=9128, PosX=147, PosY=265, BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
	{ ID=9129, PosX=182, PosY=127, BaseAI=30, ExtAIScript=255, ScriptID=810100, NeedCreate=1 },
}


--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x810002_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--¿ªÆô»î¶¯....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSSÊý¾Ý±íÎª¿Õ¾Í²»Ë¢BOSS....
	if getn(x810002_g_BossData) < 1 then
		return
	end

	--ÖØÖÃBossÖØ½¨×´Ì¬....
	for _, Data in x810002_g_BossData do
		Data.NeedCreate = 1
	end

	--±éÀú³¡¾°ÖÐËùÓÐµÄ¹Ö....¸üÐÂBOSSÖØ½¨×´Ì¬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810002_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--ÖØ½¨ÐèÒªÖØ½¨µÄBOSS....
	for _, BossData in x810002_g_BossData do
		if BossData.NeedCreate == 1 then
			local MonsterID = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			if (BossData.ID == 9120) then
				SetCharacterTitle(sceneId, MonsterID, "#cFF0000Chung Cñc BÕo Phá")
			else
				SetCharacterTitle(sceneId, MonsterID, "#cFF0000T¯i Giai Ph¯i Giác")
			end
		end
	end

end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x810002_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯ÊÇ·ñ¹ýÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--ÓÃÓÚ¸üÐÂÖØ½¨×´Ì¬....
--**********************************
function x810002_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810002_g_BossData do
		if DataID == Data.ID then
			x810002_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
