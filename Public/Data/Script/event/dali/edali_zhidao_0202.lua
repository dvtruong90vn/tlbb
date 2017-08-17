--—∞ŒÔ»ŒŒÒ
--–≤ Tÿ –¢ng“™ƒ„∏¯À˚’“µΩ“ª∏ˆ¬¯Õ∑
--MisDescBegin
--Ω≈±æ∫≈
x210202_g_ScriptId = 210202

x210202_g_Position_X=230
x210202_g_Position_Z=251
x210202_g_SceneID=2
x210202_g_AccomplishNPC_Name="–≤ Tÿ –¢ng"

--»ŒŒÒ∫≈
x210202_g_MissionId = 442

--…œ“ª∏ˆ»ŒŒÒµƒID
x210202_g_MissionIdPre = 441

--ƒø±ÍNPC
x210202_g_Name	="–≤ Tÿ –¢ng"

--»ŒŒÒµ¿æﬂ±‡∫≈
x210202_g_ItemId = 30101001

--»ŒŒÒµ¿æﬂ–Ë«Û ˝¡ø
x210202_g_ItemNeedNum = 1

--»ŒŒÒπÈ¿‡
x210202_g_MissionKind = 13

--»ŒŒÒµ»º∂
x210202_g_MissionLevel = 1

-- «∑Ò «æ´”¢»ŒŒÒ
x210202_g_IfMissionElite = 0

--œ¬√Êº∏œÓ «∂ØÃ¨œ‘ æµƒƒ⁄»›£¨”√”⁄‘⁄»ŒŒÒ¡–±Ì÷–∂ØÃ¨œ‘ æ»ŒŒÒ«Èøˆ**********************

--“‘…œ «∂ØÃ¨**************************************************************

--»ŒŒÒ–Ë“™µ√µΩµƒŒÔ∆∑
x210202_g_DemandItem={{id=30101001,num=1}}		--±‰¡øµ⁄1Œª
x210202_g_IsMissionOkFail = 1		--±‰¡øµƒµ⁄0Œª

--»ŒŒÒ√˚
x210202_g_MissionName="C·i b·nh bao th— nh§t"
x210202_g_MissionInfo_1="#R"
x210202_g_MissionInfo_2="#{event_dali_0004}"
x210202_g_MissionTarget="#{xinshou_002}"
x210202_g_MissionContinue="C·c h’ „ l‡m #YB·nh Bao#W xong chﬂa?"
x210202_g_MissionComplete="Ch‡, xem ra t‡i nÂng n§u nﬂæng c¸a c·c h’ khÙng chÔ ∑ m—c bÏnh thﬂ∂ng"
x210202_g_MoneyBonus=1
x210202_g_SignPost = {x = 250, z = 231, tip = "–≤ Tÿ –¢ng"}
x210202_g_RadioItemBonus={{id=30304030 ,num=1},{id=30304031,num=1}}
--MisDescEnd
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x210202_OnDefaultEvent( sceneId, selfId, targetId )
	--»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ£® µº …œ»Áπ˚ÕÍ≥…¡À»ŒŒÒ’‚¿ÔæÕ≤ªª·œ‘ æ£¨µ´ «‘ŸºÏ≤‚“ª¥Œ±»Ωœ∞≤»´£©
    --if IsMissionHaveDone(sceneId,selfId,x210202_g_MissionId) > 0 then
	--	return
	--end
    --»Áπ˚“—Ω”¥À»ŒŒÒ
		if IsHaveMission(sceneId,selfId,x210202_g_MissionId) > 0 then
			--∑¢ÀÕ»ŒŒÒ–Ë«Ûµƒ–≈œ¢
			BeginEvent(sceneId)
			AddText(sceneId,x210202_g_MissionName)
			AddText(sceneId,x210202_g_MissionContinue)
			for i, item in x210202_g_DemandItem do
				AddItemDemand( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x210202_g_MoneyBonus )
			EndEvent( )
			bDone = x210202_CheckSubmit( sceneId, selfId )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x210202_g_ScriptId,x210202_g_MissionId,bDone)
		--¬˙◊„»ŒŒÒΩ” ’Ãıº˛
		elseif x210202_CheckAccept(sceneId,selfId) > 0 then
			--∑¢ÀÕ»ŒŒÒΩ” ‹ ±œ‘ æµƒ–≈œ¢
				local  PlayerName=GetName(sceneId,selfId)	
	            local  PlayerSex=GetSex(sceneId,selfId)
	            if PlayerSex == 0 then
		            PlayerSex = " CÙ nﬂΩng "
	            else
		            PlayerSex = " Thi™u hiÆp "
	            end
			BeginEvent(sceneId)
				AddText(sceneId,x210202_g_MissionName)
				AddText(sceneId,x210202_g_MissionInfo_1..PlayerName..PlayerSex..x210202_g_MissionInfo_2)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210202_g_MissionTarget)
				for i, item in x210202_g_RadioItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210202_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210202_g_ScriptId,x210202_g_MissionId)
		end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x210202_OnEnumerate( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ªπŒ¥ÕÍ≥……œ“ª∏ˆ»ŒŒÒ
    if 	IsMissionHaveDone(sceneId,selfId,x210202_g_MissionIdPre) <= 0 then
    	return
    end
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if IsMissionHaveDone(sceneId,selfId,x210202_g_MissionId) > 0 then
    	return 
	end
    --»Áπ˚“—Ω”¥À»ŒŒÒ
	if IsHaveMission(sceneId,selfId,x210202_g_MissionId) > 0 then
		AddNumText(sceneId,x210202_g_ScriptId,x210202_g_MissionName,2,-1);
	--¬˙◊„»ŒŒÒΩ” ’Ãıº˛
	elseif x210202_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210202_g_ScriptId,x210202_g_MissionName,1,-1);
	end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x210202_CheckAccept( sceneId, selfId )
	--–Ë“™1º∂≤≈ƒ‹Ω”
	if GetLevel( sceneId, selfId ) >= 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ω” ‹
