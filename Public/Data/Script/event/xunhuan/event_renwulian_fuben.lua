--ÈÎÎñÁ´¸±±¾

--MisDescBegin
--½Å±¾ºÅ
x229023_g_scriptId = 229023

x229023_g_MissionId = 1202
--ÒÔÉÏÐúng¶¯Ì¬**************************************************************
--MisDescEnd

--½ÇÉ«Mission±äÁ¿Ë ði¬m÷
x229023_g_Param_huan		=0	--0ºÅ: ÒÑ¾­Íê³ÉtoÕ ðµ »·Êý,TÕi ½ÓÊÕÈÎÎñÊ±ºò¸³Öµ
x229023_g_Param_ok			=1	--1ºÅ: µ±Ç°ÈÎÎñÐúng·ñÍê³É(0Î´Íê³É£»1Íê³É)
x229023_g_Param_sceneid		=2	--2ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ðµ ³¡¾°ºÅ
x229023_g_Param_guid		=3	--3ºÅ: ½Ó¸±±¾ÈÎÎñÊ±ºòtoÕ ðµ Íæ¼ÒGUID
x229023_g_Param_killcount	=4	--4ºÅ: É±ËÀÈÎÎñ¹ÖtoÕ ðµ ÊýÁ¿
x229023_g_Param_time		=5	--5ºÅ: Íê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»:  giây)
--6ºÅ: Î´ÓÃ
--7ºÅ: Î´ÓÃ

x229023_g_CopySceneType=FUBEN_RENWULIAN	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x229023_g_LimitMembers=1			--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x229023_g_TickTime=5				--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x229023_g_LimitTotalHoldTime=36000	--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x229023_g_LimitTimeSuccess=50000		--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x229023_g_CloseTick=210				--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x229023_g_NoUserTime=300			--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x229023_g_DeadTrans=0				--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x229023_g_Fuben_X=23				--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x229023_g_Fuben_Z=23				--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x229023_g_Back_X=160				--Ô´³¡¾°Î»ÖÃX
x229023_g_Back_Z=150				--Ô´³¡¾°Î»ÖÃZ
x229023_g_TotalNeedKill=1000			--C¥n É±ËÀ¹ÖÎïÊýÁ¿
x229023_g_MissionIdPre=701			--C¥n ÌáÇ°ÓµÓÐtoÕ ðµ ÈÎÎñ
x229023_g_CopySceneTotalTime=6000


x229023_g_TitleOfMonster = {"Gia ðinh","Ti¬u th¸ v®","Ti¬u lâu la","Ti¬u nh¸","Bang hung","Tùy tùng","Ð® tØ","Ti¬u hµ v®","Môn nhân","Gia tß¾ng"}
x229023_g_TitleOfBoss = {"ÐÕi chü quän","Th¸ v® bäo v®","ÐÕi hµ pháp","T±ng quän","Bäo tiêu c¤p mµt","ÐÕi ð® tØ","Tä hµ pháp","Hæu hµ pháp","Sß gia dÕy võ","Giáo ð¥u ðßþc tr÷ng døng"}

x229023_g_NameOfMonster = {
				{part1="Trß½ng", part2="Ti¬u nh¸"},
				{part1="Tri®u", part2="Ti¬u tam"},
				{part1="Tr¥n", part2="Ti¬u tÑ"},
				{part1="Vß½ng", part2="Ti¬u ngû"},
				{part1="Lý", part2="Ti¬u th¤t"},
				{part1="Tôn", part2="Xú nhi"},
				{part1="Châu", part2="Ðinh nhi"},
				{part1="Ngô", part2="„t Nhi"},
				{part1="Phùng", part2="Giáp Nhi"},
				{part1="Dß½ng", part2="Tam nhi"},
}

x229023_g_NameOfBoss = {
				{part1="Âu Dß½ng", part2="Xuân", part3="Khiªu"},
				{part1="Ðoan mµc", part2="Chân", part3="Bá"},
				{part1="Tß Mã", part2="T¥n", part3="H±"},
				{part1="Løc Phi", part2="Thành", part3="Mµ"},
				{part1="Ðông quách", part2="Lâm", part3="Li®t"},
				{part1="Nam Dã", part2="Gió", part3="Mãnh"},
				{part1="Vû vån", part2="Kim", part3="Kiªm"},
				{part1="Mµ Dung", part2="Thanh", part3="HÕn"},
				{part1="HÕ H¥u", part2="Bång", part3="Dûng"},
				{part1="Hoàng Phü", part2="Minh", part3="Quäng"},
}

