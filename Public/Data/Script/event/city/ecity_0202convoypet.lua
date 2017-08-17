--¸±±¾ÈÎÎñ
--ÏûÃğTÕi ¿ó³¡µ·ÂÒtoÕ ğµ Ğ¡Ôô

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x600009_g_ScriptId = 600009

--ÈÎÎñºÅ
x600009_g_MissionId = 1106

--Ä¿±êNPC
x600009_g_Name = "Chu Thª Hæu"

--ĞÆng c¤p nhi®m vø 
x600009_g_MissionLevel = 10000

--ÈÎÎñ¹éÀà
x600009_g_MissionKind = 50

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600009_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
x600009_g_IsMissionOkFail			=0	--0 Nhi®m vø hoàn thành±ê¼Ç
x600009_g_MissionParam_SubId		=1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600009_g_Param_sceneid				=2	--2ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ

--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı
x600009_g_MissionRound = 40
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600009_g_MissionName = "Nhi®m vø phát tri¬n"
x600009_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600009_g_MissionTarget = "    Bäo hµ %n ğªn g¥n %s %s. "						--Møc tiêu nhi®m vø
x600009_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"						--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600009_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ğµ npc¶Ô»°
x600009_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "						--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x600009_g_StrForePart = 3

x600009_g_FamilyNameStart = 0												-- x600009_g_StrList ÖĞtoÕ ğµ ĞÕtoÕ ğµ ÆğÊ¼Î»ÖÃ
x600009_g_FamilyNameCount = 13												-- x600009_g_StrList ÖĞtoÕ ğµ ĞÕtoÕ ğµ ÊıÁ¿
x600009_g_StrList = { [0] = "Châu", [1] = "Tri®u", [2] = "Dß½ng", [3] = "Hàn", [4] = "Lâm", [5] = "Quách", [6] = "MÕnh",
			  [7] = "Thß¶ng", [8] = "Ngô", [9] = "Thôi", [10] = "Kim", [11] = "Tiªt", [12] = "Quan",
			  [13] = "Yªn", [14] = "Ğình", [15] = "Lâm", [16] = "C¥m", [17] = "Sänh", [18] = "Toàn",
			  [19] = "Xäo Xäo", [20] = "Oanh Oanh", [21] = "Tß Tß", [22] = "„n Nhi", [23] = "Nguy®t Nhi",
			  [24] = "Tuyªt Nhi", [25] = "Uy¬n Nhi",
}

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600009_g_CityMissionScript = 600001
x600009_g_DevelopmentScript = 600007

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x600009_g_CopySceneName = "Møc trß¶ng"

x600009_g_CopySceneType = FUBEN_CONVOYPET	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x600009_g_CopySceneMap = "muchang.nav"
x600009_g_Exit = "muchang_area.ini"
x600009_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x600009_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x600009_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,Nhi®m vø hoàn thành
x600009_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x600009_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x600009_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x600009_g_Fuben_X = 70					--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x600009_g_Fuben_Z = 113					--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x600009_g_Back_X = 129					--Ô´³¡¾°Î»ÖÃX
x600009_g_Back_Z = 99					--Ô´³¡¾°Î»ÖÃZ

