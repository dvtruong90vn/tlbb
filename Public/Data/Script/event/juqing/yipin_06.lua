-- 200055 Tình yêu không phäi là m½
-- ½«Lý Thu ThüyÈ¥ÊÀtoÕ ðµ ÏûÏ¢Í¨ÖªLÕc Dß½ng³ÇtoÕ ðµ ºÕÁ¬ÌúÊ÷.

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200055_g_ScriptId = 200055

--ÈÎÎñºÅ
x200055_g_MissionId = 44

--Ç°ÐøÈÎÎñºÅ
x200055_g_PreMissionId = 43

--Ä¿±êNPC
x200055_g_Name = "Hß Trúc"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200055_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200055_g_MissionLevel = 70

--ÈÎÎñ¹éÀà
x200055_g_MissionKind = 49

--ÈÎÎñÎÄ±¾ÃèÊö
x200055_g_MissionName="Tình yêu không phäi là m½"
x200055_g_MissionInfo="#{Mis_juqing_0044}"
x200055_g_MissionTarget="#{Mis_juqing_Tar_0044}"	--Møc tiêu nhi®m vø
x200055_g_MissionComplete="  Sao? Cái gì? Ta ðã ðßþc ch÷n?"


x200055_g_MoneyBonus=9000
x200055_g_exp=17280

x200055_g_Custom	= { {id="Ðã tìm th¤y Hß Trúc",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200055_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200055_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200055_g_MissionId) > 0)  then
		-- ¼ì²âÐúng²»ÐúngTÕi ¸±±¾,ÔÙ¼ì²âÐúng²»Ðúng,Èç¹ûÐúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
			-- ¼ì²âÏÂTên,°²È« ði¬m ði¬m
		if GetName(sceneId, targetId) == x200055_g_Name  then
	    BeginEvent(sceneId)
				AddText(sceneId,x200055_g_MissionName)
				AddText(sceneId,x200055_g_MissionComplete)
				AddMoneyBonus( sceneId, x200055_g_MoneyBonus )
	    EndEvent( )
			DispatchMissionContinueInfo(sceneId,selfId,targetId,x200055_g_ScriptId,x200055_g_MissionId)
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200055_CheckAccept(sceneId, selfId, targetId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200055_g_MissionName)
			AddText(sceneId,x200055_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200055_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200055_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200055_g_ScriptId,x200055_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200055_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200055_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200055_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		if GetName(sceneId, targetId) == x200055_g_Name    then
			AddNumText(sceneId, x200055_g_ScriptId,x200055_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200055_CheckAccept(sceneId,selfId,targetId) > 0 then	
		if GetName(sceneId, targetId) == "Hi¬u Lôi"    then
			AddNumText(sceneId,x200055_g_ScriptId,x200055_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200055_CheckAccept( sceneId, selfId, targetId )

	--ÅÐ¶¨Ìõ¼þ
	--1,Ç°ÐøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200055_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200055_g_MissionId) > 0  then
		return 0
	end
	
	if LuaFnGetCopySceneData_Param(sceneId, 15) ~= 1 then
		return 0
	end
	
	--2,µÈc¤p´ïµ½50
	if GetLevel(sceneId, selfId) < 70   then
		return 0
	end
	
	return 1
end


--**********************************
--Tiªp thø
--**********************************
function x200055_OnAccept( sceneId, selfId, targetId )

	if x200055_CheckAccept(sceneId, selfId, targetId) ~= 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200055_g_MissionId, x200055_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#Ynh§n nhi®m vø#W: tình yêu cüa ta không phäi là mµng",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200055_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200055_OnTimer(sceneId,selfId)
end

--**********************************
--·ÅÆú
--**********************************
function x200055_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200055_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x200055_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200055_CheckSubmit( sceneId, selfId, selectRadioId )
  local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200055_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200055_g_MissionId)-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
	local bDone = GetMissionParam( sceneId,selfId,misIndex,0 )
	
	if bDone == 1  then
		return 1
	end
	return 0
	
end

--**********************************
--Ìá½»
--**********************************
function x200055_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ¿ÉÒÔÌá½»toÕ ðµ Ìõ¼þÅÐ¶¨
	if x200055_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		if DelMission( sceneId, selfId, x200055_g_MissionId ) ~=1 then
			return
		end
		MissionCom( sceneId, selfId, x200055_g_MissionId )
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200055_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200055_g_exp)

		Msg2Player( sceneId, selfId, "#YHoàn t¤t nhi®m vø#W: tình yêu cüa ta không phäi là mµng", MSG2PLAYER_PARA )
	
		--¸ø½±ÀøºÍ½ðÇ®

		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200056), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200055_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200055_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200055_OnItemChanged( sceneId, selfId, itemdataId )
	
end


