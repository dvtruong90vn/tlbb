--´´½¨ÈË[ QUFEI 2008-04-30 10:27 UPDATE BugID 34172 ]
--½â¾öÁ÷Ê§ÂÊÒıµ¼ÈÎÎñÊÂ¼ş½Å±¾
--äîÔËÒıµ¼ÈÎÎñ_ÌìÊ¦toÕ ğµ ÆÚ´ı9

--MisDescBegin
--½Å±¾ºÅ
x500615_g_ScriptId	= 500615

--Ä¿±êÈÎÎñNPCÊôĞÔ
x500615_g_Position_X=160.2399
x500615_g_Position_Z=134.1486
x500615_g_SceneID=0
x500615_g_AccomplishNPC_Name="Châu Thiên Sß"

--Ç°ĞøÈÎÎñºÅ
x500615_g_PreMissionId	=	475
--ÈÎÎñºÅ
x500615_g_MissionId			= 476
--ÏÂmµt cáiÈÎÎñtoÕ ğµ ID
x500615_g_MissionIdNext	= 477
--ÏÂmµt cáiÈÎÎñtoÕ ğµ Index
x500615_g_MissionIndexNext	= 1018724
--ÏÂmµt cáiÈÎÎñtoÕ ğµ ScriptId
x500615_g_NextScriptId	= 006668
--Lînh Møc tiêu nhi®m vøËùTÕi ³¡¾°
x500615_g_AcceptNPC_SceneID	=	0
--Lînh ÈÎÎñnpc
x500615_g_Name 					= "Châu Thiên Sß"
--ÈÎÎñ¹éÀà
x500615_g_MissionKind			= 11
--ĞÆng c¤p nhi®m vø 
x500615_g_MissionLevel		= 45
--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x500615_g_IfMissionElite	= 0
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x500615_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»

--ÈÎÎñÎÄ±¾ÃèÊö
x500615_g_MissionName			= "Thiên sß kì ğãi [9]"
--ÈÎÎñÃèÊö
x500615_g_MissionInfo			= "#{YD_20080421_14}"
--Møc tiêu nhi®m vø
x500615_g_MissionTarget		= "#{YD_20080421_132}"
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x500615_g_ContinueInfo		= "#{YD_20080421_15}"
--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°
x500615_g_MissionComplete	= "#{YD_20080421_16}"
--¿ÉÒÔÍê³ÉtoÕ ğµ »·Êı
x500615_g_MaxRound	= 1
--¿ØÖÆ½Å±¾
x500615_g_ControlScript		= 001066

-- ÈÎÎñÍê³ÉÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
x500615_g_Custom	= { {id="Ğa thång lên c¤p 48",num=1} }
--MisDescEnd

--ÈÎÎñĞúng·ñÍê³É
x500615_g_Mission_IsComplete = 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»
--Ğúng·ñ´ïµ½µÈc¤ptoÕ ğµ ±ê¼Ç
x500615_g_RecordIdx 				 = 1		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
--ÈÎÎñ½Å±¾ºÅ¼ÇÂ¼
x500615_g_MissScriptID_Idx	 = 2		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ2Î»
--ÈÎÎñ·¢²¼NPC±ê¼Ç
x500615_g_AcceptNPC_Idx			 = 3		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ3Î» 1.LÕc Dß½ngNPC

x500615_g_AcceptMission_IDX		= 785	--½ÓÊÕÈÎÎñË÷Òı
x500615_g_CompleteMission_IDX	= 786	--Ìá½»ÈÎÎñË÷Òı

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
x500615_g_EventList	= {}

x500615_g_PlayerSlow_LVL					 = 45		-- Tiªp thøÈÎÎñtoÕ ğµ ×îµÍµÈc¤p

