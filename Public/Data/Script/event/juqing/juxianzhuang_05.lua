-- ÑªÕ½¾ÛÏÍ×¯


-- 200024
-- ¶¥ÌìÁ¢µØ

-- ÔÙTÕi ¸±±¾ÄÚÍê³ÉÉ±¹ÖÈÎÎñ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200024_g_ScriptId = 200024

--¸±±¾Ãû³Æ
x200024_g_CopySceneName="Tø Hi«n Trang"

--ÈÎÎñºÅ
x200024_g_MissionId = 23

--Ç°ÐøÈÎÎñ
x200024_g_PreMissionId = 22

--Ä¿±êNPC
x200024_g_Name = "Tiªt Mµ Hoa"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200024_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200024_g_MissionLevel = 40

--ÈÎÎñ¹éÀà
x200024_g_MissionKind = 47

--ÈÎÎñÎÄ±¾ÃèÊö
x200024_g_MissionName="Huyªt chiªn Tø Hi«n Trang"
x200024_g_MissionInfo="#{Mis_juqing_0023}"
x200024_g_MissionTarget="#{Mis_juqing_Tar_0023}"	--Møc tiêu nhi®m vø
x200024_g_MissionComplete="  $N, n¬ l¶i cüa các hÕ, lão phu nh¤t ð¸nh tr¸ khöi vªt thß½ng cüa ti¬u a ð¥u này. Ðþi ðªn lúc vªt thß½ng lành, nh¤t ð¸nh phäi trä l¶i lai l¸ch cüa H¡c Y nhân. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x200024_g_MoneyBonus=63000
x200024_g_exp=64000

x200024_g_RadioItemBonus={{id=10415004 ,num=1},{id=10415005,num=1},{id=10415006,num=1},{id=10415007,num=1}}

x200024_g_Custom	= { {id="Ðã bäo hµ Tiêu Phong thoát nguy",num=1} }
x200024_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200024_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200024_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200024_g_MissionName)
			--AddMoneyBonus( sceneId, x200024_g_MoneyBonus )
		EndEvent( )
		bDone = x200024_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200024_g_ScriptId,x200024_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x200024_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200024_g_MissionName)
			AddText(sceneId,x200024_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200024_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200024_g_MoneyBonus )
			for i, item in x200024_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200024_g_ScriptId,x200024_g_MissionId)
  end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200024_OnEnumerate( sceneId, selfId, targetId )
  --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200024_g_MissionId) > 0 then
		return
	end

  --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200024_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == "Tiªt Mµ Hoa"   then
			AddNumText(sceneId,x200024_g_ScriptId,x200024_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200024_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200024_g_ScriptId,x200024_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200024_CheckAccept( sceneId, selfId )
	
	--C¥n 4c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) < 40 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200024_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200024_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200024_g_MissionId, x200024_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200024_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YTiªp nh§n nhi®m vø#W: Huyªt chiªn Tø huy«n trang",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200024_g_SignPost.x, x200024_g_SignPost.z, x200024_g_SignPost.tip )
	
	-- Tiªp thøÈÎÎñºó,M· ra ¾çÇé
	LuaFnSetCopySceneData_Param(sceneId, 10, 1)
	LuaFnSetCopySceneData_Param(sceneId, 11, LuaFnGetCurrentTime())
	LuaFnSetCopySceneData_Param(sceneId, 12, LuaFnGetCurrentTime())
	LuaFnSetCopySceneData_Param(sceneId, 13, 1)
	
end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200024_OnTimer(sceneId,selfId)--,missionIndex)
	
end

--**********************************
--·ÅÆú
--**********************************
function x200024_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200024_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200024_g_SignPost.tip )
end


--**********************************
--¼ÌÐø
--**********************************
function x200024_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x200024_g_MissionName)
	AddText(sceneId,x200024_g_MissionComplete)
	AddText(sceneId,"#{M_SHOUHUO}#r")
	AddMoneyBonus( sceneId, x200024_g_MoneyBonus )
	for i, item in x200024_g_RadioItemBonus do
		AddRadioItemBonus( sceneId, item.id, item.num )
	end
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200024_g_ScriptId,x200024_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200024_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200024_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200024_g_MissionId)
	
	local Kill1 = LuaFnGetCopySceneData_Param(sceneId, 15)

	if Kill1~=1 			then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200024_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200024_CheckSubmit(sceneId, selfId) == 1   then
  	BeginAddItem(sceneId)
		for i, item in x200024_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		local ret = EndAddItem(sceneId,selfId)
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

		AddMoney(sceneId,selfId,x200024_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200024_g_exp)

		DelMission( sceneId, selfId, x200024_g_MissionId )
		MissionCom( sceneId, selfId, x200024_g_MissionId )
		Msg2Player( sceneId, selfId,"#YNhi®m vø hoàn thành#W: Huyªt chiªn Tø Hi«n Trang",MSG2PLAYER_PARA )

		Msg2Player( sceneId, selfId,"Các hÕ ðã hoàn thành xong loÕt nhi®m vø #GTø Hi«n Trang #W",MSG2PLAYER_PARA )
		local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
		LuaFnSendMailToGUID(sceneId, selfGuid, "Các hÕ ðã hoàn thành xong loÕt nhi®m vø #GTø Hi«n Trang #W. Sau khi ðÕt t¾i c¤p 50, tìm Tri®u Thiên Sß · thành ÐÕi Lý, M· mµt loÕt nhi®m vø #GThß½ng Mang S½n #W")

		-- Íê³É¾ÛÏÍ×¯¾çÇé,¸ø10 ði¬m¾çÇé ði¬m
		local nPoint = GetHumanJuqingPoint(sceneId, selfId)
		SetHumanJuqingPoint(sceneId, selfId, nPoint+10)

		-- Í¨ÖªÍæ¼Ò,¿ÉÒÔ×ö¾çÇéÑ­»·ÈÎÎñÁË
		-- ÄúÏÖTÕi ¿ÉÒÔÈ¥AA³ÇtoÕ ðµ [bb,cc]ÕÒµ½DD,Tiªp thøDDÑ­»·ÈÎÎñ.
		local strText1 = "Các hÕ bây gi¶ có th¬ ði toÕ ðµ [118,62]thành LÕc Dß½ng tìm Gia Lu§t ÐÕi ThÕch, tiªp nh§n nhi®m vø tu¥n hoàn cüa Tiêu Phong."
		LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
		
		BeginEvent(sceneId)
			AddText(sceneId,strText1);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200024_OnKillObject( sceneId, selfId, objdataId ,objId)

	local misIndex
	if GetName(sceneId,objId) == "Huy«n NÕn"	  then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x200024_g_MissionId)
		SetMissionByIndex(sceneId,selfId,misIndex,3,1)
	end
	if GetName(sceneId,objId) == "Huy«n T¸ch"	  then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x200024_g_MissionId)
		SetMissionByIndex(sceneId,selfId,misIndex,4,1)
	end
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200024_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200024_OnItemChanged( sceneId, selfId, itemdataId )
end


