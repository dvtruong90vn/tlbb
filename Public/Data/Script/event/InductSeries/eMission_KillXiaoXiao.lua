--´´½¨ÈË[ QUFEI 2008-04-30 10:27 UPDATE BugID 34167 ]
--½â¾öÁ÷Ê§ÂÊÒıµ¼ÈÎÎñÊÂ¼ş½Å±¾
--ÏüĞ¡Òıµ¼ÈÎÎñ1_½­ºşÏüĞ¡

--MisDescBegin
--½Å±¾ºÅ
x500607_g_ScriptId	= 500607

--Ä¿±êÈÎÎñNPCÊôĞÔ
x500607_g_Position_X=160.2399
x500607_g_Position_Z=134.1486
x500607_g_SceneID=0
x500607_g_AccomplishNPC_Name="Châu Thiên Sß"

--Ç°ĞøÈÎÎñºÅ
x500607_g_PreMissionId	=	416
--ÈÎÎñºÅ
x500607_g_MissionId			= 417
--ÏÂmµt cáiÈÎÎñtoÕ ğµ ID
x500607_g_MissionIdNext	= 418
--ÏÂmµt cáiÈÎÎñtoÕ ğµ ScriptId
x500607_g_NextScriptId	= 500608
--Lînh Møc tiêu nhi®m vøËùTÕi ³¡¾°
x500607_g_AcceptNPC_SceneID	=	0
--Lînh ÈÎÎñnpc
x500607_g_Name 					= "L§p Ph°n"
--ÈÎÎñ¹éÀà
x500607_g_MissionKind			= 11
--ĞÆng c¤p nhi®m vø 
x500607_g_MissionLevel		= 35
--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x500607_g_IfMissionElite	= 0
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x500607_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»

--ÈÎÎñÎÄ±¾ÃèÊö
x500607_g_MissionName			= "ĞÕo Chích Giang h°"
--ÈÎÎñÃèÊö
x500607_g_MissionInfo			= "#{YD_20080421_57}"
--Møc tiêu nhi®m vø
x500607_g_MissionTarget		= "#{YD_20080421_56}"
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x500607_g_ContinueInfo		= "#{YD_20080421_190}"
--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°
x500607_g_MissionComplete	= "#{YD_20080421_58}"
--¿ÉÒÔÍê³ÉtoÕ ğµ »·Êı
x500607_g_MaxRound	= 1
--¿ØÖÆ½Å±¾
x500607_g_ControlScript		= 001066

-- ÈÎÎñÍê³ÉÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
x500607_g_Custom	= { {id="Ğã giªt chªt ác bá",num=1} }
--MisDescEnd

--ÈÎÎñĞúng·ñÍê³É
x500607_g_Mission_IsComplete = 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»
--Ğúng·ñÉ±¹ÖtoÕ ğµ ±ê¼Ç
x500607_g_RecordIdx 				 = 1		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
--ÈÎÎñ½Å±¾ºÅ¼ÇÂ¼
x500607_g_MissScriptID_Idx	 = 2		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ2Î»
--ÈÎÎñ·¢²¼NPC±ê¼Ç
x500607_g_AcceptNPC_Idx			 = 3		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ3Î» 1.LÕc Dß½ngNPC

x500607_g_AcceptMission_IDX		= 757	--½ÓÊÕÈÎÎñË÷Òı
x500607_g_CompleteMission_IDX	= 758	--Ìá½»ÈÎÎñË÷Òı

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
x500607_g_EventList	= {}

x500607_g_PlayerSlow_LVL					 = 35		-- Tiªp thøÈÎÎñtoÕ ğµ ×îµÍµÈc¤p

--½±Àø
x500607_g_MoneyBonus					=	11122
x500607_g_ExpBonus						= 44490
x500607_g_ItemBonus_List 	 	  = { id=30505701,num=1 }

