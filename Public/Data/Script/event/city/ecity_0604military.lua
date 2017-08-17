-- µ¥ÈË¸±±¾

-- ¹ú·ÀÈÎÎñ ´ÌÉ±Ì°¹Ù
--MisDescBegin
-- ½Å±¾ºÅ
x600034_g_ScriptId = 600034

--ÈÎÎñºÅ
x600034_g_MissionId = 1109

--Møc tiêu nhi®m vønpc
x600034_g_Name = "Võ ĞÕi Uy"

--ÈÎÎñ¹éÀà
x600034_g_MissionKind = 50

--ĞÆng c¤p nhi®m vø 
x600034_g_MissionLevel = 10000

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600034_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600034_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç

--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ği¬mµ½toÕ ğµ ½Å±¾ºÅ
--ÈÎÎñÎÄ±¾ÃèÊö
x600034_g_MissionName = "Ám sát tham quan"
x600034_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600034_g_MissionTarget = "    Quan tham %s%s hi®n tác %s, lão áp bÑc bách tính, tiªng oán h§n thäm thiªt, ta ğã an bài %n hi¬u rõ ğßşc tình báo, nhi®m vø hành xØ lão giao cho ngß½i ğ¤y. "	--Møc tiêu nhi®m vø
x600034_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"						--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600034_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "						--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x600034_g_MissionRound = 79

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600034_g_CityMissionScript = 600001
x600034_g_MilitaryScript = 600030

x600034_g_StrForePart=4

x600034_g_StrList = {[0]="Lı",
										 [1]="Tri®u",
										 [2]="Châu",
										 [3]="Hàn",
										 [4]="Ğ£ng",
										 [5]="Liêm",
										 [6]="Khiªt",
										 [7]="Chính",
										 [8]="C¥n",
										 [9]="Vån",
										 [10]="Th¸ lang",
										 [11]="Trung thß th¸ lang",
										 [12]="Khu m§t vi®n sØ",
										 [13]="Khu m§t vi®n phó sØ",
										 [14]="Ngñ sØ trung th×a",
								  	 [15]="Ngñ sØ ğÕi phu",
								  	 [16]="Hñu gián ngh¸ ğÕi phu",
								  	 [17]="Tä gián ngh¸ ğÕi phu",
								  	 [18]="Trung thß sä nhân",
										 }

--MisDescEnd

x600034_g_Pos = {{x=10,z=11},{x=31,z=13},{x=52,z=11},
								 {x=31,z=27},{x=14,z=34},{x=48,z=34},
								 {x=31,z=40},{x=14,z=49},{x=31,z=45},
								 {x=50,z=49}}

--¸±±¾Ãû³Æ
x600034_g_CopySceneName = "Nha Môn"
x600034_g_CopySceneType = FUBEN_GUOFANG	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x600034_g_CopySceneMap = "yamen.nav"
x600034_g_LimitMembers = 1					--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x600034_g_TickTime = 5							--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x600034_g_LimitTotalHoldTime = 480	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x600034_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,Nhi®m vø hoàn thành
x600034_g_CloseTick = 3							--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x600034_g_NoUserTime = 10						--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x600034_g_DeadTrans = 0							--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x600034_g_Fuben_X = 50							--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x600034_g_Fuben_Z = 10							--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x600034_g_Back_X = 47								--Ô´³¡¾°Î»ÖÃX
x600034_g_Back_Z = 92								--Ô´³¡¾°Î»ÖÃZ
x600034_g_NeedMonsterGroupID = 1		--Boss toÕ ğµ ×éºÅ
x600034_g_TotalNeedKillBoss = 11		--C¥n É±ËÀBossÊıÁ¿



