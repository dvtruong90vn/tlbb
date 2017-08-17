--212119
--Long Tuy´n ‘¯æ≠≥’øÒ…ŸƒÍ ±

--∞—ŒÃºæ÷Æto’ µ ‚„ª⁄–≈ ﬂa cho Ω…ΩÀ¬to’ µ ∑®ƒÓ.

--MisDescBegin
--Ω≈±æ∫≈
x212119_g_ScriptId = 212119

--Ti™p th¯»ŒŒÒNPC Ù–‘
x212119_g_Position_X=208
x212119_g_Position_Z=62
x212119_g_SceneID=31
x212119_g_AccomplishNPC_Name="Ph·p NiÆm"

--»ŒŒÒ∫≈
x212119_g_MissionId = 929

--ƒø±ÍNPC
x212119_g_Name	="Ph·p NiÆm"

--»ŒŒÒπÈ¿‡
x212119_g_MissionKind = 42

--–∆ng c§p nhiÆm v¯ 
x212119_g_MissionLevel = 36

--–˙ng∑Ò–˙ngTinh”¢»ŒŒÒ
x212119_g_IfMissionElite = 0

--»ŒŒÒ√˚
x212119_g_MissionName="Th∂i tu±i trÎ ngÙng cu∞ng"
x212119_g_MissionInfo="#{Mis_30_60_desc_004}"
x212119_g_MissionTarget="    Mang thﬂ hØi l≤i c¸a ‘ng QuÌ Chi ™n Long Tuy´n Kim SΩn TÒ giao cho Ph·p NiÆm #{_INFOAIM207,63,31, Ph·p NiÆm}. "
x212119_g_MissionContinue="  N™u cÛ th¨ l‡m l’i l•n nÊa, ta s® ch˜n th™ n‡o ‚y ? –„ bi™t sÒ thßt v‡ hﬂ ‰o khÛ ph‚n biÆt, sao khÙng lÒa ch˜n theo ti™ng g˜i c¸a linh h∞n"
x212119_g_MissionComplete="  Tr‰i qua nhÊng thÂng tr•m c¸a cuµc ∂i, nhÊng th— cÙng danh l˛i lµc cÛ ·ng l‡ gÏ, h„y ¨ nÛ bay theo l‡n giÛ!"

x212119_g_MoneyBonus=5000
x212119_g_exp=9000

x212119_g_Custom	= { {id="–„ l§y ﬂ˛c thﬂ hØi l≤i c¸a ‘ng Qu˝ Chi",num=1} }
x212119_g_IsMissionOkFail = 0

x212119_g_MisItemId = 40004418 --ŒÃºæ÷Æto’ µ ‚„ª⁄–≈