x229023_g_MonsterPosList = {
				BossPos = {id=1880, x=28, z=30},
				MonsterPos = {
											{id=1890, x=29, z=24},
											{id=1890, x=36, z=28},
											{id=1890, x=34, z=36},
											{id=1890, x=25, z=36},
											{id=1890, x=22, z=27},
										 }
}

--///////////////////////////////////////////////////////
--Ðúng·ñÒªÇóÉ±toÕ ðµ ¹Ö
--///////////////////////////////////////////////////////
function x229023_IsMonsterOfDemanded(sceneId, humanObjId, dataId)
	--PrintStr("IsMonsterOfDemanded...")
	if IsHaveMission(sceneId, humanObjId, x229023_g_MissionId) > 0 then
		local fubenNpcId = LuaFnGetCopySceneData_Param(sceneId, 14)
		local misIndex = GetMissionIndexByID(sceneId,humanObjId,x229023_g_MissionId)
		local demandNpcId = GetMissionParam(sceneId, humanObjId, misIndex, 5)
		if fubenNpcId == demandNpcId then
	local monsterLevel = LuaFnGetCopySceneData_Param(sceneId, 9)
	if dataId == x229023_g_MonsterPosList.BossPos.id + floor(monsterLevel/10) then
		return 1
	end
	
	local monsterCount = getn(x229023_g_MonsterPosList.MonsterPos)
	for i=1, monsterCount do
		if x229023_g_MonsterPosList.MonsterPos[i].id + floor(monsterLevel/10) == dataId then
			return 1
		end	
	end
		end --endif
	end --endif
	return 0
end

function x229023_CreateTitleAndName_Monster()			
	
	--ÉèÖÃmonstertoÕ ðµ ³ÆºÅ
	local ct = getn(x229023_g_TitleOfMonster)
	local ret = random(ct)
	local strTitle = x229023_g_TitleOfMonster[ret]
	--ÉèÖÃmonstertoÕ ðµ name
	ct = getn(x229023_g_NameOfMonster)
	ret = random(ct)
	local part1 = x229023_g_NameOfMonster[ret].part1
	ret = random(ct)
	local part2 = x229023_g_NameOfMonster[ret].part2
	ret = random(ct)
	local strName = format("%s%s", part1, part2)
	
	return strTitle, strName

end

function x229023_CreateTitleAndName_Boss(sceneId)
	local npcId = LuaFnGetCopySceneData_Param(sceneId, 14)
	local _, npcName = GetNpcInfoByNpcId(sceneId,npcId)
	--ÉèÖÃmonstertoÕ ðµ ³ÆºÅ
	local ct = getn(x229023_g_TitleOfBoss)
	local ret = random(ct)
	local strTitle = x229023_g_TitleOfBoss[ret]
	strTitle = npcName .. " Ðích " .. strTitle
	--ÉèÖÃmonstertoÕ ðµ name
	ct = getn(x229023_g_NameOfBoss)
	ret = random(ct)
	local part1 = x229023_g_NameOfBoss[ret].part1
	ret = random(ct)
	local part2 = x229023_g_NameOfBoss[ret].part2
	ret = random(ct)
	local part3 = x229023_g_NameOfBoss[ret].part3
	local strName = format("%s%s%s", part1, part2, part3)
	
	return strTitle, strName

end