--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600034_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾

	if IsHaveMission( sceneId, selfId, x600034_g_MissionId ) > 0 then
		--  ğÕt ğßşcµ±Ç°Ñ¡ÖĞtoÕ ğµ NpctoÕ ğµ Tên
		local szCurNpc = GetName(sceneId,targetId)
		
		-- ÈÎÎñÖĞ¼ÇÂ¼toÕ ğµ NpctoÕ ğµ Tên
		local misIndex = GetMissionIndexByID(sceneId,selfId,x600034_g_MissionId)
		local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7)
		
		local szNpcName = ""
		if nNpcId > 0  then
			_,szNpcName = GetNpcInfoByNpcId(sceneId,nNpcId)
			
			if szCurNpc == szNpcName   then  -- ÕÒ¶ÔÈËÁË
				BeginEvent( sceneId )
					AddText( sceneId, "#YÁm sát tham quan#W" )
					AddText( sceneId, "  R¤t t¯t r¤t t¯t, gi¶ ta s¨ ğßa các hÕ ğªn nha môn cüa lão, hy v÷ng các hÕ s¨ giäi quyªt ğÑt ğuôi con sâu m÷t này" )
				EndEvent()
				DispatchEventList( sceneId, selfId, targetId )
				
				-- ÉèÖÃNhi®m vø hoàn thành±ê¼Ç
				x600034_AcceptEnterCopyScene( sceneId, selfId )
				return
			end
		end
	end

	if GetName( sceneId, targetId ) ~= x600034_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600034_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600034_g_MissionName )
			AddText( sceneId, x600034_g_ContinueInfo )
		EndEvent( )
		local bDone = x600034_CheckSubmit( sceneId, selfId )
		
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600034_g_ScriptId, x600034_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600034_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600034_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600034_OnAccept( sceneId, selfId, targetId )
		end
	end
	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600034_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600034_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end
   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600034_g_MissionId ) > 0 then
		AddNumText( sceneId, x600034_g_ScriptId, x600034_g_MissionName, 2 )
	end
end

--**********************************
--Tiªp thø
--**********************************
function x600034_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600034_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end
	-- È¡ ği¬mmµt cáiËæ»útoÕ ğµ ½»ÈÎÎñtoÕ ğµ ÈË
	local nLevel = GetLevel(sceneId, selfId)
	local nNpcId = 0
	local szNpcName = ""
	local szScene = ""
	local nScene = 0
	local nPosX = 0
	local nPosZ = 0
	local szNpcDesc =""
	local nSex = 0
	
	--´ÓMissionNpc_HashTable.txtÖĞ ğÕt ğßşcNpcÄÚÈİ,
	nNpcId,szNpcName,szScene,nScene,nPosX,nPosZ,szNpcDesc,nSex = GetOneMissionNpc(42)

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId, selfId, x600034_g_MissionId, x600034_g_ScriptId, 1, 0, 0 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600034_g_MissionId ) <= 0 then
		return
	end

	-- Ëæ»ú³öÍæ¼ÒtoÕ ğµ Âä½Å ği¬m
	local nPos  = random( getn(x600034_g_Pos) )

	-- Ëæ»ú³öÍæ¼ÒtoÕ ğµ Tên
	local nXing = random( 0, 4 )
	local nMing = random( 5, 9 )
	local nZhi  = random( 10, 18 )

	-- ÉèÖÃCái này ÈÎÎñC¥n ¹Ø×¢NPC
	SetMissionEvent( sceneId,selfId, x600034_g_MissionId, 4)
	
	-- ¼ÇÂ¼ÏÂËæ»úÑ¡ÖĞtoÕ ğµ NpcId
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600034_g_MissionId)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 3, nPos)
	SetMissionByIndex(sceneId, selfId, misIndex, 4, nXing)
	SetMissionByIndex(sceneId, selfId, misIndex, 5, nMing)
	SetMissionByIndex(sceneId, selfId, misIndex, 6, nZhi)
	SetMissionByIndex(sceneId, selfId, misIndex, 7, nNpcId)

	CallScriptFunction( x600034_g_MilitaryScript, "OnAccept", sceneId, selfId, targetId, x600034_g_ScriptId )

	--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	local nTaSex
	if 	nSex == 0  then
		nTaSex = "muµi ¤y "
	else
		nTaSex = "huynh ¤y "
	end
	
	local missionInfo = "    Tham quan " .. x600034_g_StrList[nXing] .. x600034_g_StrList[nMing] ..  
											" hi®n · " .. x600034_g_StrList[nZhi] .. ", lão ta hà hiªp dân lành, tiªng oán than vang lên kh¡p n½i, ta ğã s¡p xªp "
											 .. szScene .. szNpcName .. " (" .. nPosX .. "," .. nPosZ .. 
											 ") tìm hi¬u ğßşc tình báo r°i, nhi®m vø ám sát lão giao cho các hÕ ğ¤y"

	BeginEvent( sceneId )
		AddText( sceneId, "Các hÕ ğã nh§n nhi®m vø: " .. x600034_g_MissionName )
		AddText( sceneId, missionInfo )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600034_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600034_g_MilitaryScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600034_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600034_g_MissionId )
	if  GetMissionParam(sceneId, selfId, misIndex, x600034_g_IsMissionOkFail) == 1  then
		return 1
	end 
	return 0