--¸±±¾³¡¾°ID_ÃÅÅÉ
x500607_g_TargetSceneId				= {130, 132, 131, 133, 136, 137, 134, 138, 135}
--¹ÖÎïÃû³Æ
x500607_g_MonsterName					=	"Ác Bá"
--ÒªÇótoÕ ğµ É±¹ÖÊıÁ¿
x500607_g_KillMonsterCnt			=	1

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
function x500607_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x500607_g_AcceptMission_IDX then
		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		if LuaFnGetName( sceneId, targetId ) ~= x500607_g_Name then
			x500607_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
			return 0
		end
		-- ÈÎÎñĞúng·ñÒÑÂú
		if IsMissionFull( sceneId, selfId ) == 1 then
			x500607_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- ¼ì²âÈÎÎñTiªp thøÌõ¼ş
		if x500607_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ½øÈëTiªp thøÈÎÎñ½çÃæ			
		x500607_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x500607_g_CompleteMission_IDX then
		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		if LuaFnGetName( sceneId, targetId ) ~= x500607_g_AccomplishNPC_Name then
			x500607_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
			return 0
		end
		-- Èç¹ûÒÑ¾­½ÓÁËÈÎÎñ
		if IsHaveMission( sceneId, selfId, x500607_g_MissionId) > 0 then
												
			--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId, x500607_g_MissionName)
				AddText(sceneId, x500607_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x500607_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500607_g_ScriptId, x500607_g_MissionId, bDone)
			
		else			
			x500607_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
			return 0
		end
	else
		x500607_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x500607_OnEnumerate( sceneId, selfId, targetId )

	if LuaFnGetName( sceneId, targetId ) == x500607_g_Name
		 and sceneId == x500607_g_AcceptNPC_SceneID then
		if IsHaveMission( sceneId, selfId, x500607_g_MissionId ) <= 0 then
			if IsMissionHaveDone( sceneId, selfId, x500607_g_PreMissionId ) > 0
				 and IsMissionHaveDone( sceneId, selfId, x500607_g_MissionId ) <= 0 then
				AddNumText( sceneId, x500607_g_ScriptId, x500607_g_MissionName, 1, x500607_g_AcceptMission_IDX )
			end
		end
	elseif LuaFnGetName( sceneId, targetId ) == x500607_g_AccomplishNPC_Name
				 and sceneId == x500607_g_SceneID then
	
		if IsHaveMission( sceneId, selfId, x500607_g_MissionId ) > 0 then
			AddNumText( sceneId, x500607_g_ScriptId, x500607_g_MissionName, 2, x500607_g_CompleteMission_IDX )
		end
	else
		return 0
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x500607_CheckAccept( sceneId, selfId, targetId )
	
	--¼ì²âÍæ¼ÒĞúng·ñ·ûºÏTiªp thøÈÎÎñtoÕ ğµ Ìõ¼ş
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500607_g_Name then
		x500607_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

	--¼ì²âµÈc¤p
	if LuaFnGetLevel( sceneId, selfId ) < x500607_g_PlayerSlow_LVL then
		local nStr = format( "#{YD_20080421_175}%d#{YD_20080421_176}", x500607_g_PlayerSlow_LVL )
		x500607_TalkInfo( sceneId, selfId, targetId, nStr )
		return 0
	end

	--ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, selfId, x500607_g_MissionId ) > 0 then
		x500607_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end
	if IsMissionHaveDone( sceneId, selfId, x500607_g_MissionId ) > 0 then
		return 0
	end

	--¼ì²âÇ°ĞøÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, x500607_g_PreMissionId ) <= 0 then
		x500607_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_177}" )
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x500607_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500607_g_Name then
 		x500607_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

	if x500607_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local bAdd = AddMission( sceneId, selfId, x500607_g_MissionId, x500607_g_ScriptId, 1, 0, 0 )
	if bAdd >= 1 then

		-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
		local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500607_g_MissionId )
		
		--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
		SetMissionByIndex( sceneId, selfId, misIndex, x500607_g_Mission_IsComplete, 0 )
		SetMissionByIndex( sceneId, selfId, misIndex, x500607_g_RecordIdx, 0 )
		--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ2Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ
		SetMissionByIndex( sceneId, selfId, misIndex, x500607_g_MissScriptID_Idx, scriptId )		
		SetMissionByIndex(sceneId, selfId, misIndex, x500607_g_AcceptNPC_Idx, 1)
		
		local strText = "#{YD_20080421_229}" .. x500607_g_MissionName
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

	end

	return 1

end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x500607_OnAbandon( sceneId, selfId )

  if IsHaveMission( sceneId, selfId, x500607_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500607_g_MissionId )
	end
	
	return 0

end