--**********************************
--´´½¨¸±±¾
--**********************************
function x229023_MakeCopyScene( sceneId, selfId, nearmembercount )
	--PrintStr("MakeCopyScene .. ")
	--local mems = {}
	local mylevel = GetLevel(sceneId, selfId)
	--local i

	--for	i=0, nearmembercount-1 do
	--	mems[i] = GetNearTeamMember( sceneId, selfId, i )
	--	mylevel = mylevel + GetLevel( sceneId, mems[i] )
	--end

	--mylevel = mylevel/nearmembercount
	local round = GetMissionData(sceneId,selfId,MD_RENWULIAN_HUAN)

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, "shiji.nav" )						--µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x229023_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x229023_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x229023_g_CopySceneType )				--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x229023_g_scriptId )					--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	--±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--reserve0
	LuaFnSetCopySceneData_Param( sceneId, 8, nearmembercount)	--Òª´´½¨toÕ ðµ monsterÊýÁ¿
	LuaFnSetCopySceneData_Param( sceneId, 9, mylevel )				--¹ÖÎïÓ¦¸ÃÉèÖÃtoÕ ðµ µÈc¤p
	LuaFnSetCopySceneData_Param( sceneId, 10, round )				--¹ÖÎïÓ¦¸ÃÉèÖÃtoÕ ðµ µÈc¤p

	if IsHaveMission(sceneId,selfId,1202) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,1202)
		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
		if missionType == 3 then
			local npcId = GetMissionParam(sceneId, selfId, misIndex, 5)
			local _, npcName, _, x, z, _, sId, _ = GetNpcInfoByNpcId(sceneId,npcId)
			
			LuaFnSetCopySceneData_Param( sceneId, 11, sId )	
			LuaFnSetCopySceneData_Param( sceneId, 12, x )	
			LuaFnSetCopySceneData_Param( sceneId, 13, z )	
			LuaFnSetCopySceneData_Param( sceneId, 14, npcId )	
		end
	end

	LuaFnSetSceneLoad_Monster( sceneId, "shiji_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	BeginEvent(sceneId)
	if bRetSceneID > 0 then
			AddText( sceneId, "D¸ch chuy¬n thành công!" )
	else
			AddText( sceneId, "S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!" )
	end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x229023_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x229023_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	--È¡ ði¬mÍæ¼Ò¸½½ütoÕ ðµ ¶ÓÓÑÊýÁ¿(°üÀ¨×Ô¼º)
	local misIndex
	local nearteammembercount = GetNearTeamCount( sceneId, leaderObjId )
	if nearteammembercount > 0 then
	local member
	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		misIndex = GetMissionIndexByID( sceneId, member, x229023_g_MissionId )

		NewWorld( sceneId, member, destsceneId, x229023_g_Fuben_X, x229023_g_Fuben_Z )
	end
	else
			NewWorld( sceneId, leaderObjId, destsceneId, x229023_g_Fuben_X, x229023_g_Fuben_Z )
	end
end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x229023_OnPlayerEnter( sceneId, selfId )
	--ÉèÖ giâyÀÍöºó¸´»î ði¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", 2, x229023_g_Fuben_X, x229023_g_Fuben_Z );
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x229023_OnHumanDie( sceneId, selfId, killerId )
	if x229023_g_DeadTrans==1 then --ËÀÍöºóC¥n ±»Ç¿ÖÆÌß³ö³¡¾°
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		local sId = LuaFnGetCopySceneData_Param(sceneId, 11)
		local x = LuaFnGetCopySceneData_Param(sceneId, 12)
		local z = LuaFnGetCopySceneData_Param(sceneId, 13)
		
		NewWorld( sceneId, selfId, sId, x, z )
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x229023_OnCopySceneTimer( sceneId, nowTime )
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(sceneId) ;	
	local leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);
	if leaderObjId == -1 then
		return
	end
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--È¡ ði¬mÒÑ¾­Ö´ÐÐtoÕ ðµ ¶¨Ê±´ÎÊý
	
	--////////////////////////////////////////////////////////////////////
	if TickCount == 0 then
		x229023_CreateMonster(sceneId) --Èç¹ûÐúngµÚmµt cáiÊ±ÖÓÔò´´½¨ÏàÓ¦toÕ ðµ monster
	end
	--////////////////////////////////////////////////////////////////////
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--ÉèÖÃÐÂtoÕ ðµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
		
	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;
	
	--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ðµ ¶ÁÈ¡ºÍÉèÖÃ
	local leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
	local leaveTickCount = leaveTickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;
	
	--===============================================================
	--¼ì²âÈÎÎñÐúng·ñÍê³É
	local misIndex = GetMissionIndexByID(sceneId,leaderObjId,1202)
	local missionType = GetMissionParam(sceneId, leaderObjId, misIndex, 1)
	if (missionType == 3 or missionType == 4) then
		if GetMissionParam(sceneId, leaderObjId, misIndex, 0) == 1 then
			--¸±±¾Cuµc chiªn Ê¤Àû,·ÖÅäKinh nghi®m
			local exp = CallScriptFunction(229022, "GetExpBonus", sceneId, leaderObjId)
			--PrintStr("exp=" .. exp)
			local humancount = LuaFnGetCopyScene_HumanCount( sceneId )
			humancount = humancount-1
			--PrintStr("nearhumancount=" .. nearhumancount)
			local sId = LuaFnGetCopySceneData_Param(sceneId, 11)
			local x = LuaFnGetCopySceneData_Param(sceneId, 12)
			local z = LuaFnGetCopySceneData_Param(sceneId, 13)
			if humancount > 0 then
				exp = exp / humancount
				local member
				for	i=0, humancount-1 do
					member = LuaFnGetCopyScene_HumanObjId( sceneId, i )
					if member ~= leaderObjId then
						AddExp(sceneId, member, exp)
						Msg2Player(  sceneId, member, "Các hÕ tr×ng phÕt ác nhân tÕo phß¾c cho giang h°, nh§n ðßþc" .. exp .. "Ph¥n thß·ng kinh nghi®m", MSG2PLAYER_PARA )
						--½«¶ÓÓÑ´«³ö¸±±¾
						NewWorld( sceneId, member, sId, x, z )
					end
				end
			end
			--½«×Ô¼º´«³ö¸±±¾
			NewWorld(sceneId, leaderObjId, sId, x, z)
			return
		end	
	end
	--===============================================================
		
	if leaveTickCount == x229023_g_CloseTick then --µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
	
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		
		--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ðµ ³¡¾°
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			local sId = LuaFnGetCopySceneData_Param(sceneId, 11)
			local x = LuaFnGetCopySceneData_Param(sceneId, 12)
			local z = LuaFnGetCopySceneData_Param(sceneId, 13)
			--print( sceneId, mems[i], sId, x, z )
			NewWorld( sceneId, mems[i], sId, x, z )
		end
		
	elseif leaveTickCount>x229023_g_CloseTick-4 then
	
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ

		--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
  			BeginEvent(sceneId)
  				local strText = format("Các hÕ s¨ r¶i khöi ðây sau %d giây!", (x229023_g_CloseTick-leaveTickCount)*x229023_g_TickTime )
  				AddText(sceneId,strText);
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end
	elseif TickCount == x229023_g_CopySceneTotalTime then
		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end

