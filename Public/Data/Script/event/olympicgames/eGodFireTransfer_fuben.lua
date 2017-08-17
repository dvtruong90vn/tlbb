--–¬ •ª¥´µ›....
--¥Úπ÷∏±±æ....

--Ω≈±æ∫≈
x808094_g_ScriptId = 808094

x808094_g_CopySceneType = FUBEN_GODFIRE	--∏±±æ¿‡–Õ£¨∂®“Â‘⁄ScriptGlobal.lua¿Ô√Ê

x808094_g_TickTime		= 5			--ªÿµ˜Ω≈±æµƒ ±÷” ±º‰£®µ•Œª£∫√Î/¥Œ£©
x808094_g_NoUserTime	= 300		--∏±±æ÷–√ª”–»À∫Ûø…“‘ºÃ–¯±£¥Êµƒ ±º‰£®µ•Œª£∫√Î£©
x808094_g_Fuben_X			= 65		--Ω¯»Î∏±±æµƒŒª÷√X
x808094_g_Fuben_Z			= 65		--Ω¯»Î∏±±æµƒŒª÷√Z


--π÷ŒÔÀ¢µ„....
x808094_g_SmallMonsterPos ={ {x=48,z=50},{x=48,z=38},{x=59,z=50},{x=48,z=62},{x=37,z=50} }
x808094_g_BossMonsterPos ={ x=48, z=50 }

--∏±±æ ˝æ›±Ì....
x808094_g_FubenDataTbl ={ }

x808094_g_FubenDataTbl[1] =
{

	NPCName = "TÙ Phi", MissionId = 1002,
	MonsterName = "Lam C•u", BossName = "Ti¨u Ki´u Ki´u", BossTitle = "KhÙng Trung Phi Nh‚n", FubenName = "Ti™n nhßp Lam C•u Trﬂ∂ng",
	MapFile = "lanqiuchang.nav", AreaFile = "lanqiuchang_area.ini", MonsterFile = "lanqiuchang_monster.ini",

	SmallMonsterId =
	{
		9590,9591,9592,9593,9594,9595,9596,9597,9598,9599,
		39571,39572,39573,39574,39575,39576,39577,39578,39579,39580
	},

	BossMonsterId =
	{
		9560,9561,9562,9563,9564,9565,9566,9567,9568,9569,
		39541,39542,39543,39544,39545,39546,39547,39548,39549,39550
	}

}

x808094_g_FubenDataTbl[2] =
{

	NPCName = "–ao NghiÍu", MissionId = 1006,
	MonsterName = "B‡i C•u", BossName = "Ti¨u Nh∏ Nh∏", BossTitle = "Th¸y tinh m€ nh‚n", FubenName = "Ti™n nhßp b‡i c•u trﬂ∂ng",
	MapFile = "paiqiuchang.nav", AreaFile = "paiqiuchang_area.ini", MonsterFile = "paiqiuchang_monster.ini",

	SmallMonsterId =
	{
		9600,9601,9602,9603,9604,9605,9606,9607,9608,9609,
		39581,39582,39583,39584,39585,39586,39587,39588,39589,39590
	},

	BossMonsterId =
	{
		9570,9571,9572,9573,9574,9575,9576,9577,9578,9579,
		39551,39552,39553,39554,39555,39556,39557,39558,39559,39560
	}

}

x808094_g_FubenDataTbl[3] =
{

	NPCName = "Ch‚u VÙ U˝", MissionId = 1010,
	MonsterName = "T˙c C•u", BossName = "Ti¨u Nh§t T´", BossTitle = "B‡n c•u ’i sﬂ", FubenName = "Ti™n nhßp t˙c c•u trﬂ∂ng",
	MapFile = "zuqiuchang.nav", AreaFile = "zuqiuchang_area.ini", MonsterFile = "zuqiuchang_monster.ini",

	SmallMonsterId =
	{
		9610,9611,9612,9613,9614,9615,9616,9617,9618,9619,
		39591,39592,39593,39594,39595,39596,39597,39598,39599,39600
	},

	BossMonsterId =
	{
		9580,9581,9582,9583,9584,9585,9586,9587,9588,9589,
		39561,39562,39563,39564,39565,39566,39567,39568,39569,39570
	}

}


