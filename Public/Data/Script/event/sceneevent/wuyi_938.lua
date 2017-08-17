--Vı Di  ‹»À÷ÆÕ–
--212123

--MisDescBegin
--Ω≈±æ∫≈
x212123_g_ScriptId = 212123

--Ti™p th¯»ŒŒÒNPC Ù–‘
x212123_g_Position_X=195
x212123_g_Position_Z=53
x212123_g_SceneID=32
x212123_g_AccomplishNPC_Name="Kh˙c DﬂΩng"

--»ŒŒÒ∫≈
x212123_g_MissionId = 938

--ƒø±ÍNPC
x212123_g_Name	="Kh˙c DﬂΩng"

--»ŒŒÒπÈ¿‡
x212123_g_MissionKind = 43

--–∆ng c§p nhiÆm v¯ 
x212123_g_MissionLevel = 52

--–˙ng∑Ò–˙ngTinh”¢»ŒŒÒ
x212123_g_IfMissionElite = 0

--»ŒŒÒ√˚
x212123_g_MissionName="–ﬂ˛c ngﬂ∂i nh∂ cßy"
x212123_g_MissionInfo="#{Mis_30_60_desc_013}"
x212123_g_MissionTarget="    Mang tÌn h‡m c¸a Kh˙c –oan ﬂa cho doanh tr’i tu•n tra Kh˙c DﬂΩng ∑ Vı Di SΩn #{_INFOAIM194,52,32, Kh˙c DﬂΩng}. "
x212123_g_MissionContinue="  Ta b≤ng nhæ ™n ’i ca ∑ Nh’n B°c ....."
x212123_g_MissionComplete="  ThÏ ra l‡ thﬂ c¸a ’i ca, xa nhau b§y l‚u, khÙng l® ’i ca vÁn nhæ ™n ta!"

x212123_g_MoneyBonus=12000
x212123_g_exp=15000

x212123_g_Custom	= { {id="–„ l§y ﬂ˛c tÌn h‡m c¸a Kh˙c –oan",num=1} }
x212123_g_IsMissionOkFail = 0

x212123_g_MisItemId = 40004420 --«˙∂Àto’ µ –≈∫Ø

