--Creator ×ó´ºÎ°
--ÐÂÆå¾Ö Lâu Lan T¥m Bäo

--½Å±¾ºÅ
x808039_g_ScriptId = 808039;

--¸±±¾Ãû³Æ
x808039_g_CopySceneName = "Lâu Lan T¥m Bäo"
x808039_g_activity_time = { 
	[1] = {startTime = 1930, endTime = 2200},
	[2] = {startTime = 1130, endTime = 1430},
};

x808039_g_impact_Id = 73;
x808039_g_TotalNeedKill = 200;
x808039_g_MonsterChangeTime = 90 * 1000; -- ¹ÖÎï±äÉíÊ±¼ä 90 giây (ºÁ giây)

x808039_g_CopySceneType = FUBEN_SEEK_TREASURE	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x808039_g_LimitMembers = 1							--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x808039_g_TickTime = 5									--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x808039_g_LimitTotalHoldTime = 720 			--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi 72*5 =60 phút
x808039_g_StartTickCount = 7  					--Cuµc chiªn b¡t ð¥uÌáÐÑ(µ¥Î»: ´ÎÊý)
x808039_g_CloseTick = 6									--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x808039_g_NoUserTime = 36								--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây) 3 phút
x808039_g_Fuben_X = 65									--½øÈë¸±±¾toÕ ðµ Î»ÖÃX need modify
x808039_g_Fuben_Z = 94									--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x808039_g_Back_X = 163									--Ô´³¡¾°Î»ÖÃX
x808039_g_Back_Z = 77										--Ô´³¡¾°Î»ÖÃZ
x808039_g_Back_SceneId = 186						--Ô´³¡¾°Id Lâu Lan

x808039_g_FuBen_Data = 
{
	MapFile = "loulanxunbao.nav", AreaFile = "loulanxunbao_area.ini", MonsterFile = "loulanxunbao_monster.ini",	
}
	
x808039_g_MonsterFlushSpeed =
{
	{ from = 1, to = 10, speed = 8 },
	{ from = 11, to = 20, speed = 7 },
	{ from = 21, to = 30, speed = 6 },
	{ from = 31, to = 40, speed = 5 },
	{ from = 41, to = 50, speed = 4 },
}

x808039_g_MonsterFlushPos =
{
		{{63,81},{66,83},{63,85},{66,87},},
		{{65,81},{63,83},{66,85},{63,87},},
		{{68,81},{71,82},{69,85},{72,87},},
		{{71,80},{68,83},{72,85},{69,87},},
		{{73,79},{77,80},{75,84},{81,85},},
		{{75,78},{74,81},{79,83},{77,87},},
		{{77,77},{82,76},{83,81},{89,80},},
		{{79,75},{80,79},{85,78},{86,84},},
		{{80,73},{84,72},{87,75},{93,74},},
		{{80,71},{83,74},{89,73},{91,77},},
		{{80,69},{85,67},{90,70},{94,67},},
		{{81,67},{85,69},{90,67},{94,70},},
		{{81,65},{85,62},{89,64},{93,62},},
		{{81,63},{85,64},{89,62},{94,65},},
		{{80,61},{84,57},{88,59},{91,55},},
		{{80,59},{84,60},{88,56},{92,58},},
		{{79,57},{81,53},{86,53},{88,49},},
		{{78,55},{82,55},{85,51},{89,52},},
		{{77,53},{78,48},{83,48},{82,43},},
		{{76,51},{79,51},{80,45},{86,46},},
		{{74,50},{72,45},{77,43},{76,39},},
		{{71,48},{75,46},{74,42},{79,40},},
		{{69,48},{68,44},{71,41},{68,36},},
		{{67,47},{70,45},{68,40},{72,37},},
		{{65,47},{62,44},{65,40},{61,36},},
		{{63,47},{65,43},{62,40},{65,36},},
		{{61,47},{58,45},{58,41},{54,39},},
		{{59,48},{60,44},{56,42},{57,38},},
		{{57,48},{53,47},{53,43},{48,42},},
		{{55,49},{56,46},{51,45},{51,41},},
		{{53,51},{49,51},{48,47},{43,47},},
		{{52,53},{51,49},{46,49},{46,44},},
		{{51,54},{46,55},{44,52},{39,54},},
		{{50,56},{47,53},{43,54},{41,50},},
		{{49,58},{45,59},{42,57},{37,59},},
		{{49,60},{46,57},{41,59},{38,57},},
		{{48,62},{44,64},{41,61},{37,64},},
		{{48,64},{44,62},{40,64},{37,62},},
		{{48,66},{45,68},{41,66},{38,69},},
		{{48,67},{44,66},{41,69},{37,67},},
		{{48,69},{46,72},{42,71},{40,74},},
		{{49,71},{45,70},{43,73},{39,72},},
		{{49,72},{48,76},{44,75},{42,79},},
		{{50,74},{47,74},{44,77},{41,76},},
		{{51,76},{51,80},{46,80},{46,84},},
		{{53,78},{49,78},{48,82},{43,82},},
		{{55,78},{56,82},{51,84},{54,87},},
		{{57,79},{53,81},{55,85},{50,86},},
		{{59,80},{60,83},{58,85},{60,87},},
		{{61,81},{58,83},{60,85},{57,87},},
}