--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝....
--**********************************
function x808094_OnDefaultEvent( sceneId, selfId, targetId )

	local NumText = GetNumText()
	if NumText ~= 1 and NumText ~= 2 and NumText ~= 3 then
		return
	end

	local npcName = LuaFnGetName( sceneId, targetId )
	local CopySceneData = x808094_g_FubenDataTbl[ NumText ]
	if npcName ~= CopySceneData.NPCName then
		return
	end

	--ºÏ≤‚ «∑Òø…“‘Ω¯»Î∏±±æ....
	local ret, msg = x808094_CheckCanEnter( sceneId, selfId, targetId, NumText )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--Ω®¡¢∏±±æ....
	BeginEvent(sceneId)
		AddText(sceneId,"#{XSHCD_20080418_059}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	x808094_MakeCopyScene( sceneId, selfId, NumText )

end

--**********************************
--¡–æŸ ¬º˛....
--**********************************
function x808094_OnEnumerate( sceneId, selfId, targetId )

	local npcName = LuaFnGetName( sceneId, targetId )

	for i, fubenData in x808094_g_FubenDataTbl do

		if npcName == fubenData.NPCName then
			if IsHaveMission( sceneId, selfId, fubenData.MissionId ) > 0 then
				local misIndex = GetMissionIndexByID( sceneId, selfId, fubenData.MissionId )
				if 0 == GetMissionParam( sceneId, selfId, misIndex, 0 ) then
					AddNumText( sceneId, x808094_g_ScriptId, fubenData.FubenName, 10, i )
				end
			end
		end

	end

end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ω¯»Î¥À∏±±æ....
--**********************************
function x808094_CheckCanEnter( sceneId, selfId, targetId, fubenType )

	-- «∑Ò”–∂”ŒÈ....
	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "#{XSHCD_20080418_053}"
	end

	-- «≤ª «∂”≥§....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "#{XSHCD_20080418_054}"
	end

	--»À ˝ «∑Òπª....
	if GetTeamSize(sceneId,selfId) < 3  then
		return 0, "#{XSHCD_20080418_055}"
	end

	-- «∑Ò∂º‘⁄∏ΩΩ¸....
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "#{XSHCD_20080418_056}"
	end

	--ºÏ≤‚ «≤ª «¥Ûº“∂º”–»ŒŒÒ....
	local CopySceneData = x808094_g_FubenDataTbl[ fubenType ]
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, PlayerId, CopySceneData.MissionId ) <= 0 then
			return 0, "#{XSHCD_20080418_057}"
		end

		local misIndex = GetMissionIndexByID( sceneId, PlayerId, CopySceneData.MissionId )
		if 1 == GetMissionParam( sceneId, PlayerId, misIndex, 0 ) then
			return 0, "#{XSHCD_20080418_058}"
		end

	end

	return 1

end