--½±Àø
x500615_g_MoneyBonus					=	1579
x500615_g_ExpBonus						= 6378

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
function x500615_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x500615_g_AcceptMission_IDX then
		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name then
			x500615_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
			return 0
		end
		-- ÈÎÎñĞúng·ñÒÑÂú
		if IsMissionFull( sceneId, selfId ) == 1 then
			x500615_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- ¼ì²âÈÎÎñTiªp thøÌõ¼ş
		if x500615_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ½øÈëTiªp thøÈÎÎñ½çÃæ			
		x500615_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x500615_g_CompleteMission_IDX then
		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		if LuaFnGetName( sceneId, targetId ) ~= x500615_g_AccomplishNPC_Name then
			x500615_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
			return 0
		end
		-- Èç¹ûÒÑ¾­½ÓÁËÈÎÎñ
		if IsHaveMission( sceneId, selfId, x500615_g_MissionId) > 0 then
												
			--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId, x500615_g_MissionName)
				AddText(sceneId, x500615_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x500615_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500615_g_ScriptId, x500615_g_MissionId, bDone)
			
		else			
			x500615_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
			return 0
		end
	else
		x500615_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x500615_OnEnumerate( sceneId, selfId, targetId )

	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name
		 or sceneId ~= x500615_g_SceneID then
		 
		 return 0
	end

	if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) <= 0 then
		if IsMissionHaveDone( sceneId, selfId, x500615_g_MissionId ) <= 0
			 and LuaFnGetLevel( sceneId, selfId ) >= x500615_g_PlayerSlow_LVL then
			AddNumText( sceneId, x500615_g_ScriptId, x500615_g_MissionName, 1, x500615_g_AcceptMission_IDX )
		end
	else
		
		AddNumText( sceneId, x500615_g_ScriptId, x500615_g_MissionName, 2, x500615_g_CompleteMission_IDX )
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x500615_CheckAccept( sceneId, selfId, targetId )
	
	--¼ì²âÍæ¼ÒĞúng·ñ·ûºÏTiªp thøÈÎÎñtoÕ ğµ Ìõ¼ş
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name then
		x500615_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

	--¼ì²âµÈc¤p
	if LuaFnGetLevel( sceneId, selfId ) < x500615_g_PlayerSlow_LVL then
		local nStr = format( "#{YD_20080421_175}%d#{YD_20080421_176}", x500615_g_PlayerSlow_LVL )
		x500615_TalkInfo( sceneId, selfId, targetId, nStr )
		return 0
	end

	--ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) > 0 then
		-- x500615_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end
	if IsMissionHaveDone( sceneId, selfId, x500615_g_MissionId ) > 0 then
		return 0
	end

	return 1
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x500615_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name then
 		x500615_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

	if x500615_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local bAdd = AddMission( sceneId, selfId, x500615_g_MissionId, x500615_g_ScriptId, 0, 0, 0 )
	if bAdd >= 1 then

		-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
		local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500615_g_MissionId )
		
		--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
		SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_Mission_IsComplete, 0 )
		SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_RecordIdx, 0 )
		--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ2Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ
		SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_MissScriptID_Idx, scriptId )		
		SetMissionByIndex(sceneId, selfId, misIndex, x500615_g_AcceptNPC_Idx, 1)
		
		local strText = "#{YD_20080421_229}" .. x500615_g_MissionName
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		
		-- Ğúng·ñ´ïµ½48c¤p
		local Playerlvl = LuaFnGetLevel( sceneId, selfId )
	  if Playerlvl >= 48 then
			SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_Mission_IsComplete, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x500615_g_RecordIdx, 1 )
			x500615_NotifyTip( sceneId, selfId, "#{YD_20080421_202}" )
		end

	end

	return 1

end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x500615_OnAbandon( sceneId, selfId )

  if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500615_g_MissionId )
	end
	
	return 0

end

--**********************************
--¼ÌĞø
--**********************************
function x500615_OnContinue( sceneId, selfId, targetId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_AccomplishNPC_Name then
		x500615_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

	-- ¼ì²éÈÎÎñĞúng·ñÍê³É
	if x500615_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500615_g_MissionName)
		AddText( sceneId, x500615_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500615_g_ScriptId,x500615_g_MissionId)
	
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x500615_CheckSubmit( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_AccomplishNPC_Name then
		x500615_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) <= 0 then
		x500615_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
		return 0
	end

	-- Ğúng·ñ´ïµ½48c¤p
	local Playerlvl = LuaFnGetLevel( sceneId, selfId )
	if Playerlvl < 48 then
		x500615_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_203}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x500615_g_MissionId)

	-- ¼ì²âÈÎÎñĞúng·ñÍê³É	
	if GetMissionParam(sceneId, selfId, misIndex, x500615_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x500615_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_AccomplishNPC_Name then
		x500615_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

  -- ¼ì²éÈÎÎñĞúng·ñÍê³É
	if x500615_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x500615_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )				
		return 0
	end

	AddMoney( sceneId, selfId, x500615_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x500615_g_ExpBonus )

	-- ÈÎÎñË³ÀûÍê³É
	x500615_NotifyTip( sceneId, selfId, "#{YD_20080421_180}" )

	if IsHaveMission( sceneId, selfId, x500615_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x500615_g_MissionId )
	 	-- ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
	 	MissionCom( sceneId, selfId, x500615_g_MissionId )
	 	
	 	local strText = "#Y" .. x500615_g_MissionName .. "#{YD_20080421_230}"
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	 	
	 	-- µ¯³öºóĞøÈÎÎñTiªp thø½çÃæ
	 	if IsHaveMission( sceneId, selfId, x500615_g_MissionIdNext ) <= 0 and IsMissionHaveDone( sceneId, selfId, x500615_g_MissionIdNext ) <= 0 then
	 		CallScriptFunction( x500615_g_NextScriptId, "OnDefaultEvent", sceneId, selfId, targetId, x500615_g_MissionIndexNext )
	 	end	 		 		 	
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x500615_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎï
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x500615_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x500615_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--½ÓÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x500615_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--½»ÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x500615_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x500615_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--ÓëNPC¶Ô»°
--**********************************
function x500615_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--È¡ ği¬m±¾ÊÂ¼ştoÕ ğµ MissionId,ÓÃÓÚobjÎÄ¼şÖĞ¶Ô»°Çé¾°toÕ ğµ ÅĞ¶Ï
--**********************************
function x500615_GetEventMissionId( sceneId, selfId )	
	return x500615_g_MissionId
end

function x500615_AcceptMission( sceneId, selfId, targetId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500615_g_Name then
		x500615_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x500615_g_MissionName)
		AddText( sceneId, x500615_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{YD_20080421_132}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddMoneyBonus( sceneId, x500615_g_MoneyBonus)
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500615_g_ScriptId,x500615_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--»ñÈ¡¾ßÌåitemtoÕ ğµ ÏêÏ¸ĞÅÏ¢
function x500615_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--µÀ¾ßÊ¹ÓÃ
--**********************************
function x500615_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x500615_OnDie( sceneId, selfId, killerId )
end