--x808039_g_NianShouCreatePos = --ÄêÊÞË¢³ö×ø±ê
--{
--	{34,65},{38,49},{43,42},{73,35},{91,48},
--	{95,60},{92,78},{80,91},{48,91},{97,66},
--}
--x808039_g_NianShouId = --ÄêÊÞID
--{
--	12206, --70
--	12207,
--	12208,
--	12209,
--	12210, 
--	12210, --120
--}

x808039_g_BossPos =
{
	x = 64, z = 64,
}
-- ÉÏ¹Å±¦Ïä	
x808039_g_SmallMonsterId = 
{
}	
x808039_g_SmallMonsterId[1] = {12102,12103,12104,12105,12106,12107,12108,12109,12110} --70,80,90...150 ÒøÉ«
x808039_g_SmallMonsterId[2] = {12111,12112,12113,12114,12115,12116,12117,12118,12119} --70,80,90...150 ½ðÉ«
-- ±¦ÏäÍ¯×Ó
x808039_g_MiddleMonsterId =
{
}
x808039_g_MiddleMonsterId[1] = {12120,12121,12122,12123,12124,12125,12126,12127,12128}
x808039_g_MiddleMonsterId[2] = {12129,12130,12131,12132,12133,12134,12135,12136,12137}
-- Tr¤n bäo long vß½ng
x808039_g_BossMonsterId = {12138,12139,12140,12141,12142,12143,12144,12145,12146}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808039_OnDefaultEvent( sceneId, selfId, targetId )
	local id = GetNumText();
	local msg = "";
	if id == 1 then
		-- Ðúng·ñ¿ª·Å
		if x808039_IsOpenNow() == 0 then	  
			BeginEvent(sceneId)
				AddText(sceneId, "    #{LLXB_8815_09}")
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId) 
			return
		end
		-- ¼ì²âth¤t bÕi
		local ret, msg = x808039_CheckEnterCondition(sceneId, selfId);
		if ret == 0 then
			x808039_RetDlg(sceneId, selfId, targetId, msg);
			return
		end
		if x808039_CheckMemberInfo(sceneId, selfId, targetId) ~= 1 then
			return
		end
		-- ¼ì²âÍ¨¹ý
		x808039_MakeCopyScene(sceneId, selfId)
	elseif id == 2 then
		BeginEvent(sceneId)
			msg = "#{LLXB_8815_08}";
			AddText(sceneId, msg);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808039_OnEnumerate( sceneId, selfId, targetId )	
	AddNumText(sceneId, x808039_g_ScriptId, "Lâu Lan T¥m Bäo", 6, 1);
	AddNumText(sceneId, x808039_g_ScriptId, "Trþ giúp hoÕt ðµng Lâu Lan T¥m Bäo", 11, 2);
end

