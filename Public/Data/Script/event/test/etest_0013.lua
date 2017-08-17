--“π∑√¬Ì∑Ú»À
--—„±±

--Ω≈±æ∫≈
x804013_g_scriptId = 804013
--»ŒŒÒ∫≈
x804013_g_MissionId = 4013


local  PlayerName=""
--»ŒŒÒ√˚
x804013_g_missionName="M„ Phu Nh‚n"
x804013_g_missionText_0="M„ Phu Nh‚n"
x804013_g_missionText_1="Hµ tØng –o‡n ChÌnh Thu•n ™n ch≤ M„ Phu Nh‚n"

x804013_g_missionText_2="NgﬂΩi l‡ ai, ™n cØc l˝ n‡y l‡m gÏ?"

x804013_g_MoneyBonus=80000
x804013_g_ItemBonus={{id=10101001,num=1}}
x804013_g_name	= ""

--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x804013_OnDefaultEvent( sceneId, selfId, targetId )
    --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
	if( IsHaveMission(sceneId,selfId,x804013_g_MissionId) > 0)  then
		if x804013_CheckSubmit(sceneId,selfId) == 1 then
			BeginEvent(sceneId)
			AddText(sceneId,x804013_g_missionName)
			AddMoneyBonus( sceneId, x804013_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId,1)
		else
			BeginEvent(sceneId)
			AddText(sceneId,x804013_g_missionName)
			AddText(sceneId,"VÙ danh chi bØi")
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId,0)
		end
			
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
  elseif x804013_CheckAccept(sceneId,selfId) > 0 then
		name = GetName(sceneId,selfId)
		playname = format("C·c h’ tÍn l‡: %s\n",name)
		--∑¢ÀÕ»ŒŒÒΩ” ‹ ±œ‘ æµƒ–≈œ¢
		BeginEvent(sceneId)
		AddText(sceneId,x804013_g_missionName)
		AddText(sceneId,x804013_g_missionText_0)
		AddText(sceneId,playname)
		AddText(sceneId,x804013_g_missionText_1)
		AddMoneyBonus( sceneId, x804013_g_MoneyBonus )
		for i, item in x804013_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId)
  end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x804013_OnEnumerate( sceneId, selfId, targetId )
   if IsHaveMission(sceneId,selfId,x804013_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x804013_g_name then
			AddNumText(sceneId, x804013_g_scriptId,x804013_g_missionName);
		end
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x804013_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x804013_g_scriptId,x804013_g_missionName)
    end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x804013_CheckAccept( sceneId, selfId )
	return 1	
end

--**********************************
--Ω” ‹
--**********************************
function x804013_OnAccept( sceneId, selfId ,targetId)
	--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	AddMission( sceneId,selfId, x804013_g_MissionId, x804013_g_scriptId, 0, 0, 0 )
	timerIndex =SetTimer(sceneId,selfId,x804013_g_scriptId,"OnTimer",1000)
	misIndex = GetMissionIndexByID(sceneId,selfId,x804013_g_MissionId)
	SetMissionByIndex(sceneId,selfId,misIndex,0,timerIndex)
	SetMissionByIndex(sceneId,selfId,misIndex,1,targetId)
	SetPatrolId(sceneId,targetId,0)
end

function x804013_OnTimer(sceneId,selfId)
	misIndex = GetMissionIndexByID(sceneId,selfId,x804013_g_MissionId)
	x804013_g_sdhyTargetId = GetMissionParam(sceneId,selfId,misIndex,1)
  if IsInDist(sceneId,selfId,x804013_g_sdhyTargetId,64) < 0 then
  	DelMission(sceneId,selfId,x804013_g_MissionId)
  	StopTimer(sceneId,selfId,GetMissionParam(sceneId,selfId,misIndex,0))
  	Msg2Player(sceneId,selfId,"NhiÆm v¯ „ b∏ h¸y bˆ!",MSG2PLAYER_PARA)
  	
  	--protectTargetId = GetMissionParam(sceneId,selfId,misIndex,1)
  	--RemoveMonster(sceneId,protectTargetId)
  end		
end

--**********************************
--∑≈∆˙
--**********************************
function x804013_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
    DelMission( sceneId, selfId, x804013_g_MissionId )
end

--**********************************
--ºÃ–¯
--**********************************
function x804013_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±µƒÀµ√˜–≈œ¢
    BeginEvent(sceneId)
    AddText(sceneId,x804013_g_missionName)
     AddText(sceneId,x804013_g_missionText_2)
   AddMoneyBonus( sceneId, x804013_g_MoneyBonus )
    for i, item in x804013_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId)
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x804013_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x804013_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	if GetTitle(sceneId,selfId,3) == 0 then
		return 1
	end
	return 0
end

--**********************************
--Ã·Ωª
--**********************************
function x804013_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x804013_CheckSubmit( sceneId, selfId ) == 1 then
    BeginAddItem(sceneId)
		for i, item in x804013_g_ItemBonus do
			AddItem( sceneId,item.id, item.num )
		end
		ret = EndAddItem(sceneId,selfId)
		--ÃÌº”»ŒŒÒΩ±¿¯
		if ret > 0 then
			if DelMission( sceneId,selfId,  x804013_g_MissionId ) ~= 1 then
				return
			end
			if DelItem(sceneId,selfId,20001003,1) ~= 1 then
				return
			end
			
			--…Ë÷√»ŒŒÒ“—æ≠±ªÕÍ≥…π˝
			MissionCom( sceneId,selfId,  x804013_g_MissionId )
			AddItemListToHuman(sceneId,selfId)
			AddMoney(sceneId,selfId,x804013_g_MoneyBonus );
			
			CallScriptFunction( 201001, "OnDefaultEvent",sceneId, selfId, targetId)
		else
		--»ŒŒÒΩ±¿¯√ª”–º”≥…π¶
		end
	        
	end
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x804013_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x804013_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x804013_OnItemChanged( sceneId, selfId, itemdataId )
end








