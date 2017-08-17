--ThÕch Lâm  Sñ th§t ðáng sþ 608
--MisDescBegin
--½Å±¾ºÅ
x212104_g_ScriptId = 212104

--ÈÎÎñºÅ
x212104_g_MissionId = 608

--ÈÎÎñ¹éÀà
x212104_g_MissionKind = 37

--ÐÆng c¤p nhi®m vø 
x212104_g_MissionLevel = 63

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x212104_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÐúng·ñÒÑ¾­Íê³É
x212104_g_IsMissionOkFail = 0		--±äÁ¿toÕ ðµ µÚ0Î»

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñC¥n  ði¬mµ½toÕ ðµ ÎïÆ·
x212104_g_DemandItem={{id=40002112,num=1}}		--±äÁ¿µÚ1Î»

--ÈÎÎñÎÄ±¾ÃèÊö
x212104_g_MissionName="Sñ th§t ðáng sþ"
x212104_g_MissionInfo="#{Lua_Shilin_005}"
x212104_g_MissionTarget="  Mang #Yð¥u lâu cüa A Chi#W giao cho thông trß·ng #GViên Nguy®t Thôn#W#R Tr¸nh Huy«n #W#{_INFOAIM182,163,26, Tr¸nh Huy«n}. "
x212104_g_ContinueInfo="  Ngß½i có chuy®n gì?"
x212104_g_MissionComplete="  Này, l¨ nào ðây chính là ð¥u lâu cüa thü lînh cüa t± chÑc chúng ta chång?"

--»õÎïID
x212104_g_ItemID = 40002112

--ÊÕ»õÈË
x212104_g_Name = "Tr¸nh Huy«n"

x212104_g_MoneyBonus=26900
x212104_g_Exp = 22000
--x212104_g_ItemBonus={{id=10112025,num=1}}
x212104_g_RadioItemBonus={{id=10420070 ,num=1},{id=10422111,num=1}}


