-- 200081 
-- ËÍÐÅÈÎÎñ 

-- ¶ÎÕý´¾ -> ÖÓLinh

--MisDescBegin

--½Å±¾ºÅ
x200081_g_ScriptId = 200081

--ÈÎÎñºÅ
x200081_g_MissionId = 2

--Ç°ÐøÈÎÎñ
x200081_g_PreMissionId = 1

--Ä¿±êNPC
x200081_g_Name	="Chung Linh"

--Tiªp thøÈÎÎñNPCÊôÐÔ
x200081_g_Position_X=193
x200081_g_Position_Z=110
x200081_g_SceneID=2
x200081_g_AccomplishNPC_Name="Hoa Hách C¤n"

--ÈÎÎñ¹éÀà
x200081_g_MissionKind = 51

--ÐÆng c¤p nhi®m vø 
x200081_g_MissionLevel = 20

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200081_g_IfMissionElite = 0

--ÈÎÎñÃû
x200081_g_MissionName="Áo xanh l²i lÕc hành núi hi¬m"
x200081_g_MissionInfo="#{Mis_juqing_0002}"
x200081_g_MissionTarget="#{Mis_juqing_Tar_0002}"
x200081_g_MissionComplete="    A, ngß½i chÆng phäi là $N ðó sao? Ngß½i t¾i tìm ngß¶i anh em Ðoàn Dñ?"

x200081_g_MoneyBonus=7200
x200081_g_exp=6900

x200081_g_Custom	= { {id="Ðã tìm ðßþc Chung Linh",num=1} }
x200081_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200081_OnDefaultEvent( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200081_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200081_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200081_g_Name then
			x200081_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200081_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200081_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200081_g_MissionName)
				AddText(sceneId,x200081_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200081_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200081_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200081_g_ScriptId,x200081_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200081_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200081_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200081_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200081_g_Name then
			AddNumText(sceneId, x200081_g_ScriptId,x200081_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200081_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200081_g_Name then
			AddNumText(sceneId,x200081_g_ScriptId,x200081_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200081_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200081_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200081_g_MissionLevel then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñtoÕ ðµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x200081_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200081_OnAccept( sceneId, selfId, targetId )
	if x200081_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200081_g_MissionId, x200081_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Thanh Sam L²i LÕc Hi¬m Phong Hành",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200081_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--·ÅÆú
--**********************************
function x200081_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200081_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200081_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200081_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200081_g_MissionName)
		AddText(sceneId,x200081_g_MissionComplete)
		AddMoneyBonus( sceneId, x200081_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200081_g_ScriptId,x200081_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200081_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200081_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200081_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200081_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200081_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200081_g_exp)
		DelMission( sceneId,selfId,  x200081_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x200081_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Thanh Sam L²i LÕc Hi¬m Phong Hành",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200003), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200081_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200081_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200081_OnItemChanged( sceneId, selfId, itemdataId )
end
