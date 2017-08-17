-- ¹ØÃÅ×½Ôô 200045 

-- ¸±±¾Íâ½ÓÈÎÎñµ½¸±±¾ÄÚÉ±¹Ö,È»ºó³öÀ´½»(Í¬mµt cáiNPC),ÓÐ¾çÇé

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200045_g_ScriptId = 200045

--ÈÎÎñºÅ
x200045_g_MissionId = 37

--Ç°ÐøÈÎÎñºÅ
x200045_g_PreMissionId = 36

--Ä¿±êNPC
x200045_g_Name = "Tô Tinh Hà"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200045_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200045_g_MissionLevel = 60

--ÈÎÎñ¹éÀà
x200045_g_MissionKind = 53

--ÈÎÎñÎÄ±¾ÃèÊö
x200045_g_MissionName="#{MISSIONNAME_JUQING_2}"
x200045_g_MissionInfo="#{Mis_juqing_0037}"
x200045_g_MissionTarget="#{Mis_juqing_Tar_0037}"	--Møc tiêu nhi®m vø
x200045_g_MissionContinue="  #{TM_20080313_08}"
x200045_g_MissionComplete="  #{TM_20080313_09}"	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x200045_g_MoneyBonus=45000
x200045_g_exp=100000

x200045_g_RadioItemBonus={{id=10414016 ,num=1},{id=10415012,num=1},{id=10422011,num=1},{id=10423015,num=1}}

x200045_g_Custom	= { {id="Ðã ðánh bÕi Ðinh Xuân Thu",num=1} }
x200045_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200045_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200045_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200045_g_MissionId) > 0)  then
		-- ¼ì²âÐúng²»ÐúngTÕi ¸±±¾,ÔÙ¼ì²âÐúng²»Ðúng,Èç¹ûÐúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --³¡¾°ÀàÐÍ²»Ðúng¸±±¾
			-- ¼ì²âÏÂTên,°²È« ði¬m ði¬m
			if GetName(sceneId, targetId) == x200045_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200045_g_MissionName)
				AddText(sceneId,x200045_g_MissionContinue)
				--AddMoneyBonus( sceneId, x200045_g_MoneyBonus )
		    EndEvent()
		    local bDone = x200045_CheckSubmit(sceneId, selfId)
				DispatchMissionDemandInfo(sceneId,selfId,targetId,x200045_g_ScriptId,x200045_g_MissionId,bDone)
			end
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200045_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200045_g_MissionName)
			AddText(sceneId,x200045_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200045_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200045_g_MoneyBonus )
			for i, item in x200045_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x200045_g_ScriptId,x200045_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200045_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200045_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200045_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		local sceneType = LuaFnGetSceneType(sceneId)
		if sceneType == 1 then --³¡¾°ÀàÐÍÐúng¸±±¾
			AddNumText(sceneId, x200045_g_ScriptId,x200045_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200045_CheckAccept(sceneId,selfId) > 0 then	
		local sceneType = LuaFnGetSceneType(sceneId)
		if sceneType ~= 1 then --³¡¾°ÀàÐÍÐúng¸±±¾
			AddNumText(sceneId,x200045_g_ScriptId,x200045_g_MissionName,1,-1)
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200045_CheckAccept( sceneId, selfId )
	--ÅÐ¶¨Ìõ¼þ
	--1,Ç°ÐøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200045_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200045_g_MissionId) > 0  then
		return 0
	end
	
	--2,µÈc¤p´ïµ½60
	if GetLevel(sceneId, selfId) < 60   then
		return 0
	end

	return 1
end


--**********************************
--Tiªp thø
--**********************************
function x200045_OnAccept( sceneId, selfId, targetId )

	if x200045_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200045_g_MissionId, x200045_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#{TM_20080313_02}" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#{TM_20080313_10}",MSG2PLAYER_PARA )

	-- ÉèÖÃÈÎÎñtoÕ ðµ µÚ0Î»ÖÃÎª0
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200045_g_MissionId)
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)
	
	-- ÉèÖÃÈÎÎñ¹ØÏµtoÕ ðµ ÊÂ¼þ"¹ØÐÄÍæ¼ÒÉ±ÈË"
	SetMissionEvent(sceneId, selfId, x200045_g_MissionId, 0)

