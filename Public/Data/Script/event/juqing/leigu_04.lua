-- ÔñÈÕÔÙÕ½ 200043

-- ¸±±¾ÄÚËÍĞÅµ½¸±±¾Íâ,(Í¬mµt cáiNPC)

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200043_g_ScriptId = 200043

--ÈÎÎñºÅ
x200043_g_MissionId = 36

--Ç°ĞøÈÎÎñºÅ
x200043_g_PreMissionId = 35

--Møc tiêu nhi®m vøNPCÊôĞÔ
x200043_g_Position_X=125
x200043_g_Position_Z=144
x200043_g_SceneID=14
x200043_g_AccomplishNPC_Name="Tô Tinh Hà"

--Ä¿±êNPC
x200043_g_Name = "Tô Tinh Hà"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200043_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x200043_g_MissionLevel = 60

--ÈÎÎñ¹éÀà
x200043_g_MissionKind = 53

--ÈÎÎñÎÄ±¾ÃèÊö
x200043_g_MissionName="Ch÷n ngày tái chiªn"
x200043_g_MissionInfo="#{Mis_juqing_0036}"
x200043_g_MissionTarget="#{Mis_juqing_Tar_0036}"	--Møc tiêu nhi®m vø
x200043_g_MissionComplete="  Các hÕ r¯t cuµc ğã ğªn r°i, hãy mau ği chu¦n b¸ ği, tr§n chiªn v¾i Ğinh Xuân Thu l¥n này, Hung hi¬m vô bì"	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x200043_g_MoneyBonus=8100
x200043_g_exp=8000

x200043_g_Custom	= { {id="Ğã tìm ğßşc Tô Tinh Hà",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200043_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200043_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200043_g_MissionId) > 0)  then
		-- ¼ì²âĞúng²»ĞúngTÕi ¸±±¾,ÔÙ¼ì²âĞúng²»Ğúng,Èç¹ûĞúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType ~= 1 then --³¡¾°ÀàĞÍ²»Ğúng¸±±¾
			-- ¼ì²âÏÂTên,°²È« ği¬m ği¬m
			if GetName(sceneId, targetId) == x200043_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200043_g_MissionName)
				AddText(sceneId,x200043_g_MissionComplete)
				AddMoneyBonus( sceneId, x200043_g_MoneyBonus )
		    EndEvent()
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200043_g_ScriptId,x200043_g_MissionId)
			end
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200043_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200043_g_MissionName)
			AddText(sceneId,x200043_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200043_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200043_g_MoneyBonus )
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x200043_g_ScriptId,x200043_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200043_OnEnumerate( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200043_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200043_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		local sceneType = LuaFnGetSceneType(sceneId)
		if sceneType ~= 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
			AddNumText(sceneId, x200043_g_ScriptId,x200043_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200043_CheckAccept(sceneId,selfId) > 0 then	
		AddNumText(sceneId,x200043_g_ScriptId,x200043_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200043_CheckAccept( sceneId, selfId )
	--ÅĞ¶¨Ìõ¼ş
	--1,Ç°ĞøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200043_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200043_g_MissionId) > 0  then
		return 0
	end
	
	--2,µÈc¤p´ïµ½60
	if GetLevel(sceneId, selfId) < 60   then
		return 0
	end

	--3,³¡¾°²»Ğúng¸±±¾
	local sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType == 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
		return 1
	else 
		return 0
	end
	
	return 1
end


--**********************************
--Tiªp thø
--**********************************
function x200043_OnAccept( sceneId, selfId, targetId )

	if x200043_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200043_g_MissionId, x200043_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ch÷n ngày tái chiªn",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200043_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)

end

--**********************************
--·ÅÆú
--**********************************
function x200043_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200043_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x200043_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200043_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200043_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ¿ÉÒÔÌá½»toÕ ğµ Ìõ¼şÅĞ¶¨
	-- 1,ÓĞCái này ÈÎÎñ,
	if( IsHaveMission(sceneId,selfId,x200043_g_MissionId) > 0)  then
		AddMoney(sceneId,selfId,x200043_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200043_g_exp)
		
		DelMission( sceneId,selfId,  x200043_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId,  x200043_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Ch÷n ngày tái chiªn",MSG2PLAYER_PARA )

		-- µ÷ÓÃºóĞøÈÎÎñ
		CallScriptFunction((200045), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200043_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200043_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200043_OnItemChanged( sceneId, selfId, itemdataId )
	
end



