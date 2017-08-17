-- 200021
-- ¶¥ÌìÁ¢µØ

-- ÔÙTÕi ¸±±¾ÄÚÍê³ÉÉ±¹ÖÈÎÎñ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200021_g_ScriptId = 200021

--¸±±¾Ãû³Æ
x200021_g_CopySceneName="Tø Hi«n Trang"

--ÈÎÎñºÅ
x200021_g_MissionId = 21

--Ç°ÐøÈÎÎñ
x200021_g_PreMissionId = 20

--Ä¿±êNPC
x200021_g_Name = "Tiêu Phong"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200021_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200021_g_MissionLevel = 40

--ÈÎÎñ¹éÀà
x200021_g_MissionKind = 47

--ÈÎÎñÎÄ±¾ÃèÊö
x200021_g_MissionName="Ðïnh thiên l§p ð¸a"
x200021_g_MissionInfo="#{Mis_juqing_0021}"
x200021_g_MissionTarget="#{Mis_juqing_Tar_0021}"	--Møc tiêu nhi®m vø
x200021_g_MissionComplete="  $N, sñ giúp ðÞ cüa các hÕ, Tiêu m² ta cäm kích vô cùng. Vào bu±i sáng ngày mai, chúng ta s¨ g£p lÕi tÕi Ðông môn cüa thành LÕc Dß½ng!"	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°
x200021_g_MissionContinue="  BÕn ðã ðánh bÕi Bào Thiên Linh, KÏ Løc, Hß¾ng V÷ng Häi ba ngß¶i h÷ chßa? "

x200021_g_MoneyBonus=8100
x200021_g_exp=9600

x200021_g_RadioItemBonus={{id=10422004 ,num=1},{id=10422005,num=1},{id=10422006,num=1}}

x200021_g_Custom	= { {id="Ðã ðánh bÕi Bào Thiên Linh",num=1},{id="Ðã ðánh bÕi KÏ Løc",num=1},{id="Ðã ðánh bÕi Hß¾ng V÷ng Häi",num=1}, }
x200021_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200021_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200021_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200021_g_MissionName)
			AddText(sceneId,x200021_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200021_g_MoneyBonus )
		EndEvent( )
		bDone = x200021_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200021_g_ScriptId,x200021_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x200021_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200021_g_MissionName)
			AddText(sceneId,x200021_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200021_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
				for i, item in x200021_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
			AddMoneyBonus( sceneId, x200021_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200021_g_ScriptId,x200021_g_MissionId)
  end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200021_OnEnumerate( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200021_g_MissionId) > 0 then
		return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200021_g_MissionId) > 0 then
		AddNumText(sceneId,x200021_g_ScriptId,x200021_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200021_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200021_g_ScriptId,x200021_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200021_CheckAccept( sceneId, selfId )
	
	--C¥n 4c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) < 20 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200021_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200021_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200021_g_MissionId, x200021_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ðïnh thiên l§p ð¸a",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200021_g_SignPost.x, x200021_g_SignPost.z, x200021_g_SignPost.tip )
	
	--½ÓÈÎÎñºó,°ÑÏà¹ØtoÕ ðµ ¹ÖÉèÖÃÎª¿ÉÒÔCuµc chiªn 
	-- C¥n ±éÀúËùÓÐtoÕ ðµ ¹Ö,¸Ä±äËûÃÇtoÕ ðµ ÕóÓª
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "Bào Thiên Linh"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
		elseif GetName(sceneId, nMonsterId)  == "KÏ Løc"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
		elseif GetName(sceneId, nMonsterId)  == "Hß¾ng V÷ng Häi"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
		end
	end

	SetMissionEvent(sceneId, selfId, x200021_g_MissionId, 0)

end

--**********************************
--·ÅÆú
--**********************************
function x200021_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200021_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200021_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200021_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x200021_g_MissionName)
	AddText(sceneId,x200021_g_MissionComplete)
	for i, item in x200021_g_RadioItemBonus do
		AddRadioItemBonus( sceneId, item.id, item.num )
	end
	AddMoneyBonus( sceneId, x200021_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200021_g_ScriptId,x200021_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200021_CheckSubmit( sceneId, selfId )

	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200021_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
	
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
	local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
	local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)

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
function x200021_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200021_CheckSubmit(sceneId, selfId) == 1  then

  	BeginAddItem(sceneId)
		for i, item in x200021_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret < 1 then
			--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Nhi®m vø th¤t bÕi!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId,x200021_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200021_g_exp)

		DelMission( sceneId, selfId, x200021_g_MissionId )
		MissionCom( sceneId, selfId, x200021_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Ðïnh thiên l§p ð¸a",MSG2PLAYER_PARA )

		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200026), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200021_OnKillObject( sceneId, selfId, objdataId ,objId)

	if GetName(sceneId,objId) == "Bào Thiên Linh"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200021_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt Bào Thiên Linh 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
				
				local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
				local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
				local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)
				
				if Kill1==1 and Kill2==1 and Kill3==1  then
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				end
			end
		end
	end
	if GetName(sceneId,objId) == "KÏ Løc"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200021_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,2,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt KÏ Løc 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)

				local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
				local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
				local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)
				
				if Kill1==1 and Kill2==1 and Kill3==1  then
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				end
			end
		end
	end
	if GetName(sceneId,objId) == "Hß¾ng V÷ng Häi"	  then
		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200021_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,selfId,x200021_g_MissionId)
				SetMissionByIndex(sceneId,humanObjId,misIndex,3,1)
				BeginEvent(sceneId)
				AddText(sceneId,"Ðã giªt chªt Hß¾ng V÷ng Häi 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)

				local Kill1 = GetMissionParam(sceneId,selfId,misIndex,1)
				local Kill2 = GetMissionParam(sceneId,selfId,misIndex,2)
				local Kill3 = GetMissionParam(sceneId,selfId,misIndex,3)
				
				if Kill1==1 and Kill2==1 and Kill3==1  then
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
				end
			end
		end
	end
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200021_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200021_OnItemChanged( sceneId, selfId, itemdataId )
end