x600009_g_PetList = {
	PetNpcId = { 300464, 300465, 300466, 300467, 300468 },
	[10] = { 1940, 1950, 1960, 1970, 1980 },
	[20] = { 1941, 1951, 1961, 1971, 1981 },
	[30] = { 1942, 1952, 1962, 1972, 1982 },
	[40] = { 1943, 1953, 1963, 1973, 1983 },
	[50] = { 1944, 1954, 1964, 1974, 1984 },
	[60] = { 1945, 1955, 1965, 1975, 1985 },
	[70] = { 1946, 1956, 1966, 1976, 1986 },
	[80] = { 1947, 1957, 1967, 1977, 1987 },
	[90] = { 1948, 1958, 1968, 1978, 1988 },
	[100] = { 1949, 1959, 1969, 1979, 1989 },
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600009_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600009_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) > 0 then
		local bDone = x600009_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600009_g_SubmitInfo
		else
			strText = x600009_g_ContinueInfo
		end

		local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )

		if bDone == 0 and GetMissionParam( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail ) ~= 2 then		--ÈÎÎñÎ´Íê³É
			if GetNumText() == 1 then
				x600009_AcceptEnterCopyScene( sceneId, selfId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, x600009_g_MissionName )
					x600009_AskEnterCopyScene( sceneId, selfId )
				EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
			end
		else											--ÈÎÎñÒÑ¾­Íê³É»òth¤t bÕi
			BeginEvent( sceneId )
				AddText( sceneId, x600009_g_MissionName )
				AddText( sceneId, strText )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x600009_g_ScriptId, x600009_g_MissionId, bDone )
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600009_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600009_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600009_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600009_OnEnumerate( sceneId, selfId, targetId )
	--local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
	--SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail, 0 )
	
	if GetName( sceneId, targetId ) ~= x600009_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) > 0 then
		AddNumText( sceneId, x600009_g_ScriptId, x600009_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600009_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600009_g_DevelopmentScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒĞúng·ñÒª½øÈë¸±±¾
--**********************************
function x600009_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) <= 0 then	-- Ã»ÓĞÈÎÎñ
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
	local PetNpcId = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart )
	local girlFamilyNameIndex = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 1 )
	local girlNameIndex = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 2 )

	local _, strPetName = GetNpcInfoByNpcId(sceneId, PetNpcId )

	local missionInfo
	if random(2) == 1 then
		missionInfo = format( "    %s %s cüa trÕi chån nuôi ğã lÕc m¤t %s, phi«n các hÕ hµ t¯ng %s v« v¾i chü cüa nó.",
			x600009_g_StrList[girlFamilyNameIndex], x600009_g_StrList[girlNameIndex], strPetName, strPetName )
	else
		missionInfo = format( "    Nghe nói %s %s không c¦n th§n ğ¬ lÕc m¤t %s, nªu các hÕ có th¬ tìm giúp nó v«, ta nghî nó s¨ r¤t ph¤n kh·i.",
			x600009_g_StrList[girlFamilyNameIndex], x600009_g_StrList[girlNameIndex], strPetName )
	end

	AddText( sceneId, missionInfo )
	AddNumText( sceneId, x600009_g_ScriptId, "Ği vào trÕi chån nuôi", 10, 1 )
end

--**********************************
--Tiªp thø
--**********************************
function x600009_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) == 0 then					--Ã»ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		if GetLevel( sceneId, selfId ) < 30 then
			CallScriptFunction( x600009_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ğü ğÆng c¤p" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		AddMission( sceneId, selfId, x600009_g_MissionId, x600009_g_ScriptId, 0, 0, 0 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) <= 0 then
			return
		end

		SetMissionEvent( sceneId, selfId, x600009_g_MissionId, 4 ) -- ×¢²á x600009_OnLockedTarget ÊÂ¼ş
		CallScriptFunction( x600009_g_DevelopmentScript, "OnAccept", sceneId, selfId, targetId, x600009_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )

		-- »¤ËÍBµ½AA¸½½ü.
		local PetNpcId = x600009_g_PetList.PetNpcId[random( getn(x600009_g_PetList.PetNpcId) )]
		SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_StrForePart, PetNpcId )

		local girlFamilyNameIndex = random( x600009_g_FamilyNameStart, x600009_g_FamilyNameStart + x600009_g_FamilyNameCount - 1 )
		local girlNameIndex = random( x600009_g_FamilyNameStart, getn(x600009_g_StrList) - x600009_g_FamilyNameCount ) + x600009_g_FamilyNameCount
		SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_StrForePart + 1, girlFamilyNameIndex )
		SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_StrForePart + 2, girlNameIndex )

		--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		BeginEvent( sceneId )
			AddText( sceneId, x600009_g_MissionName )
			x600009_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rCác hÕ ğã nh§n " .. x600009_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x600009_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) > 0 then					--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600009_g_Param_sceneid )

		--changed by xindefeng
		--¸±±¾ĞÂ»úÖÆ:ÎŞÂÛÊ²Ã´Ô­Òò,TÕi Î´Hoàn t¤t nhi®m vø¶ø³ö¸±±¾,¸±±¾²»¶ÔÍæ¼ÒÉíÉÏtoÕ ğµ ÈÎÎñ×öÈÎºÎ¸Ä¶¯(ÉèÖÃth¤t bÕi»òÕßÉ¾³ıÈÎÎñ),¶øÍæ¼ÒÔÙ½ø¸Ã¸±±¾Ê±,¶¼ÒªÖØĞÂ³õÊ¼»¯ÈÎÎñÊı¾İ,¶øÇÒ¸±±¾¶¼ÒªÖØĞÂ´´½¨
		--if copysceneid >= 0 then												--½ø¹ı¸±±¾
		--	--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
		--	if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
		--		NewWorld( sceneId, selfId, copysceneid, x600009_g_Fuben_X, x600009_g_Fuben_Z )
		--		return
		--	end
		--end

		SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_Param_sceneid, -1 )		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾toÕ ğµ ³¡¾°ºÅ
		x600009_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x600009_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600009_g_CopySceneMap )						--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600009_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600009_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600009_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600009_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊıÎª0
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--É±ËÀBosstoÕ ğµ ÊıÁ¿

	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < 100 then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = 100
	end

	LuaFnSetSceneLoad_Area( sceneId, x600009_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "muchang_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param( sceneId, CopyScene_LevelGap, mylevel - iniLevel ) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
	local PetNpcId = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart )
	local PetList = x600009_g_PetList[iniLevel]
	local petMonsterId = nil
	local i = 1

	if not PetList then
		x600009_NotifyFailTips( sceneId, selfId, "Không có loÕi trân thú nào thích hşp ğ¬ các hÕ hµ t¯ng" )
		return
	end

	for i = 1, getn( x600009_g_PetList.PetNpcId ) do
		if x600009_g_PetList.PetNpcId[i] == PetNpcId then
			petMonsterId = PetList[i]
			break
		end
	end

	if not petMonsterId then
		x600009_NotifyFailTips( sceneId, selfId, "Không tìm th¤y loài trân thú nào thích hşp ğ¬ các hÕ hµ t¯ng" )
		return
	end

	SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_StrForePart + 3, petMonsterId )

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x600009_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600009_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end