--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212104_OnDefaultEvent( sceneId, selfId, targetId )

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, x212104_g_MissionId ) > 0 then
		return 
	elseif IsHaveMission(sceneId,selfId,x212104_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212104_g_Name then
			--·¢ËÍ½»ÈÎÎñÇ°toÕ ðµ ÐèÇóÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x212104_g_MissionName);
				AddText(sceneId,x212104_g_ContinueInfo);
			EndEvent(sceneId)
    		done = x212104_CheckSubmit( sceneId, selfId );
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212104_g_ScriptId,x212104_g_MissionId,done)
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif GetLevel( sceneId, selfId ) >= 60 then
	
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x212104_g_MissionName);
			AddText(sceneId,x212104_g_MissionInfo);
			AddText(sceneId,"#{M_MUBIAO}");
			AddText(sceneId,x212104_g_MissionTarget);
			AddMoneyBonus( sceneId, x212104_g_MoneyBonus )
			for i, item in x212104_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x212104_g_ScriptId,x212104_g_MissionId)

	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212104_OnEnumerate( sceneId, selfId, targetId )

	if IsMissionHaveDone( sceneId, selfId, x212104_g_MissionId ) > 0 then
		AddText(sceneId, "  Ngß½i ðã hoàn t¤t nhi®m vø này");
		return 
	elseif IsHaveMission(sceneId,selfId,x212104_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212104_g_Name then
			AddNumText(sceneId, x212104_g_ScriptId,x212104_g_MissionName, 2, -1)
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212104_CheckAccept(sceneId,selfId) > 0 then
	  if targetId == -1 then
	    AddNumText(sceneId, x212104_g_ScriptId, x212104_g_MissionName, 1, -1);
		elseif GetName(sceneId,targetId) ~= x212104_g_Name then
			AddNumText(sceneId, x212104_g_ScriptId, x212104_g_MissionName, 1, -1);
		end
	end

end

--**********************************
--¼ì²â´¥·¢Ìõ¼þ
--**********************************
function x212104_CheckAccept( sceneId, selfId )
	--C¥n 60c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 60 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x212104_OnMissionAccept( sceneId, selfId )

	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­Íê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, x212104_g_MissionId) > 0   then
		return
	end
	
	if x212104_CheckAccept(sceneId, selfId)  <= 0   then
		return
	end

	-- Éú³Émµt cáiÈÎÎñµÀ¾ß
	BeginAddItem(sceneId)
		AddItem( sceneId, 40002112, 1)
	local retItem = EndAddItem(sceneId,selfId)

	if retItem < 0   then
		Msg2Player(  sceneId, selfId,"#YTay näi nhi®m vø ðã ð¥y#W", MSG2PLAYER_PARA )
		return 
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x212104_g_MissionId, x212104_g_ScriptId, 0, 0, 0 )
	-- C¥n ¿¼ÂÇÍæ¼ÒÐúng²»ÐúngÄÜ¹»Tiªp thøµ½Cái này ÈÎÎñ
	if ret <= 0      then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	-- ¼ÓÈÎÎñÎïÆ·
	AddItemListToHuman(sceneId,selfId)
	-- É¾³ýÆÕÍ¨µÀ¾ß
	DelItem( sceneId, selfId, 30505061, 1 )
	
	misIndex = GetMissionIndexByID(sceneId,selfId,x212104_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
	
	-- ÏûÏ¢Í¨Öª¿Í»§¶Ë
	Msg2Player(  sceneId, selfId,"#YTiªp nh§n#W ".. x212104_g_MissionName, MSG2PLAYER_PARA )

	BeginEvent(sceneId)
		strText = "#YTiªp nh§n#W " .. x212104_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--·ÅÆú
--**********************************
function x212104_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	DelMission( sceneId, selfId, x212104_g_MissionId )
	
	-- É¾³ýÈÎÎñµÀ¾ß
	DelItem( sceneId, selfId, 40002112, 1 )
	
end

--**********************************
--ÒÑ¾­½ÓÁËÈÎÎñÔÙ¸ø³ötoÕ ðµ ÌáÊ¾
--**********************************
function x212104_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x212104_g_MissionName)
		AddText(sceneId,x212104_g_MissionComplete)
		AddMoneyBonus( sceneId, x212104_g_MoneyBonus )
		for i, item in x212104_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212104_g_ScriptId,x212104_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212104_CheckSubmit( sceneId, selfId )

	itemNum = GetItemCount( sceneId, selfId, x212104_g_ItemID );
	if itemNum > 0 then
		return 1;
	end
	return 0
end

--**********************************
--Ìá½»(Íê³É)
--**********************************
function x212104_OnSubmit( sceneId, selfId,targetId,selectRadioID )
	-- °²È«ÐÔ¼ì²â
	-- 1¡¢¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐCái này ÈÎÎñ
	if IsHaveMission(sceneId,selfId,x212104_g_MissionId) <= 0 then
		return
	end
	-- 2¡¢ÆäËû¼ì²â
	if x212104_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end
	
	BeginAddItem(sceneId)
	for i, item in x212104_g_RadioItemBonus do
		if item.id == selectRadioID then
			AddItem( sceneId,item.id, item.num )
		end
	end

	local ret = EndAddItem(sceneId,selfId)
	--Ìí¼ÓÈÎÎñ½±Àø
	if ret > 0 then		
		for i, item in x212104_g_DemandItem do
			DelItem( sceneId, selfId, item.id, item.num )
		end

		AddExp(sceneId,selfId,x212104_g_Exp)
		AddMoney(sceneId,selfId,x212104_g_MoneyBonus );

		ret = DelMission( sceneId, selfId, x212104_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x212104_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
		end
	else
	--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
		BeginEvent(sceneId)
			strText = "Nhi®m vø th¤t bÕi!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212104_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212104_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212104_OnItemChanged( sceneId, selfId, itemdataId )
end

