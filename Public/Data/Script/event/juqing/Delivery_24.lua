-- 200091 
-- ËÍÐÅÈÎÎñ 


--MisDescBegin

--½Å±¾ºÅ
x200091_g_ScriptId = 200091

--Tiªp thøÈÎÎñNPCÊôÐÔ
x200091_g_Position_X=326
x200091_g_Position_Z=355
x200091_g_SceneID=0
x200091_g_AccomplishNPC_Name="Khang Mçn"

--ÈÎÎñºÅ
x200091_g_MissionId = 24

--Ç°ÐøÈÎÎñ
x200091_g_PreMissionId = 23

--Ä¿±êNPC
x200091_g_Name	="Khang Mçn"

--ÈÎÎñ¹éÀà
x200091_g_MissionKind = 52

--ÐÆng c¤p nhi®m vø 
x200091_g_MissionLevel = 50

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200091_g_IfMissionElite = 0

--ÈÎÎñÃû
x200091_g_MissionName="Bäo v® Mã phu nhân"
x200091_g_MissionInfo="#{Mis_juqing_0024}"
x200091_g_MissionTarget="#{Mis_juqing_Tar_0024}"
x200091_g_MissionComplete="  ÐÕi hi®p ðß¶ng xa t¾i, xin m¶i vào nhà u¯ng trà, nghï ng½i"

x200091_g_MoneyBonus=7200
x200091_g_exp=9360

x200091_g_Custom	= { {id="Ðã tìm ðßþc Khang Mçn",num=1} }
x200091_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200091_OnDefaultEvent( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200091_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200091_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200091_g_Name then
			x200091_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200091_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200091_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200091_g_MissionName)
				AddText(sceneId,x200091_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200091_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200091_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200091_g_ScriptId,x200091_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200091_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200091_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200091_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200091_g_Name then
			AddNumText(sceneId, x200091_g_ScriptId,x200091_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200091_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200091_g_Name then
			AddNumText(sceneId,x200091_g_ScriptId,x200091_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200091_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200091_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200091_g_MissionLevel then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñtoÕ ðµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x200091_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x200091_OnAccept( sceneId, selfId, targetId )
	if x200091_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200091_g_MissionId, x200091_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: bäo hµ Mã phu nhân",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200091_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

end

--**********************************
--·ÅÆú
--**********************************
function x200091_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200091_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200091_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200091_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x200091_g_MissionName)
	AddText(sceneId,x200091_g_MissionComplete)
	AddMoneyBonus( sceneId, x200091_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200091_g_ScriptId,x200091_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200091_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200091_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200091_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200091_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x200091_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200091_g_exp)
		DelMission( sceneId,selfId,  x200091_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x200091_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Bäo hµ Mã phu nhân",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200092), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200091_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200091_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200091_OnItemChanged( sceneId, selfId, itemdataId )
end
