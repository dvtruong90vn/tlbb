--…±π÷»ŒŒÒ
--–°ƒæ»ÀœÔ
--–°ƒæ»ÀœÔ…±ƒæ»À»ŒŒÒ
--MisDescBegin
--Ω≈±æ∫≈
x210231_g_ScriptId  = 210231

--…œ“ª∏ˆ»ŒŒÒµƒID
x210231_g_MissionIdPre = 710

--»ŒŒÒ∫≈
x210231_g_MissionId = 711

--ƒø±ÍNPC
x210231_g_Name	="Ho‡ng Mi TÂng"

--»ŒŒÒπÈ¿‡
x210231_g_MissionKind = 13

--»ŒŒÒµ»º∂
x210231_g_MissionLevel = 9

-- «∑Ò «æ´”¢»ŒŒÒ
x210231_g_IfMissionElite = 0

--œ¬√Êº∏œÓ «∂ØÃ¨œ‘ æµƒƒ⁄»›£¨”√”⁄‘⁄»ŒŒÒ¡–±Ì÷–∂ØÃ¨œ‘ æ»ŒŒÒ«Èøˆ**********************
--»ŒŒÒ «∑Ò“—æ≠ÕÍ≥…
x210231_g_IsMissionOkFail = 0		--±‰¡øµƒµ⁄0Œª

--»ŒŒÒ–Ë“™…±À¿µƒπ÷
x210231_g_DemandKill ={{id=703,num=5}}		--±‰¡øµ⁄1Œª

--“‘…œ «∂ØÃ¨**************************************************************

--»ŒŒÒŒƒ±æ√Ë ˆ
x210231_g_MissionName="Ti¨u Mµc Nh‚n H’ng"
x210231_g_MissionInfo="ThÌ ch¸, Ti¨u Mµc Nh‚n H’ng tuy s·nh khÙng b¢ng Thi™u L‚m Mµc Nh‚n H’ng, nhﬂng qu·i vßt ∑ bÍn trong kiÍu d˚ng d∏ thﬂ∂ng. Xin thÌ ch¸ l˙c tu luyÆn dØc to‡n s—c. #rThÌ ch¸ chÔ c•n gi™t ch™t 5 con Mµc –•u Nh‚n, l•n tu luyÆn n‡y „ ho‡n th‡nh r∞i. 1 l•n chﬂa ·nh h™t c˚ng khÙng sao, thÌ ch¸ cÛ th¨ quay ra r∞i v‡o l’i Ti¨u Mµc Nh‚n H’ng, ™n khi n‡o ho‡n th‡nh thÏ thÙi." --»ŒŒÒ√Ë ˆ
x210231_g_MissionTarget="ó #G Ti¨u Mµc Nh‚n H’ng#W gi™t ch™t 5 con#R Mµc –•u Nh‚n#W, sau Û quay v´ g£p #RHo‡ng Mi TÂng #W#{_INFOAIM435,202,2,Ho‡ng Mi TÂng} ho‡n tr‰ nhiÆm v¯."	--»ŒŒÒƒø±Í
x210231_g_ContinueInfo="ThÌ ch¸ „ gi™t ch™t 5 con Mµc –•u Nh‚n chﬂa?"	--Œ¥ÕÍ≥…»ŒŒÒµƒnpc∂‘ª∞
x210231_g_MissionComplete="Qu· trÏnh tu luyÆn c¸a thÌ ch¸ r§t th‡nh cÙng. KhÙng g£p 1 l˙c, vı cÙng c¸a thÌ ch¸ „ tinh ti™n khÙng Ìt."	--ÕÍ≥…»ŒŒÒnpcÀµª∞µƒª∞
x210231_g_SignPost = {x = 275, z = 50, tip = "Ho‡ng Mi TÂng"}
--»ŒŒÒΩ±¿¯
x210231_g_MoneyBonus=200
--x210231_g_ItemBonus={{id=40002108,num=1},{id=30101001,num=5}}

x210231_g_DemandTrueKill ={{name="Mµc –•u Nh‚n",num=5}}

