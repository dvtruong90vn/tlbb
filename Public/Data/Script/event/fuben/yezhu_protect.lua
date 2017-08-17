-- 402102
-- ¸±±¾ÄÚ±£»¤

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x402102_g_ScriptId = 402102

--MisDescEnd
--************************************************************************

x402102_g_Item = 40004426

--¸±±¾Ãû³Æ
x402102_g_CopySceneName = "Giäi cÑu Linh Thú"

x402102_g_CopySceneType = FUBEN_PORTECT_PET	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x402102_g_CopySceneMap = "petisland_2.nav"
x402102_g_Exit = "petisland_2.ini"
x402102_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x402102_g_TickTime = 1						--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x402102_g_LimitTotalHoldTime = 360--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x402102_g_LimitTimeSuccess = 500	--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x402102_g_CloseTick = 3						--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x402102_g_NoUserTime = 300				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x402102_g_DeadTrans = 0						--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x402102_g_Fuben_X = 87						--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x402102_g_Fuben_Z = 64						--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x402102_g_Back_X = 87							--Ô´³¡¾°Î»ÖÃX
x402102_g_Back_Z = 64							--Ô´³¡¾°Î»ÖÃZ
x402102_g_Back_SceneId = 158			--Ô´³¡¾°Id

-- Thánh Thú S½n³¡¾°Id
x402102_g_PetSceneId = 158

-- Ã¿Á½cáiÐ¡Ò°ÖíË¢³ötoÕ ðµ ¼ä¸ôÊ±¼ä
x402102_g_SetpTime = 10

-- Ã¿mµt ´ó°ï¹ÖË¢³ötoÕ ðµ µÈ´ýÊ±¼ä
x402102_g_SetpWaiteTime_1 = 15
x402102_g_SetpWaiteTime_2 = 60
x402102_g_SetpWaiteTime_3 = 120 
x402102_g_SetpWaiteTime_4 = 150
x402102_g_SetpWaiteTime_5 = 240
x402102_g_SetpWaiteTime_6 = 180
x402102_g_SetpWaiteTime_7 = 100
x402102_g_SetpWaiteTime_8 = 50 


-- Ò°ÖítoÕ ðµ ÐÅÏ¢
x402102_g_MonsterInfo_1 = {	{id=3780,num=5,x=58,z=47,ai=22,ai_f=205,p=0},
}

