--Ñ­»·ÈÎÎñ
--ÕÙ¼¯Í¬°é
--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x210211_g_ScriptId = 210211

--½ÓÊÜÈÎÎñNPCÊôĞÔ
x210211_g_Position_X=296
x210211_g_Position_Z=239
x210211_g_SceneID=2
x210211_g_AccomplishNPC_Name="Tôn Bát Gia" 

--ÉÏÒ»¸öÈÎÎñµÄID
x210211_g_MissionIdPre =450

--ÈÎÎñºÅ
x210211_g_MissionId = 451

--ÈÎÎñÄ¿±ênpc
x210211_g_Name	="Tôn Bát Gia" 

x210211_g_ItemId	=30505062

--ÈÎÎñ¹éÀà
x210211_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210211_g_MissionLevel = 3

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210211_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
x210211_g_IsMissionOkFail = 0					--±äÁ¿µÄµÚ0Î»
--**********************************ÒÔÉÏÊÇ¶¯Ì¬****************************


--ÈÎÎñÎÄ±¾ÃèÊö
x210211_g_MissionName="Phóng hoä pháo"
x210211_g_MissionInfo="#{event_dali_0013}"  --ÈÎÎñÃèÊöÖÁÓÚÊ²Ã´µØ·½ºÏÊÊ£¬ÄãÖ»Òª´ò¿ª#Y±³°ü#WÀïµÄÈÎÎñµÀ¾ßÀ¸£¬ÓÒ¼üµãÒ»ÏÂÕâ¸ö#Y´«Ñ¶Ñæ»ğ#W£¬Ëü¾ÍÄÜ¸øÄãÏà¹ØµÄÌáÊ¾¡£
x210211_g_MissionTarget="#{xinshou_003}"		--ÈÎÎñÄ¿±ê
x210211_g_ContinueInfo="Höa pháo ğã phóng ği chßa?"		--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x210211_g_MissionComplete="#{event_dali_0015}"					--Íê³ÉÈÎÎñnpcËµ»°µÄ»°
x210211_g_ItemBonus={{id=10111000,num=1}}
x210211_g_SignPost = {x = 296, z = 239, tip = "Tôn Bát Gia"}
x210211_g_MoneyBonus=72
x210211_g_SignPost_1 = {x = 162, z = 333, tip = "Ği¬m ğ¯t Hoä pháo"}

x210211_g_Custom	= { {id="Ğã ğ¯t Hoä Pháo truy«n tin",num=1} }

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿ËµÃ÷
--0ºÅ£ºÈÎÎñ×´Ì¬
--1ºÅ£º
--2ºÅ£ºËùÔÚ³¡¾°±àºÅ
--3ºÅ£ºÖ¸¶¨x×ø±ê
--4ºÅ£ºÖ¸¶¨z×ø±ê
--5ºÅ£ºÎ´ÓÃ
--6ºÅ£ºÎ´ÓÃ
--7ºÅ£ºÎ´ÓÃ

