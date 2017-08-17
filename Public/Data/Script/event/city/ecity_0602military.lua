-- µ¥ÈË¸±±¾

-- ¹ú·ÀÈÎÎñ,×·²¶ÅÑÍ½
--MisDescBegin
-- ½Å±¾ºÅ
x600032_g_ScriptId = 600032

--ÈÎÎñºÅ
x600032_g_MissionId = 1109

--Møc tiêu nhi®m vønpc
x600032_g_Name = "Võ ĞÕi Uy"

--ÈÎÎñ¹éÀà
x600032_g_MissionKind = 50

--ĞÆng c¤p nhi®m vø 
x600032_g_MissionLevel = 10000

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600032_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600032_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç

--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ği¬mµ½toÕ ğµ ½Å±¾ºÅ
--ÈÎÎñÎÄ±¾ÃèÊö
x600032_g_MissionName = "Truy b¡t kë phän bµi"
x600032_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600032_g_MissionTarget = "    Ğ® tØ bang ta %s%1s ğã ğánh c¡p tình báo quan tr÷ng cüa b±n thành, các hÕ hãy %2n, ngß¶i s¨ giúp ğŞ hành ğµng cüa chúng ta. "	--Møc tiêu nhi®m vø
x600032_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"						--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600032_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "						--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x600032_g_MissionRound = 79

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600032_g_CityMissionScript = 600001
x600032_g_MilitaryScript = 600030

--¸ñÊ½×Ö·û´®ÖĞtoÕ ğµ Ë÷Òı, ±íÊ¾´Ó4¿ªÊ¼,ºó¶àÉÙÎ»ÊÓSetMissionByIndex(...)toÕ ğµ ¶àÉÙ¶ø¶¨
x600032_g_StrForePart=5
x600032_g_StrList = {[0] = "Tß Không ",
										 [1] = "Tß Mã ", 
										 [2] = "Âu Dß½ng ", 
										 [3] = "Gia Cát ", 
										 [4] = "Ğan Vu ", 
										 [5] = "Giáp Nhi ", 
										 [6] = "Ti¬u Giáp ", 
										 [7] = "„t Nhi ", 
										 [8] = "Ti¬u „t ", 
										 [9] = "Bính Nhi ",
										 }

								 			
--MisDescEnd

x600032_g_EnterPos = {{x=28,z=52},{x=19,z=42},{x=45,z=47},
								 			{x=42,z=46},{x=26,z=46},{x=14,z=40},
								 			{x=45,z=48},{x=29,z=49},{x=42,z=47}}

-- ÕâÀïtoÕ ğµ NavÎÄ¼şºÍ³¡¾°TênC¥n ÊÖ¶¯¶ÔÓ¦
x600032_g_CopySceneMap = {"tongrenxiang_1.nav","guangmingdong_1.nav","jiujiao_1.nav",
											 "lingxingfeng_1.nav","taohuazhen_1.nav","wushendong_1.nav",
											 "tadi_1.nav","zhemeifeng_1.nav","gudi_1.nav"}
x600032_g_CopyName  = {"Ğ°ng Nhân HÕng","Quang Minh ğµng","H¥m rßşu",
											 "Linh Tính Phong","Ğào Hoa Tr§n","Ngû Th¥n Ğµng",
											 "Chân tháp","Chiªt Mai Phong","C¯c ğ¸a"}
x600032_g_CopyNpc		= {"tongrenxiang_1_monster","guangmingdong_1_monster","jiujiao_1_monster",
											 "lingxingfeng_1_monster","taohuazhen_1_monster","wushendong_1_monster",
											 "tadi_1_monster","zhemeifeng_1_monster","gudi_1_monster"}

x600032_g_CopyArea	= {"tongrenxiang_1_area.ini","guangmingdong_1_area.ini","jiujiao_1_area.ini",
											 "lingxingfeng_1_area.ini","taohuazhen_1_area.ini","wushendong_1_area.ini",
											 "tadi_1_area.ini","zhemeifeng_1_area.ini","gudi_1_area.ini"}
