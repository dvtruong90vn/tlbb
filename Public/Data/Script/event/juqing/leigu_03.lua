-- ÊäÓ®³É°ÜË­ÈËËã 200042


-- ÔÙTÕi ¸±±¾ÄÚÍê³ÉÉ±¹ÖÈÎÎñ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200042_g_ScriptId = 200042

--¸±±¾Ãû³Æ
x200042_g_CopySceneName="Lôi C± S½n"

--ÈÎÎñºÅ
x200042_g_MissionId = 35

--Ç°ÐøÈÎÎñ
x200042_g_PreMissionId = 34

--Ä¿±êNPC
x200042_g_Name = "Tô Tinh Hà "

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200042_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200042_g_MissionLevel = 60

--ÈÎÎñ¹éÀà
x200042_g_MissionKind = 53

--ÈÎÎñÎÄ±¾ÃèÊö
x200042_g_MissionName="Thua th¡ng thành bÕi ai biªt ðßþc"
x200042_g_MissionInfo="#{Mis_juqing_0035}"
x200042_g_MissionTarget="#{Mis_juqing_Tar_0035}"	--Møc tiêu nhi®m vø
x200042_g_MissionComplete="  Th§t không ng¶ ti¬u hòa thßþng này có th¬ giäi ðßþc ván c¶ Trân Long! Tinh Túc Häi cäm kích b¤t t§n. Ðinh Xuân Thu chßa th¬ xem thß¶ng, · ðây có mµt nØa công lao cüa các hÕ. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°
x200042_g_MissionContinue="  Th§t không ng¶, không ng¶... bàn c¶ này lÕi ði thành thª này.."

x200042_g_MoneyBonus=21600
x200042_g_exp=24000

x200042_g_RadioItemBonus={{id=10414013 ,num=1},{id=10414014,num=1},{id=10414015,num=1}}

x200042_g_Custom	= { {id="Ðã bäo hµ Hß Trúc",num=1} }
x200042_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200042_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200042_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200042_g_MissionName)
			AddText(sceneId,x200042_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200042_g_MoneyBonus )
		EndEvent( )
		bDone = x200042_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200042_g_ScriptId,x200042_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x200042_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200042_g_MissionName)
			AddText(sceneId,x200042_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200042_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200042_g_MoneyBonus )
			for i, item in x200042_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200042_g_ScriptId,x200042_g_MissionId)
  end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200042_OnEnumerate( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200042_g_MissionId) > 0 then
		return
	end
  
  --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200042_g_MissionId) > 0 then
		AddNumText(sceneId,x200042_g_ScriptId,x200042_g_MissionName,2,-1);
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200042_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200042_g_ScriptId,x200042_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200042_CheckAccept( sceneId, selfId )
	
	--C¥n 60c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) < 60 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200042_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200042_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200042_g_MissionId, x200042_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200042_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Thua th¡ng thành bÕi ai biªt ðßþc",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200042_g_SignPost.x, x200042_g_SignPost.z, x200042_g_SignPost.tip )
	
	-- ½ÓÈÎÎñ b¡t ð¥u¾çÇé,¾çÇéTÕi ¸±±¾toÕ ðµ OnTimeÖÐÍê³É
	LuaFnSetCopySceneData_Param(sceneId, 8, 2) ;--¿ØÖÆËµ»°
	LuaFnSetCopySceneData_Param(sceneId, 9, LuaFnGetCurrentTime())--Ê±¼ä
	LuaFnSetCopySceneData_Param(sceneId, 10, 1) ;--¿ØÖÆËµ¹ý»°
	LuaFnSetCopySceneData_Param(sceneId, 11, LuaFnGetCurrentTime())--Ê±¼ä
	
end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200042_OnTimer(sceneId,selfId)
	
end

--**********************************
--·ÅÆú
--**********************************
function x200042_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200042_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200042_g_SignPost.tip )
end


--**********************************
--¼ÌÐø
--**********************************
function x200042_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200042_g_MissionName)
		AddText(sceneId,x200042_g_MissionComplete)
		AddMoneyBonus( sceneId, x200042_g_MoneyBonus )
		for i, item in x200042_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200042_g_ScriptId,x200042_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200042_CheckSubmit( sceneId, selfId )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200042_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ

	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200042_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local Kill1 = LuaFnGetCopySceneData_Param(sceneId, 15)
	if Kill1 ~= 1   then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200042_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200042_CheckSubmit(sceneId, selfId) == 1    then
  	BeginAddItem(sceneId)
		for i, item in x200042_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret < 1 then
			--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Không th¬ Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId,x200042_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200042_g_exp)

		DelMission( sceneId, selfId, x200042_g_MissionId )
		MissionCom( sceneId, selfId, x200042_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Thua th¡ng thành bÕi ai biªt ðßþc",MSG2PLAYER_PARA )

		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200043), "OnDefaultEvent",sceneId, selfId, targetId )
		if LuaFnGetCopySceneData_Param(sceneId, 8) == 2 then
			LuaFnSetCopySceneData_Param(sceneId, 8, 3)
		end
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200042_OnKillObject( sceneId, selfId, objdataId ,objId)

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200042_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200042_OnItemChanged( sceneId, selfId, itemdataId )
end