end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x600009_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600009_g_MissionId ) > 0 then			--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600009_g_MissionId )

		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600009_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600009_g_Fuben_X, x600009_g_Fuben_Z )
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x600009_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) == 0 then				--Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600009_NotifyFailTips( sceneId, selfId, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x600009_g_Back_X, x600009_g_Back_Z )
		return
	end

	--×?­ 2008-03-06
	--²»Ó¦¸Ã³öÏÖÕâÖÖÇé¿ö....C¥n ¼ì²âĞúng·ñĞúng±¾ÈÎÎñ....
	local misIdx = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
	local scriptId = GetMissionParam( sceneId, selfId, misIdx, 1 )
	if x600009_g_ScriptId == scriptId then
		--½øÈë¸±±¾¾ÍÆô¶¯¼ÆÊ±Æ÷ --add by xindefeng
		StartMissionTimer( sceneId, selfId, x600009_g_MissionId )
		SetMissionEvent( sceneId, selfId, x600009_g_MissionId, 5 )
	else
		local msg = format( "CityMission_OnTimer_Error x600009_OnPlayerEnter %0X,%d,%d real scriptId = %d", LuaFnObjId2Guid( sceneId, selfId ), sceneId, selfId, scriptId )
		MissionLog( sceneId, msg )
		return
	end

	local monstercount = GetMonsterCount( sceneId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
	local PetNpcId = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart )
	local girlFamilyNameIndex = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 1 )
	local girlNameIndex = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 2 )
	local petMonsterId = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 3 )

	local _, strPetName = GetNpcInfoByNpcId(sceneId, PetNpcId )

	-- ÉèÖÃ»¤ËÍ³èÎïÊôĞÔ
	local i
	local monsterId
	local petFlag = 0
	for i = 0, monstercount - 1 do
		monsterId = GetMonsterObjID( sceneId, i )
		if GetName( sceneId, monsterId ) == strPetName then
			petFlag = 1
		end

		if GetName( sceneId, monsterId ) == "Thiªu næ" then
			SetCharacterName( sceneId, monsterId, x600009_g_StrList[girlFamilyNameIndex] .. x600009_g_StrList[girlNameIndex] )
		end
	end
	
	if petFlag == 0 then
		monsterId = LuaFnCreateMonster( sceneId, petMonsterId, x600009_g_Fuben_X, x600009_g_Fuben_Z, 0, 0, -1 )
		SetLevel( sceneId, monsterId, GetLevel( sceneId, selfId ) )			-- µ÷Õûc¤p±ğ
		SetUnitReputationID(sceneId, selfId, monsterId, GetUnitReputationID(sceneId, selfId, selfId)) --Éè¶¨ÎªÍæ¼ÒÊÆÁ¦ID,ºÍÍæ¼ÒÓÑºÃ

		local pAttack = 0													-- ÎïÀí¹¥»÷
		local pDefense = 0													-- ÎïÀí·ÀÓù
		local mDefense = 0													-- ÄÚ¹¦·ÀÓù
		local maxHP = 0														-- ÆøÑªÖµ

		pAttack = LuaFnGetBaseAttackPhysics( sceneId, monsterId )
		pAttack = floor( pAttack * ( 80 + random(40) ) / 100 - pAttack )
		pAttack = pAttack + LuaFnGetLifeTimeAttrRefix_AttackPhysics( sceneId, monsterId )
		LuaFnSetLifeTimeAttrRefix_AttackPhysics( sceneId, monsterId, pAttack )

		pDefense = LuaFnGetBaseDefencePhysics( sceneId, monsterId )
		pDefense = floor( pDefense * ( 80 + random(40) ) / 100 - pDefense )
		pDefense = pDefense + LuaFnGetLifeTimeAttrRefix_DefencePhysics( sceneId, monsterId )
		LuaFnSetLifeTimeAttrRefix_DefencePhysics( sceneId, monsterId, pDefense )

		mDefense = LuaFnGetBaseDefenceMagic( sceneId, monsterId )
		mDefense = floor( mDefense * ( 80 + random(40) ) / 100 - mDefense )
		mDefense = mDefense + LuaFnGetLifeTimeAttrRefix_DefenceMagic( sceneId, monsterId )
		LuaFnSetLifeTimeAttrRefix_DefenceMagic( sceneId, monsterId, mDefense )

		maxHP = LuaFnGetMaxBaseHp( sceneId, monsterId )
		maxHP = floor( maxHP * ( 80 + random(40) ) / 100 - maxHP )
		maxHP = maxHP + LuaFnGetLifeTimeAttrRefix_MaxHP( sceneId, monsterId )
		LuaFnSetLifeTimeAttrRefix_MaxHP( sceneId, monsterId, maxHP )
		RestoreHp( sceneId, monsterId )
	end
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x600009_OnHumanDie( sceneId, selfId, killerId )
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) == 0 then				--Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
	x600009_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
	SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail, 2 )			-- Nhi®m vø th¤t bÕi
	LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

	if x600009_g_DeadTrans == 1 then														--ËÀÍöºóC¥n ±»Ç¿ÖÆÌß³ö³¡¾°
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x600009_g_Back_X, x600009_g_Back_Z )
	end
