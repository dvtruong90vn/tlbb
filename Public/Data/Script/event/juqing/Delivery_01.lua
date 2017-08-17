-- 200080 
-- ËÍÐÅÈÎÎñ 

-- ÕÔÌìÊ¦ -> ¶ÎÕý´¾

--MisDescBegin
--½Å±¾ºÅ
x200080_g_ScriptId = 200080

--Tiªp thøÈÎÎñNPCÊôÐÔ
x200080_g_Position_X=189
x200080_g_Position_Z=94
x200080_g_SceneID=2
x200080_g_AccomplishNPC_Name="Ðoàn Chính Thu¥n"

--ÈÎÎñºÅ
x200080_g_MissionId = 1

--Ç°ÐøÈÎÎñ
x200080_g_PreMissionId = 3

--Ä¿±êNPC
x200080_g_Name	="Ðoàn Chính Thu¥n"

--ÈÎÎñ¹éÀà
x200080_g_MissionKind = 51

--ÐÆng c¤p nhi®m vø 
x200080_g_MissionLevel = 20

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200080_g_IfMissionElite = 0

--ÈÎÎñÃû
x200080_g_MissionName="Ðèn nhà ai n¤y sáng"
x200080_g_MissionInfo="#{Mis_juqing_0001}"
x200080_g_MissionTarget="#{Mis_juqing_Tar_0001}"
x200080_g_MissionComplete="  $N, cu¯i cùng ngß½i ðã t¾i, ta tìm ngß½i quá lâu"

x200080_g_MoneyBonus=3600
x200080_g_exp=2800

x200080_g_Custom	= { {id="Ðã tìm ðßþc Ðoàn Chính Thu¥n",num=1} }
x200080_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200080_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200080_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200080_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200080_g_Name then
			x200080_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200080_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200080_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200080_g_MissionName)
				AddText(sceneId,x200080_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200080_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200080_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200080_g_ScriptId,x200080_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200080_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200080_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200080_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200080_g_Name then
			AddNumText(sceneId, x200080_g_ScriptId,x200080_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200080_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200080_g_Name then
			AddNumText(sceneId,x200080_g_ScriptId,x200080_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200080_CheckAccept( sceneId, selfId )
	
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200080_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200080_g_MissionLevel then
		return 0
	end
	
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x200080_OnAccept( sceneId, selfId, targetId )
	if x200080_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200080_g_MissionId, x200080_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ð® tØ nhà ai vß¶n nhà ai",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200080_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

end

--**********************************
--·ÅÆú
--**********************************
function x200080_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200080_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200080_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200080_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x200080_g_MissionName)
	AddText(sceneId,x200080_g_MissionComplete)
	AddMoneyBonus( sceneId, x200080_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200080_g_ScriptId,x200080_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200080_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200080_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200080_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200080_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200080_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200080_g_exp)
		
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		DelMission( sceneId,selfId,  x200080_g_MissionId )
		MissionCom( sceneId,selfId,  x200080_g_MissionId )

		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Ð® tØ nhà ai vß¶n nhà ai",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200081), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200080_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200080_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200080_OnItemChanged( sceneId, selfId, itemdataId )
end