--¸±±¾Ãû³Æ
x600032_g_CopySceneName = "Í­ÈËÏï"
x600032_g_CopySceneType = FUBEN_GUOFANG	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
--x600032_g_CopySceneMap = "tadi_1.nav"
x600032_g_LimitMembers = 1					--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x600032_g_TickTime = 5							--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x600032_g_LimitTotalHoldTime = 480	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x600032_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,Nhi®m vø hoàn thành
x600032_g_CloseTick = 3							--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x600032_g_NoUserTime = 10						--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x600032_g_DeadTrans = 0							--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x600032_g_Fuben_X = 0								--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x600032_g_Fuben_Z = 0								--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x600032_g_Back_X = 47								--Ô´³¡¾°Î»ÖÃX
x600032_g_Back_Z = 92								--Ô´³¡¾°Î»ÖÃZ
x600032_g_NeedMonsterGroupID = 1		--Boss toÕ ğµ ×éºÅ
x600032_g_TotalNeedKillBoss = 11		--C¥n É±ËÀBossÊıÁ¿


--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600032_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾

	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) > 0 then
		--  ğÕt ğßşcµ±Ç°Ñ¡ÖĞtoÕ ğµ NpctoÕ ğµ Tên
		local szCurNpc = GetName(sceneId,targetId)
		
		-- ÈÎÎñÖĞ¼ÇÂ¼toÕ ğµ NpctoÕ ğµ Tên
		local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
		local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7)
		
		local szNpcName = ""
		if nNpcId > 0  then
			_,szNpcName = GetNpcInfoByNpcId(sceneId,nNpcId)
			
			if szCurNpc == szNpcName   then  -- ÕÒ¶ÔÈËÁË
				BeginEvent( sceneId )
					AddText( sceneId, "#YTruy ğu±i kë phän bµi#W" )
					AddText( sceneId, "  R¤t t¯t r¤t t¯t, gi¶ ta s¨ ğßa các hÕ v« khu vñc này, hy v÷ng các hÕ có th¬ giäi quyªt luôn sñ vi®c này!" )
				EndEvent()
				DispatchEventList( sceneId, selfId, targetId )
				
				-- ÉèÖÃNhi®m vø hoàn thành±ê¼Ç
				local nCopyId = GetMissionParam(sceneId, selfId, misIndex, 4)
				x600032_AcceptEnterCopyScene( sceneId, selfId, nCopyId )
				return
			end
		end
		
	end

	if GetName( sceneId, targetId ) ~= x600032_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600032_g_MissionName )
			AddText( sceneId, x600032_g_ContinueInfo )
		EndEvent( )
		local bDone = x600032_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600032_g_ScriptId, x600032_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600032_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600032_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600032_OnAccept( sceneId, selfId, targetId )
		end
	end
	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600032_OnEnumerate( sceneId, selfId, targetId )

	if GetName( sceneId, targetId ) ~= x600032_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) > 0 then
		AddNumText( sceneId, x600032_g_ScriptId, x600032_g_MissionName, 2 )
	end
	
end

