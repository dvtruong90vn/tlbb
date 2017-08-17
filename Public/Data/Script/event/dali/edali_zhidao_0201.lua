--ÀÕªı»ŒŒÒ
--∆—¡ºÀÕªı∏¯–≤ Tÿ –¢ng
--MisDescBegin
--Ω≈±æ∫≈
x210201_g_ScriptId = 210201

x210201_g_Position_X=110.0841
x210201_g_Position_Z=158.7671
x210201_g_SceneID=2
x210201_g_AccomplishNPC_Name="–≤ Tÿ –¢ng"

--»ŒŒÒ∫≈
x210201_g_MissionId = 441

--…œ“ª∏ˆ»ŒŒÒµƒID
x210201_g_MissionIdPre = 440

--ƒø±ÍNPC
x210201_g_Name	="–≤ Tÿ –¢ng"

--»ŒŒÒµ¿æﬂ±‡∫≈
x210201_g_ItemId = 40002110

--»ŒŒÒµ¿æﬂ–Ë«Û ˝¡ø
x210201_g_ItemNeedNum = 1

--»ŒŒÒπÈ¿‡
x210201_g_MissionKind = 13

--»ŒŒÒµ»º∂
x210201_g_MissionLevel = 1

-- «∑Ò «æ´”¢»ŒŒÒ
x210201_g_IfMissionElite = 0

--œ¬√Êº∏œÓ «∂ØÃ¨œ‘ æµƒƒ⁄»›£¨”√”⁄‘⁄»ŒŒÒ¡–±Ì÷–∂ØÃ¨œ‘ æ»ŒŒÒ«Èøˆ**********************
--»ŒŒÒ «∑Ò“—æ≠ÕÍ≥…
x210201_g_IsMissionOkFail = 0		--±‰¡øµƒµ⁄0Œª

--“‘…œ «∂ØÃ¨**************************************************************

--»ŒŒÒ√˚
x210201_g_MissionName="L•n •u giao h‡ng"
x210201_g_MissionInfo="#{event_dali_0003}"
x210201_g_MissionTarget="Mang #YRﬂΩng –’o C¯ C¯ N§u Nﬂæng#W ™n#G ﬂ∂ng læn phÌa T‚y th‡nh –’i L˝#Y Tÿu Qu·n#W cho Ùng ch¸ #R–≤ Tÿ –¢ng #W#{_INFOAIM230,251,2,–≤ Tÿ –¢ng}.#r#YNh°c nh∑: #G?n chuµt ph‰i v‡o t˜a µ NPC cÛ th¨ tÒ µng d∏ch chuy¨n ™n ch≤ NPC Û!"
x210201_g_MissionComplete="C·c h’ thßt hi¨u ˙ng cΩn nguy c§p c¸a ta, ta ang c•n g§p #Ychi™c rﬂΩng d¯ng c¯ n§u nﬂæng#W n‡y!"
x210201_g_MoneyBonus=1
x210201_g_SignPost = {x = 110, z = 159, tip = "–≤ Tÿ –¢ng"}

x210201_g_DemandItem={{id=40002110,num=1}}		--±‰¡øµ⁄1Œª
x210201_g_IsMissionOkFail = 1		--±‰¡øµƒµ⁄0Œª

--MisDescEnd
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x210201_OnDefaultEvent( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if (IsMissionHaveDone(sceneId,selfId,x210201_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210201_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210201_g_Name then
			x210201_OnContinue( sceneId, selfId, targetId )
		end
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210201_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210201_g_Name then
			--∑¢ÀÕ»ŒŒÒΩ” ‹ ±œ‘ æµƒ–≈œ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210201_g_MissionName)
				AddText(sceneId,x210201_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210201_g_MissionTarget)
				AddMoneyBonus( sceneId, x210201_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210201_g_ScriptId,x210201_g_MissionId)
		end
    end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x210201_OnEnumerate( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ªπŒ¥ÕÍ≥……œ“ª∏ˆ»ŒŒÒ
    if 	IsMissionHaveDone(sceneId,selfId,x210201_g_MissionIdPre) <= 0 then
    	return
    end
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if IsMissionHaveDone(sceneId,selfId,x210201_g_MissionId) > 0 then
    	return 
    --»Áπ˚“—Ω”¥À»ŒŒÒ
    elseif IsHaveMission(sceneId,selfId,x210201_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210201_g_Name then
			AddNumText(sceneId, x210201_g_ScriptId,x210201_g_MissionName,2,-1);
		end
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210201_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210201_g_Name then
			AddNumText(sceneId,x210201_g_ScriptId,x210201_g_MissionName,1,-1);
		end
    end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x210201_CheckAccept( sceneId, selfId )
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
function x210201_OnAccept( sceneId, selfId )
	--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	AddMission( sceneId,selfId, x210201_g_MissionId, x210201_g_ScriptId, 0, 0, 0 )
	BeginAddItem(sceneId)
		--ÃÌº”–≈º˛¿‡ŒÔ∆∑
		AddItem( sceneId,x210201_g_ItemId, x210201_g_ItemNeedNum )
		ret = EndAddItem(sceneId,selfId)
		--ÃÌº”»ŒŒÒΩ±¿¯
	if ret > 0 then
		AddItemListToHuman(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNhßn nhiÆm v¯#W: L•n •u giao h‡ng",MSG2PLAYER_PARA )
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210201_g_SignPost.x, x210201_g_SignPost.z, x210201_g_SignPost.tip )

		-- …Ë÷√»ŒŒÒÕÍ≥…±Í÷æ
		local misIndex = GetMissionIndexByID(sceneId,selfId,x210201_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

	else
		--»ŒŒÒΩ±¿¯√ª”–º”≥…π¶
		BeginEvent(sceneId)
			strText = "T˙i x·ch „ •y, khÙng th¨ ti™p nhßn thÍm nhiÆm v¯"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--∑≈∆˙
--**********************************
function x210201_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
    res = DelMission( sceneId, selfId, x210201_g_MissionId )
	if res > 0 then
		--“∆»•»ŒŒÒŒÔ∆∑
		for i, item in x210201_g_DemandItem do
			DelItem( sceneId, selfId, item.id, item.num )
		end
		CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210201_g_SignPost.tip )
	end
end

--**********************************
--ºÃ–¯
--**********************************
function x210201_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±µƒÀµ√˜–≈œ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210201_g_MissionName)
		AddText(sceneId,x210201_g_MissionComplete)
		AddMoneyBonus( sceneId, x210201_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210201_g_ScriptId,x210201_g_MissionId)
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x210201_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210201_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	for i, item in x210201_g_DemandItem do
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
function x210201_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210201_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--ø€≥˝»ŒŒÒŒÔ∆∑
		for i, item in x210201_g_DemandItem do
			DelItem( sceneId, selfId, item.id, item.num )
		end
		DelMission( sceneId,selfId,  x210201_g_MissionId )
		--…Ë÷√»ŒŒÒ“—æ≠±ªÕÍ≥…π˝
		MissionCom( sceneId,selfId,  x210201_g_MissionId )
		--ÃÌº”»ŒŒÒΩ±¿¯
		AddMoney(sceneId,selfId,x210201_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,15)
		--…Ë÷√»ŒŒÒ“—æ≠±ªÕÍ≥…π˝
		Msg2Player(  sceneId, selfId,"#YNhiÆm v¯ ho‡n th‡nh#W: L•n •u giao h‡ng",MSG2PLAYER_PARA )
		CallScriptFunction( 210202, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x210201_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x210201_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x210201_OnItemChanged( sceneId, selfId, itemdataId )
end