--**********************************
--¹ÖÎïËÀÍö....
--**********************************
function x808039_OnDie( sceneId, objId, killerId )
	--Ðúng·ñÐúng¸±±¾
	sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType~=1 then
		return
	end 
	--Ðúng·ñÐúngËùC¥n toÕ ðµ ¸±±¾
	fubentype = LuaFnGetCopySceneData_Param(sceneId,0)
	if fubentype~=x808039_g_CopySceneType then
		return
	end
	--¸±±¾¹Ø±Õ±êÖ¾
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 12) ;
	if 	leaveFlag==1 then --Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎÞÐ§
		return 
	end
	
	--È¡ ði¬mµ±Ç°³¡¾°ÀïtoÕ ðµ ÈËÊý
	num = LuaFnGetCopyScene_HumanCount(sceneId)
	
	killednumber = LuaFnGetCopySceneData_Param(sceneId, 7) ;--É±ËÀ¹ÖtoÕ ðµ ÊýÁ¿
	killednumber = killednumber+1
	LuaFnSetCopySceneData_Param(sceneId, 7, killednumber) ;--ÉèÖÃÉ±ËÀ¹ÖtoÕ ðµ ÊýÁ¿

	if killednumber <= x808039_g_TotalNeedKill then
		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)--È¡ ði¬mµ±Ç°³¡¾°ÀïÈËtoÕ ðµ objId
			if LuaFnIsObjValid(sceneId, humanObjId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, humanObjId) == 1 then
				BeginEvent(sceneId)
					strText = format("Ðã giªt %d/%d quái v§t", killednumber, x808039_g_TotalNeedKill )
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
		----
		if killednumber == x808039_g_TotalNeedKill then --15 giâyºó³öÁúÍõ
			LuaFnSetCopySceneData_Param(sceneId, 15, 1); --³öÁúÍõ±êÖ¾ÖÃÎ»
			--¸ø¶¨Éíbuff 73
			for i=0, num-1 do
				humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)--È¡ ði¬mµ±Ç°³¡¾°ÀïÈËtoÕ ðµ objId
				if LuaFnIsObjValid(sceneId, humanObjId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, humanObjId) == 1 then 
					LuaFnSendSpecificImpactToUnit(sceneId, objId, objId, humanObjId, x808039_g_impact_Id, 0); 
				end
			end
		end
	elseif killednumber > x808039_g_TotalNeedKill then --ÁúÍõ¶¼±»¸ÉµôÁË
		--ÉèÖÃÈÎÎñÍê³É±êÖ¾
		
		LuaFnSetCopySceneData_Param(sceneId, 12, 1);				
		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)	--È¡ ði¬mµ±Ç°³¡¾°ÀïÈËtoÕ ðµ objId
			if LuaFnIsObjValid(sceneId, humanObjId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, humanObjId) == 1 then
				BeginEvent(sceneId)
					strText = format("Hoàn t¤t nhi®m vø s¨ r¶i khöi ðây sau %d giây..", x808039_g_CloseTick*x808039_g_TickTime )
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
		-- boss »÷É±¹«¸æ
		x808039_playNotify(sceneId, killerId);
	end
end

--**********************************
--Boss»÷É±¹«¸æ
--**********************************
function x808039_playNotify(sceneId, killerId)
	-- zchw È«Çò¹«¸æ
	local	playerName	= GetName( sceneId, killerId )
	local msg = {};
	
	--É±ËÀ¹ÖÎïtoÕ ðµ Ðúng³èÎïÔmµt ñÈ¡ÆäÖ÷ÈËtoÕ ðµ Tên....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--Èç¹ûÍæ¼Ò×é¶ÓÁËÔmµt ñÈ¡¶Ó³¤toÕ ðµ Tên....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	local str = format("#{_INFOUSR%s}#{LLXB_8815_15}#{_BOSS94}#{LLXB_8815_16}", playerName);
	msg[1] = str;
	str = format("#{_BOSS94}#{LLXB_8815_17}#{_INFOUSR%s}#{LLXB_8815_18}", playerName);
	msg[2] = str;
	str = format("#{_INFOUSR%s}#{LLXB_8815_19}#{_BOSS94}#{LLXB_8815_20}", playerName);
	msg[3] = str;
	str = format("#{LLXB_8815_21}#{_INFOUSR%s}#{LLXB_8815_22}#{_BOSS94}#{LLXB_8815_23}", playerName);
	msg[4] = str;
	local rand = random(4);
	if playerName ~= nil then 
		AddGlobalCountNews( sceneId, msg[rand] );
	end	
end
--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x808039_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x808039_OnCopySceneTimer( sceneId, nowTime )
	
	local msg = "";
	local leaveTickCount = "";
	local tickCount = LuaFnGetCopySceneData_Param(sceneId, 2); --¸±±¾¾­¹ýtoÕ ðµ tickÊý
	tickCount = tickCount + 1;
	LuaFnSetCopySceneData_Param(sceneId, 2, tickCount);	
	--¸±±¾¹Ø±Õ±êÖ¾
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 12) ;	
	-- zchw 