--**********************************
--¥¥Ω®∏±±æ....
--**********************************
function x808094_MakeCopyScene( sceneId, selfId, fubenType )

	local fubenData = x808094_g_FubenDataTbl[ fubenType ]

	--º∆À„∏±±æ÷–π÷µƒµ»º∂....
	local mylevel = 0
	local memId
	local tempMemlevel = 0
	local level0 = 0
	local level1 = 0

	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i)
		tempMemlevel = GetLevel(sceneId, memId)
		level0 = level0 + (tempMemlevel ^ 4 )
		level1 = level1 + (tempMemlevel ^ 3 )
	end

	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1
	end

	if nearmembercount == -1 then
		mylevel = GetLevel(sceneId, selfId)
	end

	--º∆À„µ»º∂∂Œ....
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 1
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10)
	else
		iniLevel = PlayerMaxLevel/10
	end

	local x
	local z
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	LuaFnSetSceneLoad_Map(sceneId, fubenData.MapFile )
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x808094_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x808094_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x808094_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x808094_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId))
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	local monsterIdTbl = fubenData.SmallMonsterId
	local monsterId = monsterIdTbl[1]
	if monsterIdTbl[iniLevel] then
		monsterId = monsterIdTbl[iniLevel]
	end

	local bossIdTbl = fubenData.BossMonsterId
	local bossId = bossIdTbl[1]
	if bossIdTbl[iniLevel] then
		bossId = bossIdTbl[iniLevel]
	end

	LuaFnSetCopySceneData_Param(sceneId, 8, monsterId )	--–°π÷ID....
	LuaFnSetCopySceneData_Param(sceneId, 9, bossId )		--BOSSID....
	LuaFnSetCopySceneData_Param(sceneId, 10, mylevel )	--∏±±æ◊‘  ”¶µ»º∂....
	LuaFnSetCopySceneData_Param(sceneId, 11, 0 )				--…±π÷ ˝....
	LuaFnSetCopySceneData_Param(sceneId, 12, 0 )				--step....
	LuaFnSetCopySceneData_Param(sceneId, 13, fubenType )--∏±±æ¿‡–Õ....

	LuaFnSetSceneLoad_Area( sceneId, fubenData.AreaFile )
	LuaFnSetSceneLoad_Monster( sceneId, fubenData.MonsterFile )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D∏ch chuy¨n th‡nh cÙng!");
		else
			AddText(sceneId,"SØ lﬂ˛ng b‰n sao „ ™n giæi h’n, ´ ngh∏ l·t nÊa thÿ l’i!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--∏±±æ ¬º˛....
--**********************************
function x808094_OnCopySceneReady( sceneId, destsceneId )

	--Ω¯»Î∏±±æµƒπÊ‘Ú
	-- 1£¨»Áπ˚’‚∏ˆÕÊº“√ª”–◊È∂”£¨æÕ¥´ÀÕ’‚∏ˆÕÊº“◊‘º∫Ω¯»Î∏±±æ
	-- 2, »Áπ˚ÕÊº“”–∂”ŒÈ£¨µ´ «ÕÊº“≤ª «∂”≥§£¨æÕ¥´ÀÕ◊‘º∫Ω¯»Î∏±±æ
	-- 3£¨»Áπ˚ÕÊº“”–∂”ŒÈ£¨≤¢«“’‚∏ˆÕÊº“ «∂”≥§£¨æÕ¥´ÀÕ◊‘º∫∫Õ∏ΩΩ¸∂””—“ª∆Ω¯»•

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --…Ë÷√∏±±æ»Îø⁄≥°æ∞∫≈
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then
		NewWorld( sceneId, leaderObjId, destsceneId, x808094_g_Fuben_X, x808094_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x808094_g_Fuben_X, x808094_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x808094_g_Fuben_X, x808094_g_Fuben_Z)
			end
		end		
	end

end

--**********************************
--∏±±æ≥°æ∞∂® ±∆˜ ¬º˛....
--**********************************
function x808094_OnCopySceneTimer( sceneId, nowTime )

	local nStep = LuaFnGetCopySceneData_Param(sceneId, 12 )

	--»Áπ˚∏’ø™ º‘ÚÀ¢–°π÷....
	if nStep == 0 then
		x808094_CreateSmallMonster( sceneId )
		LuaFnSetCopySceneData_Param(sceneId, 12, 1 )	--‘ˆº”nStep....
	end

	--»Áπ˚…±À¿¡ÀBOSS‘Úµπº∆ ±πÿ±’....
	if nStep == 2 then
		x808094_TipAllHuman( sceneId, "Ph¯ b‰n Ûng cÿa sau 30 gi‚y!" )
		LuaFnSetCopySceneData_Param(sceneId, 12, 3 )
	end

	if nStep == 3 then
		LuaFnSetCopySceneData_Param(sceneId, 12, 4 )
	end

	if nStep == 4 then
		x808094_TipAllHuman( sceneId, "Ph¯ b‰n Ûng cÿa sau 20 gi‚y!" )
		LuaFnSetCopySceneData_Param(sceneId, 12, 5 )
	end

	if nStep == 5 then
		LuaFnSetCopySceneData_Param(sceneId, 12, 6 )
	end

	if nStep == 6 then
		x808094_TipAllHuman( sceneId, "Ph¯ b‰n Ûng cÿa sau 10 gi‚y!" )
		LuaFnSetCopySceneData_Param(sceneId, 12, 7 )
	end

	if nStep == 7 then
		x808094_TipAllHuman( sceneId, "Ph¯ b‰n Ûng cÿa sau 5 gi‚y!" )
		LuaFnSetCopySceneData_Param(sceneId, 12, 8 )
	end

	-- ±º‰µΩ¡ÀÃﬂ»À....
	if nStep == 8 then
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldSceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldSceneId, oldX, oldZ )
			end
		end
		LuaFnSetCopySceneData_Param(sceneId, 12, 9 )
	end

end

