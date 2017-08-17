
-- ÔÙTÕi ¸±±¾ÄÚÍê³ÉÉ±¹ÖÈÎÎñ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200006_g_ScriptId = 200006

--¸±±¾Ãû³Æ
x200006_g_CopySceneName="VÕn Kiªp C¯c"

--ÈÎÎñºÅ
x200006_g_MissionId = 6

--Ç°ÐøÈÎÎñ
x200006_g_PreMissionId = 5

--Ä¿±êNPC
x200006_g_Name = "Ðoàn Chính Thu¥n"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200006_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200006_g_MissionLevel = 20

--ÈÎÎñ¹éÀà
x200006_g_MissionKind = 51

--ÈÎÎñÎÄ±¾ÃèÊö
x200006_g_MissionName="ÐÕi chiªn VÕn Kiªp C¯c"
x200006_g_MissionInfo="#{Mis_juqing_0006}"
x200006_g_MissionTarget="#{Mis_juqing_Tar_0006}"	--Møc tiêu nhi®m vø
x200006_g_MissionComplete="  Làm t¯t l¡m, Ðoàn Diên Khánh không có 3 ngß¶i này tß½ng trþ, khó có th¬ tÕi VÕn Kiªm C¯c gây sñ næa. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°
x200006_g_MissionContinue="  Ngß½i ðã ðánh bÕi Di®p Nh¸ Nß½ng, NhÕc Lão Tam và Vân Trung HÕc chßa? "

x200006_g_MoneyBonus=10800
x200006_g_exp=18000

x200006_g_RadioItemBonus={{id=10422001 ,num=1},{id=10422002,num=1},{id=10422003,num=1}}

x200006_g_Custom	= { {id="Ðã chiªn th¡ng Di®p Nh¸ Nß½ng",num=1},{id="Ðã chiªn th¡ng NhÕc Lão Tam",num=1},{id="Ðã chiªn th¡ng Vân Trung HÕc",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200006_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200006_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200006_g_MissionName)
			AddText(sceneId,x200006_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200006_g_MoneyBonus )
		EndEvent( )
		bDone = x200006_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200006_g_ScriptId,x200006_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x200006_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200006_g_MissionName)
			AddText(sceneId,x200006_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200006_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200006_g_MoneyBonus )
			for i, item in x200006_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200006_g_ScriptId,x200006_g_MissionId)
  end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200006_OnEnumerate( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200006_g_MissionId) > 0 then
		return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200006_g_MissionId) > 0 then
		AddNumText(sceneId,x200006_g_ScriptId,x200006_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200006_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200006_g_ScriptId,x200006_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200006_CheckAccept( sceneId, selfId )
	
	--C¥n 4c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) < 20 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200006_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200006_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200006_g_MissionId, x200006_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200006_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: ÐÕi chiªn VÕn Kiªp C¯c",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200006_g_SignPost.x, x200006_g_SignPost.z, x200006_g_SignPost.tip )
	
	--½ÓÈÎÎñºó,°ÑÏà¹ØtoÕ ðµ ¹ÖÉèÖÃÎª¿ÉÒÔCuµc chiªn 
	-- C¥n ±éÀúËùÓÐtoÕ ðµ ¹Ö,¸Ä±äËûÃÇtoÕ ðµ ÕóÓª
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "Di®p Nh¸ Nß½ng"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		elseif GetName(sceneId, nMonsterId)  == "NhÕc Lão Tam"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		elseif GetName(sceneId, nMonsterId)  == "Vân Trung HÕc"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		end
	end

	SetMissionEvent(sceneId, selfId, x200006_g_MissionId, 0)

end

--**********************************
--·ÅÆú
--**********************************
function x200006_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200006_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200006_g_SignPost.tip )
end


--**********************************
--¼ÌÐø
--**********************************
function x200006_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200006_g_MissionName)
		AddText(sceneId,x200006_g_MissionComplete)
		AddMoneyBonus( sceneId, x200006_g_MoneyBonus )
		for i, item in x200006_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200006_g_ScriptId,x200006_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200006_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200006_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x200006_g_MissionId)
	
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,0)
	local Kill2 = GetMissionParam(sceneId,selfId,misIndex,1)
	local Kill3 = GetMissionParam(sceneId,selfId,misIndex,2)

	if Kill1~=1 			then
		return 0
	elseif Kill2~=1 	then
		return 0
	elseif Kill3~=1   then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200006_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200006_CheckSubmit( sceneId, selfId ) == 1   then
  	BeginAddItem(sceneId)
		for i, item in x200006_g_RadioItemBonus do
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

		AddMoney(sceneId,selfId,x200006_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200006_g_exp)

		DelMission( sceneId, selfId, x200006_g_MissionId )
		MissionCom( sceneId, selfId, x200006_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: ÐÕi chiªn VÕn Kiªp C¯c",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200007), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200006_OnKillObject( sceneId, selfId, objdataId ,objId)

	local misIndex = -1
	if GetName(sceneId,objId) == "Di®p Nh¸ Nß½ng"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200006_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,humanObjId,x200006_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt Di®p Nh¸ Nß½ng: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
	end
	if GetName(sceneId,objId) == "NhÕc Lão Tam"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200006_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,humanObjId,x200006_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt NhÕc Lão Tam: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
	end
	if GetName(sceneId,objId) == "Vân Trung HÕc"	  then
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200006_g_MissionId) > 0 then
				misIndex = GetMissionIndexByID(sceneId,humanObjId,x200006_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,2,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt Vân Trung HÕc: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
			end
		end
	end
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200006_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200006_OnItemChanged( sceneId, selfId, itemdataId )
end
