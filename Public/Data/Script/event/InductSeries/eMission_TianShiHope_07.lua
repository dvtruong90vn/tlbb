--´´½¨ÈË[ QUFEI 2008-04-30 10:27 UPDATE BugID 34171 ]
--½â¾öÁ÷Ê§ÂÊÒıµ¼ÈÎÎñÊÂ¼ş½Å±¾
--ÅÜÉÌÒıµ¼ÈÎÎñ_ÌìÊ¦toÕ ğµ ÆÚ´ı7

--MisDescBegin
--½Å±¾ºÅ
x500613_g_ScriptId	= 500613

--Ä¿±êÈÎÎñNPCÊôĞÔ
x500613_g_Position_X=160.2399
x500613_g_Position_Z=134.1486
x500613_g_SceneID=0
x500613_g_AccomplishNPC_Name="Châu Thiên Sß"

--Ç°ĞøÈÎÎñºÅ
x500613_g_PreMissionId	=	432
--ÈÎÎñºÅ
x500613_g_MissionId			= 433
--ÏÂmµt cáiÈÎÎñtoÕ ğµ ID
x500613_g_MissionIdNext	= 434
--ÏÂmµt cáiÈÎÎñtoÕ ğµ Index
x500613_g_MissionIndexNext	= 1018716
--ÏÂmµt cáiÈÎÎñtoÕ ğµ ScriptId
x500613_g_NextScriptId	= 006668
--Lînh Møc tiêu nhi®m vøËùTÕi ³¡¾°
x500613_g_AcceptNPC_SceneID	=	0
--Lînh ÈÎÎñnpc
x500613_g_Name 					= "Châu Thiên Sß"
--ÈÎÎñ¹éÀà
x500613_g_MissionKind			= 11
--ĞÆng c¤p nhi®m vø 
x500613_g_MissionLevel		= 40
--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x500613_g_IfMissionElite	= 0
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x500613_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»

--ÈÎÎñÎÄ±¾ÃèÊö
x500613_g_MissionName			= "Thiên sß kì ğãi [7]"
--ÈÎÎñÃèÊö
x500613_g_MissionInfo			= "#{YD_20080421_14}"
--Møc tiêu nhi®m vø
x500613_g_MissionTarget		= "#{YD_20080421_95}"
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x500613_g_ContinueInfo		= "#{YD_20080421_15}"
--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°
x500613_g_MissionComplete	= "#{YD_20080421_16}"
--¿ÉÒÔÍê³ÉtoÕ ğµ »·Êı
x500613_g_MaxRound	= 1
--¿ØÖÆ½Å±¾
x500613_g_ControlScript		= 001066

-- ÈÎÎñÍê³ÉÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
x500613_g_Custom	= { {id="Ğa thång lên c¤p 42",num=1} }
--MisDescEnd

--ÈÎÎñĞúng·ñÍê³É
x500613_g_Mission_IsComplete = 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»
--Ğúng·ñ´ïµ½µÈc¤ptoÕ ğµ ±ê¼Ç
x500613_g_RecordIdx 				 = 1		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
--ÈÎÎñ½Å±¾ºÅ¼ÇÂ¼
x500613_g_MissScriptID_Idx	 = 2		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ2Î»
--ÈÎÎñ·¢²¼NPC±ê¼Ç
x500613_g_AcceptNPC_Idx			 = 3		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ3Î» 1.LÕc Dß½ngNPC

x500613_g_AcceptMission_IDX		= 781	--½ÓÊÕÈÎÎñË÷Òı
x500613_g_CompleteMission_IDX	= 782	--Ìá½»ÈÎÎñË÷Òı

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
x500613_g_EventList	= {}

x500613_g_PlayerSlow_LVL					 = 40		-- Tiªp thøÈÎÎñtoÕ ğµ ×îµÍµÈc¤p