--**********************************
--Tiªp thø
--**********************************
function x600032_OnAccept( sceneId, selfId, targetId )
	
	if GetName( sceneId, targetId ) ~= x600032_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
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

	nNpcId,szNpcName,szScene,nScene,nPosX,nPosZ,szNpcDesc,nSex = GetOneMissionNpc(25)

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId, selfId, x600032_g_MissionId, x600032_g_ScriptId, 1, 0, 0 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) <= 0 then
		return
	end

	-- Ëæ»ú³öÍæ¼ÒtoÕ ğµ Tên
	local nXing = random( 0, 4 )
	local nMing = random( 5, 9 )
	
	-- ÉèÖÃCái này ÈÎÎñC¥n ¹Ø×¢NPC
	SetMissionEvent( sceneId,selfId, x600032_g_MissionId, 4)
	
	-- ¼ÇÂ¼ÏÂËæ»úÑ¡ÖĞtoÕ ğµ NpcId
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
	SetMissionByIndex(sceneId, selfId, misIndex, 4, nScene)
	SetMissionByIndex(sceneId, selfId, misIndex, 5, nXing)
	SetMissionByIndex(sceneId, selfId, misIndex, 6, nMing)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 7, nNpcId)
	
	-- ÉèÖÃµÚ3Î»ÎªÍê³É±êÖ¾
	SetMissionByIndex(sceneId, selfId, misIndex, 3, 0)

	CallScriptFunction( x600032_g_MilitaryScript, "OnAccept", sceneId, selfId, targetId, x600032_g_ScriptId )

	--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	local nTaSex
	if 	nSex == 0  then
		nTaSex = "muµi ¤y "
	else
		nTaSex = "huynh ¤y "
	end
	
	local missionInfo = "    Ğ® tØ cüa bang chúng ta " .. x600032_g_StrList[nXing] .. x600032_g_StrList[nMing] ..  ", ğánh c¡p tình báo quan tr÷ng cüa thành ph¯ này, các hÕ c¤p t¯c " .. szScene .. "tìm th¤y " .. szNpcName .. "," .. nTaSex .. "s¨ h² trş hành ğµng cüa chúng ta"
	BeginEvent( sceneId )
		AddText( sceneId, "Các hÕ ğã nh§n nhi®m vø: " .. x600032_g_MissionName )
		AddText( sceneId, missionInfo )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600032_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600032_g_MilitaryScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600032_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600032_g_MissionId )
	if  GetMissionParam(sceneId, selfId, misIndex, 0) >0  then
		return 1
	end 
	return 0
end

--**********************************
--·ÅÆúÈÎÎñ
--**********************************
function x600032_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ		
	CallScriptFunction( x600032_g_MilitaryScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600032_OnKillObject( sceneId, selfId, objdataId ,objId )

	local monsterName = GetName(sceneId, objId)
	
	-- Ê¹ÓÃÈÎÎñÖĞ¼ÇÂ¼toÕ ğµ À´ÅĞ¶ÏĞúng²»ĞúngÉ±¶ÔÁËÈË
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600032_g_MissionId )
	local nXing = GetMissionParam(sceneId, selfId, misIndex, 5)
	local nMing = GetMissionParam(sceneId, selfId, misIndex, 6)
	local szNpcName = x600032_g_StrList[nXing] .. x600032_g_StrList[nMing]

	if monsterName == szNpcName   then
		-- ¸øÍæ¼ÒÌí¼ÓÏà¹ØtoÕ ğµ ÈÎÎñÎïÆ·
		-- ÉèÖÃNhi®m vø hoàn thành±ê¼Ç
		SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
		x600032_NotifyFailTips( sceneId, selfId, "Ğã giªt chªt " .. monsterName .. ": 1/1"  )
		LuaFnSetCopySceneData_Param( sceneId, 11, 1 )
		LuaFnSetCopySceneData_Param( sceneId, 15, selfId )

	end
end

--**********************************
--¼ÌĞø
--**********************************
function x600032_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600032_g_MissionName )
		AddText( sceneId, x600032_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600032_g_ScriptId, x600032_g_MissionId )
end

--**********************************
--Ìá½»
--**********************************
function x600032_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if GetName( sceneId, targetId ) ~= x600032_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end
	
	if x600032_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600032_g_MilitaryScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
