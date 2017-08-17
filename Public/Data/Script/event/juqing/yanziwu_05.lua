-- Ö¸ ði¬mÈººÀÏ·   Ñà×ÓÎë´óÕ½,^_^,Tinh²Ê²¿·ÖÅ¶ 

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200015_g_ScriptId = 200015

--¸±±¾Ãû³Æ
x200015_g_CopySceneName="Yªn TØ ‘"

--ÈÎÎñºÅ
x200015_g_MissionId = 14

--ÈÎÎñºÅ
x200015_g_PreMissionId = 13

--Ä¿±êNPC
x200015_g_Name = "Vß½ng Ngæ Yên"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200015_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200015_g_MissionLevel = 30

--ÈÎÎñ¹éÀà
x200015_g_MissionKind = 48

--ÈÎÎñÎÄ±¾ÃèÊö
x200015_g_MissionName="Chï Ði¬m Qu¥n Hào"
x200015_g_MissionInfo="#{Mis_juqing_0014}"
x200015_g_MissionTarget="#{Mis_juqing_Tar_0014}"	--Møc tiêu nhi®m vø
x200015_g_MissionComplete="  $N, ½n cÑu mÕng cüa các hÕ, tÕi hÕ nh¤t ð¸nh s¨ báo ðáp. Nhßng mà, tÕi hÕ thi®n gi¶ thân trúng k¸ch ðµc... không biªt làm sao ð¬ có c½ hµi báo ðáp..."	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°
x200015_g_MissionContinue="  Ngß½i ðã giúp Ðoàn công tØ ðánh lui các võ sî Tây HÕ sao?"

x200015_g_MoneyBonus=21600
x200015_g_exp=22000

x200015_g_RadioItemBonus={{id=10423005,num=1},{id=10423006,num=1},{id=10423007,num=1}}

x200015_g_Custom	= { {id="Chï Ði¬m Qu¥n Hào",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200015_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200015_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200015_g_MissionName)
			AddText(sceneId,x200015_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200015_g_MoneyBonus )
		EndEvent( )
		bDone = x200015_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200015_g_ScriptId,x200015_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x200015_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200015_g_MissionName)
			AddText(sceneId,x200015_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200015_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200015_g_MoneyBonus )
			for i, item in x200015_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200015_g_ScriptId,x200015_g_MissionId)
  end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200015_OnEnumerate( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200015_g_MissionId) > 0 then
		return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200015_g_MissionId) > 0 then
		AddNumText(sceneId,x200015_g_ScriptId,x200015_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200015_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200015_g_ScriptId,x200015_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200015_CheckAccept( sceneId, selfId )
	-- Íæ¼ÒC¥n ÏÈÍê³ÉÇ°ÐøÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200015_g_PreMissionId) < 1 then
		return 0
	end
	
	if LuaFnGetCopySceneData_Param(sceneId, 25) == 1  then
		return 0
	end	
	
	--C¥n 4c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 30 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x200015_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200015_g_MissionId, x200015_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,4,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,5,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Chï Ði¬m Qu¥n Hào",MSG2PLAYER_PARA )

	SetMissionEvent(sceneId, selfId, x200015_g_MissionId, 0)
	
	LuaFnSetCopySceneData_Param(sceneId, 10, 1)
	LuaFnSetCopySceneData_Param(sceneId, 11, LuaFnGetCurrentTime())
	LuaFnSetCopySceneData_Param(sceneId, 12, LuaFnGetCurrentTime())

	-- ði¬mÃûmµt µ©¿ªÊ¼,¾Í²»ÄÜÔÙÀ´mµt ´ÎÁË
	
	LuaFnSetCopySceneData_Param(sceneId, 25, 1)
end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200015_OnTimer(sceneId,selfId)

end

--**********************************
--·ÅÆú
--**********************************
function x200015_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200015_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200015_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200015_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x200015_g_MissionName)
		AddText(sceneId,x200015_g_MissionComplete)
		AddMoneyBonus( sceneId, x200015_g_MoneyBonus )
		for i, item in x200015_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x200015_g_ScriptId,x200015_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200015_CheckSubmit( sceneId, selfId )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)

	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,0)
	local Kill2 = GetMissionParam(sceneId,selfId,misIndex,1)
	local Kill3 = GetMissionParam(sceneId,selfId,misIndex,2)
	local Kill4 = GetMissionParam(sceneId,selfId,misIndex,3)
	local Kill5 = GetMissionParam(sceneId,selfId,misIndex,4)

	if Kill1~=1 			then
		return 0
	elseif Kill2~=1 	then
		return 0
	elseif Kill3~=1   then
		return 0
	elseif Kill4~=1   then
		return 0
	elseif Kill5~=1   then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200015_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200015_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then

  	BeginAddItem(sceneId)
		for i, item in x200015_g_RadioItemBonus do
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

		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200015_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200015_g_exp)

		DelMission( sceneId, selfId, x200015_g_MissionId )
		MissionCom( sceneId, selfId, x200015_g_MissionId )
		Msg2Player( sceneId, selfId, "#YHoàn t¤t nhi®m vø#W: Chï Ði¬m Qu¥n Hào", MSG2PLAYER_PARA )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200015_OnKillObject( sceneId, selfId, objdataId ,objId)

	local misIndex = -1
	local szMonsterName = GetName(sceneId,objId)
	if szMonsterName == "Hoàng H° TØ"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt Hoàng H° TØ: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end

	elseif szMonsterName == "Khôi Bào Khách"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,2,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt Khôi Bào Khách: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end

	elseif szMonsterName == "H± Träo Môn Ð® TØ"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,3,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt H± Träo Môn Ð® TØ: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end

	elseif szMonsterName == "Cù Nhiêm Võ Sî"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,4,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt Cù Nhiêm Võ Sî: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end

	elseif szMonsterName == "Su¤t Giác Cao Thü"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200015_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,selfId,x200015_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,5,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt Su¤t Giác Cao Thü: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
		
	else
		return
		
	end
	
	-- ¼ì²âÈç¹ûC¥n É±toÕ ðµ ÈË¶¼É±ÁËºó,¸øcáiÍê³É±êÖ¾
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,5)
	local Kill2 = GetMissionParam(sceneId,selfId,misIndex,1)
	local Kill3 = GetMissionParam(sceneId,selfId,misIndex,2)
	local Kill4 = GetMissionParam(sceneId,selfId,misIndex,3)
	local Kill5 = GetMissionParam(sceneId,selfId,misIndex,4)
	
	if Kill1==1 and Kill2==1 and Kill3==1 and Kill4==1 and Kill5==1 then
		--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0010}",0)
		CallScriptFunction((200060), "Duibai",sceneId, "Võ Sî Tây hÕ", "Yªn TØ ‘", "#{JQ_DB_0010}" )
		
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		
	end
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200015_OnEnterArea( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200015_OnItemChanged( sceneId, selfId, itemdataId )
	
end