end

--**********************************
--·ÅÆú
--**********************************
function x600009_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600009_g_Param_sceneid )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x600009_g_DevelopmentScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600009_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x600009_g_Back_X, x600009_g_Back_Z )
	end
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600009_BackToCity( sceneId, selfId )
	--¿ÉÒÔÓÃÔ­À´toÕ ğµ ·½·¨,µ«Ğúng»áÌáÊ¾Á½±é"Nhi®m vø th¤t bÕi",ËùÒÔĞŞ¸Ä --changed by xindefeng
	--CallScriptFunction( x600009_g_CityMissionScript, "BackToCity", sceneId, selfId, x600009_g_MissionId, x600009_g_Back_X, x600009_g_Back_Z )	
	
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
		if GetMissionParam( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail ) ~= 1 then	--Èç¹ûÈÎÎñÎ´³É¹¦
			SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail, 2 )	--ÉèÖÃNhi®m vø th¤t bÕi
		end
	end
	
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--È¡ ği¬m½øÈë¸±±¾Ê±ËùTÕi ³¡¾°ºÅ
	CallScriptFunction( 400900, "TransferFunc", sceneId, selfId, oldsceneId, x600009_g_Back_X, x600009_g_Back_Z )	--´«ËÍ
end

--**********************************
--¼ÌĞø
--**********************************
function x600009_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600009_g_MissionName )
		AddText( sceneId, x600009_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600009_g_ScriptId, x600009_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600009_CheckSubmit( sceneId, selfId, selectRadioId )
	--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600009_g_DevelopmentScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600009_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600009_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x600009_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600009_g_DevelopmentScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600009_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x600009_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600009_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş(scene.luaµ÷ÓÃ)
--**********************************
function x600009_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C¥n Àë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600009_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x600009_g_Back_X, x600009_g_Back_Z )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600009_g_CloseTick - leaveTickCount ) * x600009_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600009_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