--	if tickCount == 2 then
--			--´´½¨ÄêÊÞ zchw
--			local iniLevel = LuaFnGetCopySceneData_Param(sceneId, 10);
--			local actLevel = LuaFnGetCopySceneData_Param(sceneId, 13)
--			--PrintStr("ID="..x808039_g_NianShouId[iniLevel]..pos[1]..","..pos[2]..actLevel);
--			for i ,pos in x808039_g_NianShouCreatePos do
--				local objId = LuaFnCreateMonster( sceneId, x808039_g_NianShouId[iniLevel], pos[1], pos[2], 1, 272, -1 )
--				SetLevel( sceneId, objId, actLevel )
--				LuaFnSendSpecificImpactToUnit(sceneId, objId, objId, objId, 10472, 0); -- zchw
--			end
--	end
	
	if leaveFlag == 1 then -- C¥n Àë¿ª		
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ðµ ¶ÁÈ¡ºÍÉèÖÃ
		leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 16) ;
		leaveTickCount = leaveTickCount+1 ;
		LuaFnSetCopySceneData_Param(sceneId, 16, leaveTickCount) ;
		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;		--È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		if leaveTickCount >= x808039_g_CloseTick then 						--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;	--È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
			
			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ðµ ³¡¾°
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i);
				if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x808039_g_Back_X, x808039_g_Back_Z )
				end
			end
			
		elseif leaveTickCount < x808039_g_CloseTick then
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
	  			BeginEvent(sceneId)
	  				strText = format("R¶i khöi ðây sau %d giây!", (x808039_g_CloseTick-leaveTickCount)*x808039_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
	  		end
			end
		end	
	elseif tickCount >=  x808039_g_LimitTotalHoldTime then --¸±±¾×î´ó´æ»îÊ±¼äµ½

		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓÐÊ±¼äÏÞÖÆtoÕ ðµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do

			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
				BeginEvent(sceneId)
					AddText(sceneId,"Ðã hªt th¶i gian, nhi®m vø th¤t bÕi!");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,mems[i])
			end
		end
		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 12, 1) ;
	elseif tickCount < x808039_g_StartTickCount then 
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
		for i=0, membercount-1 do
			local objId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if LuaFnIsObjValid(sceneId, objId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, objId) == 1 then
				local tm = (x808039_g_StartTickCount - tickCount)*x808039_g_TickTime;
				BeginEvent(sceneId)
					local	msg = format("Sau %d giây s¨ b¡t ð¥u tr§n ð¤u!", tm);
					AddText(sceneId, msg)
				EndEvent()
				DispatchMissionTips(sceneId, objId);
			end
		end
	elseif tickCount == x808039_g_StartTickCount then
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
		for i=0, membercount-1 do
			local objId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if LuaFnIsObjValid(sceneId, objId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, objId) == 1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Tr§n ð¤u b¡t ð¥u!");
				EndEvent()
				DispatchMissionTips(sceneId, objId);
			end
		end	
		--Ë¢µÚmµt Åú¹Ö
		local grade = LuaFnGetCopySceneData_Param(sceneId, 10); 		-- ¹ÖÀàÐÍ 
		local mstColor = LuaFnGetCopySceneData_Param(sceneId, 11); 	-- ¹ÖÑÕÉ«
		local mstLvl = LuaFnGetCopySceneData_Param(sceneId, 13); 		-- ¹ÖµÈc¤p 
			
		local mstId = x808039_g_SmallMonsterId[1][grade];
		for i, pos in x808039_g_MonsterFlushPos[1] do
			local objId = LuaFnCreateMonster( sceneId, mstId, pos[1], pos[2], 7, -1, 808039 )
			SetLevel( sceneId, objId, mstLvl )
		end		
		--ÏÂmµt ÅúË¢½ðÉ«
		LuaFnSetCopySceneData_Param(sceneId, 11, 2);	
		--ÉèÖ giây¢¹ÖÊ±¼ä
		LuaFnSetCopySceneData_Param(sceneId, 9, tickCount);
		--±£´æË¢¹ÖÅú´Î
		LuaFnSetCopySceneData_Param(sceneId, 8, 2);
	else	
		local bActive = x808039_IsOpenNow();
		if bActive and bActive == 1 then
		else
			--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
			LuaFnSetCopySceneData_Param(sceneId, 12, 1);
			return
		end	
		------------------------------------
		--±ä»¯¹ÖÎï
		local monsterObjId = -1;
		local monsterCount = GetMonsterCount(sceneId);
		for i = 0, monsterCount - 1 do
			monsterObjId = GetMonsterObjID(sceneId, i);
			if LuaFnIsCharacterLiving(sceneId, monsterObjId) > 0 then				--»îtoÕ ðµ ¹ÖÎï
				local monstertype = GetMonsterDataID(sceneId, monsterObjId);	--¹ÖÎïÀàÐÍ
				local monsterLevel = GetLevel(sceneId, monsterObjId);
				local mcreatetime = GetObjCreateTime(sceneId, monsterObjId);	--¹ÖÎï´´½¨Ê±¼ä
				local PosX, PosZ = LuaFnGetWorldPos(sceneId, monsterObjId);
				PosX = floor(PosX);
				PosZ = floor(PosZ);
				--------
				for j=1, 2 do
					for i, record in x808039_g_SmallMonsterId[j] do
						if monstertype == record then
							if nowTime >= mcreatetime + x808039_g_MonsterChangeTime then
								LuaFnDeleteMonster(sceneId, monsterObjId);
								local extAi = 106; --Òø±¦ÏäÍ¯×ÓÀ©Õ¹AI 106
								if j == 2 then
									extAi = 105;     --½ð±¦ÏäÍ¯×ÓÀ©Õ¹AI 105
								end									 
								monsterObjId = LuaFnCreateMonster(sceneId, x808039_g_MiddleMonsterId[j][i], PosX, PosZ, 0, extAi, 808039);
								if monsterObjId and monsterObjId > -1 then
									SetLevel(sceneId, monsterObjId, monsterLevel);
								end
							end
						end
					end
				end 
				--------
			end
		end 
		-----------------------------------
		--Ë¢¹Ö
		local grade = LuaFnGetCopySceneData_Param(sceneId, 10); -- ¹ÖÀàÐÍ 
		local mstColor = LuaFnGetCopySceneData_Param(sceneId, 11); -- ¹ÖÑÕÉ«
		local mstLvl = LuaFnGetCopySceneData_Param(sceneId, 13); -- ¹ÖµÈc¤p 
		local oldFlushMonsterTime = LuaFnGetCopySceneData_Param(sceneId, 9);			
		local monsterBatch = LuaFnGetCopySceneData_Param(sceneId, 8);
		local ret = nil;
		--ÕÒµ½Ë¢¹Ö¼ä¸ôÊ±¼ä
		for i, record in x808039_g_MonsterFlushSpeed do
			if monsterBatch >= record["from"] and monsterBatch <= record["to"] then
				ret = i;
				break
			end
		end
		-- µ½Ê±¼ä,Ë¢¹Ö	
		if ret ~= nil then
			if oldFlushMonsterTime + x808039_g_MonsterFlushSpeed[ret]["speed"] <= tickCount then 
				LuaFnSetCopySceneData_Param( sceneId, 14, 0 ); --ÇåÖÐ¶Ï±êÖ¾
		
				if mstColor == 1 then
					LuaFnSetCopySceneData_Param(sceneId, 11, 2);
				elseif mstColor == 2 then
					LuaFnSetCopySceneData_Param(sceneId, 11, 1);
				end
				local mstId = x808039_g_SmallMonsterId[mstColor][grade];
				if monsterBatch <= 50 and monsterBatch >= 1 then
					for i, pos in x808039_g_MonsterFlushPos[monsterBatch] do
						local objId = LuaFnCreateMonster( sceneId, mstId, pos[1], pos[2], 7, -1, 808039 )
						SetLevel( sceneId, objId, mstLvl )
					end		
					monsterBatch = monsterBatch + 1;
					LuaFnSetCopySceneData_Param(sceneId, 8, monsterBatch); -- Ë¢¹ÖÅúÊý+1	
				end
				LuaFnSetCopySceneData_Param(sceneId, 9, tickCount); --¼ÇË¢¹ÖÊ±¼ä	
				-- Ë¢30ÅúºóÐªÐª
				if monsterBatch == 31 then
					LuaFnSetCopySceneData_Param( sceneId, 9, tickCount+18-5 ); --¼ÇË¢¹ÖÊ±¼ä	Ðª90 giây
					LuaFnSetCopySceneData_Param( sceneId, 14, 1 ); --ÖÃÖÐ¶Ï±êÖ¾
					--Õâ¶´ÖÐtoÕ ðµ ±¦ÏäÒÑ¾­±»ÄãÔÒËéÁË´ó°ë,Äã¿ÉÒÔÏÈÐ¡Ðªmµt »á¶ù,ÎÈÎÈÕó½Å.
					local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
					for i=0, membercount-1 do
						local objId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
						if LuaFnIsObjValid(sceneId, objId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, objId) == 1 then
							x808039_ShowMsg(sceneId, objId, "#{LLXB_8815_14}");
						end
					end
				end
			end
		end
		-- ÖÐ¼ä¼äÐª
		oldFlushMonsterTime = LuaFnGetCopySceneData_Param(sceneId, 9);	
		if LuaFnGetCopySceneData_Param( sceneId, 14 ) == 1 then
			local diffCount = oldFlushMonsterTime+5 - tickCount;
			if diffCount <= 6 and diffCount >= 1 then
				local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
				for i=0, membercount-1 do
					local objId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
					if LuaFnIsObjValid(sceneId, objId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, objId) == 1 then
						local tm = diffCount*x808039_g_TickTime;
						msg = format("Sau %d giây s¨ b¡t ð¥u tþt t¤n công tiªp theo!", tm);
						x808039_ShowMsg(sceneId, objId, msg);
					end
				end
			end
		end
		
		local num = LuaFnGetCopySceneData_Param(sceneId, 15);
		if num > 0 then
			if num == 4 then -- ³öÁúÍõ
				local grade = LuaFnGetCopySceneData_Param(sceneId, 10); 		-- ¹ÖÀàÐÍ 
				local mstLvl = LuaFnGetCopySceneData_Param(sceneId, 13); -- ¹ÖµÈc¤p	
				local objId = LuaFnCreateMonster( sceneId, x808039_g_BossMonsterId[grade], x808039_g_BossPos.x, x808039_g_BossPos.z, 0, 271, 808039 )
				SetLevel( sceneId, objId, mstLvl )	
				--ÅÝÅÝ
				CallScriptFunction((200060), "Paopao", sceneId, "Tr¤n bäo long vß½ng", "Lâu Lan Tàng Bäo Ðµng", "Thª nhân rµn ràng, giai vì lþi ðªn; Thª nhân nh¯n nháo, giai vì lþi hß¾ng. Có bän lînh ði lên l¤y!")
				LuaFnSetCopySceneData_Param(sceneId, 15, 0);		
			else
				LuaFnSetCopySceneData_Param(sceneId, 15, num+1);
			end
		end

	end -- end else
