--¾Å´óÃÅÅÉ³¡¾°BOSS¶¨Ê±Ë¢³ö

--½Å±¾ºÅ
x808001_g_ScriptId	= 808001

--BOSS·Ö²¼
x808001_g_BossLayout=
{
	--SceneID, MonsterID, px, pz, ai
	["xiaoyao"]	= { 144, 876, 141, 43, 119 },
	["tianlong"]= { 143, 877, 95,  36, 120 },
	["tianshan"]= { 147, 874, 94,  39, 117 },
	["emei"]		= { 145, 870, 45,  34, 113 },
	["gaibang"]	= { 140, 869, 48,  36, 112 },
	["shaolin"]	= { 139, 872, 46,  40, 115 },
	["mingjiao"]= { 141, 871, 98,  58, 114 },
	["xingxiu"]	= { 146, 873, 142, 51, 116 },
	["wudang"]	= { 142, 875, 89,  51, 118 },
}

--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x808001_OnDefaultEvent( sceneId, actId, param1, param2, param3, param4, param5 )

	local	unt		= x808001_CallLayoutUnit( sceneId )
	if unt == nil then
		return
	end

	--°Ú¹Ö
	--È¡ ði¬m´Ë³¡¾°ÖÐtoÕ ðµ ¹ÖÎïÊýÁ¿
	local	numMon= GetMonsterCount( sceneId )
	--¹ÖÎïtoÕ ðµ ObjId
	local objMon
	for i=0, numMon-1 do
		objMon		= GetMonsterObjID( sceneId, i )
		if GetMonsterDataID( sceneId, objMon ) == unt[2] then
			LuaFnDeleteMonster( sceneId, objMon )
		end
	end
	LuaFnCreateMonster( sceneId, unt[2], unt[3], unt[4], 17, unt[5], -1 )
	
end

--**********************************
--¸ù¾Ý³¡¾°ID·ÃÎÊBOSS·Ö²¼µ¥Ôª
--**********************************
function x808001_CallLayoutUnit( sceneId )

	local	unt	= nil
	for _, unt in x808001_g_BossLayout do
		if unt[1] == sceneId then
			return unt
		end
	end
	return unt

end
