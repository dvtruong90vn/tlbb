--玄武岛 BOSS群刷新脚本

--脚本号
x100016_g_ScriptId	= 100016

--刷新方式为:
--激活此脚本时定点刷出10个BOSS....

--需要刷出的BOSS的数据表....
--BOSS的MonsterID不能重复....在场景中同一时刻同一个MonsterID的怪只能存在一个....有了就不刷了....
x100016_g_BossData = {

	-- ID						BOSS的 monster id
	-- PosX					坐标
	-- PosY					坐标
	-- BaseAI				BOSS的BaseAI....
	-- ExtAIScript	BOSS的扩展AI....
	-- ScriptID			BOSS的脚本ID....
	-- NeedCreate		都填1....
	
	{ ID=42240, PosX=249, PosY=188,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42241, PosX=251, PosY=188,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42242, PosX=253, PosY=188,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42243, PosX=255, PosY=188,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42244, PosX=257, PosY=188,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42245, PosX=259, PosY=188,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42246, PosX=261, PosY=188,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42247, PosX=263, PosY=188,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42248, PosX=258, PosY=191,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42249, PosX=255, PosY=191,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	
}


--**********************************
--脚本入口函数
--**********************************
function x100016_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--开启活动....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSS数据表为空就不刷BOSS....
	if getn(x100016_g_BossData) < 1 then
		return
	end

	--重置Boss重建状态....
	for _, Data in x100016_g_BossData do
		Data.NeedCreate = 1
	end

	--遍历场景中所有的怪....更新BOSS重建状态....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x100016_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--重建需要重建的BOSS....
	for _, BossData in x100016_g_BossData do
		if BossData.NeedCreate == 1 then
			LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
		end
	end

end

--**********************************
--心跳函数
--**********************************
function x100016_OnTimer( sceneId, actId, uTime )

	--检测活动是否过期
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--用于更新重建状态....
--**********************************
function x100016_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x100016_g_BossData do
		if DataID == Data.ID then
			x100016_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