--½±Àø
x500613_g_MoneyBonus					=	1397
x500613_g_ExpBonus						= 5589

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
function x500613_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x500613_g_AcceptMission_IDX then
		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		if LuaFnGetName( sceneId, targetId ) ~= x500613_g_Name then
			x500613_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
			return 0
		end
		-- ÈÎÎñĞúng·ñÒÑÂú
		if IsMissionFull( sceneId, selfId ) == 1 then
			x500613_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- ¼ì²âÈÎÎñTiªp thøÌõ¼ş
		if x500613_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ½øÈëTiªp thøÈÎÎñ½çÃæ			
		x500613_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x500613_g_CompleteMission_IDX then
		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		if LuaFnGetName( sceneId, targetId ) ~= x500613_g_AccomplishNPC_Name then
			x500613_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
			return 0
		end
		-- Èç¹ûÒÑ¾­½ÓÁËÈÎÎñ
		if IsHaveMission( sceneId, selfId, x500613_g_MissionId) > 0 then
												
			--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId, x500613_g_MissionName)
				AddText(sceneId, x500613_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x500613_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500613_g_ScriptId, x500613_g_MissionId, bDone)
			
		else			
			x500613_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
			return 0
		end
	else
		x500613_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x500613_OnEnumerate( sceneId, selfId, targetId )

	if LuaFnGetName( sceneId, targetId ) ~= x500613_g_Name
		 or sceneId ~= x500613_g_SceneID then
		 
		 return 0
	end

	if IsHaveMission( sceneId, selfId, x500613_g_MissionId ) <= 0 then
		if IsMissionHaveDone( sceneId, selfId, x500613_g_MissionId ) <= 0
			 and LuaFnGetLevel( sceneId, selfId ) >= x500613_g_PlayerSlow_LVL then
			AddNumText( sceneId, x500613_g_ScriptId, x500613_g_MissionName, 1, x500613_g_AcceptMission_IDX )
		end
	else
		
		AddNumText( sceneId, x500613_g_ScriptId, x500613_g_MissionName, 2, x500613_g_CompleteMission_IDX )
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x500613_CheckAccept( sceneId, selfId, targetId )
	
	--¼ì²âÍæ¼ÒĞúng·ñ·ûºÏTiªp thøÈÎÎñtoÕ ğµ Ìõ¼ş
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500613_g_Name then
		x500613_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

	--¼ì²âµÈc¤p
	if LuaFnGetLevel( sceneId, selfId ) < x500613_g_PlayerSlow_LVL then
		local nStr = format( "#{YD_20080421_175}%d#{YD_20080421_176}", x500613_g_PlayerSlow_LVL )
		x500613_TalkInfo( sceneId, selfId, targetId, nStr )
		return 0
	end

	--ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, selfId, x500613_g_MissionId ) > 0 then
		-- x500613_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end
	if IsMissionHaveDone( sceneId, selfId, x500613_g_MissionId ) > 0 then
		return 0
	end

	return 1
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x500613_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500613_g_Name then
 		x500613_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

	if x500613_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local bAdd = AddMission( sceneId, selfId, x500613_g_MissionId, x500613_g_ScriptId, 0, 0, 0 )
	if bAdd >= 1 then

		-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
		local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500613_g_MissionId )
		
		--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
		SetMissionByIndex( sceneId, selfId, misIndex, x500613_g_Mission_IsComplete, 0 )
		SetMissionByIndex( sceneId, selfId, misIndex, x500613_g_RecordIdx, 0 )
		--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ2Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ
		SetMissionByIndex( sceneId, selfId, misIndex, x500613_g_MissScriptID_Idx, scriptId )		
		SetMissionByIndex(sceneId, selfId, misIndex, x500613_g_AcceptNPC_Idx, 1)

		local strText = "#{YD_20080421_229}" .. x500613_g_MissionName
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		
		-- Ğúng·ñ´ïµ½42c¤p
		local Playerlvl = LuaFnGetLevel( sceneId, selfId )
	  if Playerlvl >= 42 then
			SetMissionByIndex( sceneId, selfId, misIndex, x500613_g_Mission_IsComplete, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x500613_g_RecordIdx, 1 )
			x500613_NotifyTip( sceneId, selfId, "#{YD_20080421_198}" )
		end

	end

	return 1