--**********************************
--µ±Ëø¶¨mµt cái¶ÔÏó
--**********************************
function x600009_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) < 1 then
		return		-- Ã»ÓĞ¸ÃÈÎÎñ
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
	local girlFamilyNameIndex = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 1 )
	local girlNameIndex = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 2 )
	local petMonsterId = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 3 )

	local strGirlName = x600009_g_StrList[girlFamilyNameIndex] .. x600009_g_StrList[girlNameIndex]

	if GetMonsterDataID( sceneId, objId ) == petMonsterId then				-- ÕäÊŞ
		if GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 4 ) > 0 then
			print( "· ğây có v¤n ğ«, loài trân thú nhi«u l¥n hß·ng Ñng sñ ki®n ¤n chuµt" )
		end

		------------------Å²µ½x600009_OnPlayerEnter()È¥ÁË,Íæ¼Òmµt ½øÈë¸±±¾¾ÍÆô¶¯Ê±ÖÓ changed by xindefeng----------------
		--Æô¶¯¸ÃÈÎÎñtoÕ ğµ ÈÎÎñÊ±ÖÓÆ÷
		--StartMissionTimer( sceneId, selfId, x600009_g_MissionId )
		--SetMissionEvent( sceneId, selfId, x600009_g_MissionId, 5 )
		---------------------------------------------------------------------------------------------------------------
		
		SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_StrForePart + 4, 1 )	--ÉèÖÃ±êÖ¾:Ğúng·ñÓë»¤ËÍ³èÎï¶Ô»°(¼´TÕi ¸±±¾Ğúng·ñÒÑ¾­¿ªÊ¼»¤ËÍ?)
		SetPatrolId( sceneId, objId, 0 )									-- ÉèÖÃÑ²ÂßÂ·¾¶
		return
	end

	if GetName( sceneId, objId ) == strGirlName then						-- Ê§Å®
		-- ÉèÖÃÈÎÎñÒÑ¾­Íê³É
		if GetMissionParam( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail ) == 1 then
			-- ½«¸ÃÈÎÎñ´Ó x600009_OnLockedTarget ÊÂ¼şÁĞ±íÖĞÇå³ı,¸ÃÈÎÎñ²»ÔÙ¹ØĞÄ´ËÀàÊÂ¼ş
			ResetMissionEvent( sceneId, selfId, x600009_g_MissionId, 4 )
			TAddText( sceneId, "    T¯t quá, th§t ğúng là cäm ½n các hÕ quá." )
			x600009_NotifyFailTips( sceneId, selfId, "Nhi®m vø hoàn thành" )
			LuaFnDeleteMonster( sceneId, objId )
			LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
		else
			local PetNpcId = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart )
			local _, strPetName = GetNpcInfoByNpcId(sceneId, PetNpcId )
			local strText = format( "    %s cüa ta không th¤y næa, hu hu hu, các hÕ có th¬ giúp ta tìm nó v« không?", strPetName )
			TAddText( sceneId, strText )
		end
	end
end

