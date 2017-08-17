-- ¸±±¾ÖÐtoÕ ðµ ÇÇ·åËÍÐÅ¸øLÕc Dß½ngË¢³öÀ´toÕ ðµ ÇÇ·å

--MisDescBegin
--½Å±¾ºÅ
x200026_g_ScriptId = 200026

--ÈÎÎñºÅ
x200026_g_MissionId = 47

--Ç°ÐøÈÎÎñ
x200026_g_PreMissionId = 21

--Tiªp thøÈÎÎñNPCÊôÐÔ
x200026_g_Position_X=277
x200026_g_Position_Z=133
x200026_g_SceneID=0
x200026_g_AccomplishNPC_Name="Tiêu Phong"

--Ä¿±êNPC
x200026_g_Name	="Tiêu Phong"

--ÈÎÎñ¹éÀà
x200026_g_MissionKind = 47

--ÐÆng c¤p nhi®m vø 
x200026_g_MissionLevel = 40

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200026_g_IfMissionElite = 0

--ÈÎÎñÃû
x200026_g_MissionName="KÏ sau g£p m£t"
x200026_g_MissionInfo="  $N, Sñ giúp ðÞ cüa các hÕ, Ki«u m² vô cùng cäm kích. #rSáng s¾m ngày mai Ki«u m² phäi ðßa A Châu t¾i Tø Hi«n Trang, M¶i Tiªt Th¥n Y tr¸ thß½ng giúp cô ta. Nhæng kë ti¬u nhân vô tri trong Tø Hi«n Trang vu cáo b¸a ð£t ð¯i v¾i Ki«u m² không có gì là khó, nhßng mu¯n ra tay ðã thß½ng ta, không phäi là d­. #r$N, sáng s¾m ngày mai, cØa Ðông thành LÕc Dß½ng chúng ta g£p nhau!"
x200026_g_MissionTarget="  — g¥n #GÐông môn thành LÕc Dß½ng#W tìm#R Tiêu Phong #W#{_INFOAIM377,263,0, Tiêu Phong}. "
x200026_g_MissionComplete="  $N, huynh ðªn muµn, Phi«n ð® · ðây ðþi lâu. Chúng ta xu¤t hành ði Tø Hi«n Trang thôi"

x200026_g_MoneyBonus=5400
x200026_g_exp=5400

x200026_g_Custom	= { {id="Ðã tìm ðßþc Tiêu Phong",num=1} }
x200026_g_IsMissionOkFail = 0


--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200026_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200026_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200026_g_MissionId) > 0)  then
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType ~= 1 then --³¡¾°ÀàÐÍÐúng¸±±¾
			x200026_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200026_CheckAccept(sceneId,selfId) > 0 then
		-- ÅÐ¶ÏÐúngTÕi ¸±±¾,
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --³¡¾°ÀàÐÍÐúng¸±±¾
		--if GetName(sceneId,targetId) ~= x200026_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x200026_g_MissionName)
				AddText(sceneId,x200026_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200026_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200026_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200026_g_ScriptId,x200026_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200026_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200026_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200026_g_MissionId) > 0 then
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType ~= 1 then --³¡¾°ÀàÐÍÐúng¸±±¾
			AddNumText(sceneId, x200026_g_ScriptId,x200026_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200026_CheckAccept(sceneId,selfId) > 0 then
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --³¡¾°ÀàÐÍÐúng¸±±¾
			AddNumText(sceneId,x200026_g_ScriptId,x200026_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200026_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200026_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200026_g_MissionLevel then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñtoÕ ðµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x200026_g_PreMissionId) < 1  then
		return 0
	end
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x200026_OnAccept( sceneId, selfId, targetId )
	if x200026_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200026_g_MissionId, x200026_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: KÏ sau g£p m£t",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200026_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--·ÅÆú
--**********************************
function x200026_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200026_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200026_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200026_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x200026_g_MissionName)
	AddText(sceneId,x200026_g_MissionComplete)
	AddMoneyBonus( sceneId, x200026_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200026_g_ScriptId,x200026_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200026_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200026_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200026_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200026_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200026_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200026_g_exp)
		
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		DelMission( sceneId,selfId,  x200026_g_MissionId )
		MissionCom( sceneId,selfId,  x200026_g_MissionId )

		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: KÏ sau g£p m£t",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200022), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200026_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200026_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200026_OnItemChanged( sceneId, selfId, itemdataId )
end
