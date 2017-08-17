
-- ÔÙTÕi ¸±±¾ÄÚÍê³ÉÉ±¹ÖÈÎÎñ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200008_g_ScriptId = 200008

--¸±±¾Ãû³Æ
x200008_g_CopySceneName="VÕn Kiªp C¯c"

--ÈÎÎñºÅ
x200008_g_MissionId = 8
--ÈÎÎñºÅ
x200008_g_PreMissionId = 7

--Ä¿±êNPC
x200008_g_Name = "Ğoàn Chính Minh"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200008_g_IfMissionElite = 1

--ÈÎÎñ¹éÀà
x200008_g_MissionKind = 51

--ĞÆng c¤p nhi®m vø 
x200008_g_MissionLevel = 20

--ÈÎÎñÎÄ±¾ÃèÊö
x200008_g_MissionName="H± khiªu long ngâm"
x200008_g_MissionInfo="#{Mis_juqing_0008}"
x200008_g_MissionTarget="#{Mis_juqing_Tar_0008}"
x200008_g_MissionComplete="  T¯t quá, ğa tÕ ½n giúp ğŞ, t× nay ĞÕi Lı Qu¯c coi ngß½i nhß quı khách, dùng l­ tiªt cao nh¤t tr÷ng ğãi ngß½i!"
x200008_g_MissionContinue="  Ngß½i ğã cÑu ğßşc Dñ Nhi chßa?"

x200008_g_MoneyBonus=21600
x200008_g_exp=24000

x200008_g_RadioItemBonus={{id=10423001 ,num=1},{id=10423002,num=1},{id=10423003,num=1},{id=10423004,num=1}}

x200008_g_Custom	= { {id="Ğã cÑu thoát Ğoàn Dñ",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200008_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetNumText() == 888   then
		-- ¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞÔ¿³×
		if  GetItemCount( sceneId, selfId, 40001001 ) > 0   then
			-- C¥n ´´½¨Ğoàn Dñ³öÀ´ 439
			local nMonsterNum = GetMonsterCount(sceneId)
	
			local ii = 0
			local bHaveMonster = 0
			local bHave=0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
			
				if GetName(sceneId, nMonsterId)  == "Ğoàn Dñ"  then
					bHave = 1
				end
			end
			
			if bHave == 0  then
				local nNpcId = LuaFnCreateMonster(sceneId, 439, 51, 90, 3, 0, 118020)
				SetCharacterName(sceneId, nNpcId, "Ğoàn Dñ")
			end
			
			-- ÉèÖÃÈÎÎñÍê³É±êÖ¾,É¾³ıÔ¿³×,
			local misIndex = GetMissionIndexByID(sceneId,selfId,x200008_g_MissionId)
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)
			DelItem( sceneId, selfId, 40001001, 1 )
			
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)

		end
		return
	end
	
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200008_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200008_g_MissionName)
			AddText(sceneId,x200008_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200008_g_MoneyBonus )
		EndEvent( )
		bDone = x200008_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200008_g_ScriptId,x200008_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x200008_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200008_g_MissionName)
			AddText(sceneId,x200008_g_MissionInfo)
			AddText(sceneId, "#{M_MUBIAO}#r")
			AddText(sceneId,x200008_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200008_g_MoneyBonus )
			for i, item in x200008_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200008_g_ScriptId,x200008_g_MissionId)
  end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200008_OnEnumerate( sceneId, selfId, targetId )
	if GetName(sceneId, targetId) == "ThÕch Nhân"   then
		-- ¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞÔ¿³×,
		if  GetItemCount( sceneId, selfId, 40001001 ) > 0   then
			AddNumText(sceneId,x200008_g_ScriptId,"M· cØa thÕch môn",6,888);
		end
		return
	end
	
  --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200008_g_MissionId) > 0 then
		return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200008_g_MissionId) > 0 then
		AddNumText(sceneId,x200008_g_ScriptId,x200008_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200008_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200008_g_ScriptId,x200008_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200008_CheckAccept( sceneId, selfId )
	--C¥n 4c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) < 20 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200008_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200008_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200008_g_MissionId, x200008_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200008_g_MissionId)			-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: H± khiªu long ngâm",MSG2PLAYER_PARA )
	
	-- ½ÓÈÎÎñºó,°ÑÏà¹ØtoÕ ğµ ¹ÖÉèÖÃÎª¿ÉÒÔCuµc chiªn 
	-- C¥n ±éÀúËùÓĞtoÕ ğµ ¹Ö,¸Ä±äËûÃÇtoÕ ğµ ÕóÓª
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "Ğoàn Diên Khánh"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
			SetNPCAIType(sceneId, nMonsterId, 1)
		end
	end
	
	-- ÉèÖÃÈÎÎñ¹ØÏµtoÕ ğµ ÊÂ¼ş
	SetMissionEvent(sceneId, selfId, x200008_g_MissionId, 0)
	SetMissionEvent(sceneId, selfId, x200008_g_MissionId, 2)

