-- 402105
-- ¸±±¾ÄÚ±£»¤

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x402105_g_ScriptId = 402105

--MisDescEnd
--************************************************************************


--¸±±¾Ãû³Æ
x402105_g_CopySceneName = "HoÕt ğµng Tr¤n áp bÕo t¦u"

x402105_g_CopySceneType = FUBEN_CATCH_PET	--¸±±¾ÀàĞÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ

x402105_g_CopySceneMap = "zhenshoulan.nav"
x402105_g_Exit = "zhenshoulan.ini"
x402105_g_LimitMembers = 3				--¿ÉÒÔ½ø¸±±¾µÄ×îĞ¡¶ÓÎéÈËÊı
x402105_g_TickTime = 1						--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x402105_g_LimitTotalHoldTime = 360--¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x402105_g_LimitTimeSuccess = 500	--¸±±¾Ê±¼äÏŞÖÆ£¨µ¥Î»£º´ÎÊı£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x402105_g_CloseTick = 3						--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x402105_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x402105_g_DeadTrans = 0						--ËÀÍö×ªÒÆÄ£Ê½£¬0£ºËÀÍöºó»¹¿ÉÒÔ¼ÌĞøÔÚ¸±±¾£¬1£ºËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x402105_g_Fuben_X = 36						--½øÈë¸±±¾µÄÎ»ÖÃX
x402105_g_Fuben_Z = 97						--½øÈë¸±±¾µÄÎ»ÖÃZ
x402105_g_Back_X = 141							--Ô´³¡¾°Î»ÖÃX
x402105_g_Back_Z = 114							--Ô´³¡¾°Î»ÖÃZ
x402105_g_Back_SceneId = 158			--Ô´³¡¾°Id
	
-- ÈÎÎñÎïÆ·
x402105_g_Item = 40004429

-- Ê¥ÊŞÉ½³¡¾°Id
x402105_g_PetSceneId = 158

-- Ò°ÖíµÄĞÅÏ¢
x402105_g_MonsterInfo_1 = {id=3800,ai=17,aif=207}
x402105_g_MonsterPos = {
		{x=65.5176,z=	79.0207,},{x=69.8164,z=	88.1377,},{x=83.8354,z=	92.4449,},
		{x=77.5097,z=	74.2288,},{x=87.9545,z=	70.4181,},{x=74.7209,z=	60.9159,},
		{x=60.6836,z=	56.8568,},{x=71.8951,z=	46.935 ,},{x=86.682	,z= 44.4101,},
		{x=98.8462,z=	37.5822,},{x=60.1058,z=	35.1054,},{x=45.9477,z=	34.18  ,},
		{x=25.7361,z=	43.8625,},{x=34.4459,z=	55.7157,},{x=42.0419,z=	45.9647,},
		{x=48.4925,z=	58.1778,},{x=74.1362,z=	29.3186,},{x=89.6256,z=	29.2022,},
		{x=56.631	,z= 45.7225,},{x=94.1026,z=	57.7871,},{x=97.1927,z=	90.8149,},
		{x=52.1854,z=	84.1242,},{x=58.4518,z=	70.0597,},{x=66.7249,z=	100.087,},
		{x=29.7832,z=	25.596 ,},{x=34.8878,z=	35.452 ,},{x=80.2963,z=	37.4068,},
		{x=93.935	,z= 78.0536,},{x=83.9264,z=	54.9693,},{x=64.3749,z=	24.8037,},
}