end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x808039_OnPlayerEnter( sceneId, selfId )
	local tmDay = GetTime2Day();
	SetMissionData(sceneId, selfId, MD_SEEK_TREASURE, tmDay); --²ÎÓëÊ±¼ä
	--ÉèÖ giâyÀÍöºó¸´»î ði¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x808039_g_Fuben_X, x808039_g_Fuben_Z );
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x808039_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾toÕ ðµ ¹æÔò
	-- 1,Èç¹ûCái này ÎÄ¼þÃ»ÓÐ×é¶Ó,¾Í´«ËÍCái này Íæ¼Ò×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,µ«ÐúngÍæ¼Ò²»Ðúng¶Ó³¤,¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3,Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,²¢ÇÒCái này Íæ¼ÒÐúng¶Ó³¤,¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑmµt Æð½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
		return
	end
	
	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓÐ¶ÓÎé
		NewWorld( sceneId, leaderObjId, destsceneId, x808039_g_Fuben_X, x808039_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x808039_g_Fuben_X, x808039_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x808039_g_Fuben_X, x808039_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--´´½¨¸±±¾
--**********************************
function x808039_MakeCopyScene(sceneId, selfId)
	-- Ê¹ÓÃÐµi viên toÕ ðµ µÈc¤pÀ´Ëã³ö¹ÖÎïtoÕ ðµ µÈc¤p
	local param0 = 4;
	local param1 = 3;

	--×îÖÕ½á¹û
	local mylevel = 0;

	--ÁÙÊ±±äÁ¿
	local memId;
	local tempMemlevel = 0;
	local level0 = 0;
	local level1 = 0;
	local i;
	
	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, memId);
		level0 = level0 + (tempMemlevel ^ param0);
		level1 = level1 + (tempMemlevel ^ param1);
	end
	
	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1;
	end
	
	if nearmembercount == -1  then  --Ã»ÓÐ¶ÓÎé
		mylevel = GetLevel(sceneId, selfId)
	end
	
	local x
	local z
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, x808039_g_FuBen_Data.MapFile); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x808039_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x808039_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x808039_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x808039_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, x);				--ÉèÖÃ¸±±¾toÕ ðµ Èë¿Ú³¡¾°Î»ÖÃx
	LuaFnSetCopySceneData_Param(sceneId, 5, z);				--ÉèÖÃ¸±±¾toÕ ðµ Èë¿Ú³¡¾°Î»ÖÃZ
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0);		--É±ËÀ¹ÖtoÕ ðµ ÊýÁ¿
	LuaFnSetCopySceneData_Param(sceneId, 8, 1);		--Ë¢³öµÚ¼¸Åú¹Ö
	LuaFnSetCopySceneData_Param(sceneId, 9, 0);		--ÉÏ´ÎË¢³ö¹ÖtoÕ ðµ Ê±¼ä tickCount±íÊ¾
	
	for i=10, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 70 then
		iniLevel = 1;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10) - 6;
	else
		iniLevel = PlayerMaxLevel/10;
	end
	
	-- Ê¹ÓÃ¸±±¾±äÁ¿10,11,12À´±£´æ¹ÖÎï±àºÅ
	LuaFnSetCopySceneData_Param(sceneId, 10, iniLevel) --Ð¡¹Öc¤p±ð
	LuaFnSetCopySceneData_Param(sceneId, 11, 1)--ÒøÉ«?½ðÉ«?
	-- Ê¹ÓÃµÚ12Î»,¼ÇÂ¼³¡¾°Ðúng·ñÒª¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 12, 0)
	-- Ê¹ÓÃµÚ13Î»,¼ÇÂ¼¹ÖÎïÊµ¼ÊtoÕ ðµ µÈc¤p
	LuaFnSetCopySceneData_Param(sceneId, 13, mylevel)
	-- Ê¹ÓÃµÚ14Î»,¼ÇÂ¼Ðúng·ñC¥n Ë¢¹Ö30ÅúºóÖÐ¶Ï
	LuaFnSetCopySceneData_Param(sceneId, 14, 0);
	-- Ê¹ÓÃµÚ15Î»,ÁúÍõ³öÏÖ±êÖ¾
	LuaFnSetCopySceneData_Param(sceneId, 15, 0);
	-- Ê¹ÓÃµÚ16Î»,¹Ø±Õµ¹¼ÆÊ±
	LuaFnSetCopySceneData_Param(sceneId, 16, 0);	
	--ÉèÖÃ³¡¾°ÖÐtoÕ ðµ ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, x808039_g_FuBen_Data.AreaFile )
	LuaFnSetSceneLoad_Monster( sceneId, x808039_g_FuBen_Data.MonsterFile )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"TÕo phø bän thành công!");
			--ÈÕÖ¾
			AuditSeekTreasureCreateTime(sceneId, selfId);
		else
			AddText(sceneId,"S¯ lßþng phø bän ðã vßþt mÑc gi¾i hÕn!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)	
end
--**********************************
--ÐÅÏ¢ÌáÊ¾
--**********************************
function x808039_ShowMsg( sceneId, selfId, msg )
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchMissionTips(sceneId, selfId);
end

--**********************************
--Tr· v«¶Ô»°
--**********************************
function x808039_RetDlg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)
end
--**********************************
--»î¶¯Ê±¼äÑéÖ¤ ³É¹¦: Tr· v«1£» th¤t bÕi: 0
--**********************************
function x808039_IsOpenNow()
	local hour = GetHour();
	local minute = GetMinute();
	local time = hour*100 + minute;
	if (time > x808039_g_activity_time[1]["startTime"] and time < x808039_g_activity_time[1]["endTime"]) or
     (time > x808039_g_activity_time[2]["startTime"] and time < x808039_g_activity_time[2]["endTime"]) then			
		return 1;
	end
	return 0;
