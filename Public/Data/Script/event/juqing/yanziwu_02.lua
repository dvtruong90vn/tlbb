-- ¶ÀÕ½Ë«ĞÛ   TÕi ¸±±¾ÖĞÉ±¹Ö,¶áÈ¡¶«Î÷

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200012_g_ScriptId = 200012

--¸±±¾Ãû³Æ
x200012_g_CopySceneName="Yªn TØ ‘"

--ÈÎÎñºÅ
x200012_g_MissionId = 11

--Ç°ĞøÈÎÎñºÅ
x200012_g_PreMissionId = 10

--Ä¿±êNPC
x200012_g_Name = "Vß½ng Ngæ Yên"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200012_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x200012_g_MissionLevel = 30

--ÈÎÎñ¹éÀà
x200012_g_MissionKind = 48

--ÈÎÎñÎÄ±¾ÃèÊö
x200012_g_MissionName="Ğµc chiªn song hùng"
x200012_g_MissionInfo="#{Mis_juqing_0011}"
x200012_g_MissionTarget="#{Mis_juqing_Tar_0011}"	--Møc tiêu nhi®m vø
x200012_g_MissionComplete="  T¯t quá r°i, nhæng ngß¶i b¤t lß½ng nh¤t ğ¸nh s¨ khiªp sş mà bö chÕy, chúng ta an toàn r°i. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x200012_g_MissionContinue="  Ngß½i ğã ğánh bÕi ğßşc Tß Mã Lâm và Ğào Bách Ğß½ng, ğã ğßşc Lôi Công Oanh và Ngû H± ĞoÕn Môn Ğao chßa?"

x200012_g_MoneyBonus=8100
x200012_g_exp=9600

x200012_g_RadioItemBonus={{id=10415001 ,num=1},{id=10415002,num=1},{id=10415003,num=1}}

x200012_g_DemandItem={{id=40001002,num=1},{id=40001003,num=1}}		--´Ó±³°üÖĞ¼ÆËã

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200012_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200012_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200012_g_MissionName)
			AddText(sceneId,x200012_g_MissionContinue)
			AddMoneyBonus( sceneId, x200012_g_MoneyBonus )
		EndEvent( )
		bDone = x200012_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200012_g_ScriptId,x200012_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x200012_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200012_g_MissionName)
			AddText(sceneId,x200012_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200012_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200012_g_MoneyBonus )
			for i, item in x200012_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200012_g_ScriptId,x200012_g_MissionId)
  end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200012_OnEnumerate( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200012_g_MissionId) > 0 then
		return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200012_g_MissionId) > 0 then
		AddNumText(sceneId,x200012_g_ScriptId,x200012_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200012_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200012_g_ScriptId,x200012_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200012_CheckAccept( sceneId, selfId )
	--C¥n 4c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) < 30 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200012_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200012_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200012_g_MissionId, x200012_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x200012_g_MissionId)			-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ğµc chiªn song hùng",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200012_g_SignPost.x, x200012_g_SignPost.z, x200012_g_SignPost.tip )
	
	--½ÓÈÎÎñºó,°ÑÏà¹ØtoÕ ğµ ¹ÖÉèÖÃÎª¿ÉÒÔCuµc chiªn 
	-- C¥n ±éÀúËùÓĞtoÕ ğµ ¹Ö,¸Ä±äËûÃÇtoÕ ğµ ÕóÓª
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "Tß Mã Lâm"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		elseif GetName(sceneId, nMonsterId)  == "Diêu Bá Ğß½ng"  then
			SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
		end
	end
	
	SetMissionEvent(sceneId, selfId, x200012_g_MissionId, 0)
	SetMissionEvent(sceneId, selfId, x200012_g_MissionId, 2)

end

--**********************************
--·ÅÆú
--**********************************
function x200012_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
  DelMission( sceneId, selfId, x200012_g_MissionId )
	--CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200012_g_SignPost.tip )
	DelItem( sceneId, selfId, 40001002, 1 )	
	DelItem( sceneId, selfId, 40001003, 1 )	
end

