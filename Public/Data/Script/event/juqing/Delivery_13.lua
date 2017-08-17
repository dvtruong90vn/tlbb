-- 200085
-- ËÍÐÅÈÎÎñ 

-- Mµ Dung Phøc -> ÍõÓïæÌ

--MisDescBegin
--½Å±¾ºÅ
x200085_g_ScriptId = 200085

--ÈÎÎñºÅ
x200085_g_MissionId = 13

--Ç°ÐøÈÎÎñ
x200085_g_PreMissionId = 12

--Ä¿±êNPC
x200085_g_Name	="Vß½ng Ngæ Yên"

--ÈÎÎñ¹éÀà
x200085_g_MissionKind = 48

--ÐÆng c¤p nhi®m vø 
x200085_g_MissionLevel = 30

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200085_g_IfMissionElite = 0

--Tiªp thøÈÎÎñNPCÊôÐÔ
x200085_g_Position_X=180
x200085_g_Position_Z=395
x200085_g_SceneID=1
x200085_g_AccomplishNPC_Name="Lão C¯"

--ÈÎÎñÃû
x200085_g_MissionName="Nh¤t ph¦m ðß¶ng"
x200085_g_MissionInfo="#{Mis_juqing_0013}"
x200085_g_MissionTarget="#{Mis_juqing_Tar_0013}"
x200085_g_MissionComplete="  $N, cu¯i cùng ngß½i ðã cÑu chúng ta"

x200085_g_MoneyBonus=8100
x200085_g_exp=8000

x200085_g_Custom	= { {id="Ðã tìm ðßþc Vß½ng Ngæ Yên",num=1} }
x200085_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200085_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200085_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200085_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200085_g_Name then
			x200085_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200085_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200085_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200085_g_MissionName)
				AddText(sceneId,x200085_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200085_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200085_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200085_g_ScriptId,x200085_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200085_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200085_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200085_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200085_g_Name then
			AddNumText(sceneId, x200085_g_ScriptId,x200085_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200085_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200085_g_Name then
			AddNumText(sceneId,x200085_g_ScriptId,x200085_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200085_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200085_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200085_g_MissionLevel then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñtoÕ ðµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x200085_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200085_OnAccept( sceneId, selfId, targetId )
	if x200085_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200085_g_MissionId, x200085_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: nh¤t ph¦m ðß¶ng",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200085_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x200085_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200085_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200085_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200085_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200085_g_MissionName)
		AddText(sceneId,x200085_g_MissionComplete)
		AddMoneyBonus( sceneId, x200085_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200085_g_ScriptId,x200085_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200085_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200085_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200085_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200085_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x200085_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200085_g_exp)
		
		DelMission( sceneId,selfId,  x200085_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x200085_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: nh¤t ph¦m ðß¶ng",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200015), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200085_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200085_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200085_OnItemChanged( sceneId, selfId, itemdataId )
end