end
--**********************************
--ÅÐ¶Ï»ù±¾½øÈëÌõ¼þ
--³É¹¦: 1 th¤t bÕi: 0
--**********************************
function x808039_CheckEnterCondition(sceneId, selfId)
 	--×é¶Ó?
 	if LuaFnHasTeam(sceneId, selfId) == 0 then
		return 0, "#{LLXB_8815_10}";	
 	end
 	--¶Ó³¤?
 	if LuaFnIsTeamLeader(sceneId, selfId) == 0 then
		return 0, "#{LLXB_8815_11}";	 
 	end
 	--¶ÓÎé´ïµ½ÈËÊýÒªÇó?
 	local teamSize = GetTeamSize(sceneId, selfId);
 	if teamSize < x808039_g_LimitMembers then
		return 0, "#{LLXB_8815_12}";		
 	end
  --Ðµi viên ¶¼TÕi ¸½½ü?
  if GetNearTeamCount(sceneId, selfId) < teamSize then
		return 0, "#{LLXB_8815_13}";	  
  end
  --Ðµi viên ÓÐÉ±Æø?
  for i=0, teamSize-1 do
  	local objId = GetNearTeamMember(sceneId, selfId, i);
  	if LuaFnGetHumanPKValue(sceneId, objId) > 0 then
  		local name = GetName(sceneId, objId);
  		local msg = format("Ðµi viên %s sát khí quá n£ng, không th¬ tiªn vào tàng bäo ðµng!", name);
  		return 0, msg;
  	end  	
  end
  --ok
  return 1, "ok";