--±¦²ØÎ»ÖÃ
x210211_g_TreasureAddress = {	{scene=2,x=162,z=333}}
--						{scene=2,x=104,z=201},
--						{scene=2,x=242,z=55},
--						{scene=2,x=202,z=237},
--						{scene=2,x=255,z=232},
--						{scene=2,x=82,z=220},
--						{scene=2,x=46,z=255},
--						{scene=2,x=44,z=151},
--						{scene=2,x=162,z=333}}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210211_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if IsHaveMission(sceneId,selfId,x210211_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñĞèÇóµÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210211_g_MissionName)
			AddText(sceneId,x210211_g_ContinueInfo)
			AddMoneyBonus( sceneId, x210211_g_MoneyBonus )
		EndEvent( )
		bDone = x210211_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210211_g_ScriptId,x210211_g_MissionId,bDone)
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210211_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210211_g_MissionName)
			AddText(sceneId,x210211_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x210211_g_MissionTarget)
			for i, item in x210211_g_ItemBonus do
				AddItemBonus( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x210211_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210211_g_ScriptId,x210211_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210211_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210211_g_MissionIdPre) <= 0 then
    	return
    end
	if IsMissionHaveDone(sceneId,selfId,x210211_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210211_g_MissionId) > 0 then
		AddNumText(sceneId,x210211_g_ScriptId,x210211_g_MissionName,2,-1);
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210211_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210211_g_ScriptId,x210211_g_MissionName,1,-1);
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210211_CheckAccept( sceneId, selfId )
	--ĞèÒª3¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 3 then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210211_OnAccept( sceneId, selfId )

	if x210211_CheckAccept(sceneId, selfId )<=0 then
		return
	end
	
	--x210211_g_sequence = random(3)					--¸ù¾İ±¦ÎïµØµã×ÜÊı»ñµÃÒ»¸öËæ»úÊı
	SceneNum = x210211_g_TreasureAddress[1].scene
	X		 = x210211_g_TreasureAddress[1].x
	Z		 = x210211_g_TreasureAddress[1].z
	--Ìí¼ÓÑÌ»¨
	BeginAddItem(sceneId)
		AddItem( sceneId,x210211_g_ItemId, 1 )
	local ret = EndAddItem(sceneId,selfId)
	
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YHành Trang nhi®m vø#W cüa các hÕ ğã ğ¥y", MSG2PLAYER_PARA )
	
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		local ret1 = AddMission( sceneId,selfId, x210211_g_MissionId, x210211_g_ScriptId, 0, 0, 1 )
	
		if ret1 > 0  then
			
			--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïµÄ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
			misIndex = GetMissionIndexByID(sceneId,selfId,x210211_g_MissionId)		--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
			SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿µÄµÚÒ»Î»ÖÃ0	µÚÒ»Î»ÊÇÍê³É/Ê§°ÜÇé¿ö
			SetMissionByIndex(sceneId,selfId,misIndex,2,SceneNum)		--°ÑµÚÈıÎ»ÖÃÎª±¦ÎïµÄ³¡¾°±àºÅ
			SetMissionByIndex(sceneId,selfId,misIndex,3,X)					--°ÑµÚËÄÎ»ÖÃÎª±¦ÎïµÄX×ø±ê
			SetMissionByIndex(sceneId,selfId,misIndex,4,Z)					--°ÑµÚÎåÎ»ÖÃÎª±¦ÎïµÄZ×ø±ê
			
			AddItemListToHuman(sceneId,selfId)
			Msg2Player( sceneId, selfId,"#YNh§n nhi®m vø#W: Phóng Hoä pháo",MSG2PLAYER_PARA )
			
		  Msg2Player( sceneId, selfId, "@*;flagPOS;" .. sceneId .. ";" .. X .. ";" .. Z .. ";".."Ği¬m ğ¯t Hoä pháo", MSG2PLAYER_PARA )
			Msg2Player( sceneId, selfId, "@*;flashPOS;" .. sceneId .. ";" .. X .. ";" .. Z .. ";" .. "Ği¬m ğ¯t Hoä pháo", MSG2PLAYER_PARA )
			BeginEvent(sceneId)
				AddText(sceneId, "Các hÕ ğã nh§n Hoä Pháo truy«n tin");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210211_g_SignPost_1.x, x210211_g_SignPost_1.z, x210211_g_SignPost_1.tip )
		else
			Msg2Player( sceneId, selfId,"#YDanh sách nhi®m vø#W cüa các hÕ ğã ğ¥y r°i!", MSG2PLAYER_PARA )
		
		end
	end
end

--**********************************
--·ÅÆú
--**********************************
function x210211_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    res = DelMission( sceneId, selfId, x210211_g_MissionId )
	if res > 0 then
		--ÒÆÈ¥ÈÎÎñÎïÆ·
		DelItem( sceneId, selfId, x210211_g_ItemId, 1 )
		--CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210211_g_SignPost.tip )
		
	  Msg2Player( sceneId, selfId, "@*;flagNPCdel;" .. sceneId .. ";" .. "Ği¬m ğ¯t Hoä pháo", MSG2PLAYER_PARA )
	  Msg2Player( sceneId, selfId, "@*;flashNPCdel;" .. sceneId .. ";" .. "Ği¬m ğ¯t Hoä pháo", MSG2PLAYER_PARA )
		
		
	end