--**********************************
function x210202_OnAccept( sceneId, selfId )
	--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	AddMission( sceneId,selfId, x210202_g_MissionId, x210202_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNhßn nhiÆm v¯#W: C·i b·nh bao th— nh§t",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210202_g_SignPost.x, x210202_g_SignPost.z, x210202_g_SignPost.tip )
end

--**********************************
--∑≈∆˙
--**********************************
function x210202_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
    DelMission( sceneId, selfId, x210202_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210202_g_SignPost.tip )
end

--**********************************
--ºÃ–¯
--**********************************
function x210202_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±µƒÀµ√˜–≈œ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210202_g_MissionName)
		AddText(sceneId,x210202_g_MissionComplete)
		AddMoneyBonus( sceneId, x210202_g_MoneyBonus )
		for i, item in x210202_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210202_g_ScriptId,x210202_g_MissionId)
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x210202_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210202_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	for i, item in x210202_g_DemandItem do
		itemCount = GetItemCount( sceneId, selfId, item.id )
		if itemCount < item.num then
			return 0
		end
	end
	return 1
end

--**********************************
--Ã·Ωª
--**********************************
function x210202_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210202_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		BeginAddItem(sceneId)
			for i, item in x210202_g_RadioItemBonus do
				if item.id == selectRadioId then
					AddItem( sceneId,item.id, item.num )
				end
			end
		ret = EndAddItem(sceneId,selfId)
		
		local DelRet = 1
		for i, item in x210202_g_DemandItem do
		  --qds ø€≥˝ŒÔ∆∑–ﬁ∏ƒ
			if LuaFnDelAvailableItem( sceneId, selfId, item.id, item.num ) < 1 then
				DelRet = 0
			end
		end
		if DelRet == 0  then 
			Msg2Player(  sceneId, selfId,"#YKh§u tr◊ th§t b’i",MSG2PLAYER_PARA )
			BeginEvent(sceneId)
				strText = "Ph‰i chÂng #GB·nh Bao#W c˚ng cØ ∏nh sao?"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		
		if ret > 0 then
			AddMoney(sceneId,selfId,x210202_g_MoneyBonus );
			LuaFnAddExp(sceneId, selfId,20)
			ret = DelMission( sceneId, selfId, x210202_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId, selfId, x210202_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
--				--ø€≥˝»ŒŒÒŒÔ∆∑
--				for i, item in x210202_g_DemandItem do
--					if DelItem( sceneId, selfId, item.id, item.num ) < 1 then
--						DelRet = 0
--					end
--				end
				Msg2Player(  sceneId, selfId,"#YNhiÆm v¯ ho‡n th‡nh#W: C·i b·nh bao th— nh§t",MSG2PLAYER_PARA )
				CallScriptFunction( 210203, "OnDefaultEvent",sceneId, selfId, targetId)
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
function x210202_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x210202_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x210202_OnItemChanged( sceneId, selfId, itemdataId )
	if itemdataId == 30101001 then 
		local misIndex = GetMissionIndexByID(sceneId,selfId,x210202_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	end
	
end