end

--**********************************
--·ÅÆúÈÎÎñ
--**********************************
function x600034_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x600034_g_MilitaryScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600034_OnKillObject( sceneId, selfId, objdataId ,objId )

	local monsterName = GetName(sceneId, objId)
	
	-- Ê¹ÓÃÈÎÎñÖĞ¼ÇÂ¼toÕ ğµ À´ÅĞ¶ÏĞúng²»ĞúngÉ±¶ÔÁËÈË
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600034_g_MissionId )
	local nXing = GetMissionParam(sceneId, selfId, misIndex, 4)
	local nMing = GetMissionParam(sceneId, selfId, misIndex, 5)
	local szNpcName = x600034_g_StrList[nXing] .. x600034_g_StrList[nMing]

	if monsterName == szNpcName   then
		-- ÉèÖÃNhi®m vø hoàn thành±ê¼Ç
		SetMissionByIndex(sceneId, selfId, misIndex, x600034_g_IsMissionOkFail, 1)
		
		x600034_NotifyFailTips( sceneId, selfId, "Ğã giªt chªt " .. monsterName .. ": 1/1"  )
		LuaFnSetCopySceneData_Param( sceneId, 11, 1 )
		LuaFnSetCopySceneData_Param( sceneId, 15, selfId )

	end
end

--**********************************
--¼ÌĞø
--**********************************
function x600034_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600034_g_MissionName )
		AddText( sceneId, x600034_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600034_g_ScriptId, x600034_g_MissionId )
end

--**********************************
--Ìá½»
--**********************************
function x600034_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600034_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end
	
	if x600034_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600034_g_MilitaryScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
-- 
--**********************************
function x600034_OnLockedTarget( sceneId, selfId, targetId, missionIndex )

	--ÅĞ¶Ïµ±Ç°toÕ ğµ ³¡¾°Ğúng²»Ğúng¸±±¾,Ğúng¸±±¾¾ÍTr· v«
	if LuaFnGetSceneType(sceneId) == 1  then
		return
	end

	--  ğÕt ğßşcµ±Ç°Ñ¡ÖĞtoÕ ğµ NpctoÕ ğµ Tên
	local szCurNpc = GetName(sceneId,targetId)
	
	-- ÈÎÎñÖĞ¼ÇÂ¼toÕ ğµ NpctoÕ ğµ Tên
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600034_g_MissionId)
	local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7)
	
	local szNpcName = ""
	_,szNpcName = GetNpcInfoByNpcId(sceneId,nNpcId)
	
	if GetMissionParam(sceneId, selfId, misIndex, x600034_g_IsMissionOkFail) ~= 1   then
		if szCurNpc == szNpcName   then  -- ÕÒ¶ÔÈËÁË
			TAddNumText(sceneId, x600034_g_ScriptId, "Ğßa ta ğªn nha môn", 10, -1,x600034_g_ScriptId); --[tx42329]
			TDispatchEventList(sceneId, selfId, targetId)
			return 1
		end
		return 0
	end
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x600034_AcceptEnterCopyScene( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x600034_g_MissionId ) > 0 then					--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600034_g_MissionId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600034_g_IsMissionOkFail, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
				
		x600034_MakeCopyScene( sceneId, selfId )		
		
	end
	
end