end

--**********************************
--¼ÌĞø
--**********************************
function x210211_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210211_g_MissionName)
		AddText(sceneId,x210211_g_MissionComplete)
		AddMoneyBonus( sceneId, x210211_g_MoneyBonus )
		for i, item in x210211_g_ItemBonus do
			AddItemBonus( sceneId,item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210211_g_ScriptId,x210211_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210211_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210211_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210211_g_MissionId)
	x210211_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		--»ñµÃÈÎÎñ×´Ì¬
	if	x210211_g_MissionCondition>=1	then
		return	1
	else
		return	0
	end
end

--**********************************
--Ìá½»
--**********************************
function x210211_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210211_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210211_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
			if ret > 0 then
					AddMoney(sceneId,selfId,x210211_g_MoneyBonus );
					LuaFnAddExp( sceneId, selfId,400)
					ret = DelMission( sceneId, selfId, x210211_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210211_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Phóng Hoä pháo",MSG2PLAYER_PARA )
					CallScriptFunction( 210212, "OnDefaultEvent",sceneId, selfId, targetId)
				end
			else
				--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
				BeginEvent(sceneId)
					strText = "Nhi®m vø th¤t bÕi"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210211_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210211_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210211_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--µÀ¾ßÊ¹ÓÃ
--**********************************
function x210211_OnUseItem( sceneId, selfId, BagIndex )
	misIndex = GetMissionIndexByID(sceneId,selfId,x210211_g_MissionId)
	x210211_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		--»ñµÃÈÎÎñ×´Ì¬
	scene = GetMissionParam(sceneId,selfId,misIndex,2)					--»ñµÃ±¦Îï³¡¾°ºÅ
	treasureX = GetMissionParam(sceneId,selfId,misIndex,3)				--»ñµÃ±¦ÎïX×ø±ê
	treasureZ = GetMissionParam(sceneId,selfId,misIndex,4)				--»ñµÃ±¦ÎïZ×ø±ê	
	--Èç¹ûÈÎÎñÒÑ¾­Íê³É
	if x210211_g_MissionCondition == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Phóng Hoä pháo truy«n tin thành công")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--È¡µÃÍæ¼Òµ±Ç°×ø±ê
	PlayerX = GetHumanWorldX(sceneId,selfId)
	PlayerZ = GetHumanWorldZ(sceneId,selfId)
	--¼ÆËãÍæ¼ÒÓë±¦²ØµÄ¾àÀë
	Distance = floor(sqrt((treasureX-PlayerX)*(treasureX-PlayerX)+(treasureZ-PlayerZ)*(treasureZ-PlayerZ)))
	if sceneId==scene or sceneId==71 or sceneId==72 then
	else
		BeginEvent(sceneId)
			AddText(sceneId,"C½ h° · cänh này không th¬ phát ra Hoä pháo truy«n tin")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	if Distance > 5 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ği¬m ğ¯t Hoä pháo truy«n tin còn cách khoäng "..Distance.." thß¾c.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif Distance <= 5 then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--°ÑÈÎÎñ×´Ì¬±äÁ¿ÉèÖÃÎª1,±íÊ¾ÒÑ¾­Íê³É
		SetMissionByIndex(sceneId,selfId,misIndex,1,1)		--°ÑÈÎÎñ×´Ì¬±äÁ¿ÉèÖÃÎª1,±íÊ¾ÒÑ¾­Íê³É
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210211_g_SignPost.x, x210211_g_SignPost.z, x210211_g_SignPost.tip )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4825, 0);
		BeginEvent(sceneId)
			AddText(sceneId,"Ğ® tØ các ğÕi môn phái ğßşc tin lû lßşt kéo t¾i, mau v« tìm Tôn Bát Gia ği.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		DelItem( sceneId, selfId, x210211_g_ItemId, 1 )
	end
end
