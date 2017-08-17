--É±¹ÖÈÎÎñ(ËùÓĞÕâÒ»ÀàĞÍ¶¼Ê¹ÓÃÕâ¸öLUA£¬ĞŞ¸ÄÇë×¢ÒâÍ¨ÓÃĞÔ)

MOD_EVENT = 006672
x006666_g_duanyanqiId = 002016 --[tx43452]

x006666_g_IsMissionOkFail = 0							-- ÈÎÎñÍê³É±ê¼Ç

--ÈÎÎñ¶Î·ÖÀàÁĞ±í_MissType	1.É±¹ÖÈÎÎñ	2.ËÍĞÅÈÎÎñ	3.Ì½Ë÷ÈÎÎñ	4.Ñ°ÎïÈÎÎñ	5.»¤ËÍÈÎÎñ
x006666_g_MissionTypeList	=	{ {StartIdx = 1000000, EndIdx = 1009999, ScriptId = 006666},
															{StartIdx = 1010000, EndIdx = 1019999, ScriptId = 006668},
															{StartIdx = 1020000, EndIdx = 1029999, ScriptId = 006669},
															{StartIdx = 1030000, EndIdx = 1039999, ScriptId = 006667},
															{StartIdx = 1050000, EndIdx = 1059999, ScriptId = 006671} }

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x006666_OnDefaultEvent( sceneId, selfId, targetId, missionIndex )	--µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )

	local missionTarget, missionInfo, missionContinue = TGetMissionDesc( missionIndex )

	--·¢ËÍÈÎÎñĞèÇóµÄĞÅÏ¢
	if IsHaveMission( sceneId, selfId, missionId ) > 0 then
		--·¢ËÍÈÎÎñĞèÇóµÄĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, missionName )
			AddText( sceneId, missionContinue )
			AddText( sceneId, "#{M_MUBIAO}#r" )
			AddText( sceneId, "  " .. missionTarget )
		EndEvent( )
		local bDone = x006666_CheckSubmit( sceneId, selfId, missionIndex )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, missionIndex, missionId, bDone )
	elseif CallScriptFunction( MOD_EVENT, "CheckAccept", sceneId, selfId, missionIndex ) > 0 then
		local _, acceptNpcName = TGetAcceptNpcInfo( missionIndex )
		if acceptNpcName == "" then										-- Ëæ»úÈÎÎñ£¬×Ô¶¯½ÓÈ¡
			if x006666_OnAccept( sceneId, selfId, targetId, missionIndex ) ~= 1 then
				return
			end
		end

		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, missionName )
			AddText( sceneId, missionInfo )
			AddText( sceneId, "#{M_MUBIAO}#r" )
			AddText( sceneId, "  " .. missionTarget )
			CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex )
		EndEvent( )

		if acceptNpcName == "" then										-- Ëæ»úÈÎÎñ£¬×Ô¶¯½ÓÈ¡
			DispatchEventList( sceneId, selfId, targetId )
		else
			DispatchMissionInfo( sceneId, selfId, targetId, missionIndex, missionId )
		end
	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x006666_OnEnumerate( sceneId, selfId, targetId, missionIndex )
	CallScriptFunction( MOD_EVENT, "DoEnumerate", sceneId, selfId, targetId, missionIndex )
end

