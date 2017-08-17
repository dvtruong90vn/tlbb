--’“»À»ŒŒÒ
--’‘ÃÏ ¶—∞’“–o‡n DiÍn Kh·nh
--MisDescBegin
--Ω≈±æ∫≈
x210225_g_ScriptId = 210225

--Ω” ‹»ŒŒÒNPC Ù–‘
x210225_g_Position_X=402
x210225_g_Position_Z=358
x210225_g_SceneID=2
x210225_g_AccomplishNPC_Name="–o‡n DiÍn Kh·nh"

--»ŒŒÒ∫≈
x210225_g_MissionId = 705

--…œ“ª∏ˆ»ŒŒÒµƒID
x210225_g_MissionIdPre = 704

--ƒø±ÍNPC
x210225_g_Name	="–o‡n DiÍn Kh·nh"

--»ŒŒÒπÈ¿‡
x210225_g_MissionKind = 13

--»ŒŒÒµ»º∂
x210225_g_MissionLevel = 9

-- «∑Ò «æ´”¢»ŒŒÒ
x210225_g_IfMissionElite = 0

--»ŒŒÒ√˚
x210225_g_MissionName="–o‡n DiÍn Kh·nh"
x210225_g_MissionInfo="#{event_dali_0035}"
x210225_g_MissionTarget="ó #GhÎm Ng˜c NhÓ phÌa –Ùng Nam th‡nh –’i L˝#W tÏm #R–o‡n DiÍn Kh·nh #W#{_INFOAIM402,358,2,–o‡n DiÍn Kh·nh}.#r#YNh°c nh∑: #G?n chuµt ph‰i v‡o t˜a µ NPC cÛ th¨ tÒ µng d∏ch chuy¨n ™n ch≤ NPC Û!"
x210225_g_MissionComplete="#{event_dali_0036}"
x210225_g_MoneyBonus=72
x210225_g_SignPost = {x = 402, z = 358, tip = "–o‡n DiÍn Kh·nh"}

x210225_g_Custom	= { {id="–„ tÏm ﬂ˛c –o‡n DiÍn Kh·nh",num=1} }
x210225_g_IsMissionOkFail = 1		--±‰¡øµƒµ⁄0Œª

--MisDescEnd
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x210225_OnDefaultEvent( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if (IsMissionHaveDone(sceneId,selfId,x210225_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210225_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210225_g_Name then
			x210225_OnContinue( sceneId, selfId, targetId )
		end
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210225_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210225_g_Name then
			--∑¢ÀÕ»ŒŒÒΩ” ‹ ±œ‘ æµƒ–≈œ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210225_g_MissionName)
				AddText(sceneId,x210225_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210225_g_MissionTarget)
				AddMoneyBonus( sceneId, x210225_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210225_g_ScriptId,x210225_g_MissionId)
		end
    end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x210225_OnEnumerate( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ªπŒ¥ÕÍ≥……œ“ª∏ˆ»ŒŒÒ
    if 	IsMissionHaveDone(sceneId,selfId,x210225_g_MissionIdPre) <= 0 then
    	return
    end
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if IsMissionHaveDone(sceneId,selfId,x210225_g_MissionId) > 0 then
    	return 
    --»Áπ˚“—Ω”¥À»ŒŒÒ
    elseif IsHaveMission(sceneId,selfId,x210225_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210225_g_Name then
			AddNumText(sceneId, x210225_g_ScriptId,x210225_g_MissionName,2,-1);
		end
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210225_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210225_g_Name then
			AddNumText(sceneId,x210225_g_ScriptId,x210225_g_MissionName,1,-1);
		end
    end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x210225_CheckAccept( sceneId, selfId )
	--–Ë“™8º∂≤≈ƒ‹Ω”
	if GetLevel( sceneId, selfId ) >= 8 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ω” ‹
--**********************************
function x210225_OnAccept( sceneId, selfId )
	--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	AddMission( sceneId,selfId, x210225_g_MissionId, x210225_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNhßn nhiÆm v¯#W: –o‡n DiÍn Kh·nh",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210225_g_SignPost.x, x210225_g_SignPost.z, x210225_g_SignPost.tip )

	-- …Ë÷√»ŒŒÒÕÍ≥…±Í÷æ
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210225_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--∑≈∆˙
--**********************************
function x210225_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
    DelMission( sceneId, selfId, x210225_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210225_g_SignPost.tip )
end

--**********************************
--ºÃ–¯
--**********************************
function x210225_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±µƒÀµ√˜–≈œ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210225_g_MissionName)
		AddText(sceneId,x210225_g_MissionComplete)
		AddMoneyBonus( sceneId, x210225_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210225_g_ScriptId,x210225_g_MissionId)
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x210225_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210225_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ã·Ωª
--**********************************
function x210225_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210225_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--ÃÌº”»ŒŒÒΩ±¿¯
		AddMoney(sceneId,selfId,x210225_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,100)
		DelMission( sceneId,selfId,  x210225_g_MissionId )
		--…Ë÷√»ŒŒÒ“—æ≠±ªÕÍ≥…π˝
		MissionCom( sceneId,selfId,  x210225_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhiÆm v¯ ho‡n th‡nh#W: –o‡n DiÍn Kh·nh",MSG2PLAYER_PARA )
		CallScriptFunction( 210226, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x210225_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x210225_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x210225_OnItemChanged( sceneId, selfId, itemdataId )
end
