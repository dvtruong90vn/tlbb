--x212117_g_ScriptId = 212117
-- T§n ði¬m nhân sñ

-- ½»5GÂò±¾Êé£¬

--MisDescBegin

--½Å±¾ºÅ
x212117_g_ScriptId = 212117

--½ÓÊÜÈÎÎñNPCÊôÐÔ
x212117_g_Position_X=217
x212117_g_Position_Z=255
x212117_g_SceneID=2
x212117_g_AccomplishNPC_Name="Vß½ng Thi«u"

--ÈÎÎñºÅ
x212117_g_MissionId = 923

--Ç°ÐøÈÎÎñ
x212117_g_PreMissionId = 922

--Ä¿±êNPC
x212117_g_Name	="Vß½ng Thi«u"

--ÈÎÎñ¹éÀà
x212117_g_MissionKind = 26

--ÈÎÎñµÈ¼¶
x212117_g_MissionLevel = 20

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x212117_g_IfMissionElite = 0

--ÈÎÎñÃû
x212117_g_MissionName="T§n ði¬m nhân sñ"
x212117_g_MissionInfo="#{emei_skill_mis_06}"
x212117_g_MissionTarget="Mang nµp #G5 vàng#W giao cho thành ÐÕi Lý Tu Vån Ðài#W cho #RVß½ng Thi«u #W#{_INFOAIM349,344,2,Vß½ng Thi«u}."
x212117_g_MissionContinue="Các hÕ quyªt ð¸nh h÷c Kim Châm Ðµ Kiªp sao?"
x212117_g_MissionComplete="#{emei_skill_mis_07}"

x212117_g_MoneyBonus=2000
x212117_g_exp=1000

--x212117_g_Custom	= { {id="",num=1} }
x212117_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212117_OnDefaultEvent( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x212117_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212117_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212117_g_Name then
			x212117_OnContinue( sceneId, selfId, targetId )
		end
	
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212117_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x212117_g_MissionName)
			AddText(sceneId,x212117_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212117_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x212117_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212117_g_ScriptId,x212117_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212117_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212117_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212117_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212117_g_Name then
			AddNumText(sceneId, x212117_g_ScriptId,x212117_g_MissionName,2,-1);
		end
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212117_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x212117_g_ScriptId,x212117_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x212117_CheckAccept( sceneId, selfId )
	-- 1£¬¼ì²âÍæ¼ÒÊÇ²»ÊÇÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212117_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈ¼¶¼ì²â
	if GetLevel( sceneId, selfId ) < x212117_g_MissionLevel then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñµÄÍê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x212117_g_PreMissionId) < 1  then
		return 0
	end
	return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x212117_OnAccept( sceneId, selfId, targetId )
	if x212117_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x212117_g_MissionId, x212117_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: T§n ði¬m nhân sñ",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212117_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x212117_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
  DelMission( sceneId, selfId, x212117_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x212117_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x212117_g_MissionName)
		AddText(sceneId,x212117_g_MissionComplete)
		AddMoneyBonus( sceneId, x212117_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x212117_g_ScriptId,x212117_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x212117_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212117_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	if GetMoney(sceneId, selfId) < 50000   then
		return 2
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x212117_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x212117_CheckSubmit( sceneId, selfId, selectRadioId ) == 2 then
    BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ không có ðü ti«n m£t ð¬ hoàn thành nhi®m vø này.")
    EndEvent( )
    DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if x212117_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		-- ¿Û³ýÍæ¼Ò5¸öG
		if CostMoney(sceneId, selfId, 50000)  == 1  then
			--Ìí¼ÓÈÎÎñ½±Àø
			AddMoney(sceneId,selfId,x212117_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,x212117_g_exp)
			
			-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇ¶ëÃ¼ÅÉµÄµÜ×Ó
			--PrintNum(GetMenPai(sceneId, selfId))
			if GetMenPai(sceneId, selfId) == 4  then
				-- ¸øÍæ¼ÒÔö¼Ó423ºÅ¼¼ÄÜ
				AddSkill(sceneId, selfId, 423)
		    BeginEvent(sceneId)
					AddText(sceneId,"Các hÕ ðã h÷c ðßþc kÛ nång Kim Châm Ðµ Kiªp.")
		    EndEvent( )
		    DispatchMissionTips(sceneId,selfId)
			end
			
			DelMission( sceneId,selfId,  x212117_g_MissionId )
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
			MissionCom( sceneId,selfId,  x212117_g_MissionId )
			Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: T§n ði¬m nhân sñ",MSG2PLAYER_PARA )
			
			-- µ÷ÓÃºóÐøÈÎÎñ
			CallScriptFunction((200087), "OnDefaultEvent",sceneId, selfId, targetId )
		
		else
	    BeginEvent(sceneId)
				AddText(sceneId,"Không ðü ngân lßþng.")
	    EndEvent( )
	    DispatchMissionTips(sceneId,selfId)
			return
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212117_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212117_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212117_OnItemChanged( sceneId, selfId, itemdataId )
	
end