--**********************************
--¶¨Ê±ÊÂ¼ş
--**********************************
function x600009_OnTimer( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600009_g_MissionId ) < 1 then
		return		-- Ã»ÓĞ¸ÃÈÎÎñ
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600009_g_MissionId )
	
	--changed by xindefeng
	--¸Ã³ÉÍæ¼Ò½øÈë¸±±¾¾ÍÆô¶¯¼ÆÊ±Æ÷,µ«²»ÉèÖÃ(x600009_g_StrForePart + 4)Mission ParaÕâÑù,Íæ¼Ò½øÈë¸±±¾ºó,Ã»ÓĞÓë»¤ËÍ³èÎï¶Ô»°¾Í³öÈ¥ÁË,ÄÇÃ´Ò²¿ÉÒÔÌáÊ¾ÉèÖÃth¤t bÕi!	
	--Íæ¼ÒÓë»¤ËÍ³èÎï¶Ô»°ºóÓÉx600009_OnLockedTarget()ÉèÖÃ(x600009_g_StrForePart + 4)Mission Para,ÉèÖÃÂ·¾¶±êÊ¶Íæ¼ÒTÕi ¸±±¾ÖĞ¿ªÊ¼»¤ËÍ
	local sceneType = LuaFnGetSceneType( sceneId )	--Ğúng·ñĞúng¸±±¾ÀàĞÍ
	if sceneType ~= 1 then		
		--»¤ËÍÈÎÎñ,ÈÎÎñÃ»Íê³É¾Í³ö¸±±¾,¾ÍËãNhi®m vø th¤t bÕi!
		if GetMissionParam( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail ) ~= 1 then	--ÈÎÎñ³É¹¦·ñ?
			SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail, 2 )	--ÈÎÎñ»¹Ã»³É¹¦¾Í³ö¸±±¾,ÒòÎªĞúng»¤ËÍÈÎÎñ¾ÍÉèÖÃNhi®m vø th¤t bÕi
			ResetMissionEvent( sceneId, selfId, x600009_g_MissionId, 5 )									--Àë¿ª¸±±¾ºóÒªÍ£Ö¹¶¨Ê±µ÷ÓÃ±¾º¯Êı
			SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_StrForePart + 4, 0 )	--ÉèÖÃ±êÖ¾:Ğúng·ñÓë»¤ËÍ³èÎï¶Ô»°(¼´TÕi ¸±±¾Ğúng·ñÒÑ¾­¿ªÊ¼»¤ËÍ?)
			LuaFnSetCopySceneData_Param( sceneId, 4, 1 )																	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
			x600009_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )												--ÌáÊ¾th¤t bÕi
		end
		return
	end
	
	

	-- Ö»ÓĞ´¥·¢ÁËÕäÊŞ×Ô¶¯ĞĞ×ß²Å»á×ßµ½ÕâÀï
	if GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 4 ) == 1 then
		--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
		local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
		
		if fubentype == x600009_g_CopySceneType then			
			local petMonsterId = GetMissionParam( sceneId, selfId, misIndex, x600009_g_StrForePart + 3 )
			local monstercount = GetMonsterCount( sceneId )
			local monsterId
			local i

			for i = 0, monstercount - 1 do
				monsterId = GetMonsterObjID( sceneId, i )
				if GetMonsterDataID( sceneId, monsterId ) == petMonsterId then		-- ÅĞ¶ÏĞúng·ñ³É¹¦
					local x, z = GetLastPatrolPoint( sceneId, 0 )
					local petX, petZ = GetWorldPos( sceneId, monsterId )

					if (x - petX) * (x - petX) + (z - petZ) * (z - petZ) < 4 then	-- ÀëÖÕ ği¬m²»µ½ 2 Ã×
						SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail, 1 )
						ResetMissionEvent( sceneId, selfId, x600009_g_MissionId, 5 )		-- ²»ÔÙ×ß´ËĞÄÌø
						LuaFnDeleteMonster( sceneId, monsterId )
					end
					return	--»¤ËÍtoÕ ğµ ³èÎï»¹TÕi ¾ÍÖ±½ÓTr· v«
				end
			end
		end

		--»¤ËÍ¹ı³ÌÖĞÕäÊŞËÀÍöËãNhi®m vø th¤t bÕi
		x600009_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_IsMissionOkFail, 2 )		-- Nhi®m vø th¤t bÕi
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		ResetMissionEvent( sceneId, selfId, x600009_g_MissionId, 5 )						-- ²»ÔÙ×ß´ËĞÄÌø
		SetMissionByIndex( sceneId, selfId, misIndex, x600009_g_StrForePart + 4, 0 )	--ÉèÖÃ±êÖ¾:Ğúng·ñÓë»¤ËÍ³èÎï¶Ô»°(¼´TÕi ¸±±¾Ğúng·ñÒÑ¾­¿ªÊ¼»¤ËÍ?)	--add by xindefeng
	end
end

function x600009_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