--bossĞÅÏ¢
x402105_g_BossInfo_1 = {id=3810,ai=16,aif=208,x=73,z=50,script=-1}
x402105_g_BossInfo_2 = {id=3820,ai=17,aif=209,x=73,z=50,script=501000}
x402105_g_BossRand_2 = 10

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x402105_OnDefaultEvent( sceneId, selfId, targetId )
	if GetNumText()==1010 then
		BeginEvent(sceneId)
				AddText(sceneId,"#{YZBZ_20070930_004}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if LuaFnHasTeam(sceneId,selfId) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BĞu±i b¡t Dã Trß Vß½ng");
			AddText(sceneId,"Nhi«u ngß¶i sÑc mÕnh l¾n, chúng ta quay v« g÷i thêm trş thü. #R(BÕn phäi là ğµi trß·ng, và trong ğµi có ít nh¤t 3 ngß¶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 2£¬¼ì²âÍæ¼ÒÊÇ²»ÊÇ×é¶ÓÁË
	if GetTeamSize(sceneId,selfId) < x402105_g_LimitMembers  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BĞu±i b¡t Dã Trß Vß½ng");
			AddText(sceneId,"Nhi«u ngß¶i sÑc mÕnh l¾n, chúng ta quay v« g÷i thêm trş thü. #R(BÕn phäi là ğµi trß·ng, và trong ğµi có ít nh¤t 3 ngß¶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 3£¬¼ì²âÍæ¼ÒÊÇ²»ÊÇ¶Ó³¤
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"#BĞu±i b¡t Dã Trß Vß½ng");
			AddText(sceneId,"Nhi«u ngß¶i sÑc mÕnh l¾n, chúng ta quay v« g÷i thêm trş thü. #R(BÕn phäi là ğµi trß·ng, và trong ğµi có ít nh¤t 3 ngß¶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 4£¬¼ì²âÊÇ²»ÊÇÈË¶¼µ½Î»ÁË
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BĞu±i b¡t Dã Trß Vß½ng");
			AddText(sceneId,"Nhi«u ngß¶i sÑc mÕnh l¾n, chúng ta quay v« g÷i thêm trş thü. #R(BÕn phäi là ğµi trß·ng, và trong ğµi có ít nh¤t 3 ngß¶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- Ö»ĞèÒª¶Ó³¤ÓĞÈÎÎñÎïÆ·¾Í¿ÉÒÔ,¼ì²â¶Ó³¤ÉíÉÏÊÇ²»ÊÇÓĞÕâ¸öÎïÆ·
	if LuaFnGetAvailableItemCount(sceneId,selfId,x402105_g_Item) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BĞu±i b¡t Dã Trß Vß½ng");
			AddText(sceneId,"Nªu mu¯n tìm ğªn Dã Trß Vß½ng, chúng ta có cûng ğü  manh m¯i m¾i ğßşc. #R(C¥n mang theo ğÕo cø #GTung tích Dã Trß Vß½ng.#R)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 1£¬Íæ¼ÒµÈ¼¶
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
					szAllName = szAllName .. "¡¢" .. strName[i]
				end
				nCount = nCount+1
			end
		end
		BeginEvent(sceneId)
			AddText(sceneId,"#BĞu±i b¡t Dã Trß Vß½ng");
			AddText(sceneId,"Nªu mu¯n ğánh bÕi Dã Trß Vß½ng, c¤p b§c th¤p không th¬ ğßşc.#r#RTrong ğµi ngû có thành viên " .. szAllName .. " c¤p nhö h½n 40.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	
	-- ËùÓĞµÄ¼ì²âÍ¨¹ı,´´½¨³¡¾°£¬É¾³ı¶Ô»°ÕäÊŞ
	-- ×öÒ»¸ö°²È«¼ì²é
	if sceneId==x402105_g_PetSceneId  then
		x402105_MakeCopyScene(sceneId, selfId, targetId)
	end
	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x402105_OnEnumerate( sceneId, selfId, targetId )
	-- ×îºÃÔÚÕâÀï×öÒ»¸öÃû×ÖÅĞ¶¨
	AddNumText( sceneId, x402105_g_ScriptId, "Ğu±i b¡t Dã Trß Vß½ng",10 ,-1  )
	AddNumText( sceneId, x402105_g_ScriptId, "#{YZBZ_20070930_003}",11 ,1010  )	
	
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x402105_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÊÇ·ñÒª½øÈë¸±±¾
--**********************************
function x402105_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--½ÓÊÜ
--**********************************
function x402105_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x402105_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x402105_MakeCopyScene( sceneId, selfId, targetId )
	
	-- Ê¹ÓÃ¶ÓÔ±µÄµÈ¼¶À´Ëã³ö¹ÖÎïµÄµÈ¼¶
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
	
	if nearmembercount == -1  then  --Ã»ÓĞ¶ÓÎé
		mylevel = GetLevel(sceneId, selfId)
	end
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "zhenshoulan.nav"); --µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402105_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x402105_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x402105_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402105_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);		--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--É±ËÀBossµÄÊıÁ¿
	
	-- ¾çÇéÓÃµ½µÄ±äÁ¿Çå¿Õ
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
	
	-- Ê¹ÓÃµÚ8Î»£¬¼ÇÂ¼¹ÖÎïÊµ¼ÊµÄµÈ¼¶
	LuaFnSetCopySceneData_Param(sceneId,8, mylevel)
	LuaFnSetCopySceneData_Param(sceneId,9, iniLevel)
	
	-- Ô­À´µÄÄ£Ê½ ÕæµÄºÜÆæ¹ÖÃ»ÓĞ -1 ¼ÇÂ¼ÒªÕü¾ÈµÄ¹ÖÎïµÄ»ù´¡Id
	--LuaFnSetCopySceneData_Param(sceneId,10, GetMonsterDataID(sceneId, targetId)+iniLevel)
	
	local nMonterID = 0
	if iniLevel >= 11 then
	   nMonterID = GetMonsterDataID(sceneId, targetId)+iniLevel - 10 + 30000
	else
	   nMonterID = GetMonsterDataID(sceneId, targetId)+iniLevel
	end
	-- ¼ÇÂ¼ÒªÕü¾ÈµÄ¹ÖÎïµÄ»ù´¡Id
	LuaFnSetCopySceneData_Param(sceneId,10, nMonterID)
	
	--ÉèÖÃ³¡¾°ÖĞµÄ¸÷ÖÖNpcºÍÇøÓò
	--LuaFnSetSceneLoad_Area( sceneId, "zhenshoulan_area.ini" )
	--LuaFnSetSceneLoad_Monster( sceneId, "zhenshoulan_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)

	if bRetSceneID>0 then			
		-- Èç¹ûÍæ¼ÒÊÇ¶Ó³¤£¬¿Û³ıÈÎÎñµÀ¾ß							modify by WTT		20090225
		if IsCaptain(sceneId,selfId) == 1    then
			if DelItem(sceneId, selfId, x402105_g_Item, 1) == 0  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 3)
			end
		end
		BeginEvent(sceneId)
			AddText(sceneId,"D¸ch chuy¬n thành công!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end

end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x402105_OnCopySceneReady( sceneId, destsceneId )
	
	--½øÈë¸±±¾µÄ¹æÔò
	-- 1£¬Èç¹ûÕâ¸öÎÄ¼şÃ»ÓĞ×é¶Ó£¬¾Í´«ËÍÕâ¸öÍæ¼Ò×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓĞ¶ÓÎé£¬µ«ÊÇÍæ¼Ò²»ÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3£¬Èç¹ûÍæ¼ÒÓĞ¶ÓÎé£¬²¢ÇÒÕâ¸öÍæ¼ÒÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑÒ»Æğ½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­µÄ×´Ì¬
		return
	end
	
	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÓĞ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓĞ¶ÓÎé
		x402105_GotoScene(sceneId, leaderObjId, destsceneId)
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			x402105_GotoScene(sceneId, leaderObjId, destsceneId)
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				x402105_GotoScene(sceneId, mems[i], destsceneId)
			end
		end
	end

end

function x402105_GotoScene(sceneId, ObjId, destsceneId)
	NewWorld( sceneId, ObjId, destsceneId, x402105_g_Fuben_X, x402105_g_Fuben_Z) ;
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x402105_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x402105_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x402105_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç£¬Ö»ÓĞ³ÇÊĞÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x402105_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌĞø
--**********************************
function x402105_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x402105_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x402105_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ÌáÊ¾ËùÓĞ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x402105_TipAllHuman( sceneId, Str )
	-- »ñµÃ³¡¾°ÀïÍ·µÄËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËµÄ³¡¾°£¬Ê²Ã´¶¼²»×ö
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
function x402105_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x402105_OnDie( sceneId, objId, killerId )
	local nKillCount = LuaFnGetCopySceneData_Param(sceneId,20)
	if GetName(sceneId, objId) == "Tiêm Nha Dã Trß"  then
		LuaFnSetCopySceneData_Param(sceneId,20,nKillCount+1)
		x402105_TipAllHuman(sceneId, "Ğã giªt chªt Tiêm Nha Dã Trß " .. tostring(nKillCount+1) .. "/30")
	end
end
--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x402105_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x402105_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x402105_OnCopySceneTimer( sceneId, nowTime )
	local nStep =	LuaFnGetCopySceneData_Param(sceneId, 11)
	if nStep == 0  then
		x402105_CreateMonster_1(sceneId)
		LuaFnSetCopySceneData_Param(sceneId, 11, 1)
	end

	if nStep == 1  then
		local nCount = GetMonsterCount(sceneId)
		local nHaveMonster = 0
		
		for i=0, nCount-1  do
			local nMonterId = GetMonsterObjID(sceneId, i)
			if GetName(sceneId, nMonterId) == "Tiêm Nha Dã Trß"  then
				nHaveMonster = 1
			end
		end
		
		if nHaveMonster == 0  then
			x402105_CreateMonster_2(sceneId)
			LuaFnSetCopySceneData_Param(sceneId, 11, 2)
		end
	end

	-- Èç¹û¹ÖÎïÈ«²¿É±ËÀ£¬ÈÃÍæ¼ÒÒ»·ÖÖÖºó³ö¸±±¾
	if nStep == 2  then
		local nCount = GetMonsterCount(sceneId)
		local nHaveMonster = 0
		
		for i=0, nCount-1  do
			local nMonterId = GetMonsterObjID(sceneId, i)
			if GetName(sceneId, nMonterId) == "Tiêm Nha Dã Trß" 
					or GetName(sceneId, nMonterId) == "Tiêm Nha Dã Trß Vß½ng"  
					or GetName(sceneId, nMonterId) == "Cu°ng BÕo Long"  then
				nHaveMonster = 1
			end
		end
		
		if nHaveMonster == 0  then
			LuaFnSetCopySceneData_Param(sceneId, 11, 3)
			--¼ÇÂ¼Ê±¼ä
			LuaFnSetCopySceneData_Param(sceneId, 13, LuaFnGetCurrentTime())
		
			local nType = LuaFnGetCopySceneData_Param(sceneId,12)
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
			local str = ""
			-- ·¢ÊÀ½ç¹«¸æ
			if nType == 0  then
				str = format("#{_INFOUSR%s}#P dçn d¡t ğµi ngû tÕi #GNông trß¶ng Dã Trß #Ptiêu di®t Dã Trß Thü Lînh #{_BOSS20}#P.",szLeaderName)
			else
				str = format("#{_INFOUSR%s}#P dçn d¡t ğµi ngû tÕi #GNông trß¶ng Dã Trß #Pdi®t tr× ğ¥u sö #{_BOSS21}#P, cu¯i cùnb bình ±n tr§n phong ba này.",szLeaderName)
			end
			BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
			x402105_TipAllHuman(sceneId,"Dã Trß bÕo loÕn Kªt thúc sau 180 giây nØa.")
		end
	end
	
	if nStep == 3  then
		local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 13)
		if LuaFnGetCurrentTime()-nPreTime >= 165  then
			x402105_TipAllHuman(sceneId,"Dã Trß bÕo loÕn Kªt thúc sau 15 giây nØa.")
			LuaFnSetCopySceneData_Param(sceneId, 11, 4)
		end
	end
	if nStep == 4  then
		local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 13)
		if LuaFnGetCurrentTime()-nPreTime >= 175  then
			x402105_TipAllHuman(sceneId,"Dã Trß bÕo loÕn Kªt thúc sau 5 giây nØa.")
			LuaFnSetCopySceneData_Param(sceneId, 11, 5)
		end
	end
	
	if nStep == 5  then
		local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 13)
		if LuaFnGetCurrentTime()-nPreTime >= 30  then
			-- ÈÃËùÓĞÈËÀë¿ª³¡¾°
			local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
			if nHumanNum < 1 then
				return
			end
			local PlayerId = 0
			for i=0, nHumanNum-1  do
				PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
				NewWorld( sceneId, PlayerId, x402105_g_Back_SceneId, x402105_g_Back_X, x402105_g_Back_Z)
			end
			LuaFnSetCopySceneData_Param(sceneId, 11, 7)
		end
	end
	
end

--**********************************
--x402105_CreateMonster_1
--**********************************
function x402105_CreateMonster_1(sceneId)
	local mylevel = LuaFnGetCopySceneData_Param(sceneId,8)
	local nInilevel = LuaFnGetCopySceneData_Param(sceneId,9)
	
	local nMonterID = 0
	if nInilevel >= 11 then
	   nMonterID = x402105_g_MonsterInfo_1.id + nInilevel - 11 + 30000
	else
	   nMonterID = x402105_g_MonsterInfo_1.id + nInilevel - 1
	end
	
	for i, Npc in x402105_g_MonsterPos  do
		local nNpcId = LuaFnCreateMonster(sceneId, 
																		 nMonterID, 
																		 Npc.x, 
																		 Npc.z,	
																		 x402105_g_MonsterInfo_1.ai, 
																		 x402105_g_MonsterInfo_1.aif, 
																		 402105)
	end
end

--**********************************
--x402105_CreateMonster_2
--**********************************
function x402105_CreateMonster_2(sceneId)
	local mylevel = LuaFnGetCopySceneData_Param(sceneId,8)
	local nInilevel = LuaFnGetCopySceneData_Param(sceneId,9)
	
	local nMonterID = 0
	if nInilevel >= 11 then
	   nMonterID = x402105_g_BossInfo_1.id + nInilevel - 11 + 30000
	else
	   nMonterID = x402105_g_BossInfo_1.id + nInilevel - 1
	end
	
	local nNpcId = LuaFnCreateMonster( sceneId, 
																		nMonterID, 
																		x402105_g_BossInfo_1.x, 
																		x402105_g_BossInfo_1.z,	
																		x402105_g_BossInfo_1.ai, 
																		x402105_g_BossInfo_1.aif, 
																		x402105_g_BossInfo_1.script)
	SetCharacterTitle(sceneId, nNpcId, "Tiêm Nha Vß½ng")
	x402105_TipAllHuman(sceneId, "Phát hi®n Tiêm Nha Dã Trß Vß½ng.")
																		
	-- Ò»¸ö¿ÉÄÜËæ»úË¢³öµÄboss
	local nRand = random(100)
	if nRand <= x402105_g_BossRand_2   then
		LuaFnSetCopySceneData_Param(sceneId,12,1)
		
		nMonterID = 0
	  if nInilevel >= 11 then
	    nMonterID = x402105_g_BossInfo_2.id + nInilevel - 11 + 30000
	  else
	    nMonterID = x402105_g_BossInfo_2.id + nInilevel - 1
	  end
	
		local nNpcId = LuaFnCreateMonster( sceneId, 
																			nMonterID, 
																			x402105_g_BossInfo_2.x, 
																			x402105_g_BossInfo_2.z,	
																			x402105_g_BossInfo_2.ai, 
																			x402105_g_BossInfo_2.aif, 
																			x402105_g_BossInfo_2.script)
		SetCharacterTitle(sceneId, nNpcId, "Thiên Niên Thiên Thánh Thú")
		-- Èç¹ûË¢³öÕâ¸öËæ»úboss£¬¾Í·¢ÊÀ½ç¹«¸æ
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
		local str = ""
		
		str = format("#P— #{_INFOUSR%s}#P dçn d¡t ğµi ngû, · Thánh Thú S½n tr¤n áp ğàn Dã Trß th¡ng lşi, ğµt nhiên nhäy ra #{_BOSS21}.",szLeaderName)
		BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)

	end
	
end