end
--**********************************
--ÅÐ¶ÏÃ¿cáiÐµi viên Ìõ¼þ
--³É¹¦: 1 th¤t bÕi: 0
--**********************************
function x808039_CheckMemberInfo(sceneId, selfId, targetId)
  --¼ì²éÃ¿mµt cái³ÉÔ±ÐÅÏ¢
  local bSucc = 1;
  local teamSize = GetTeamSize(sceneId, selfId);
  local msg = "";
  local x808039_member_info = {
		{ name = "", levelReq = "#GThöa mãn", xinfaReq = "#GThöa mãn", taskCount = "#GThöa mãn" },
		{ name = "", levelReq = "#GThöa mãn", xinfaReq = "#GThöa mãn", taskCount = "#GThöa mãn" },
		{ name = "", levelReq = "#GThöa mãn", xinfaReq = "#GThöa mãn", taskCount = "#GThöa mãn" },
		{ name = "", levelReq = "#GThöa mãn", xinfaReq = "#GThöa mãn", taskCount = "#GThöa mãn" },
		{ name = "", levelReq = "#GThöa mãn", xinfaReq = "#GThöa mãn", taskCount = "#GThöa mãn" },
		{ name = "", levelReq = "#GThöa mãn", xinfaReq = "#GThöa mãn", taskCount = "#GThöa mãn" },
	}
  -----------------------
  for i=0, teamSize-1 do
  	local objId = GetNearTeamMember(sceneId, selfId, i);
  	local level = LuaFnGetLevel(sceneId, objId);
  	local bXinfaOK = x808039_CheckXinfaLevel(sceneId, objId, 40) --ÐÄ·¨´ïµ½40c¤p?
  	local joinDate = GetMissionData(sceneId, objId, MD_SEEK_TREASURE);

  	x808039_member_info[i+1]["name"] = GetName(sceneId, objId);
  	if GetTime2Day() == joinDate then
  		x808039_member_info[i+1]["taskCount"] = "#cff0000Chßa ðü";
  		bSucc = 0;  		
  	end
  	if level < 75 then
  		x808039_member_info[i+1]["levelReq"] = "#cff0000Chßa ðü";
  		bSucc = 0;
  	end
  	if bXinfaOK == 0 then
  		x808039_member_info[i+1]["xinfaReq"] = "#cff0000Chßa ðü";
  		bSucc = 0;
  	end
  end
  ---------------------
	if bSucc == 0 then
		BeginEvent(sceneId, selfId)
		AddText(sceneId, "  Thành viên ðµi ngû: ");
		for i, mem in x808039_member_info do
			if i > teamSize then
				break
			end	
			msg = format("  #BÐµi viên %s: ", mem["name"]);
			if x808039_member_info[i]["levelReq"] == "#cff0000Chßa ðü" then
				msg = msg.."#r  #cff0000ÐÆng c¤p nhi®m vø 75             Chßa ðü";
			else
				msg = msg.."#r  #GÐÆng c¤p nhi®m vø 75             Thöa mãn";
			end
			---------------
			if x808039_member_info[i]["xinfaReq"] == "#cff0000Chßa ðü" then
				msg = msg.."#r  #cff0000ÐÆng c¤p tâm pháp 40             Chßa ðü" ;
			else
				msg = msg.."#r  #GÐÆng c¤p tâm pháp 40             Thöa mãn";
			end
			---------------
			if x808039_member_info[i]["taskCount"] == "#cff0000Chßa ðü" then
				msg = msg.."#r  #cff0000S¯ l¥n nhi®m vø                Chßa ðü";
			else
				msg = msg.."#r  #GS¯ l¥n nhi®m vø                Thöa mãn";
			end
			AddText(sceneId, msg); 
		end	 -- end of for
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
		return 0;
	end
  --ok
  return 1;
end

--**********************************
--ÅÐ¶ÏÐÆng c¤p tâm pháp Ðúng·ñ·ûºÏ
--³É¹¦: 1 th¤t bÕi: 0
--**********************************
function x808039_CheckXinfaLevel(sceneId, selfId, level)
	local nMenpai = GetMenPai(sceneId, selfId)
	if nMenpai<0 or nMenpai>8   then
		return 0
	end
	
	for i=1, 6 do
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, nMenpai*6 + i)
		if nXinfaLevel < level    then
			return 0
		end
	end
	return 1
end
