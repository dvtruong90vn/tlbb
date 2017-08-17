--Á·ÕäÊŞÈÎÎñ

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x210215_g_ScriptId = 210215

--ÉÏÒ»¸öÈÎÎñµÄID
x210215_g_MissionIdPre = 454

--ÈÎÎñºÅ
x210215_g_MissionId = 455

--ÈÎÎñÄ¿±ênpc
x210215_g_Name	="Vân Phiêu Phiêu"

--ÈÎÎñ¹éÀà
x210215_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210215_g_MissionLevel = 5

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210215_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******

--**********************************ÒÔÉÏÊÇ¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210215_g_MissionName="Thú quı lên c¤p r°i"
x210215_g_MissionInfo="#{event_dali_0021}"  --ÈÎÎñÃèÊö
x210215_g_MissionTarget="#{event_dali_0022}"		--ÈÎÎñÄ¿±ê
x210215_g_ContinueInfo="Ti¬u Th¯ Th¯ ğã lên ğªn c¤p 2 chßa?"		--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x210215_g_MissionComplete="#{event_dali_0023}"					--Íê³ÉÈÎÎñnpcËµ»°µÄ»°
x210215_g_SignPost = {x = 400, z = 218, tip = "Vân Phiêu Phiêu"}

--ÈÎÎñ½±Àø
x210215_g_MoneyBonus=20

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿ËµÃ÷
--0ºÅ£ºÎ´ÓÃ
--1ºÅ£ºÎ´ÓÃ
--2ºÅ£ºÎ´ÓÃ
--3ºÅ£ºÎ´ÓÃ
--4ºÅ£ºÎ´ÓÃ
--5ºÅ£ºÎ´ÓÃ
--6ºÅ£ºÎ´ÓÃ
--7ºÅ£ºÎ´ÓÃ
x210215_g_PetNeedLevel=2	--ĞèÒª½«ÕäÊŞÁ·µ½µÄµÈ¼¶
x210215_g_PetDataID=559	--ÈÎÎñÕäÊŞµÄ±àºÅ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210215_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾

	if IsHaveMission(sceneId,selfId,x210215_g_MissionId) > 0 then --Èç¹ûÒÑ½Ó´ËÈÎÎñ
		--·¢ËÍÈÎÎñĞèÇóµÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210215_g_MissionName)
			AddText(sceneId,x210215_g_ContinueInfo)
			AddMoneyBonus( sceneId, x210215_g_MoneyBonus )
		EndEvent( )
		bDone = x210215_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210215_g_ScriptId,x210215_g_MissionId,bDone)
	elseif x210215_CheckAccept(sceneId,selfId) > 0 then --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210215_g_MissionName)
			AddText(sceneId,x210215_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x210215_g_MissionTarget)
			AddMoneyBonus( sceneId, x210215_g_MoneyBonus )
			EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210215_g_ScriptId,x210215_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210215_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210215_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210215_g_MissionId) > 0 then
		return
	end
    if IsHaveMission(sceneId,selfId,x210215_g_MissionId) > 0 then
			AddNumText(sceneId,x210215_g_ScriptId,x210215_g_MissionName,2,-1);
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210215_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x210215_g_ScriptId,x210215_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210215_CheckAccept( sceneId, selfId )

	if IsMissionHaveDone(sceneId,selfId,x210215_g_MissionId) > 0 then
		return 0
	end
	--½ÓÊÕÌõ¼ş
	if GetLevel( sceneId, selfId ) >= x210215_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210215_OnAccept( sceneId, selfId )

	if x210215_CheckAccept(sceneId, selfId) ~= 1 then
		return
	end
	
	local ret, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, x210215_g_PetDataID, -1, 0) --¸øÍæ¼ÒÉú³ÉÒ»Ö»ÕäÊŞ
	if ret==1 then
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		AddMission( sceneId,selfId, x210215_g_MissionId, x210215_g_ScriptId, 0, 0, 0 )	--Ìí¼ÓÈÎÎñ
		BeginEvent(sceneId)
			strText = "Các hÕ nh§n ğßşc mµt con trân thú!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Thú quı lên c¤p r°i",MSG2PLAYER_PARA )
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210215_g_SignPost.x, x210215_g_SignPost.z, x210215_g_SignPost.tip )
	end
end

--**********************************
--·ÅÆú
--**********************************
function x210215_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210215_g_MissionId )
    --É¾³ıÈÎÎñÕäÊŞ
	petcount = LuaFnGetPetCount(sceneId, selfId) --È¡µÃÕäÊŞÊıÁ¿
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --È¡µÃÕäÊŞ±àºÅ
		if petdataid==x210215_g_PetDataID then
			local ret0 = LuaFnDeletePet(sceneId, selfId, i)
		end
   end
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210215_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210215_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210215_g_MissionName)
		AddText(sceneId,x210215_g_MissionComplete)
		AddMoneyBonus( sceneId, x210215_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210215_g_ScriptId,x210215_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210215_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210215_g_MissionId )

	-- ¿´Íæ¼ÒÊÇ²»ÊÇÓĞÒ»¸öµÈ¼¶Îª2¼¶µÄ³èÎï£¬ÓĞ¾ÍOK
	local nPetCount = LuaFnGetPetCount(sceneId, selfId)
	
	for i=0, nPetCount-1  do
		local nPetId = LuaFnGetPet_DataID(sceneId, selfId, i)
		local nPetLevel = LuaFnGetPet_Level(sceneId, selfId, i)
		
		if nPetId==559 and nPetLevel>=2  then
			return 1
		end
	end

	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210215_OnSubmit( sceneId, selfId, targetId,selectRadioId )

	--¼ì²âÍæ¼ÒÊÇ²»ÊÇÍê³ÉÁË
	if x210215_CheckSubmit( sceneId, selfId ) ~= 1   then
		return
	end

	AddMoney(sceneId,selfId,x210215_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,810)
	local ret0 = DelMission( sceneId, selfId, x210215_g_MissionId ) --É¾³ıÈÎÎñ
	if ret0>0  then
		MissionCom( sceneId,selfId, x210215_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Thú quı lên c¤p r°i",MSG2PLAYER_PARA )
		CallScriptFunction( 210216, "OnDefaultEvent",sceneId, selfId, targetId)
	end

	BeginEvent(sceneId)
		strText = "Nhi®m vø hoàn thành"
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210215_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210215_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210215_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Íæ¼ÒÌá½»µÄÎïÆ·¼°ÕäÊŞ
--**********************************
function x210215_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	
end