--**********************************
--π÷ŒÔÀ¿Õˆ....
--**********************************
function x808094_OnDie( sceneId, objId, killerId )

	local szName = GetName(sceneId, objId)

	local fubenType = LuaFnGetCopySceneData_Param( sceneId, 13 )
	if fubenType~=1 and fubenType~=2 and fubenType~=3 then
		return
	end
	local fubenData = x808094_g_FubenDataTbl[ fubenType ]


	--»Áπ˚…±À¿µƒ «–°π÷‘Ú‘ˆº”º∆ ˝....
	if szName == fubenData.MonsterName then

		--…Ë÷√∏±±æº∆ ˝....
		local nKillNum = LuaFnGetCopySceneData_Param( sceneId, 11 )
		nKillNum = nKillNum + 1
		local str = "–„ gi™t ch™t "..szName..": "..nKillNum .."/5"
		x808094_TipAllHuman( sceneId, str )
		LuaFnSetCopySceneData_Param( sceneId, 11, nKillNum )

		--»Áπ˚…±πª¡À‘Ú¥¥Ω®¥ÛBOSS....
		if nKillNum == getn(x808094_g_SmallMonsterPos) then
			x808094_CreateBossMonster( sceneId )
		end

		--Œ™À˘”–»À…Ë÷√»ŒŒÒº∆ ˝....
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				if IsHaveMission( sceneId, PlayerId, fubenData.MissionId ) > 0 then
					local misIndex = GetMissionIndexByID( sceneId, PlayerId, fubenData.MissionId )
					SetMissionByIndex( sceneId, PlayerId, misIndex, 1, nKillNum )
				end
			end
		end


	--»Áπ˚…±À¿µƒ «BOSS‘Úπÿ±’∏±±æ....
	elseif szName == fubenData.BossName then

		--πÿ±’∏±±æ....
		LuaFnSetCopySceneData_Param(sceneId, 12, 2 )

		local str = "–„ gi™t ch™t "..szName
		x808094_TipAllHuman( sceneId, str )

		--Œ™À˘”–»À…Ë÷√»ŒŒÒº∆ ˝....
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				if IsHaveMission( sceneId, PlayerId, fubenData.MissionId ) > 0 then
					local misIndex = GetMissionIndexByID( sceneId, PlayerId, fubenData.MissionId )
					SetMissionByIndex( sceneId, PlayerId, misIndex, 2, 1 )
				end
			end
		end

	end


end

--**********************************
--”–ÕÊº“Ω¯»Î∏±±æ ¬º˛....
--**********************************
function x808094_OnPlayerEnter( sceneId, selfId )

	--…Ë÷√»ŒŒÒÕÍ≥…....
	local fubenType = LuaFnGetCopySceneData_Param( sceneId, 13 )
	if fubenType~=1 and fubenType~=2 and fubenType~=3 then
		return
	end
	local fubenData = x808094_g_FubenDataTbl[ fubenType ]

	if IsHaveMission( sceneId, selfId, fubenData.MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, fubenData.MissionId )
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1 )
	end

	--…Ë÷√À¿Õˆ ¬º˛....
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x808094_g_Fuben_X, x808094_g_Fuben_Z )

end

--**********************************
--”–ÕÊº“‘⁄∏±±æ÷–À¿Õˆ ¬º˛....
--**********************************
function x808094_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--Ã· æÀ˘”–∏±±æƒ⁄ÕÊº“....
--**********************************
function x808094_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end

--**********************************
--¥¥Ω®–°π÷....
--**********************************
function x808094_CreateSmallMonster( sceneId )

	local fubenType = LuaFnGetCopySceneData_Param( sceneId, 13 )
	if fubenType~=1 and fubenType~=2 and fubenType~=3 then
		return
	end
	local fubenData = x808094_g_FubenDataTbl[ fubenType ]

	local MstId = LuaFnGetCopySceneData_Param( sceneId, 8 )
	local MstLevel = LuaFnGetCopySceneData_Param( sceneId, 10 )

	for i, pos in x808094_g_SmallMonsterPos do
		local objId = LuaFnCreateMonster( sceneId, MstId, pos.x, pos.z, 3, 0, 808094 )
		SetLevel( sceneId, objId, MstLevel )
		SetCharacterName( sceneId, objId, fubenData.MonsterName )
	end

end

--**********************************
--¥¥Ω®BOSS....
--**********************************
function x808094_CreateBossMonster( sceneId )

	local fubenType = LuaFnGetCopySceneData_Param( sceneId, 13 )
	if fubenType~=1 and fubenType~=2 and fubenType~=3 then
		return
	end
	local fubenData = x808094_g_FubenDataTbl[ fubenType ]

	local MstId = LuaFnGetCopySceneData_Param( sceneId, 9 )
	local MstLevel = LuaFnGetCopySceneData_Param( sceneId, 10 )

	local objId = LuaFnCreateMonster( sceneId, MstId, x808094_g_BossMonsterPos.x, x808094_g_BossMonsterPos.z, 0, 0, 808094 )
	SetLevel( sceneId, objId, MstLevel )
	SetCharacterName( sceneId, objId, fubenData.BossName )
	SetCharacterTitle(sceneId, objId, fubenData.BossTitle)

end
