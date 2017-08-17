--ÕÒÈËÈÎÎñ
--Ã·½£Ñ°ÕÒPhù Mçn Nghi
--MisDescBegin
--½Å±¾ºÅ
x228900_g_ScriptId = 228900

--ÈÎÎñºÅ
x228900_g_MissionId = 1104

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
--g_MissionIdPre = 

--Ä¿±êNPC
x228900_g_Name	="Phù Mçn Nghi"

--ÈÎÎñ¹éÀà
x228900_g_MissionKind = 28

--ÐÆng c¤p nhi®m vø 
x228900_g_MissionLevel = 10

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x228900_g_IfMissionElite = 0

--ÈÎÎñÃû
x228900_g_MissionName="Chiªn ð¤u vì sß môn"
x228900_g_MissionInfo="#{event_tianshan_0001}"
x228900_g_MissionTarget="    Linh ThÑu Cung tìm ðªn Phù Mçn Nghi #{_INFOAIM95,60,17, Phù Mçn Nghi}."
x228900_g_MissionComplete="  Các hÕ là ð°ng môn m¾i ðªn phäi không. Các hÕ làm tuy®t l¡m. Ta · ðây có nhi«u vi®c c¥n các hÕ giúp ðÞ"
x228900_g_MoneyBonus=800

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x228900_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x228900_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x228900_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x228900_g_Name then
			x228900_OnContinue( sceneId, selfId, targetId )
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x228900_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x228900_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x228900_g_MissionName)
				AddText(sceneId,x228900_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x228900_g_MissionTarget)
				AddMoneyBonus( sceneId, x228900_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x228900_g_ScriptId,x228900_g_MissionId)
		end
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x228900_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x228900_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x228900_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x228900_g_Name then
			AddNumText(sceneId, x228900_g_ScriptId,x228900_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x228900_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x228900_g_Name then
			AddNumText(sceneId,x228900_g_ScriptId,x228900_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x228900_CheckAccept( sceneId, selfId )
	local  MenPai = GetMenPai( sceneId, selfId)
	if	MenPai ~= 7 then
		return 0
	else
		return 1
	end
end

--**********************************
--Tiªp thø
--**********************************
function x228900_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x228900_g_MissionId, x228900_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø: chiªn ð¤u vì sß môn",MSG2PLAYER_PARA )
end

--**********************************
--·ÅÆú
--**********************************
function x228900_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    DelMission( sceneId, selfId, x228900_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x228900_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x228900_g_MissionName)
		AddText(sceneId,x228900_g_MissionComplete)
		AddMoneyBonus( sceneId, x228900_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x228900_g_ScriptId,x228900_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x228900_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x228900_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x228900_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x228900_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		AddMoney(sceneId,selfId,x228900_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 800)
		ret = DelMission( sceneId, selfId, x228900_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x228900_g_MissionId )
			Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø: chiªn ð¤u vì sß môn",MSG2PLAYER_PARA )
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x228900_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x228900_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x228900_OnItemChanged( sceneId, selfId, itemdataId )
end