-- 
--**********************************
function x600032_OnLockedTarget( sceneId, selfId, targetId, missionIndex )

	--ÅĞ¶Ïµ±Ç°toÕ ğµ ³¡¾°Ğúng²»Ğúng¸±±¾,Ğúng¸±±¾¾ÍTr· v«
	if LuaFnGetSceneType(sceneId) == 1  then
		return
	end
	
	--  ğÕt ğßşcµ±Ç°Ñ¡ÖĞtoÕ ğµ NpctoÕ ğµ Tên
	local szCurNpc = GetName(sceneId,targetId)
	
	-- ÈÎÎñÖĞ¼ÇÂ¼toÕ ğµ NpctoÕ ğµ Tên
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
	local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7)
	
	local szNpcName = ""
	_,szNpcName = GetNpcInfoByNpcId(sceneId,nNpcId)
	
	if GetMissionParam(sceneId, selfId, misIndex, x600032_g_IsMissionOkFail) ~= 1   then
		if szCurNpc == szNpcName   then  -- ÕÒ¶ÔÈËÁË
			TAddNumText(sceneId, x600032_g_ScriptId, x600032_g_MissionName, 2, -1,x600032_g_ScriptId);
			TDispatchEventList(sceneId, selfId, targetId)
			return 1
		end
		return 0
	end
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x600032_AcceptEnterCopyScene( sceneId, selfId, nCopyId )
	
	if IsHaveMission( sceneId, selfId, x600032_g_MissionId ) > 0 then					--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600032_g_MissionId )		
		SetMissionByIndex( sceneId, selfId, misIndex, x600032_g_IsMissionOkFail, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ		
						
		x600032_MakeCopyScene( sceneId, selfId, nCopyId )
	end

end

function x600032_MakeCopyScene( sceneId, selfId, nCopyId )

	--  ğÕt ğßşcÍæ¼ÒtoÕ ğµ ¸±±¾toÕ ğµ ºÅ
	local mylevel = GetLevel( sceneId, selfId )
	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	
	--¸ù¾İÓÎÏ·toÕ ğµ Ëæ»úÊıÀ´Xác nh§n³¡¾°¼°ÆäÈËÎï
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
	local nScene = GetMissionParam(sceneId, selfId, misIndex, 4);
	local nXing  = GetMissionParam(sceneId, selfId, misIndex, 5);
	local nMing  = GetMissionParam(sceneId, selfId, misIndex, 6);
	local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7);
	local nMenpai = -1;
	
	if     nScene == 9    then
		nMenpai = 1
	elseif nScene == 10   then
		nMenpai = 3
	elseif nScene == 11   then
		nMenpai = 2
	elseif nScene == 12   then
		nMenpai = 4
	elseif nScene == 13   then
		nMenpai = 7
	elseif nScene == 14   then
		nMenpai = 9
	elseif nScene == 15   then
		nMenpai = 5
	elseif nScene == 16   then
		nMenpai = 6
	elseif nScene == 17   then
		nMenpai = 8
	end
	
	if nMenpai<1 or nMenpai>9    then
		return
	end
	
	local nPox_X
	local nPos_Z
	nPox_X = GetHumanWorldX(sceneId,selfId)
	nPos_Z = GetHumanWorldZ(sceneId,selfId)

	LuaFnSetSceneLoad_Map( sceneId, x600032_g_CopySceneMap[nMenpai] )						--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600032_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600032_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600032_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600032_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
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

	LuaFnSetSceneLoad_Area( sceneId, x600032_g_CopyArea[nMenpai] )
	LuaFnSetSceneLoad_Monster( sceneId, x600032_g_CopyNpc[nMenpai] .. "_" .. tostring(iniLevel) .. ".ini")

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	
	if bRetSceneID > 0 then
		x600032_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600032_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x600032_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600032_g_MissionId ) > 0 then			--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600032_g_MissionId )

		-- Ñ°ÕÒ¸÷cái²¿·ÖtoÕ ğµ Âä½Å ği¬m
		local misIndex = GetMissionIndexByID(sceneId,leaderObjId,x600032_g_MissionId)
		local nScene = GetMissionParam(sceneId, leaderObjId, misIndex, 4)
		
		if     nScene == 9    then
			nMenpai = 1
		elseif nScene == 10   then
			nMenpai = 3
		elseif nScene == 11   then
			nMenpai = 2
		elseif nScene == 12   then
			nMenpai = 4
		elseif nScene == 13   then
			nMenpai = 7
		elseif nScene == 14   then
			nMenpai = 9
		elseif nScene == 15   then
			nMenpai = 5
		elseif nScene == 16   then
			nMenpai = 6
		elseif nScene == 17   then
			nMenpai = 8
		end
		
		local nFuben_X = x600032_g_EnterPos[nMenpai].x
		local nFuben_Z = x600032_g_EnterPos[nMenpai].z
		
		NewWorld( sceneId, leaderObjId, destsceneId, nFuben_X, nFuben_Z )
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x600032_OnPlayerEnter( sceneId, selfId )

	LuaFnSetCopySceneData_Param( sceneId, 8, LuaFnGetCopySceneData_Param( sceneId, 8 ) + 1 )
	
	-- C¥n TÕi ÕâÀïÕûÀí¹ÖÎïtoÕ ğµ mµt Ğ©ÌØ ği¬m
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do

		local nMonsterId = GetMonsterObjID(sceneId,ii)
		if GetName(sceneId, nMonsterId)  == "°ï»áÅÑÍ½"  then
		
		-- °ÑCái này ¹ÖÎïtoÕ ğµ TênÉèÖÃÎªC¥n toÕ ğµ Tên,ºÇºÇ
		local misIndex = GetMissionIndexByID(sceneId,selfId,x600032_g_MissionId)
		local nXing = GetMissionParam(sceneId, selfId, misIndex, 5)
		local nMing = GetMissionParam(sceneId, selfId, misIndex, 6)
		SetCharacterName(sceneId, nMonsterId, x600032_g_StrList[nXing] .. x600032_g_StrList[nMing] )
		end
	end

