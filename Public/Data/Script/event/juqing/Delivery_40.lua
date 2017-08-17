-- 200097
-- ËÍÐÅÈÎÎñ 

-- ÕÔÌìÊ¦ -> ¶ÎÕý´¾

--MisDescBegin
--½Å±¾ºÅ
x200097_g_ScriptId = 200097

--ÈÎÎñºÅ
x200097_g_MissionId = 40

--Ç°ÐøÈÎÎñ
x200097_g_PreMissionId = 39

--Tiªp thøÈÎÎñNPCÊôÐÔ
x200097_g_Position_X=112
x200097_g_Position_Z=64
x200097_g_SceneID=0
x200097_g_AccomplishNPC_Name="N² Nhi Häi"

--Ä¿±êNPC
x200097_g_Name	="Thiên S½n Ð°ng Lão"

--ÈÎÎñ¹éÀà
x200097_g_MissionKind = 49

--ÐÆng c¤p nhi®m vø 
x200097_g_MissionLevel = 70

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200097_g_IfMissionElite = 0

--ÈÎÎñÃû
x200097_g_MissionName="Dù nguy mà yên"
x200097_g_MissionInfo="#{Mis_juqing_0040}"
x200097_g_MissionTarget="#{Mis_juqing_Tar_0040}"
x200097_g_MissionComplete="  $N, Ti¬u nha ð¥u Mai kiªm th§t không ð½n giän. Chiêu c¶ ta có th¬ l×a ðßþc Lý Thu Thüy, nhßng không l×a ðßþc ti¬u nha ð¥u này. Xem ra ta phäi ch÷n cô ta làm chß·ng môn, không nhìn l¥m ngß¶i"

x200097_g_MoneyBonus=21600
x200097_g_exp=24000

x200097_g_Custom	= { {id="Ðã tìm ðßþc Thiên S½n ð°ng lão",num=1} }
x200097_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200097_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200097_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200097_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200097_g_Name then
			x200097_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200097_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200097_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200097_g_MissionName)
				AddText(sceneId,x200097_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200097_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200097_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200097_g_ScriptId,x200097_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200097_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200097_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200097_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200097_g_Name then
			AddNumText(sceneId, x200097_g_ScriptId,x200097_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200097_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200097_g_Name then
			AddNumText(sceneId,x200097_g_ScriptId,x200097_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200097_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200097_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200097_g_MissionLevel then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñtoÕ ðµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x200097_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x200097_OnAccept( sceneId, selfId, targetId )
	if x200097_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200097_g_MissionId, x200097_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Dù nguy mà yên",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200097_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x200097_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200097_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200097_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200097_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200097_g_MissionName)
		AddText(sceneId,x200097_g_MissionComplete)
		AddMoneyBonus( sceneId, x200097_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200097_g_ScriptId,x200097_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200097_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200097_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200097_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200097_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x200097_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200097_g_exp)
		DelMission( sceneId,selfId,  x200097_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x200097_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Dù nguy mà yên",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200051), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200097_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200097_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200097_OnItemChanged( sceneId, selfId, itemdataId )
end
