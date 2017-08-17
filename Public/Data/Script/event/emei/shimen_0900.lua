--ÕÒÈËÈÎÎñ
--ÀîÊ®¶þÄïÑ°ÕÒMãnh Long
--MisDescBegin
--½Å±¾ºÅ
x226900_g_ScriptId = 226900

--ÈÎÎñºÅ
x226900_g_MissionId = 1094

--ÉÏÒ»¸öÈÎÎñµÄID
--g_MissionIdPre = 

--Ä¿±êNPC
x226900_g_Name	="Mãnh Long"

--ÈÎÎñ¹éÀà
x226900_g_MissionKind = 26

--ÈÎÎñµÈ¼¶
x226900_g_MissionLevel = 10

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x226900_g_IfMissionElite = 0

--ÈÎÎñÃû
x226900_g_MissionName="Chiªn ð¤u vì sß môn"
x226900_g_MissionInfo="#{event_emei_0001}"
x226900_g_MissionTarget="TÕi núi Nga My tìm Mãnh Long #{_INFOAIM95,86,15,Mãnh Long}."
x226900_g_MissionComplete="Các hÕ là ð°ng môn m¾i ðªn phäi không. Các hÕ làm tuy®t l¡m. Ta · ðây có nhi«u vi®c c¥n các hÕ giúp ðÞ!"
x226900_g_MoneyBonus=800

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x226900_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x226900_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x226900_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x226900_g_Name then
			x226900_OnContinue( sceneId, selfId, targetId )
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x226900_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x226900_g_Name then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x226900_g_MissionName)
				AddText(sceneId,x226900_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x226900_g_MissionTarget)
				--( sceneId, x226900_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x226900_g_ScriptId,x226900_g_MissionId)
		end
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x226900_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x226900_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x226900_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x226900_g_Name then
			AddNumText(sceneId, x226900_g_ScriptId,x226900_g_MissionName,2,-1);
		end
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x226900_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x226900_g_Name then
			AddNumText(sceneId,x226900_g_ScriptId,x226900_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x226900_CheckAccept( sceneId, selfId )
	local  MenPai = GetMenPai( sceneId, selfId)
	if	MenPai ~= 4 then
		return 0
	else
		return 1
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x226900_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x226900_g_MissionId, x226900_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Chiªn ð¤u vì sß môn",MSG2PLAYER_PARA )
end

--**********************************
--·ÅÆú
--**********************************
function x226900_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x226900_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x226900_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x226900_g_MissionName)
		AddText(sceneId,x226900_g_MissionComplete)
		--( sceneId, x226900_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x226900_g_ScriptId,x226900_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x226900_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x226900_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x226900_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x226900_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		AddMoney(sceneId,selfId,x226900_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 800)
		ret = DelMission( sceneId, selfId, x226900_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x226900_g_MissionId )
			Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Chiªn ð¤u vì sß môn",MSG2PLAYER_PARA )
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x226900_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x226900_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x226900_OnItemChanged( sceneId, selfId, itemdataId )
end