--**********************************
--½ÓÊÜ
--**********************************
function x006666_OnAccept( sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )

	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÒÑ¾­Íê³É¹ıÕâ¸öÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, missionId ) > 0
	 and TIsMissionRoundable( missionIndex ) ~= 1 then
		return 0
	end

	-- ·ÀÖ¹Íæ¼ÒÖ±½Ó·¢°ü£¬ÔÙ´Î¼ì²âÊÇ²»ÊÇÄÜ¹»½ÓÕâ¸öÈÎÎñ
	if CallScriptFunction( MOD_EVENT, "CheckAccept", sceneId, selfId, missionIndex )  <= 0  then
		return 0
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, missionId, missionIndex, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player( sceneId, selfId, "#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return 0
	end

	--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïµÄ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
	local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )		--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
	SetMissionByIndex( sceneId, selfId, misIndex, x006666_g_IsMissionOkFail, 0 )	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿µÄµÚÒ»Î»ÖÃ0	µÚÒ»Î»ÊÇÍê³É/Ê§°ÜÇé¿ö

	-- Èç¹û½»ÈÎÎñµÄÈË²»ÊÇ½ÓÈÎÎñµÄÈË
	local nscene1, name1 = TGetAcceptNpcInfo( missionIndex )
	local nscene2, name2 = TGetCompleteNpcInfo( missionIndex )
	if name1 ~= name2 then
		SetMissionEvent( sceneId, selfId, missionId, 4 )
	end

	local killDataCt = 0
	local a = { { name = "", ct = 0 }, { name = "", ct = 0 }, { name = "", ct = 0 }, { name = "", ct = 0 }, { name = "", ct = 0 }, }
	killDataCt, a[1].name, a[1].ct, a[2].name, a[2].ct, a[3].name, a[3].ct, a[4].name, a[4].ct, a[5].name, a[5].ct = TGetKillInfo( missionIndex )
	print( killDataCt, a[1].name, a[1].ct, a[2].name, a[2].ct, a[3].name, a[3].ct, a[4].name, a[4].ct, a[5].name, a[5].ct )

	for i = 1, killDataCt do
		if a[i].name ~= "" then
			SetMissionByIndex( sceneId, selfId, misIndex, i, 0 )			--ÉèÖÃÉ±¹Ö±ê¼Ç
		end
	end

	Msg2Player( sceneId, selfId, "#YTiªp nh§n #W" .. missionName, MSG2PLAYER_PARA )
	return 1
end

--**********************************
--·ÅÆú
--**********************************
function x006666_OnAbandon( sceneId, selfId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )

	-- ³Í·££¬¿Û³ı¹ØÏµÖµ
	CallScriptFunction( MOD_EVENT, "PunishRelationShip", sceneId, selfId, missionIndex )

	-- ³Í·££¬Ò»¶ÎÊ±¼ä²»ÈÃ½ÓÈÎÎñ
	CallScriptFunction( MOD_EVENT, "AcceptTimeLimit", sceneId, selfId, missionIndex )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
	DelMission( sceneId, selfId, missionId )

end