end

--**********************************
--·ÅÆú
--**********************************
function x200008_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
  DelMission( sceneId, selfId, x200008_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200008_g_SignPost.tip )
	DelItem( sceneId, selfId, 40001001, 1 )
end

--**********************************
--¼ÌĞø
--**********************************
function x200008_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200008_g_MissionName)
		AddText(sceneId,x200008_g_MissionComplete)
		AddMoneyBonus( sceneId, x200008_g_MoneyBonus )
		for i, item in x200008_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200008_g_ScriptId,x200008_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200008_CheckSubmit( sceneId, selfId )

	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200008_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200008_g_MissionId)
	
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,0)

	if Kill1~=1 			then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200008_OnSubmit( sceneId, selfId, targetId,selectRadioId )

	if x200008_CheckSubmit(sceneId, selfId) ~= 1   then
		return
	end

	BeginAddItem(sceneId)
	for i, item in x200008_g_RadioItemBonus do
		if item.id == selectRadioId then
			AddItem( sceneId,item.id, item.num )
		end
	end
	ret = EndAddItem(sceneId,selfId)
	--Ìí¼ÓÈÎÎñ½±Àø
	if ret < 1 then
		--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
		BeginEvent(sceneId)
			strText = "Không th¬ Hoàn t¤t nhi®m vø"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	AddItemListToHuman(sceneId,selfId)

	AddMoney(sceneId,selfId,x200008_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,x200008_g_exp)

	DelMission( sceneId, selfId, x200008_g_MissionId )
	MissionCom( sceneId, selfId, x200008_g_MissionId )
	Msg2Player( sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: H± khiªu long ngâm",MSG2PLAYER_PARA )
	
	Msg2Player( sceneId, selfId,"Các hÕ ğã hoàn thành xong mµt loÕt nhi®m vø #GVÕn Kiªp C¯c #W",MSG2PLAYER_PARA )
	local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
	LuaFnSendMailToGUID(sceneId, selfGuid, "Các hÕ ğã hoàn thành xong mµt loÕt nhi®m vø #GVÕn Kiªp C¯c #W. Sau khi ğÕt ğßşc c¤p 30, hãy t¾i thành ĞÕi Lı tìm Tri®u Thiên Sß, M· nhi®m vø #GYªn TØ ‘ #W")
	
	-- Íê³ÉÍò½Ù¹È¾çÇé,¸ø10 ği¬m¾çÇé ği¬m
	local nPoint = GetHumanJuqingPoint(sceneId, selfId)
	SetHumanJuqingPoint(sceneId, selfId, nPoint+10)
	
	-- Í¨ÖªÍæ¼Ò,¿ÉÒÔ×ö¾çÇéÑ­»·ÈÎÎñÁË
	local nPoint = GetHumanJuqingPoint(sceneId, selfId)
	SetHumanJuqingPoint(sceneId, selfId, nPoint+10)

	-- Í¨ÖªÍæ¼Ò,¿ÉÒÔ×ö¾çÇéÑ­»·ÈÎÎñÁË
	-- ÄúÏÖTÕi ¿ÉÒÔÈ¥AA³ÇtoÕ ğµ [bb,cc]ÕÒµ½DD,Tiªp thøDDÑ­»·ÈÎÎñ.
	local strText1 = "Các hÕ bây gi¶ có th¬ ği toÕ ğµ [232,227]thành ĞÕi Lı tìm Mµc Uy¬n Thanh, tiªp nh§n Mµc Uy¬n Thanh."
	LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
	
	BeginEvent(sceneId)
		AddText(sceneId,strText1);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200008_OnKillObject( sceneId, selfId, objdataId ,objId)

	if GetName(sceneId,objId) == "Ğoàn Diên Khánh"	  then
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			-- È¡ ği¬mÓµÓĞ·ÖÅäÈ¨toÕ ğµ ÈËtoÕ ğµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			-- ¿´Cái này ÈËĞúng²»ĞúngÓĞCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x200008_g_MissionId) > 0 then
				BeginEvent(sceneId)
				AddText(sceneId,"Ğã giªt chªt Ğoàn Diên Khánh: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,humanObjId)
				AddMonsterDropItem(sceneId,objId,humanObjId,40001001)    --¸øCái này ÈËÈÎÎñµÀ¾ß(µÀ¾ß»á³öÏÖTÕi Ê¬Ìå°üÀï)
			end
		end
	end	
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200008_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200008_OnItemChanged( sceneId, selfId, itemdataId )
	if itemdataId == 40001001    then
	 	BeginEvent(sceneId)
			AddText(sceneId, "Ğã ğÕt ğßşc chìa khóa ThÕch Ô: 1/1")
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end