--MisDescEnd
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x212119_OnDefaultEvent( sceneId, selfId, targetId )
	--»Áπ˚ÕÊº“ÕÍ≥…π˝C·i n‡y »ŒŒÒ
	if (IsMissionHaveDone(sceneId,selfId,x212119_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212119_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212119_g_Name then
			--x212119_OnContinue( sceneId, selfId, targetId )
			BeginEvent(sceneId)
				AddText(sceneId,x212119_g_MissionName)
				AddText(sceneId,x212119_g_MissionContinue)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212119_g_ScriptId,x212119_g_MissionId,1)		
			
		end
	
	--Thˆa m„n»ŒŒÒΩ” ’Ãıº˛
	elseif x212119_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212119_g_Name then
			--∑¢ÀÕ»ŒŒÒTi™p th¯ ±œ‘ æto’ µ –≈œ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212119_g_MissionName)
				AddText(sceneId,x212119_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212119_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212119_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212119_g_ScriptId,x212119_g_MissionId)
		end
	end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x212119_OnEnumerate( sceneId, selfId, targetId )

	--»Áπ˚ÕÊº“ÕÍ≥…π˝C·i n‡y »ŒŒÒ
	if IsMissionHaveDone(sceneId,selfId,x212119_g_MissionId) > 0 then
		return 
	--»Áπ˚“—Ω”¥À»ŒŒÒ
	elseif IsHaveMission(sceneId,selfId,x212119_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212119_g_Name then
			AddNumText(sceneId, x212119_g_ScriptId,x212119_g_MissionName,2,-1);
		end
	--Thˆa m„n»ŒŒÒΩ” ’Ãıº˛
	elseif x212119_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212119_g_Name then
			AddNumText(sceneId,x212119_g_ScriptId,x212119_g_MissionName,1,-1);
		end
	end

end

--**********************************
--ºÏ≤‚Ti™p th¯Ãıº˛
--**********************************
function x212119_CheckAccept( sceneId, selfId )
	-- 1,ºÏ≤‚ÕÊº“–˙ng≤ª–˙ng“—æ≠◊ˆπ˝
	if (IsMissionHaveDone(sceneId,selfId,x212119_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µ»c§pºÏ≤‚
	if GetLevel(sceneId, selfId) < x212119_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Ti™p th¯
--**********************************
function x212119_OnAccept( sceneId, selfId, targetId )
	if x212119_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- ºÏ≤ÈÕÊº“to’ µ –ƒ∑®–˙ng≤ª–˙ng¥ÔµΩ¡À“™«Û(«∞¡˘÷÷–∆ng c§p t‚m ph·p ¥Û”⁄µ»”⁄30c§p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 35 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("NhiÆm v¯ n‡y yÍu c•u 6 lo’i t‚m ph·p ´u ’t c§p 35.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	-- C•n Õ¯ÕÊº“…Ì…œ∂™mµt c·iŒÔ∆∑
	BeginAddItem( sceneId )
		AddItem( sceneId, x212119_g_MisItemId, 1 )
	local ret = EndAddItem( sceneId, selfId )
	
	if ret > 0  then
		--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
		ret = AddMission(sceneId,selfId, x212119_g_MissionId, x212119_g_ScriptId, 0, 0, 0)
		if ret <= 0 then
			local strText = format("#YDanh s·ch nhiÆm v¯#W: c¸a c·c h’ „ •y r∞i")
			Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
	   	BeginEvent(sceneId)
				AddText(sceneId, strText)
		  EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
			return
		end
		local strText = format("#Y Ti™p nhßn nhiÆm v¯: Th∂i thi™u niÍn cu∞ng si")
		Msg2Player(sceneId, selfId, strText,MSG2PLAYER_PARA)
	 	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	
		local misIndex = GetMissionIndexByID(sceneId,selfId,x212119_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		AddItemListToHuman(sceneId,selfId)
	
	else
		--Ã· æ≤ªƒ‹Ω”»ŒŒÒ¡À
		local strText = "#Y ‘ nhiÆm v¯ c¸a c·c h’ „ •y."
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	
	end
	
end

--**********************************
--∑≈∆˙
--**********************************
function x212119_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶to’ µ »ŒŒÒ
  DelMission( sceneId, selfId, x212119_g_MissionId )
	DelItem( sceneId, selfId, x212119_g_MisItemId, 1 )	
end

--**********************************
--ºÃ–¯
--**********************************
function x212119_OnContinue( sceneId, selfId, targetId )
	--Ã·Ωª»ŒŒÒ ±to’ µ À i¨m˜–≈œ¢
  BeginEvent(sceneId)
	AddText(sceneId,x212119_g_MissionName)
	AddText(sceneId,x212119_g_MissionComplete)
	AddMoneyBonus( sceneId, x212119_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212119_g_ScriptId,x212119_g_MissionId)
end

--**********************************
--ºÏ≤‚–˙ng∑Òø…“‘Ã·Ωª
--**********************************
function x212119_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212119_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ã·Ωª
--**********************************
function x212119_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212119_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--ÃÌº”»ŒŒÒΩ±¿¯
		DelItem( sceneId, selfId, x212119_g_MisItemId, 1 )	
		AddMoney(sceneId,selfId, x212119_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212119_g_exp)
		DelMission( sceneId, selfId, x212119_g_MissionId )
		MissionCom( sceneId, selfId, x212119_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Ho‡n th‡nh nhiÆm v¯: Th∂i tu±i trÎ ngÙng cu∞ng",MSG2PLAYER_PARA )
	end
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x212119_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x212119_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x212119_OnItemChanged( sceneId, selfId, itemdataId )
end