--MisDescEnd
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x212123_OnDefaultEvent( sceneId, selfId, targetId )
	--»Áπ˚ÕÊº“ÕÍ≥…π˝C·i n‡y »ŒŒÒ
	if (IsMissionHaveDone(sceneId,selfId,x212123_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212123_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212123_g_Name then
			--x212123_OnContinue( sceneId, selfId, targetId )
			BeginEvent(sceneId)
				AddText(sceneId,x212123_g_MissionName)
				AddText(sceneId,x212123_g_MissionContinue)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212123_g_ScriptId,x212123_g_MissionId,1)		
			
		end
	
	--Thˆa m„n»ŒŒÒΩ” ’Ãıº˛
	elseif x212123_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212123_g_Name then
			--∑¢ÀÕ»ŒŒÒTi™p th¯ ±œ‘ æto’ µ –≈œ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212123_g_MissionName)
				AddText(sceneId,x212123_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212123_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212123_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212123_g_ScriptId,x212123_g_MissionId)
		end
	end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x212123_OnEnumerate( sceneId, selfId, targetId )

	--»Áπ˚ÕÊº“ÕÍ≥…π˝C·i n‡y »ŒŒÒ
	if IsMissionHaveDone(sceneId,selfId,x212123_g_MissionId) > 0 then
		return 
	--»Áπ˚“—Ω”¥À»ŒŒÒ
	elseif IsHaveMission(sceneId,selfId,x212123_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212123_g_Name then
			AddNumText(sceneId, x212123_g_ScriptId,x212123_g_MissionName,2,-1);
		end
	--Thˆa m„n»ŒŒÒΩ” ’Ãıº˛
	elseif x212123_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212123_g_Name then
			AddNumText(sceneId,x212123_g_ScriptId,x212123_g_MissionName,1,-1);
		end
	end

end

--**********************************
--ºÏ≤‚Ti™p th¯Ãıº˛
--**********************************
function x212123_CheckAccept( sceneId, selfId )
	-- 1,ºÏ≤‚ÕÊº“–˙ng≤ª–˙ng“—æ≠◊ˆπ˝
	if (IsMissionHaveDone(sceneId,selfId,x212123_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µ»c§pºÏ≤‚
	if GetLevel(sceneId, selfId) < x212123_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Ti™p th¯
--**********************************
function x212123_OnAccept( sceneId, selfId, targetId )
	if x212123_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- ºÏ≤ÈÕÊº“to’ µ –ƒ∑®–˙ng≤ª–˙ng¥ÔµΩ¡À“™«Û(«∞¡˘÷÷–∆ng c§p t‚m ph·p ¥Û”⁄µ»”⁄50c§p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 50 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("NhiÆm v¯ n‡y yÍu c•u 6 lo’i t‚m ph·p ´u ’t c§p 50.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end

	-- C•n Õ¯ÕÊº“…Ì…œ∂™mµt c·iŒÔ∆∑
	BeginAddItem( sceneId )
		AddItem( sceneId, x212123_g_MisItemId, 1 )
	local ret = EndAddItem( sceneId, selfId )
	
	if ret > 0  then
		--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
		ret = AddMission(sceneId,selfId, x212123_g_MissionId, x212123_g_ScriptId, 0, 0, 0)
		if ret <= 0 then
			Msg2Player(sceneId, selfId,"#YNhßt k˝ nhiÆm v¯ c¸a c·c h’ „ •y" , MSG2PLAYER_PARA)
	   	BeginEvent(sceneId)
				AddText(sceneId, "#YNhßt k˝ nhiÆm v¯ c¸a c·c h’ „ •y")
		  EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
			return
		end
		Msg2Player(sceneId, selfId,"#Y Ti™p nhßn nhiÆm v¯: Nhßn sÒ ¸y th·c",MSG2PLAYER_PARA)
	 	BeginEvent(sceneId)
			AddText(sceneId, "#Y Ti™p nhßn nhiÆm v¯: Nhßn sÒ ¸y th·c")
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	
		local misIndex = GetMissionIndexByID(sceneId,selfId,x212123_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		AddItemListToHuman(sceneId,selfId)
	else
		--Ã· æ≤ªƒ‹Ω”»ŒŒÒ¡À
		local strText = "Y‘ nhiÆm v¯ c¸a c·c h’ „ •y."
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
	end
	
end

--**********************************
--∑≈∆˙
--**********************************
function x212123_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶to’ µ »ŒŒÒ
  DelMission( sceneId, selfId, x212123_g_MissionId )
	DelItem( sceneId, selfId, x212123_g_MisItemId, 1 )	
end

--**********************************
--ºÃ–¯
--**********************************
function x212123_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±to’ µ À i¨m˜–≈œ¢
  BeginEvent(sceneId)
	AddText(sceneId,x212123_g_MissionName)
	AddText(sceneId,x212123_g_MissionComplete)
	AddMoneyBonus( sceneId, x212123_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212123_g_ScriptId,x212123_g_MissionId)
end

--**********************************
--ºÏ≤‚–˙ng∑Òø…“‘Ã·Ωª
--**********************************
function x212123_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212123_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ã·Ωª
--**********************************
function x212123_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212123_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--ÃÌº”»ŒŒÒΩ±¿¯
		DelItem( sceneId, selfId, x212123_g_MisItemId, 1 )	
		AddMoney(sceneId,selfId, x212123_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212123_g_exp)
		DelMission( sceneId, selfId, x212123_g_MissionId )
		MissionCom( sceneId, selfId, x212123_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho‡n th‡nh nhiÆm v¯: Nhßn sÒ ¸y th·c",MSG2PLAYER_PARA )
	end
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x212123_OnKillObject( sceneId, selfId, objdataId )
	
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x212123_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x212123_OnItemChanged( sceneId, selfId, itemdataId )
	
end