x402102_g_MonsterInfo_2 = {	{id=3780,num=5,x=150,z=46,ai=22,ai_f=205,p=1},
														{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
}

x402102_g_MonsterInfo_3 = {	{id=3780,num=5,x=85,z=18,ai=22,ai_f=205,p=3},
														{id=3850,num=5,x=61,z=96,ai=22,ai_f=257,p=4},
														{id=3860,num=5,x=150,z=46,ai=22,ai_f=258,p=1},
}

x402102_g_MonsterInfo_4 = {	{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
														{id=3780,num=5,x=58,z=47,ai=22,ai_f=205,p=0},
														{id=3860,num=5,x=61,z=96,ai=22,ai_f=258,p=4},
														{id=3780,num=5,x=85,z=18,ai=22,ai_f=205,p=3},
}

x402102_g_MonsterInfo_5 = {	{id=3780,num=5,x=58,z=47,ai=22,ai_f=205,p=0},
														{id=3860,num=5,x=150,z=46,ai=22,ai_f=258,p=1},
														{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
}

x402102_g_MonsterInfo_6 = {	{id=3850,num=5,x=101,z=102,ai=22,ai_f=257,p=2},
														{id=3780,num=5,x=85,z=18,ai=22,ai_f=205,p=3},
}

x402102_g_MonsterInfo_7 = {	{id=3860,num=5,x=61,z=96,ai=22,ai_f=258,p=4},
}

x402102_g_MonsterInfo_8 = {	{id=3790,num=5,x=85,z=18,ai=22,ai_f=206,p=3},
}

-- Òª±£»¤toÕ ðµ ÕäÊÞ
x402102_g_MonsterAI = { {id=3730,ai=200},
												{id=3740,ai=201},
												{id=3750,ai=202},
												{id=3760,ai=203},
												{id=3770,ai=204},
}

-- Ã¿cáiË¢ÐÂµ giây¢³ötoÕ ðµ Ò°ÖíÊýÁ¿
x402102_g_MonsterInfo_Count_1 = 7
x402102_g_MonsterInfo_Count_2 = 8
x402102_g_MonsterInfo_Count_3 = 8
x402102_g_MonsterInfo_Count_4 = 10
x402102_g_MonsterInfo_Count_5 = 12
x402102_g_MonsterInfo_Count_6 = 12
x402102_g_MonsterInfo_Count_7 = 13
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x402102_OnDefaultEvent( sceneId, selfId, targetId )

	-- ¼ì²âÐúng²»ÐúngTÕi Thánh Thú S½n³¡¾°,²»Ðúng¾ÍÖ±½ÓTr· v«
	if sceneId ~= 158  then
		return
	end
	
	if GetNumText()==1010 then
		BeginEvent(sceneId)
				AddText(sceneId,"#{YZBZ_20070930_002}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	-- 0
	if LuaFnHasTeam(sceneId,selfId) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTiªp cÑu Linh Thú");
			AddText(sceneId,"   <Linh thú lo l¡ng nhìn ngß½i b¢ng nØa con m¡t, tña h° mu¯n nói: Không ðü ba ngß¶i, các ngß½i này không phäi không công ch¸u chªt sao!>#R(BÕn phäi là ðµi trß·ng, và trong ðµi có ít nh¤t 3 ngß¶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 2,¼ì²â¶ÓÎéÐúng²»Ðúng¹»ÈËÊý
	if GetTeamSize(sceneId,selfId) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTiªp cÑu Linh Thú");
			AddText(sceneId,"  <Linh thú lo l¡ng nhìn ngß½i b¢ng nØa con m¡t, tña h° mu¯n nói: Không ðü ba ngß¶i, các ngß½i này không phäi không công ch¸u chªt sao!>#R(BÕn phäi là ðµi trß·ng, và trong ðµi có ít nh¤t 3 ngß¶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 3,¼ì²âÍæ¼ÒÐúng²»Ðúng¶Ó³¤
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTiªp cÑu Linh Thú");
			AddText(sceneId,"  <Linh thú lo l¡ng nhìn ngß½i b¢ng nØa con m¡t, tña h° mu¯n nói: Không ðü ba ngß¶i, các ngß½i này không phäi không công ch¸u chªt sao!>#R(BÕn phäi là ðµi trß·ng, và trong ðµi có ít nh¤t 3 ngß¶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 4,¼ì²âÐúng²»ÐúngÈË¶¼µ½Î»ÁË
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTiªp cÑu Linh Thú");
			AddText(sceneId,"  <Linh thú lo l¡ng ngoänh ð¥u, tña h° mu¯n nói: Ngß½i còn có ðµi viên không · g¥n ðây, mau t§p hþp!>");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 1,Íæ¼ÒµÈc¤p
	local nPlayerNum = GetNearTeamCount(sceneId,selfId)
	local strName = {}
	strName[1] = ""
	strName[2] = ""
	strName[3] = ""
	strName[4] = ""
	strName[5] = ""
	strName[6] = ""
	local ret = 1
 	
	for i=0, nPlayerNum-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		if GetLevel(sceneId, nPlayerId) < 40  then
			ret = 0
			strName[i+1] = GetName(sceneId, nPlayerId)
		end
	end
	
	local nCount = 0
	if ret == 0  then
		local szAllName = ""
		for i=1, 6  do
			if strName[i] ~= ""  then
				if nCount == 0  then
					szAllName = strName[i]
				else
					szAllName = szAllName .. ", " .. strName[i]
				end
				nCount = nCount+1
			end
		end
		BeginEvent(sceneId)
			AddText(sceneId,"#BTiªp cÑu Linh Thú");
			AddText(sceneId,"  Trong ðµi ngû có thành viên (" .. szAllName .. ") c¤p b§c th¤p h½n 40 c¤p, không th¬ tham gia cÑu v¾t linh thú.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- ËùÓÐtoÕ ðµ ¼ì²âÍ¨¹ý,´´½¨³¡¾°,É¾³ý¶Ô»°ÕäÊÞ
	-- ×ömµt cái°²È«¼ì²é
	if sceneId==x402102_g_PetSceneId  then
		x402102_MakeCopyScene(sceneId, selfId, targetId)
		LuaFnDeleteMonster(sceneId, targetId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x402102_OnEnumerate( sceneId, selfId, targetId )

	if sceneId ~= 158  then
		return
	end

	-- ×îºÃTÕi ÕâÀï×ömµt cáiTênÅÐ¶¨
	AddNumText( sceneId, x402102_g_ScriptId, "Tiªp cÑu Linh Thú",10 ,-1  )
	AddNumText( sceneId, x402102_g_ScriptId, "#{YZBZ_20070930_001}",11 ,1010  )

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x402102_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÐúng·ñÒª½øÈë¸±±¾
--**********************************
function x402102_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x402102_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x402102_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x402102_MakeCopyScene( sceneId, selfId, targetId )
	
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
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "petisland_2.nav"); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402102_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x402102_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x402102_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402102_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);		--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--É±ËÀBosstoÕ ðµ ÊýÁ¿
	
	-- ¾çÇéÓÃµ½toÕ ðµ ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 1;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10);
	else
		iniLevel = floor(PlayerMaxLevel/10);
	end
	
	-- Ê¹ÓÃµÚ8Î»,¼ÇÂ¼¹ÖÎïÊµ¼ÊtoÕ ðµ µÈc¤p
	LuaFnSetCopySceneData_Param(sceneId,8, mylevel)
	LuaFnSetCopySceneData_Param(sceneId,9, iniLevel)
	
	-- ¼ÇÂ¼ÒªTiªp cÑu toÕ ðµ ¹ÖÎïtoÕ ðµ »ù´¡Id
	LuaFnSetCopySceneData_Param(sceneId,10, GetMonsterDataID(sceneId, targetId))

	-- µÚ16,17Î»±£´æÍæ¼ÒtoÕ ðµ µ±Ç°×ø±ê
	local x,z = GetWorldPos(sceneId,selfId)
	LuaFnSetCopySceneData_Param(sceneId,16, x)
	LuaFnSetCopySceneData_Param(sceneId,17, z)
	
	
	--ÉèÖÃ³¡¾°ÖÐtoÕ ðµ ¸÷ÖÖNpcºÍÇøÓò
	--LuaFnSetSceneLoad_Area( sceneId, "petisland_2_area.ini" )
	--LuaFnSetSceneLoad_Monster( sceneId, "petisland_2_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)

	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!")
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!")
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x402102_OnCopySceneReady( sceneId, destsceneId )
	
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
		x402102_GotoScene(sceneId, leaderObjId, destsceneId)
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			x402102_GotoScene(sceneId, leaderObjId, destsceneId)
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				x402102_GotoScene(sceneId, mems[i], destsceneId)
			end
		end
	end

end

function x402102_GotoScene(sceneId, ObjId, destsceneId)
	NewWorld( sceneId, ObjId, destsceneId, x402102_g_Fuben_X, x402102_g_Fuben_Z) ;
end


--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x402102_OnPlayerEnter( sceneId, selfId )
	-- ÉèÖÃÍæ¼ÒÕóÓªÎª100
	SetUnitCampID(sceneId, selfId, selfId, 100)
	-- ½øÈë³¡¾°ÌáÊ¾
	x402102_TipAllHuman( sceneId, "Dã trß bÕo loÕn 15 giây sau b¡t ð¥u tiªn công, chú ý trong 20 phút bäo hµ linh thú an toàn!" )
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x402102_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x402102_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓÐThành th¸ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x402102_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x402102_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x402102_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x402102_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x402102_OnDie( sceneId, objId, killerId )
	x402102_TipAllHuman(sceneId, "Tiªp cÑu Linh Thú th¤t bÕi!")
		LuaFnSetCopySceneData_Param(sceneId, 12, 10)
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x402102_TipAllHuman( sceneId, Str )
	--  ðÕt ðßþc³¡¾°ÀïÍ·toÕ ðµ ËùÓÐÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x402102_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x402102_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x402102_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x402102_OnCopySceneTimer( sceneId, nowTime )
	
	-- ¼ÆÊ±Æ÷Ö÷ÒªÒª°´ÕÕÊ±¼äÀ´°²ÅÅË¢¹Ö
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 11)
	local nCurTime = LuaFnGetCurrentTime()
	local nStep = LuaFnGetCopySceneData_Param(sceneId, 12)
	
	local nStep_1 = LuaFnGetCopySceneData_Param(sceneId, 13)
	local nPreTime_1 = LuaFnGetCopySceneData_Param(sceneId, 14)
	
	local nBeginTime = LuaFnGetCopySceneData_Param(sceneId, 21)
	local nBeginTimeFlag = LuaFnGetCopySceneData_Param(sceneId, 22)
	
	if nCurTime-nBeginTime >= 18*60 and nBeginTimeFlag==1  then
		x402102_TipAllHuman( sceneId, "HoÕt ðµng 2 phút sau ch¤m dÑt, chú ý bäo hµ linh thú an toàn!" )
		LuaFnSetCopySceneData_Param(sceneId, 22, 2)
	end
	
	if nCurTime-nBeginTime >= 19*60 and nBeginTimeFlag==2  then
		x402102_TipAllHuman( sceneId, "HoÕt ðµng 1 phút sau ch¤m dÑt, chú ý bäo hµ linh thú an toàn!" )
		LuaFnSetCopySceneData_Param(sceneId, 22, 3)
	end
	
	if nCurTime-nBeginTime >= 19*60+30 and nBeginTimeFlag==3  then
		x402102_TipAllHuman( sceneId, "HoÕt ðµng 30 giây sau ch¤m dÑt, chú ý bäo hµ linh thú an toàn!" )
		LuaFnSetCopySceneData_Param(sceneId, 22, 4)
	end

	-- ´´½¨Òª±£»¤toÕ ðµ ÕäÊÞ
	if nStep == 0  then
		local nMonterLevel = LuaFnGetCopySceneData_Param(sceneId, 8)
		local nMonterIniID = LuaFnGetCopySceneData_Param(sceneId, 9)
		local nMonterID 	 = LuaFnGetCopySceneData_Param(sceneId, 10)
		
		local nAi = 0
		for i=1, 5  do
			if x402102_g_MonsterAI[i].id == nMonterID  then
				nAi = x402102_g_MonsterAI[i].ai
			end
		end
		
		local nRetrievalMonterID = 0
		if nMonterIniID >= 11 then
		   nRetrievalMonterID = nMonterID + nMonterIniID - 11 + 30000		
		else
		   nRetrievalMonterID = nMonterID + nMonterIniID - 1		
		end
		
		local nNpcId = LuaFnCreateMonster(sceneId, nRetrievalMonterID,
										 89, 64, 9, nAi, 402102)
		SetUnitCampID(sceneId, nNpcId, nNpcId, 100)
		SetCharacterTitle(sceneId, nNpcId, "Linh Thú")
		SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
		
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 21, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 22, 1)
		
		-- ±£´æCái này ÕäÊÞtoÕ ðµ Id
		LuaFnSetCopySceneData_Param(sceneId, 15, nNpcId)
	end
	
	--
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_1 and nStep==1  then
		for i, Npc in x402102_g_MonsterInfo_1  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- °´ÕÕÑ²ÂßÂ·Ïß×ß
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "Dã trß t¤n công l¥n thÑ 1! (Còn 6 l¥n công kích)" )
		x402102_TipAllHuman( sceneId, "60 giây sau dã trß b¡t ð¥u tiªn công tiªp theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==2) and 
				(nStep_1<x402102_g_MonsterInfo_Count_1-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_1  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end
	
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_2 and nStep==2  then
		for i, Npc in x402102_g_MonsterInfo_2  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- °´ÕÕÑ²ÂßÂ·Ïß×ß
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "Dã trß t¤n công l¥n thÑ 2! (Còn 5 l¥n công kích)" )
		x402102_TipAllHuman( sceneId, "120 giây sau dã trß b¡t ð¥u tiªn công tiªp theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==3) and 
				(nStep_1<x402102_g_MonsterInfo_Count_2-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_2  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end
	
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_3 and nStep==3  then
		for i, Npc in x402102_g_MonsterInfo_3  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- °´ÕÕÑ²ÂßÂ·Ïß×ß
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "Dã trß t¤n công l¥n thÑ 3! (Còn 4 l¥n công kích)" )
		x402102_TipAllHuman( sceneId, "150 giây sau dã trß b¡t ð¥u tiªn công tiªp theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==4) and 
				(nStep_1<x402102_g_MonsterInfo_Count_3-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_3  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_4 and nStep==4  then
		for i, Npc in x402102_g_MonsterInfo_4  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- °´ÕÕÑ²ÂßÂ·Ïß×ß
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "Dã trß t¤n công l¥n thÑ 4! (Còn 3 l¥n công kích)" )
		x402102_TipAllHuman( sceneId, "240 giây sau dã trß b¡t ð¥u tiªn công tiªp theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==5) and 
				(nStep_1<x402102_g_MonsterInfo_Count_4-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_4  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_5 and nStep==5  then
		for i, Npc in x402102_g_MonsterInfo_5  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- °´ÕÕÑ²ÂßÂ·Ïß×ß
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "Dã trß t¤n công l¥n thÑ 5! (Còn 2 l¥n công kích)" )
		x402102_TipAllHuman( sceneId, "180 giây sau dã trß b¡t ð¥u tiªn công tiªp theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==6) and 
				(nStep_1<x402102_g_MonsterInfo_Count_5-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_6 and nStep==6  then
		for i, Npc in x402102_g_MonsterInfo_6  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- °´ÕÕÑ²ÂßÂ·Ïß×ß
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "Dã trß t¤n công l¥n thÑ 6! (Còn 1 l¥n công kích)" )
		x402102_TipAllHuman( sceneId, "100 giây sau dã trß b¡t ð¥u tiªn công tiªp theo!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==7) and 
				(nStep_1<x402102_g_MonsterInfo_Count_6-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_6  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_7 and nStep==7  then
		for i, Npc in x402102_g_MonsterInfo_7  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				-- °´ÕÕÑ²ÂßÂ·Ïß×ß
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "Dã trß b¡t ð¥u t¤n công l¥n cu¯i cùng!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 13, 0)
	end
		-- 
		if (nStep==8) and 
				(nStep_1<x402102_g_MonsterInfo_Count_7-1) and 
				(nCurTime-nPreTime_1>=x402102_g_SetpTime)  then
			
			for i, Npc in x402102_g_MonsterInfo_7  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetPatrolId(sceneId, nNpcId, Npc.p)
				LuaFnSetCopySceneData_Param(sceneId, 14, nCurTime)
				LuaFnSetCopySceneData_Param(sceneId, 13, nStep_1+1)
			end
		end

	--BOSS
	if nCurTime-nPreTime>=x402102_g_SetpWaiteTime_8 and nStep==8  then
		for i, Npc in x402102_g_MonsterInfo_8  do
			--for j=1 ,5  do
				local nNpcId = x402102_CreateNpc(sceneId, Npc.id, Npc.x, Npc.z,	Npc.ai, Npc.ai_f, -1)
				SetUnitCampID(sceneId, nNpcId, nNpcId, 101)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
				SetCharacterTitle(sceneId, nNpcId, "Lão nha ðµi trß¶ng")
				-- °´ÕÕÑ²ÂßÂ·Ïß×ß
				SetPatrolId(sceneId, nNpcId, Npc.p)
			--end
		end
		x402102_TipAllHuman( sceneId, "Cänh giác! Dã trß ð¥u møc xu¤t hi®n!!" )
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	local nLastTime = 20*60 -(x402102_g_SetpWaiteTime_1+
														x402102_g_SetpWaiteTime_2+
														x402102_g_SetpWaiteTime_3+
														x402102_g_SetpWaiteTime_4+
														x402102_g_SetpWaiteTime_5+
														x402102_g_SetpWaiteTime_6+
														x402102_g_SetpWaiteTime_7+
														x402102_g_SetpWaiteTime_8)
	
	-- Ê±¼ä½áÊø,
	if nCurTime-nPreTime>=nLastTime and nStep==9  then

		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)

		-- ¼ì²âÒª±£»¤toÕ ðµ ÕäÊÞÐúng²»Ðúng»¹»î×Å,
		local nNpcId = LuaFnGetCopySceneData_Param(sceneId, 15)
		local bOk = 0
		local nMonsterCount = GetMonsterCount(sceneId)
		for i=0, nMonsterCount-1   do
			local nMontserid = GetMonsterObjID(sceneId, i)
			if nNpcId == nMontserid   then
				-- Íê³É
				bOk = 1
			end
		end
		
		if bOk == 1  then
			x402102_TipAllHuman(sceneId, "Tiªp cÑu Linh Thú thành công!")
			
			-- ÊÀ½ç¹«¸æ
			local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
			if nHumanNum < 1 then
				return
			end
			local nLeaderId = 0
			for i=0, nHumanNum-1  do
				local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
				if GetTeamLeader(sceneId, nPlayerId) == nPlayerId  then
					nLeaderId = nPlayerId
				end
			end
			if nLeaderId == 0  then
				return
			end
			
			local szLeaderName = GetName(sceneId, nLeaderId)
			local str = format("#GThánh thú s½n#P, cái thª anh hùng #{_INFOUSR%s}#P cùng ðµi hæu ðem hªt toàn lñc, ðánh lùi #YDã Trß bÕo loÕn #Pðiên cu°ng tiªn công, cam ðoan linh thú an toàn!",szLeaderName)
			BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
		end
	end
	
	if nStep==10  then
		x402102_TipAllHuman(sceneId, "Các hÕ s¨ r¶i khöi n½i này trong vòng 30 giây næa.")
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	-- Ê±¼ä½áÊø,
	if nCurTime-nPreTime>=15 and nStep==11  then
		x402102_TipAllHuman(sceneId, "Các hÕ s¨ r¶i khöi n½i này trong vòng 15 giây næa.")
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	-- Ê±¼ä½áÊø,
	if nCurTime-nPreTime>=10 and nStep==12  then
		x402102_TipAllHuman(sceneId, "Các hÕ s¨ r¶i khöi n½i này trong vòng 5 giây næa.")
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
	-- Ê±¼ä½áÊø,
	if nCurTime-nPreTime>=5 and nStep==13  then
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			local x = LuaFnGetCopySceneData_Param(sceneId, 16)
			local z = LuaFnGetCopySceneData_Param(sceneId, 17)
			NewWorld( sceneId, nPlayerId, x402102_g_Back_SceneId, x, z) ;
		end
		LuaFnSetCopySceneData_Param(sceneId, 11, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 12, nStep+1)
	end
	
end

--**********************************
-- Í¨ÓÃ´´½¨¹ÖÎïº¯Êý
--**********************************
function x402102_CreateNpc(sceneId, NpcId, x, y, Ai, AiFile, Script)
	local PlayerLevel = LuaFnGetCopySceneData_Param(sceneId, 8)
	local ModifyLevel = LuaFnGetCopySceneData_Param(sceneId, 9)
	local nNpcId = 0
	
	if ModifyLevel >= 11 then
	   nNpcId = NpcId + ModifyLevel-11 + 30000
	else
	   nNpcId = NpcId + ModifyLevel-1
	end
	
	local nMonsterId = LuaFnCreateMonster(sceneId, nNpcId, x, y, Ai, AiFile, Script)
	SetLevel(sceneId, nMonsterId, PlayerLevel)
	return nMonsterId
end

