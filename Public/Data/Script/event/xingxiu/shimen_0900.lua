--ÕÒÈËÈÎÎñ
--º«ÊÀÖÒÑ°ÕÒVß½ng Nhan
--MisDescBegin
--½Å±¾ºÅ
x227900_g_ScriptId = 227900

--ÈÎÎñºÅ
x227900_g_MissionId = 1099

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
--g_MissionIdPre = 

--Ä¿±êNPC
x227900_g_Name	="Vß½ng Nhan"

--ÈÎÎñ¹éÀà
x227900_g_MissionKind = 27

--ÐÆng c¤p nhi®m vø 
x227900_g_MissionLevel = 10

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x227900_g_IfMissionElite = 0

--ÈÎÎñÃû
x227900_g_MissionName="Chiªn ð¤u vì sß môn"
x227900_g_MissionInfo="#{event_xingxiu_0001}"
x227900_g_MissionTarget="    — Tinh Túc Häi tìm ðªn Vß½ng NgÕn #{_INFOAIM96,92,16, Vß½ng NgÕn}."
x227900_g_MissionComplete="  Các hÕ là ð°ng môn m¾i ðªn phäi không. Các hÕ làm tuy®t l¡m. Ta · ðây có nhi«u vi®c c¥n các hÕ giúp ðÞ"
x227900_g_MoneyBonus=800

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x227900_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x227900_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x227900_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x227900_g_Name then
			x227900_OnContinue( sceneId, selfId, targetId )
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x227900_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x227900_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x227900_g_MissionName)
				AddText(sceneId,x227900_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x227900_g_MissionTarget)
				AddMoneyBonus( sceneId, x227900_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x227900_g_ScriptId,x227900_g_MissionId)
		end
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x227900_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x227900_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x227900_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x227900_g_Name then
			AddNumText(sceneId, x227900_g_ScriptId,x227900_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x227900_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x227900_g_Name then
			AddNumText(sceneId,x227900_g_ScriptId,x227900_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x227900_CheckAccept( sceneId, selfId )
	local  MenPai = GetMenPai( sceneId, selfId)
	if	MenPai ~= 5 then
		return 0
	else
		return 1
	end
end

--**********************************
--Tiªp thø
--**********************************
function x227900_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x227900_g_MissionId, x227900_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø: chiªn ð¤u vì sß môn",MSG2PLAYER_PARA )
end

--**********************************
--·ÅÆú
--**********************************
function x227900_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    DelMission( sceneId, selfId, x227900_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x227900_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x227900_g_MissionName)
		AddText(sceneId,x227900_g_MissionComplete)
		AddMoneyBonus( sceneId, x227900_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x227900_g_ScriptId,x227900_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x227900_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x227900_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x227900_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x227900_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		AddMoney(sceneId,selfId,x227900_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 800)
		ret = DelMission( sceneId, selfId, x227900_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x227900_g_MissionId )
			Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø: chiªn ð¤u vì sß môn",MSG2PLAYER_PARA )
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x227900_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x227900_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x227900_OnItemChanged( sceneId, selfId, itemdataId )
end