function x600034_MakeCopyScene( sceneId, selfId )

	local mylevel = GetLevel( sceneId, selfId )

	local nPox_X
	local nPos_Z
	nPox_X = GetHumanWorldX(sceneId,selfId)
	nPos_Z = GetHumanWorldZ(sceneId,selfId)

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600034_g_CopySceneMap )						--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600034_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600034_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600034_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600034_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 6, sceneId )				--±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param( sceneId, 7, nPox_X )					--±£´æµ±Ç°³¡¾°±àºÅ
	LuaFnSetCopySceneData_Param( sceneId, 8, nPos_Z )					--½øÈëtoÕ ğµ ÈË´Î

	-- Çå¿Õ¸±±¾±äÁ¿
	for k=9, 15  do
		LuaFnSetCopySceneData_Param( sceneId, k, 0 )
	end

	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
	
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, "yamen_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "yamen_monster_" .. tostring(iniLevel) .. ".ini" )
	--LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ
	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	
	if bRetSceneID > 0 then
		x600034_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600034_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x600034_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600034_g_MissionId ) > 0 then			--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600034_g_MissionId )

		--  ğÕt ğßşc½øÈë¸±±¾toÕ ğµ Î»ÖÃ
		local misIndex = GetMissionIndexByID(sceneId,leaderObjId,x600034_g_MissionId)
		local nPos = GetMissionParam(sceneId, leaderObjId, misIndex, 3)
		
		local nFuben_X = x600034_g_Pos[nPos].x
		local nFuben_Z = x600034_g_Pos[nPos].z
		
		NewWorld( sceneId, leaderObjId, destsceneId, nFuben_X, nFuben_Z )

	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x600034_OnPlayerEnter( sceneId, selfId )
	LuaFnSetCopySceneData_Param( sceneId, 8, LuaFnGetCopySceneData_Param( sceneId, 8 ) + 1 )

	-- C¥n TÕi ÕâÀïÕûÀí¹ÖÎïtoÕ ğµ mµt Ğ©ÌØ ği¬m
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "Quan viên"  then
		-- °ÑCái này ¹ÖÎïtoÕ ğµ TênÉèÖÃÎªC¥n toÕ ğµ Tên,ºÇºÇ
		local misIndex = GetMissionIndexByID(sceneId,selfId,x600034_g_MissionId)
		local nXing = GetMissionParam(sceneId, selfId, misIndex, 4)
		local nMing = GetMissionParam(sceneId, selfId, misIndex, 5)
		SetCharacterName(sceneId, nMonsterId, x600034_g_StrList[nXing] .. x600034_g_StrList[nMing] )
		end
	end

end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x600034_OnHumanDie( sceneId, selfId, killerId )
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )
end

function x600034_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x600034_OnCopySceneTimer( sceneId, nowTime )
	-- Èç¹ûÍæ¼ÒÍê³ÉÁËÈÎÎñ,¾Í¿ªÊ¼µ¹¼ÆÊ±,Ö®ºó´«Íæ¼Ò³öÈ¥
	if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 3  then
		return
	end
	
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËtoÕ ğµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1    then
		return
	end
	
	local selfId1 = LuaFnGetCopyScene_HumanObjId(sceneId, 0)
	
	if LuaFnGetCopySceneData_Param( sceneId, 11 ) == 1   then
	
		if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 0  then
			LuaFnSetCopySceneData_Param( sceneId, 12, 1 )
			LuaFnSetCopySceneData_Param( sceneId, 13, nowTime )
			if LuaFnIsObjValid(sceneId, selfId1) == 1 and LuaFnIsCanDoScriptLogic(sceneId, selfId1) == 1 then
				x600034_NotifyFailTips(sceneId, selfId1,"Nhi®m vø hoàn thành, 10 giây sau các hÕ s¨ ğßşc ğßa ra khöi ğây")
			end
		end
		
		if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 1  then
			if nowTime - LuaFnGetCopySceneData_Param( sceneId, 13 ) > 5000  then
				LuaFnSetCopySceneData_Param( sceneId, 12, 2 )
				if LuaFnIsObjValid(sceneId, selfId1) == 1 and LuaFnIsCanDoScriptLogic(sceneId, selfId1) == 1 then
					x600034_NotifyFailTips(sceneId, selfId1,"5 giây sau các hÕ s¨ ğßşc ğßa ra khöi ğây")
				end
			end
		end
		
		if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 2  then   
			if nowTime - LuaFnGetCopySceneData_Param( sceneId, 13 ) > 10000  then
				LuaFnSetCopySceneData_Param( sceneId, 12, 3 )
				if LuaFnIsObjValid(sceneId, selfId1) == 1 and LuaFnIsCanDoScriptLogic(sceneId, selfId1) == 1 then
					x600034_BackToCity( sceneId, selfId1 )
				end
			end
		end
		
	end
	
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600034_BackToCity( sceneId, selfId )

	local nMonsterScene = LuaFnGetCopySceneData_Param( sceneId, 6 )
	local nPos_X = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local nPos_Z = LuaFnGetCopySceneData_Param( sceneId, 8 )

	-- ´«ËÍÍæ¼Òµ½Cái này Î»ÖÃÈ¥
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, nMonsterScene, nPos_X, nPos_Z)
end