end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x600032_OnHumanDie( sceneId, selfId, killerId )
	-- Íæ¼ÒËÀÍö,²»É¾³ıÈÎÎñ,

	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )

end

function x600032_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x600032_OnCopySceneTimer( sceneId, nowTime )
	-- Èç¹ûÍæ¼ÒÍê³ÉÁËÈÎÎñ,¾Í¿ªÊ¼µ¹¼ÆÊ±,Ö®ºó´«Íæ¼Ò³öÈ¥
	if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 3  then
		return
	end
	
	local HumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	
	if HumanCount < 1  then
		return
	end
	
	local HumanId = LuaFnGetCopyScene_HumanObjId(sceneId, 0)

	if LuaFnGetCopySceneData_Param( sceneId, 11 ) == 1   then
	
		if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 0  then
			LuaFnSetCopySceneData_Param( sceneId, 12, 1 )
			LuaFnSetCopySceneData_Param( sceneId, 13, nowTime )
			x600032_NotifyFailTips(sceneId, HumanId,"Nhi®m vø hoàn thành, 10 giây sau các hÕ s¨ ğßşc ğßa ra khöi ğây")
		end
		
		if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 1  then
			if nowTime - LuaFnGetCopySceneData_Param( sceneId, 13 ) > 5000  then
				LuaFnSetCopySceneData_Param( sceneId, 12, 2 )
				x600032_NotifyFailTips(sceneId, HumanId,"5 giây sau các hÕ s¨ ğßşc ğßa ra khöi ğây")
			end
		end
		
		if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 2  then   
			if nowTime - LuaFnGetCopySceneData_Param( sceneId, 13 ) > 10000  then
				LuaFnSetCopySceneData_Param( sceneId, 12, 3 )
				x600032_BackToCity( sceneId, HumanId )
			end
		end
		
	end
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600032_BackToCity( sceneId, selfId )

	local nMonsterScene = LuaFnGetCopySceneData_Param( sceneId, 6 )
	local nPos_X = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local nPos_Z = LuaFnGetCopySceneData_Param( sceneId, 8 )

	-- ´«ËÍÍæ¼Òµ½Cái này Î»ÖÃÈ¥
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, nMonsterScene, nPos_X, nPos_Z)
end