--**********************************
--¼ÌĞø
--**********************************
function x500607_OnContinue( sceneId, selfId, targetId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500607_g_AccomplishNPC_Name then
		x500607_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

	-- ¼ì²éÈÎÎñĞúng·ñÍê³É
	if x500607_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500607_g_MissionName)
		AddText( sceneId, x500607_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500607_g_ScriptId,x500607_g_MissionId)
	
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x500607_CheckSubmit( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500607_g_AccomplishNPC_Name then
		x500607_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x500607_g_MissionId ) <= 0 then
		x500607_TalkInfo( sceneId, selfId, targetId, "#{YD_20080421_178}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x500607_g_MissionId)

	-- ¼ì²âÈÎÎñĞúng·ñÍê³É	
	if GetMissionParam(sceneId, selfId, misIndex, x500607_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x500607_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500607_g_AccomplishNPC_Name then
		x500607_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

  -- ¼ì²éÈÎÎñĞúng·ñÍê³É
	if x500607_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x500607_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )				
		return 0
	end

	AddMoney( sceneId, selfId, x500607_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x500607_g_ExpBonus )

	-- ÈÎÎñË³ÀûÍê³É
	x500607_NotifyTip( sceneId, selfId, "#{YD_20080421_180}" )

	if IsHaveMission( sceneId, selfId, x500607_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x500607_g_MissionId )
	 	-- ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
	 	MissionCom( sceneId, selfId, x500607_g_MissionId )
	 	
	 	local strText = "#Y" .. x500607_g_MissionName .. "#{YD_20080421_230}"
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
	 	
	 	-- µ¯³öºóĞøÈÎÎñTiªp thø½çÃæ
	 	if CallScriptFunction( x500607_g_NextScriptId, "CheckAccept", sceneId, selfId, targetId ) > 0 then
	 		CallScriptFunction( x500607_g_NextScriptId, "AcceptMission", sceneId, selfId, targetId )
	 	end	 	
	end

	-- local nItemId = 0
	-- -- ¸øÓè½±ÀøÎïÆ·
	-- BeginAddItem(sceneId)
	-- AddItem(sceneId,x500607_g_ItemBonus_List.id, x500607_g_ItemBonus_List.num)
	-- local canAdd = EndAddItem(sceneId,selfId)						
	-- if canAdd > 0 then
	-- 	nItemId = x500607_g_ItemBonus_List.id
	-- 	AddItemListToHuman(sceneId,selfId)
	-- end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x500607_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎï

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	local monsterName = GetMonsterNamebyDataId(objdataId)
	local nMempai = LuaFnGetMenPai(sceneId, selfId)
	if nMempai < 0 or nMempai > 8 or monsterName ~= x500607_g_MonsterName then
		return 0
	end
	
	local num = GetMonsterOwnerCount(sceneId,objId)
	for i=0,num-1  do
		-- È¡ ği¬mÓµÓĞ·ÖÅäÈ¨toÕ ğµ ÈËtoÕ ğµ objId
		local humanObjId = GetMonsterOwnerID(sceneId,objId,i)
		-- PrintStr("humanObjId=" .. humanObjId)
		-- ¿´Cái này ÈËĞúng²»ĞúngÓĞCái này ÈÎÎñ
		if IsHaveMission(sceneId, humanObjId, x500607_g_MissionId) > 0 then
			-- ÏÈÅĞ¶ÏĞúng²»ĞúngÒÑ¾­Thöa mãnÁËÍê³É±êÖ¾
			local misIndex = GetMissionIndexByID(sceneId,humanObjId,x500607_g_MissionId)
			if GetMissionParam(sceneId, humanObjId, misIndex, x500607_g_Mission_IsComplete) <=0  then
				local killedCount =	GetMissionParam(sceneId, humanObjId, misIndex, x500607_g_RecordIdx)
				killedCount = killedCount + 1
				SetMissionByIndex(sceneId, humanObjId, misIndex, x500607_g_RecordIdx, killedCount)					
				BeginEvent(sceneId)
					local str = format("Ğã giªt chªt %s%d/%d", x500607_g_MonsterName, killedCount, x500607_g_KillMonsterCnt )						
					AddText(sceneId, str)
				EndEvent(sceneId)
				DispatchMissionTips(sceneId, humanObjId)
				if killedCount >= x500607_g_KillMonsterCnt then
					SetMissionByIndex(sceneId, humanObjId, misIndex, x500607_g_Mission_IsComplete, 1)
				end
			end
		end
	end

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x500607_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x500607_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--½ÓÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x500607_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--½»ÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x500607_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x500607_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--ÓëNPC¶Ô»°
--**********************************
function x500607_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--È¡ ği¬m±¾ÊÂ¼ştoÕ ğµ MissionId,ÓÃÓÚobjÎÄ¼şÖĞ¶Ô»°Çé¾°toÕ ğµ ÅĞ¶Ï
--**********************************
function x500607_GetEventMissionId( sceneId, selfId )	
	return x500607_g_MissionId
end

function x500607_AcceptMission( sceneId, selfId, targetId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x500607_g_Name then
		x500607_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x500607_g_MissionName)
		AddText( sceneId, x500607_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{YD_20080421_56}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddMoneyBonus( sceneId, x500607_g_MoneyBonus)
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500607_g_ScriptId,x500607_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--»ñÈ¡¾ßÌåitemtoÕ ğµ ÏêÏ¸ĞÅÏ¢
function x500607_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--µÀ¾ßÊ¹ÓÃ
--**********************************
function x500607_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x500607_OnDie( sceneId, selfId, killerId )
end