end

--**********************************
--·ÅÆú
--**********************************
function x200045_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200045_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x200045_OnContinue( sceneId, selfId, targetId )
  BeginEvent(sceneId)
	AddText(sceneId,x200045_g_MissionName)
	AddText(sceneId,x200045_g_MissionComplete)
	AddMoneyBonus( sceneId, x200045_g_MoneyBonus )
	for i, item in x200045_g_RadioItemBonus do
		AddRadioItemBonus( sceneId, item.id, item.num )
	end
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x200045_g_ScriptId,x200045_g_MissionId)
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200045_CheckSubmit( sceneId, selfId, selectRadioId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200045_g_MissionId)
	
	if GetMissionParam(sceneId,selfId,misIndex,0) == 1    then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x200045_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ¿ÉÒÔÌá½»toÕ ðµ Ìõ¼þÅÐ¶¨
	-- 1,ÓÐCái này ÈÎÎñ,
	if( IsHaveMission(sceneId,selfId,x200045_g_MissionId) > 0)  then
  	BeginAddItem(sceneId)
		for i, item in x200045_g_RadioItemBonus do
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

		AddMoney(sceneId,selfId,x200045_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200045_g_exp)

		DelMission( sceneId,selfId,  x200045_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x200045_g_MissionId )
		Msg2Player(  sceneId, selfId,"#{TM_20080313_11}",MSG2PLAYER_PARA )

		Msg2Player( sceneId, selfId,"#{TM_20080313_12}",MSG2PLAYER_PARA )
		local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
		LuaFnSendMailToGUID(sceneId, selfGuid, "#{TM_20080313_13}")

		-- Íê³ÉÀÞ¹ÄÉ½¾çÇé,¸ø10 ði¬m¾çÇé ði¬m
		local nPoint = GetHumanJuqingPoint(sceneId, selfId)
		SetHumanJuqingPoint(sceneId, selfId, nPoint+10)
		
		-- Í¨ÖªÍæ¼Ò,¿ÉÒÔ×ö¾çÇéÑ­»·ÈÎÎñÁË
		-- ÄúÏÖTÕi ¿ÉÒÔÈ¥AA³ÇtoÕ ðµ [bb,cc]ÕÒµ½DD,Tiªp thøDDÑ­»·ÈÎÎñ.
		local strText1 = "#{LOOTMISSION_MAIL_10}#r#{LOOTMISSION_MAIL_11}#r#{LOOTMISSION_MAIL_12}"
		LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
		
		BeginEvent(sceneId)
			AddText(sceneId,"#{LOOTMISSION_INFO_05}");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200045_OnKillObject( sceneId, selfId, objdataId, objId )

--	if GetName(sceneId,objId) == "Thiên S½n Ð°ng Lão"	  then
--		-- È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
--		local num = GetMonsterOwnerCount(sceneId,objId)
--		for j=0,num-1  do
--			-- È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
--			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
--			-- ¿´Cái này ÈËÐúng²»ÐúngÓÐCái này ÈÎÎñ
--			if IsHaveMission(sceneId, humanObjId, x200045_g_MissionId) > 0 then
--				local misIndex = GetMissionIndexByID(sceneId,selfId,x200045_g_MissionId)
--				SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
--				BeginEvent(sceneId)
--				AddText(sceneId,"ÒÑÕ½Ê¤Thiên S½n Ð°ng Lão: 1/1")
--				EndEvent(sceneId)
--				DispatchMissionTips(sceneId,humanObjId)
--			end
--		end
--	end

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200045_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200045_OnItemChanged( sceneId, selfId, itemdataId )
	
end