--**********************************
--¼ÌĞø
--**********************************
function x006666_OnContinue( sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )
	local missionTarget, _, _, missionComplete = TGetMissionDesc( missionIndex )

	BeginEvent( sceneId )
		AddText( sceneId, missionName )
		AddText( sceneId, missionComplete )
		AddText( sceneId, "#{M_MUBIAO}#r" )
		AddText( sceneId, missionTarget )
		CallScriptFunction( MOD_EVENT, "DisplayBonus", sceneId, missionIndex )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, missionIndex, missionId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x006666_CheckSubmit( sceneId, selfId, missionIndex )
	local missionId = TGetMissionIdByIndex( missionIndex )
	local missionName = TGetMissionName( missionIndex )
	local misIndex = GetMissionIndexByID( sceneId, selfId, missionId )

	local bComplete = GetMissionParam( sceneId, selfId, misIndex, 0 )
	if bComplete > 0 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x006666_OnSubmit( sceneId, selfId, targetId, selectRadioId, missionIndex )
	if x006666_CheckSubmit( sceneId, selfId, missionIndex ) > 0 then
		local missionId = TGetMissionIdByIndex( missionIndex )
		local missionName = TGetMissionName( missionIndex )

		-- °²È«ĞÔ¼ì²â
		-- 1¡¢¼ì²âÍæ¼ÒÊÇ²»ÊÇÓĞÕâ¸öÈÎÎñ
		if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
			return
		end
		-- 2¡¢ÆäËû¼ì²â
		-- ·¢½±
		local ItemCount, nAddItemNum = 0, 0
		local item, count = 1, 2
		local mi = { { -1, 0 }, { -1, 0 }, { -1, 0 }, { -1, 0 }, { -1, 0 } }

		-- ³¢ÊÔÔö¼Ó½±ÀøÎïÆ·
		BeginAddItem( sceneId )
		ItemCount, mi[1][1], mi[1][2], mi[2][1], mi[2][2], mi[3][1], mi[3][2],
			mi[4][1], mi[4][2], mi[5][1], mi[5][2] = TGetAwardItem( missionIndex )

		if ItemCount > 0 then											-- ¹Ì¶¨½±Àø
			for i = 1, ItemCount do
				if mi[i][item] > 0 then
					AddItem( sceneId, mi[i][item], mi[i][count] )
					nAddItemNum = nAddItemNum + 1
				end
			end
		end

		ItemCount, mi[1][1], mi[1][2], mi[2][1], mi[2][2], mi[3][1], mi[3][2],
			mi[4][1], mi[4][2], mi[5][1], mi[5][2] = TGetRadioItem( missionIndex )

		if ItemCount > 0 then											-- Ñ¡Ôñ½±Àø
			for i = 1, ItemCount do
				if mi[i][item] > 0 and mi[i][item] == selectRadioId then
					AddItem( sceneId, mi[i][item], mi[i][count] )
					nAddItemNum = nAddItemNum + 1
					break
				end
			end
		end

		ItemCount, mi[1][1], mi[1][2], mi[2][1], mi[2][2], mi[3][1], mi[3][2],
			mi[4][1], mi[4][2], mi[5][1], mi[5][2] = TGetHideItem( missionIndex )

		if ItemCount > 0 then											-- Òş²Ø½±Àø
			for i = 1, ItemCount do
				if mi[i][item] > 0 then
					AddItem( sceneId, mi[i][item], mi[i][count] )
					nAddItemNum = nAddItemNum + 1
				end
			end
		end
		
		if CallScriptFunction(x006666_g_duanyanqiId, "OnAddRewards", sceneId, selfId, missionIndex) == 1 then--[tx43452]
			nAddItemNum = nAddItemNum + 1			
		end--[/tx43452]
		
		local ret = EndAddItem( sceneId, selfId )
		if ret <= 0 then
			x006666_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
			return
		end

		if nAddItemNum > 0 then
			AddItemListToHuman( sceneId, selfId )
		end

		-- Ìí¼ÓÈÎÎñ½±Àø
		local awardMoney = TGetAwardMoney( missionIndex )
		if awardMoney > 0 then
			AddMoney( sceneId, selfId, awardMoney, missionId, missionIndex )
		end

		local awardExp = TGetAwardExp( missionIndex )
		if awardExp > 0 then
			LuaFnAddExp( sceneId, selfId, awardExp )
		end

		-- ½±Àø¹ØÏµÖµ
		CallScriptFunction( MOD_EVENT, "RewardRelationShip", sceneId, selfId, missionIndex )

		local mdLocation, _, _ = TGetRelationShipAwardInfo( missionIndex );
		if mdLocation == MD_RELATION_AZHU then
			CallScriptFunction(005001, "OnModEvent_Submit", sceneId, selfId, targetId, missionIndex)
		elseif mdLocation == MD_RELATION_DUANYANQING then
			CallScriptFunction(x006666_g_duanyanqiId, "OnMissionSubmitionSuccess", sceneId, selfId, targetId, missionIndex) --[tx43452]	
		elseif mdLocation == MD_RELATION_MUWANQING then --zchw
			CallScriptFunction(002010, "OnModEvent_Submit", sceneId, selfId, targetId, missionIndex)
		end

		DelMission( sceneId, selfId, missionId )
		-- ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId, selfId, missionId )
		local strText = "#Y" .. missionName .. " nhi®m vø ğã hoàn thành!"
		x006666_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
		
		-- »ñµÃºóĞøÈÎÎñµÄIndex
		local NextMissIndex = GetNextMissionIndex( missionIndex )

		for i, MissType in x006666_g_MissionTypeList do
			if MissType.ScriptId ~= nil and MissType.ScriptId ~= 0 then
				if NextMissIndex ~= 0 and NextMissIndex >= MissType.StartIdx and NextMissIndex <= MissType.EndIdx then
					local missionId = TGetMissionIdByIndex( NextMissIndex )
					local szNpcName = GetName( sceneId, targetId )
					local AcceptNpcScene, AcceptNpcName = TGetAcceptNpcInfo( NextMissIndex )

					if sceneId == AcceptNpcScene and szNpcName == AcceptNpcName then
						if MissType.ScriptId == 006666 then
							if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
								x006666_OnDefaultEvent( sceneId, selfId, targetId, NextMissIndex )
							end
						else
							if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
								CallScriptFunction( MissType.ScriptId, "OnDefaultEvent", sceneId, selfId, targetId, NextMissIndex )
							end
						end
					end
					
					break;
				end
			end
		end
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x006666_OnKillObject( sceneId, selfId, objdataId ,objId, missionIndex)--²ÎÊıÒâË¼£º³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId

	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)

	local killDataCount = 0
	local a = {{name="", ct=0},{name="", ct=0},{name="", ct=0},{name="", ct=0},{name="", ct=0},}
	killDataCount, a[1].name, a[1].ct, a[2].name, a[2].ct, a[3].name, a[3].ct, a[4].name, a[4].ct,a[5].name, a[5].ct = TGetKillInfo(missionIndex)

	local monsterName = GetMonsterNamebyDataId(objdataId)

	for i=1, killDataCount do
		if monsterName ==	a[i].name then
			-- È¡µÃÕâ¸ö¹ÖÎïËÀºóÓµÓĞ·ÖÅäÈ¨µÄÈËÊı
			local num = GetMonsterOwnerCount(sceneId,objId)
			for j=0,num-1  do
				-- È¡µÃÓµÓĞ·ÖÅäÈ¨µÄÈËµÄobjId
				local humanObjId = GetMonsterOwnerID(sceneId,objId,j)

				-- ¿´Õâ¸öÈËÊÇ²»ÊÇÓĞÕâ¸öÈÎÎñ
				if IsHaveMission(sceneId, humanObjId, missionId) > 0 then
					-- ÏÈÅĞ¶ÏÊÇ²»ÊÇÒÑ¾­Âú×ãÁËÍê³É±êÖ¾
					local misIndex = GetMissionIndexByID(sceneId,humanObjId,missionId)

					if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
						-- »ñµÃÒÑ¾­»÷É±µÄÊıÁ¿
						local ct = GetMissionParam(sceneId, humanObjId, misIndex, i)
						if ct < a[i].ct  then
							SetMissionByIndex(sceneId, humanObjId, misIndex, i, ct+1)
							-- Í¨Öª¿Í»§¶Ë
				     	BeginEvent(sceneId)
								local strText = format("Ğã giªt chªt %s: %d/%d ", a[i].name, ct+1, a[i].ct )
								AddText(sceneId, strText)
						  EndEvent(sceneId)
					  	DispatchMissionTips(sceneId,humanObjId)
						end

						local IsOk = 1
						-- ¿´Íæ¼ÒÊÇ²»ÊÇÒÑ¾­Íê³ÉÁËÕâ¸öÈÎÎñ
				  	if ct+1 == a[i].ct then
				  		for j=1,  killDataCount do
								-- »ñµÃÒÑ¾­»÷É±µÄÊıÁ¿
								local ct1 = GetMissionParam(sceneId, humanObjId, misIndex, j)
				  			if ct1 < a[j].ct  then
				  				IsOk = 0
				  			end
				  		end

					  	if IsOk == 1 then
					  		SetMissionByIndex( sceneId, humanObjId, misIndex, x006666_g_IsMissionOkFail, 1 )
					  	end
				  	end
				  end
				end
			end
		end
	end
end

--**********************************
--·ÃÎÊËø¶¨¶ÔÏó
--**********************************
function x006666_OnLockedTarget(sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)
	local szNpcName = GetName(sceneId, targetId)
	local nScene, szName = TGetCompleteNpcInfo(missionIndex)
	if szNpcName == szName then -- and  sceneId == nScene  then
		-- ÕÒ¶ÔÈË¿©
		-- ÊÇ·ñÎªÑ­»·ÈÎÎñ
		if TIsMissionRoundable( missionIndex ) == 1 then
			TAddNumText( sceneId, missionIndex, missionName, 4, -1 )
		else
			TAddNumText( sceneId, missionIndex, missionName, 2, -1 )
		end
		TDispatchEventList(sceneId, selfId, targetId)
		return 1
	end
	return 0
end

--**********************************
-- ÆÁÄ»ÖĞ¼äĞÅÏ¢ÌáÊ¾
--**********************************
function x006666_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
