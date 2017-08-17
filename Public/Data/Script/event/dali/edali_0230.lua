--’“»À»ŒŒÒ
--’‘ÃÏ ¶—∞’“Ho‡ng Mi TÂng
--MisDescBegin
--Ω≈±æ∫≈
x210230_g_ScriptId = 210230

--Ω” ‹»ŒŒÒNPC Ù–‘
x210230_g_Position_X=435
x210230_g_Position_Z=202
x210230_g_SceneID=2
x210230_g_AccomplishNPC_Name="Ho‡ng Mi TÂng"

--»ŒŒÒ∫≈
x210230_g_MissionId = 710

--…œ“ª∏ˆ»ŒŒÒµƒID
--g_MissionIdPre =

--ƒø±ÍNPC
x210230_g_Name	="Ho‡ng Mi TÂng"

--»ŒŒÒπÈ¿‡
x210230_g_MissionKind = 13

--»ŒŒÒµ»º∂
x210230_g_MissionLevel = 9

-- «∑Ò «æ´”¢»ŒŒÒ
x210230_g_IfMissionElite = 0

--»ŒŒÒ√˚
x210230_g_MissionName="–‰ Ti¨u Mµc Nh‚n H’ng"
x210230_g_MissionInfo="#{event_dali_0043}"
x210230_g_MissionTarget="–™n #GNiÍm Hoa TÒ#W ∑ c¸a gÛc #G–Ùng B°c th‡nh –’i L˝#W tÏm #RHo‡ng Mi TÂng #W#{_INFOAIM435,202,2,Ho‡ng Mi TÂng}.#r#YNh°c nh∑: #G?n chuµt ph‰i v‡o t˜a µ NPC cÛ th¨ tÒ µng d∏ch chuy¨n ™n ch≤ NPC Û!"
x210230_g_MissionComplete="ThÌ ch¸, ch˙ng ta l’i g£p m£t r∞i. Xin thÌ ch¸ chu¶n b∏ •y ¸ dﬂ˛c ph¶m v‡ trang b∏ tu luyÆn, r∞i v‡o #GTi¨u Mµc Nh‚n H’ng#W."
x210230_g_MoneyBonus=72
x210230_g_SignPost = {x = 435, z = 202, tip = "Ho‡ng Mi TÂng"}

x210230_g_Custom	= { {id="–„ tÏm th§y Ho‡ng Mi TÂng",num=1} }
x210230_g_IsMissionOkFail = 1		--±‰¡øµƒµ⁄0Œª

--MisDescEnd
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x210230_OnDefaultEvent( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if (IsMissionHaveDone(sceneId,selfId,x210230_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210230_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210230_g_Name then
			x210230_OnContinue( sceneId, selfId, targetId )
		end
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210230_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210230_g_Name then
			--∑¢ÀÕ»ŒŒÒΩ” ‹ ±œ‘ æµƒ–≈œ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210230_g_MissionName)
				AddText(sceneId,x210230_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210230_g_MissionTarget)
				AddMoneyBonus( sceneId, x210230_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210230_g_ScriptId,x210230_g_MissionId)
		end
    end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x210230_OnEnumerate( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ªπŒ¥ÕÍ≥……œ“ª∏ˆ»ŒŒÒ
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if IsMissionHaveDone(sceneId,selfId,x210230_g_MissionId) > 0 then
    	return
    --»Áπ˚“—Ω”¥À»ŒŒÒ
    elseif IsHaveMission(sceneId,selfId,x210230_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210230_g_Name then
			AddNumText(sceneId, x210230_g_ScriptId,x210230_g_MissionName,2,-1);
		end
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210230_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210230_g_Name then
			AddNumText(sceneId,x210230_g_ScriptId,x210230_g_MissionName,1,-1);
		end
    end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x210230_CheckAccept( sceneId, selfId )
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
function x210230_OnAccept( sceneId, selfId )
	--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	AddMission( sceneId,selfId, x210230_g_MissionId, x210230_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNhßn nhiÆm v¯#W: –‰ Ti¨u Mµc Nh‚n H’ng",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210230_g_SignPost.x, x210230_g_SignPost.z, x210230_g_SignPost.tip )

	-- …Ë÷√»ŒŒÒÕÍ≥…±Í÷æ
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210230_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--∑≈∆˙
--**********************************
function x210230_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
  DelMission( sceneId, selfId, x210230_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210230_g_SignPost.tip )
end

--**********************************
--ºÃ–¯
--**********************************
function x210230_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±µƒÀµ√˜–≈œ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210230_g_MissionName)
		AddText(sceneId,x210230_g_MissionComplete)
		AddMoneyBonus( sceneId, x210230_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210230_g_ScriptId,x210230_g_MissionId)
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x210230_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210230_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ã·Ωª
--**********************************
function x210230_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210230_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--ÃÌº”»ŒŒÒΩ±¿¯
		AddMoney(sceneId,selfId,x210230_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,300)
		DelMission( sceneId,selfId,  x210230_g_MissionId )
		--…Ë÷√»ŒŒÒ“—æ≠±ªÕÍ≥…π˝
		MissionCom( sceneId,selfId,  x210230_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhiÆm v¯ ho‡n th‡nh#W: –‰ Ti¨u Mµc Nh‚n H’ng",MSG2PLAYER_PARA )
		CallScriptFunction( 210231, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x210230_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x210230_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x210230_OnItemChanged( sceneId, selfId, itemdataId )
end