end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x500613_OnAbandon( sceneId, selfId )

  if IsHaveMission( sceneId, selfId, x500613_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500613_g_MissionId )
	end
	
	return 0

end

--**********************************
--¼ÌĞø
--**********************************
function x500613_OnContinue( sceneId, selfId, targetId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500613_g_AccomplishNPC_Name then
		x500613_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

	-- ¼ì²éÈÎÎñĞúng·ñÍê³É
	if x500613_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500613_g_MissionName)
		AddText( sceneId, x500613_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500613_g_ScriptId,x500613_g_MissionId)
	
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x500613_CheckSubmit( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500613_g_AccomplishNPC_Name then
		x500613_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x500613_g_MissionId ) <= 0 then
		x500613_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
		return 0
	end

	-- Ğúng·ñ´ïµ½42c¤p
	local Playerlvl = LuaFnGetLevel( sceneId, selfId )
	if Playerlvl < 42 then
		x500613_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_199}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x500613_g_MissionId)

	-- ¼ì²âÈÎÎñĞúng·ñÍê³É	
	if GetMissionParam(sceneId, selfId, misIndex, x500613_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x500613_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500613_g_AccomplishNPC_Name then
		x500613_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

  -- ¼ì²éÈÎÎñĞúng·ñÍê³É
	if x500613_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x500613_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )				
		return 0
	end

	AddMoney( sceneId, selfId, x500613_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x500613_g_ExpBonus )

	-- ÈÎÎñË³ÀûÍê³É
	x500613_NotifyTip( sceneId, selfId, "#{YD_20080421_180}" )

	if IsHaveMission( sceneId, selfId, x500613_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x500613_g_MissionId )
	 	-- ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
	 	MissionCom( sceneId, selfId, x500613_g_MissionId )
	 	
	 	local strText = "#Y" .. x500613_g_MissionName .. "#{YD_20080421_230}"
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	 	
	 	-- µ¯³öºóĞøÈÎÎñTiªp thø½çÃæ
	 	if IsHaveMission( sceneId, selfId, x500613_g_MissionIdNext ) <= 0 and IsMissionHaveDone( sceneId, selfId, x500613_g_MissionIdNext ) <= 0 then
	 		CallScriptFunction( x500613_g_NextScriptId, "OnDefaultEvent", sceneId, selfId, targetId, x500613_g_MissionIndexNext )
	 	end	 		 		 	
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x500613_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎï
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x500613_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x500613_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--½ÓÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x500613_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--½»ÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x500613_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x500613_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--ÓëNPC¶Ô»°
--**********************************
function x500613_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--È¡ ği¬m±¾ÊÂ¼ştoÕ ğµ MissionId,ÓÃÓÚobjÎÄ¼şÖĞ¶Ô»°Çé¾°toÕ ğµ ÅĞ¶Ï
--**********************************
function x500613_GetEventMissionId( sceneId, selfId )	
	return x500613_g_MissionId
end

function x500613_AcceptMission( sceneId, selfId, targetId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500613_g_Name then
		x500613_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x500613_g_MissionName)
		AddText( sceneId, x500613_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{YD_20080421_95}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddMoneyBonus( sceneId, x500613_g_MoneyBonus)
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500613_g_ScriptId,x500613_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--»ñÈ¡¾ßÌåitemtoÕ ğµ ÏêÏ¸ĞÅÏ¢
function x500613_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--µÀ¾ßÊ¹ÓÃ
--**********************************
function x500613_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x500613_OnDie( sceneId, selfId, killerId )
end
