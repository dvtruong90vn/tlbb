--’“»À»ŒŒÒ
--’‘ÃÏ ¶—∞’“V‚n PhiÍu PhiÍu
--MisDescBegin
--Ω≈±æ∫≈
x210214_g_ScriptId = 210214

--Ω” ‹»ŒŒÒNPC Ù–‘
x210214_g_Position_X=400
x210214_g_Position_Z=218
x210214_g_SceneID=2
x210214_g_AccomplishNPC_Name="V‚n PhiÍu PhiÍu"

--»ŒŒÒ∫≈
x210214_g_MissionId = 454

--…œ“ª∏ˆ»ŒŒÒµƒID
--g_MissionIdPre = 

--ƒø±ÍNPC
x210214_g_Name	="V‚n PhiÍu PhiÍu"

--»ŒŒÒπÈ¿‡
x210214_g_MissionKind = 13

--»ŒŒÒµ»º∂
x210214_g_MissionLevel = 5

-- «∑Ò «æ´”¢»ŒŒÒ
x210214_g_IfMissionElite = 0

--»ŒŒÒ√˚
x210214_g_MissionName="Con tr‚n th˙ th— nh§t"
x210214_g_MissionInfo="#{event_dali_0020}"
x210214_g_MissionTarget="–™n #YTr˘ng –i¨u phﬂ∂ng#W ∑ #Gﬂ∂ng læn phÌa –Ùng c¸a th‡nh –’i L˝#W tÏm phﬂ∂ng ch¸ #RV‚n PhiÍu PhiÍu #W#{_INFOAIM400,218,2,V‚n PhiÍu PhiÍu}.#r#YNh°c nh∑: #G?n chuµt ph‰i v‡o t˜a µ NPC cÛ th¨ tÒ µng d∏ch chuy¨n ™n ch≤ NPC Û!"
x210214_g_MissionComplete="Ta khÙng t˘y tiÆn væi ngﬂ∂i bÏnh thﬂ∂ng k™t giao b¢ng hÊu, nhﬂng NgﬂΩi l‡ b’n c¸a T— –’i ThiÆn Nh‚n. Vßy ta s® nÛi cho ngﬂΩi bi™t mµt v‡i i´u hay."
x210214_g_MoneyBonus=72
x210214_g_SignPost = {x = 400, z = 218, tip = "V‚n PhiÍu PhiÍu"}

x210214_g_Custom	= { {id="–„ tÏm ﬂ˛c V‚n PhiÍu PhiÍu",num=1} }
x210214_g_IsMissionOkFail = 1		--±‰¡øµƒµ⁄0Œª

--MisDescEnd
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x210214_OnDefaultEvent( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if (IsMissionHaveDone(sceneId,selfId,x210214_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210214_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210214_g_Name then
			x210214_OnContinue( sceneId, selfId, targetId )
		end
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210214_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210214_g_Name then
			--∑¢ÀÕ»ŒŒÒΩ” ‹ ±œ‘ æµƒ–≈œ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210214_g_MissionName)
				AddText(sceneId,x210214_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210214_g_MissionTarget)
				AddMoneyBonus( sceneId, x210214_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210214_g_ScriptId,x210214_g_MissionId)
		end
    end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x210214_OnEnumerate( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ªπŒ¥ÕÍ≥……œ“ª∏ˆ»ŒŒÒ
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
    if IsMissionHaveDone(sceneId,selfId,x210214_g_MissionId) > 0 then
    	return 
    --»Áπ˚“—Ω”¥À»ŒŒÒ
    elseif IsHaveMission(sceneId,selfId,x210214_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210214_g_Name then
			AddNumText(sceneId, x210214_g_ScriptId,x210214_g_MissionName,2,-1);
		end
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210214_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210214_g_Name then
			AddNumText(sceneId,x210214_g_ScriptId,x210214_g_MissionName,1,-1);
		end
    end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x210214_CheckAccept( sceneId, selfId )
	--–Ë“™5º∂≤≈ƒ‹Ω”
	if GetLevel( sceneId, selfId ) >= 5 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ω” ‹
--**********************************
function x210214_OnAccept( sceneId, selfId )
	--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	AddMission( sceneId,selfId, x210214_g_MissionId, x210214_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNhßn nhiÆm v¯#W: Con tr‚n th˙ th— nh§t",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210214_g_SignPost.x, x210214_g_SignPost.z, x210214_g_SignPost.tip )

	-- …Ë÷√»ŒŒÒÕÍ≥…±Í÷æ
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210214_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--∑≈∆˙
--**********************************
function x210214_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
    DelMission( sceneId, selfId, x210214_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210214_g_SignPost.tip )
end

--**********************************
--ºÃ–¯
--**********************************
function x210214_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±µƒÀµ√˜–≈œ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210214_g_MissionName)
		AddText(sceneId,x210214_g_MissionComplete)
		AddMoneyBonus( sceneId, x210214_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210214_g_ScriptId,x210214_g_MissionId)
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x210214_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210214_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ã·Ωª
--**********************************
function x210214_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210214_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--ÃÌº”»ŒŒÒΩ±¿¯
		AddMoney(sceneId,selfId,x210214_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,400)
		DelMission( sceneId,selfId,  x210214_g_MissionId )
		--…Ë÷√»ŒŒÒ“—æ≠±ªÕÍ≥…π˝
		MissionCom( sceneId,selfId,  x210214_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhiÆm v¯ ho‡n th‡nh#W: Con tr‚n th˙ th— nh§t",MSG2PLAYER_PARA )
		CallScriptFunction( 210215, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x210214_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x210214_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x210214_OnItemChanged( sceneId, selfId, itemdataId )
end