--MisDescEnd
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x210231_OnDefaultEvent( sceneId, selfId, targetId )	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	--»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ£® µº …œ»Áπ˚ÕÍ≥…¡À»ŒŒÒ’‚¿ÔæÕ≤ªª·œ‘ æ£¨µ´ «‘ŸºÏ≤‚“ª¥Œ±»Ωœ∞≤»´£©
    --if IsMissionHaveDone(sceneId,selfId,x210231_g_MissionId) > 0 then
	--	return
	--end
	--»Áπ˚“—Ω”¥À»ŒŒÒ
	if IsHaveMission(sceneId,selfId,x210231_g_MissionId) > 0 then
		--∑¢ÀÕ»ŒŒÒ–Ë«Ûµƒ–≈œ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210231_g_MissionName)
			AddText(sceneId,x210231_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210231_g_MoneyBonus )
		EndEvent( )
		bDone = x210231_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210231_g_ScriptId ,x210231_g_MissionId,bDone)
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210231_CheckAccept(sceneId,selfId) > 0 then
			--∑¢ÀÕ»ŒŒÒΩ” ‹ ±œ‘ æµƒ–≈œ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210231_g_MissionName)
				AddText(sceneId,x210231_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210231_g_MissionTarget)
				--for i, item in x210231_g_ItemBonus do
				--	AddItemBonus( sceneId, item.id, item.num )
				--end
				AddMoneyBonus( sceneId, x210231_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210231_g_ScriptId ,x210231_g_MissionId)
    end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x210231_OnEnumerate( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ªπŒ¥ÕÍ≥……œ“ª∏ˆ»ŒŒÒ
    if 	IsMissionHaveDone(sceneId,selfId,x210231_g_MissionIdPre) <= 0 then
    	return
    end
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if IsMissionHaveDone(sceneId,selfId,x210231_g_MissionId) > 0 then
    	return
	end
    --»Áπ˚“—Ω”¥À»ŒŒÒ
    if IsHaveMission(sceneId,selfId,x210231_g_MissionId) > 0 then
		AddNumText(sceneId,x210231_g_ScriptId ,x210231_g_MissionName,2,-1);
		--¬˙◊„»ŒŒÒΩ” ’Ãıº˛
	elseif x210231_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210231_g_ScriptId ,x210231_g_MissionName,1,-1);
	end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x210231_CheckAccept( sceneId, selfId )
	--–Ë“™9º∂≤≈ƒ‹Ω”
	if GetLevel( sceneId, selfId ) >= 9 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ω” ‹
--**********************************
function x210231_OnAccept( sceneId, selfId )
	--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	AddMission( sceneId,selfId, x210231_g_MissionId, x210231_g_ScriptId , 1, 0, 0 )		--ÃÌº”»ŒŒÒ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210231_g_MissionId)			--µ√µΩ»ŒŒÒµƒ–Ú¡–∫≈
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--∏˘æ›–Ú¡–∫≈∞—»ŒŒÒ±‰¡øµƒµ⁄0Œª÷√0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--∏˘æ›–Ú¡–∫≈∞—»ŒŒÒ±‰¡øµƒµ⁄1Œª÷√0
	Msg2Player(  sceneId, selfId,"#YNhßn nhiÆm v¯#W: Ti¨u Mµc Nh‚n H’ng",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210231_g_SignPost.x, x210231_g_SignPost.z, x210231_g_SignPost.tip )
end

--**********************************
--∑≈∆˙
--**********************************
function x210231_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
    DelMission( sceneId, selfId, x210231_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210231_g_SignPost.tip )
end

--**********************************
--ºÃ–¯
--**********************************
function x210231_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±µƒÀµ√˜–≈œ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210231_g_MissionName)
		AddText(sceneId,x210231_g_MissionComplete)
		AddMoneyBonus( sceneId, x210231_g_MoneyBonus )
		--for i, item in x210231_g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210231_g_ScriptId ,x210231_g_MissionId)
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x210231_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210231_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210231_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,1)
    if num == x210231_g_DemandTrueKill[1].num then
			return 1
		end
	return 0
end

--**********************************
--Ã·Ωª
--**********************************
function x210231_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210231_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		ret = 1
		--ÃÌº”»ŒŒÒΩ±¿¯
		if ret > 0 then
			AddMoney(sceneId,selfId,x210231_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,1620)
			--ø€≥˝»ŒŒÒŒÔ∆∑
			--for i, item in g_DemandItem do
			--	DelItem( sceneId, selfId, item.id, item.num )
			--end
			ret = DelMission( sceneId, selfId, x210231_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId, selfId, x210231_g_MissionId )
				--AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YNhiÆm v¯ ho‡n th‡nh#W: Ti¨u Mµc Nh‚n H’ng",MSG2PLAYER_PARA )
				CallScriptFunction( 210232, "OnDefaultEvent",sceneId, selfId, targetId)
			end
		else
		--»ŒŒÒΩ±¿¯√ª”–º”≥…π¶
			BeginEvent(sceneId)
				strText = "NhiÆm v¯ th§t b’i"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x210231_OnKillObject( sceneId, selfId, objdataId ,objId)
	
	if GetName(sceneId,objId) == x210231_g_DemandTrueKill[1].name	  then
		-- ªÒµ√À˘”–»À
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ø¥”–√ª”–’‚∏ˆ»ŒŒÒ
			if IsHaveMission(sceneId, humanObjId, x210231_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x210231_g_MissionId)
				local nNum = GetMissionParam(sceneId,humanObjId,misIndex,1)

	 			if nNum < x210231_g_DemandTrueKill[1].num then
	 				if nNum == x210231_g_DemandTrueKill[1].num - 1 then
	 					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
	 				end
	 				
			    SetMissionByIndex(sceneId,humanObjId,misIndex,1,nNum+1)
			  	BeginEvent(sceneId)
					strText = format("–„ gi™t ch™t %d/5 con Mµc –•u Nh‚n", GetMissionParam(sceneId,humanObjId,misIndex,1) )
					AddText(sceneId,strText);
			  	EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
	 			end
			end
		end
	end
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x210231_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x210231_OnItemChanged( sceneId, selfId, itemdataId )
end