end

function x229023_RefixSomeAttr(sceneId, monsterId, refixRate)
	--¹ÖÎïtoÕ ðµ ÉËº¦, maxhp, ±ØÉ±ÂÊÐÞÕý
	LuaFnSetLifeTimeAttrRefix_MaxHP(sceneId, monsterId, 
			LuaFnGetMaxBaseHp(sceneId, monsterId) * refixRate)
			
	LuaFnSetLifeTimeAttrRefix_CriticalAttack(sceneId, monsterId,
			LuaFnGetBaseCriticalAttack(sceneId, monsterId) * refixRate)

	LuaFnSetLifeTimeAttrRefix_CriticalDefence(sceneId, monsterId,
			LuaFnGetBaseCriticalDefence(sceneId, monsterId) * refixRate)
			
	LuaFnSetLifeTimeAttrRefix_AttackPhysics(sceneId, monsterId, 
			LuaFnGetBaseAttackPhysics(sceneId, monsterId) * refixRate)
	
end

function x229023_CreateMonster(sceneId)
	
	local aifile
	local MonsterId
	local monsterDataId
	
	local demandMonsterCount = LuaFnGetCopySceneData_Param(sceneId, 8)
	local monsterLevel = LuaFnGetCopySceneData_Param(sceneId, 9)
	--¸ù¾ÝÍæ¼ÒÊýÁ¿Éú³ÉÏàÓ¦ÊýÁ¿toÕ ðµ ¹ÖÎï
	local monsterCount = getn(x229023_g_MonsterPosList.MonsterPos)
	for i=1, demandMonsterCount-1 do
		if i > monsterCount then
			break
		end	
		aifile = random(10)
		monsterDataId= x229023_g_MonsterPosList.MonsterPos[i].id + monsterLevel / 10
		MonsterId = LuaFnCreateMonster(sceneId, monsterDataId, x229023_g_MonsterPosList.MonsterPos[i].x, 
									x229023_g_MonsterPosList.MonsterPos[i].z, 0, aifile, -1)
		SetLevel(sceneId, MonsterId, monsterLevel+3)
	
		SetCharacterDieTime(sceneId, MonsterId, 30*60000)
		--ÉèÖÃ¹ÖÎïtoÕ ðµ Tên,³ÆºÅ
		local strTitle, strName = x229023_CreateTitleAndName_Monster()
		SetCharacterTitle(sceneId, MonsterId, strTitle)
		SetCharacterName(sceneId, MonsterId, strName)			
				
		local currRound = LuaFnGetCopySceneData_Param(sceneId, 10) ;--È¡ ði¬mÈÎÎñÁ´toÕ ðµ µ±Ç°»·Êý		
		--1~10»·,¹ÖÎïÉËº¦¡¢¹ÖÎï±ØÉ±ÂÊ,¹ÖÎïHPÎªÔ­Öµ.
		if currRound >= 1 and currRound <= 10 then  
		--11»·~20»·,ÈýÏîÖµ*1.1
		elseif currRound >= 1 and currRound <= 10 then
			x229023_RefixSomeAttr(sceneId, MonsterId, 0.4)
		--21»·~30»·,ÈýÏîÖµ*1.2
		elseif currRound >= 1 and currRound <= 10 then
			x229023_RefixSomeAttr(sceneId, MonsterId, 0.6)
		--31»·~40»·,ÈýÏîÖµ*1.3
		elseif currRound >= 1 and currRound <= 10 then
			x229023_RefixSomeAttr(sceneId, MonsterId, 0.8)
		--41»·~50»·,ÈýÏîÖµ*1.4
		elseif currRound >= 1 and currRound <= 10 then
			x229023_RefixSomeAttr(sceneId, MonsterId, 1)
		--51»·~60»·,ÈýÏîÖµ*1.5
		elseif currRound >= 1 and currRound <= 10 then
			x229023_RefixSomeAttr(sceneId, MonsterId, 1.2)
		--61»·~70»·,ÈýÏîÖµ*1.6
		elseif currRound >= 1 and currRound <= 10 then
			x229023_RefixSomeAttr(sceneId, MonsterId, 1.4)
		--71»·~80»·,ÈýÏîÖµ*1.7
		elseif currRound >= 1 and currRound <= 10 then
			x229023_RefixSomeAttr(sceneId, MonsterId, 1.6)
		end
		
	end
		
	aifile = random(10)
	monsterDataId= x229023_g_MonsterPosList.BossPos.id + monsterLevel / 10
	MonsterId = LuaFnCreateMonster(sceneId, monsterDataId, x229023_g_MonsterPosList.BossPos.x, 
								x229023_g_MonsterPosList.BossPos.z, 0, aifile, -1)
	SetLevel(sceneId, MonsterId, monsterLevel+5)
							
	SetCharacterDieTime(sceneId, MonsterId, 30*60000)
	--ÉèÖÃ¹ÖÎïtoÕ ðµ Tên,³ÆºÅ
	local strTitle, strName = x229023_CreateTitleAndName_Boss(sceneId)
	SetCharacterTitle(sceneId, MonsterId, strTitle)
	SetCharacterName(sceneId, MonsterId, strName)			
	--Ëæ»ú¹ÖÎïtoÕ ðµ ±ù,»ð,µç,¶¾ÊôÐÔ,²¢ÉèÖÃÆäÊýÖµ
	local attr = random(4)
	if attr == 1 then --±ù
		LuaFnSetLifeTimeAttrRefix_ResistCold(sceneId, MonsterId, 
				LuaFnGetLifeTimeAttrRefix_ResistCold(sceneId, MonsterId)*0.5 )
	elseif attr == 2 then --»ð
		LuaFnSetLifeTimeAttrRefix_AttackFire(sceneId, MonsterId, 
				LuaFnGetLifeTimeAttrRefix_ResistFire(sceneId, MonsterId)*0.5 )
	elseif attr == 3 then --µç
		LuaFnSetLifeTimeAttrRefix_ResistLight(sceneId, MonsterId, 
				LuaFnGetLifeTimeAttrRefix_ResistLight(sceneId, MonsterId)*0.5 )
	else --¶¾
		LuaFnSetLifeTimeAttrRefix_ResistPoison(sceneId, MonsterId, 
				LuaFnGetLifeTimeAttrRefix_ResistPoison(sceneId, MonsterId)*0.5 )
	end
		
end
