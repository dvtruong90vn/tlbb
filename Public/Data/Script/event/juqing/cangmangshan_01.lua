--200030
--TÕi NhÕn Nam Ò®ÂÉÄª¸çtoÕ ðµ °ï×éÏÂ,½øÈëÒ¹¼ätoÕ ðµ ²ÔÃ£É½

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200030_g_ScriptId = 200030

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200030_g_CopySceneName = "Thß½ng Mang S½n"

x200030_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200030_g_CopySceneMap = "cangmang_1.nav"
x200030_g_Exit = "cangmang_1.ini"
x200030_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x200030_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200030_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200030_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200030_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x200030_g_NoUserTime = 300				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x200030_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200030_g_Fuben_X = 102					--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x200030_g_Fuben_Z = 19					--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x200030_g_Back_X = 66					--Ô´³¡¾°Î»ÖÃX
x200030_g_Back_Z = 56					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200030_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾ÝÍæ¼ÒtoÕ ðµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ðµ ¸±±¾
	x200030_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200030_OnEnumerate( sceneId, selfId, targetId )
	
	--Íê¼ÒÄÜ¹»½øÈëÒ¹¼ätoÕ ðµ ¸±±¾toÕ ðµ Ç°ÌáÌõ¼þ
	-- 0,Èç¹ûÍæ¼ÒÒÑ¾­½Óµ½ÁË29,»òÕßÍê³ÉÁË29,¾Í²»ÄÜÔÙ½øÈëCái này ¸±±¾
	if IsHaveMission( sceneId, selfId, 29 ) > 0 then
		return 0
	end
	if IsMissionHaveDone(sceneId, selfId, 29) > 0   then
		return 0
	end

	-- 1,ÓµÓÐÈÎÎñºÅÎª26toÕ ðµ ÈÎÎñ,
	if IsHaveMission( sceneId, selfId, 26 ) > 0 then
		AddNumText( sceneId, x200030_g_ScriptId, "Ðªn Thß½ng Mang S½n (ðêm)", 10 ,-1 )
		return 0
	end

	-- 2,Ö»ÒªÍæ¼ÒÓÐ27ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 27 ) > 0 then
		AddNumText( sceneId, x200030_g_ScriptId, "Ðªn Thß½ng Mang S½n (ðêm)", 10 ,-1 )
		return 0
	end
	
	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË26,Ã»ÓÐ27,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 26) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 27) < 1   then
			if IsHaveMission( sceneId, selfId, 27 ) < 1 then
				AddNumText( sceneId, x200030_g_ScriptId, "Ðªn Thß½ng Mang S½n (ðêm)", 10 ,-1  )
				return 0
			end
		end
	end

	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË26,Ã»ÓÐ28,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 26) > 0   then
		if IsMissionHaveDone(sceneId, selfId, 28) < 1   then
			if IsHaveMission( sceneId, selfId, 28 ) < 1 then
				AddNumText( sceneId, x200030_g_ScriptId, "Ðªn Thß½ng Mang S½n (ðêm)", 10 ,-1  )
				return 0
			end
		end
	end
	
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200030_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÐúng·ñÒª½øÈë¸±±¾
--**********************************
function x200030_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200030_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200030_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200030_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "cangmang_1.nav"); --µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200030_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200030_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200030_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200030_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBosstoÕ ðµ ÊýÁ¿
	
	-- ¾çÇéÓÃµ½toÕ ðµ ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	--ÉèÖÃ³¡¾°ÖÐtoÕ ðµ ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, "cangmang_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "cangmang_1_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x200030_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾toÕ ðµ ¹æÔò
	-- 1,Èç¹ûCái này ÎÄ¼þÃ»ÓÐ×é¶Ó,¾Í´«ËÍCái này ÎÄ¼þ×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,µ«ÐúngÍæ¼Ò²»Ðúng¶Ó³¤,¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3,Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,²¢ÇÒCái này Íí¼äÐúng¶Ó³¤,¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑmµt Æð½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
		return
	end

	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓÐ¶ÓÎé
		NewWorld( sceneId, leaderObjId, destsceneId, x200030_g_Fuben_X, x200030_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200030_g_Fuben_X, x200030_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x200030_g_Fuben_X, x200030_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x200030_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x200030_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200030_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓÐThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200030_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌÐø
--**********************************
function x200030_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200030_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200030_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200030_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200030_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200030_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x200030_OnCopySceneTimer( sceneId, nowTime )
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) ;--¿ØÖÆËµ»°
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) ;--¿ØÖÆËµ¹ý»°
	
	local selfId = LuaFnGetCopySceneData_Param(sceneId, 20)
	
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9);--Ê±¼ä
	
	-- µÚmµt ´ÎtoÕ ðµ ¶Ô°× ÌìÊ±²»ÈçµØÀû Hoàn t¤t nhi®m vøtoÕ ðµ Ê±ºò´¥·¢
	if nStep1==1 then
		--PrintNum(10)
		if nStep2==0 then
			-- Tiêu Phong paopao
			CallScriptFunction((200060), "Paopao",sceneId, "Tiêu Phong", "Thß½ng Mang S½n", "#{JQ_PaoPao_83}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end
			
		elseif nStep2==2 then
			-- Tiêu Phong paopao
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t H°ng C½", "Thß½ng Mang S½n", "#{JQ_PaoPao_84}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==3 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			end
			
		elseif nStep2==4 then
			-- Tiêu Phong paopao
			CallScriptFunction((200060), "Paopao",sceneId, "Gia Lu§t H°ng C½", "Thß½ng Mang S½n", "#{JQ_PaoPao_85}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		end
	end
end