--**********************************
--¼ÌĞø
--**********************************
function x200012_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200012_g_MissionName)
		AddText(sceneId,x200012_g_MissionComplete)
		AddMoneyBonus( sceneId, x200012_g_MoneyBonus )
		for i, item in x200012_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200012_g_ScriptId,x200012_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200012_CheckSubmit( sceneId, selfId )
	-- ¿´Íæ¼ÒÉíÉÏĞúng²»ĞúngÓĞÕâÁ½cáiÎïÆ·
	if  1 > GetItemCount( sceneId, selfId, 40001002 )    then
		return 0
	end
	if  1 > GetItemCount( sceneId, selfId, 40001003 )    then
		return 0
	end
	
	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200012_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200012_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then

  	BeginAddItem(sceneId)
		for i, item in x200012_g_RadioItemBonus do
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
		--É¾³ıµÀ¾ß
		DelItem( sceneId, selfId, 40001002, 1 )
		DelItem( sceneId, selfId, 40001003, 1 )
		AddItemListToHuman(sceneId,selfId)

		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200012_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200012_g_exp)

		DelMission( sceneId, selfId, x200012_g_MissionId )
		MissionCom( sceneId, selfId, x200012_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Ğµc chiªn song hùng",MSG2PLAYER_PARA )
		-- µ÷ÓÃºóĞøÈÎÎñ
		CallScriptFunction((200013), "OnDefaultEvent",sceneId, selfId, targetId )
	end
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200012_OnKillObject( sceneId, selfId, objdataId ,objId)

	-- Èç¹ûÉ±ÁË¡°Tß Mã Lâm¡±»òÕß¡°Diêu Bá Ğß½ng¡±¾ÍÍùµôÂä°üÀïÍ·¼Ó¶ÔÓ¦toÕ ğµ ¶«Î÷
	if GetName(sceneId,objId) == "Tß Mã Lâm"	  then
		local num = GetMonsterOwnerCount(sceneId,objId)--È¡ ği¬mCái này ¹ÖÎïËÀºóÓµÓĞ·ÖÅäÈ¨toÕ ğµ ÈËÊı
		for j=0,num-1 do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)--È¡ ği¬mÓµÓĞ·ÖÅäÈ¨toÕ ğµ ÈËtoÕ ğµ objId
			if IsHaveMission(sceneId,humanObjId,x200012_g_MissionId) > 0 then	--Èç¹ûCái này ÈËÓµÓĞÈÎÎñ	
				AddMonsterDropItem(sceneId,objId,humanObjId,40001002)    --¸øCái này ÈËÈÎÎñµÀ¾ß(µÀ¾ß»á³öÏÖTÕi Ê¬Ìå°üÀï)
				
				-- º°»°,È»ºóNpcÏûÊ§
				--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0004}",0)
				CallScriptFunction((200060), "Duibai",sceneId, "Ğ® tØ phái Thanh Thành", "Yªn TØ ‘", "#{JQ_DB_0004}" )

				-- ÏûÊ§ Ğ® tØ phái Thanh Thành	
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "Ğ® tØ phái Thanh Thành"  then
						-- É¾³ı Ğ® tØ phái Thanh Thành
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
				end				
			end
		end
	end

	if GetName(sceneId,objId) == "Diêu Bá Ğß½ng"	  then
		local num = GetMonsterOwnerCount(sceneId,objId)--È¡ ği¬mCái này ¹ÖÎïËÀºóÓµÓĞ·ÖÅäÈ¨toÕ ğµ ÈËÊı
		for j=0,num-1 do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)--È¡ ği¬mÓµÓĞ·ÖÅäÈ¨toÕ ğµ ÈËtoÕ ğµ objId
			if IsHaveMission(sceneId,humanObjId,x200012_g_MissionId) > 0 then	--Èç¹ûCái này ÈËÓµÓĞÈÎÎñ	
				AddMonsterDropItem(sceneId,objId,humanObjId,40001003)    --¸øCái này ÈËÈÎÎñµÀ¾ß(µÀ¾ß»á³öÏÖTÕi Ê¬Ìå°üÀï)
				-- º°»°,È»ºóNpcÏûÊ§
				--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0003}",0)
				CallScriptFunction((200060), "Duibai",sceneId, "Ğ® tØ T¥n Gia TrÕi", "Yªn TØ ‘", "#{JQ_DB_0003}" )
				
				-- ÏûÊ§ Ğ® tØ T¥n Gia TrÕi	
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "Ğ® tØ T¥n Gia TrÕi"  then
						-- É¾³ı Ğ® tØ T¥n Gia TrÕi
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
				end				
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200012_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200012_OnItemChanged( sceneId, selfId, itemdataId )

	if itemdataId == 40001002    then
	 	BeginEvent(sceneId)
			AddText(sceneId, "Ğã ğÕt ğßşc Lôi Công Oanh: 1/1")
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
	
	if itemdataId == 40001003    then
	 	BeginEvent(sceneId)
			AddText(sceneId, "Ğã ğÕt ğßşc Ngû H± ĞoÕn Môn Ğao: 1/1")
	  EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end



