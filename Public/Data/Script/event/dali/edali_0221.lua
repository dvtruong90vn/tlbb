--×½ÕäÊŞÈÎÎñ

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x210221_g_ScriptId = 210221

--ÉÏÒ»¸öÈÎÎñµÄID
x210221_g_MissionIdPre = 700

--ÈÎÎñºÅ
x210221_g_MissionId = 701

--ÈÎÎñÄ¿±ênpc
x210221_g_Name	="Vân Phiêu Phiêu"

--ÈÎÎñ¹éÀà
x210221_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210221_g_MissionLevel = 7

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210221_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x210221_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»
--**********************************ÒÔÉÏÊÇ¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210221_g_MissionName="B¡t ğßşc trân thú r°i"
x210221_g_MissionInfo="#{event_dali_0029}"  --ÈÎÎñÃèÊö
x210221_g_MissionTarget="#{event_dali_0030}"		--ÈÎÎñÄ¿±ê
x210221_g_ContinueInfo="Các hÕ ğã b¡t ğßşc v¸t con r°i à?"		--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x210221_g_MissionComplete="#{event_dali_0031}"					--Íê³ÉÈÎÎñnpcËµ»°µÄ»°
x210221_g_SignPost = {x = 435, z = 202, tip = "Hoàng Mi Tång"}

--ÈÎÎñ½±Àø
x210221_g_MoneyBonus=20

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿ËµÃ÷
x210221_g_Param_ok=0	--0ºÅ£ºµ±Ç°ÈÎÎñÊÇ·ñÍê³É(0Î´Íê³É£»1Íê³É)
--1ºÅ£ºÎ´ÓÃ
--2ºÅ£ºÎ´ÓÃ
--3ºÅ£ºÎ´ÓÃ
--4ºÅ£ºÎ´ÓÃ
--5ºÅ£ºÎ´ÓÃ
--6ºÅ£ºÎ´ÓÃ
--7ºÅ£ºÎ´ÓÃ
x210221_g_PetDataID=558	--ÈÎÎñÕäÊŞµÄ±àºÅ


--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210221_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if IsHaveMission(sceneId,selfId,x210221_g_MissionId) > 0 then	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
		--·¢ËÍÈÎÎñĞèÇóµÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210221_g_MissionName)
			AddText(sceneId,x210221_g_ContinueInfo)
			AddMoneyBonus( sceneId, x210221_g_MoneyBonus )
		EndEvent( )
		bDone = x210221_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210221_g_ScriptId,x210221_g_MissionId,bDone)
	elseif x210221_CheckAccept(sceneId,selfId) > 0 then		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210221_g_MissionName)
				AddText(sceneId,x210221_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210221_g_MissionTarget)
				--for i, item in g_ItemBonus do
				--	AddItemBonus( sceneId, item.id, item.num )
				--end
				AddMoneyBonus( sceneId, x210221_g_MoneyBonus )
				EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210221_g_ScriptId,x210221_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210221_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210221_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210221_g_MissionId) > 0 then
		return
	end
    if IsHaveMission(sceneId,selfId,x210221_g_MissionId) > 0 then
			AddNumText(sceneId,x210221_g_ScriptId,x210221_g_MissionName,2,-1);
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210221_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x210221_g_ScriptId,x210221_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210221_CheckAccept( sceneId, selfId )
	--½ÓÊÕÌõ¼ş
	if GetLevel( sceneId, selfId ) >= x210221_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210221_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMissionEx( sceneId,selfId, x210221_g_MissionId, x210221_g_ScriptId )		--Ìí¼ÓÈÎÎñ
	SetMissionEvent(sceneId,selfId, x210221_g_MissionId,3)	--ÉèÖÃÈÎÎñÊÂ¼ş£¬3±íÊ¾ÕäÊŞ±ä»¯ÊÂ¼ş

	misIndex = GetMissionIndexByID(sceneId,selfId,x210221_g_MissionId)	--µÃµ½ÈÎÎñµÄĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,x210221_g_Param_ok,0)	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ0Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: B¡t trân thú",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210221_g_SignPost.x, x210221_g_SignPost.z, x210221_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210221_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210221_g_MissionId )
	petcount = LuaFnGetPetCount(sceneId, selfId) --È¡µÃÕäÊŞÊıÁ¿
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --È¡µÃÕäÊŞ±àºÅ
		if petdataid==x210221_g_PetDataID then
			LuaFnDeletePet(sceneId, selfId, i)
		end
	end
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210221_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210221_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210221_g_MissionName)
		AddText(sceneId,x210221_g_MissionComplete)
		AddMoneyBonus( sceneId, x210221_g_MoneyBonus )
		--for i, item in g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210221_g_ScriptId,x210221_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210221_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210221_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	-- ¼ì²éÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓĞÕâÑùµÄ³èÎï
	local nPetCount = LuaFnGetPetCount(sceneId, selfId)
	
	for i=0, nPetCount-1  do
		local nPetId = LuaFnGetPet_DataID(sceneId, selfId, i)
		
		if nPetId==558   then
			return 1
		end
	end

	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210221_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	--
	if x210221_CheckSubmit( sceneId, selfId ) < 1  then
		return
	end	
	
--	local ret1 = LuaFnDeletePet(sceneId, selfId, selectRadioId ) --É¾³ıÕäÊŞ
--	if ret1 > 0 then
		local ret0 = DelMission( sceneId, selfId, x210221_g_MissionId ) --É¾³ıÈÎÎñ
		if ret0>0  then
			AddMoney(sceneId,selfId,x210221_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,700)
			MissionCom( sceneId,selfId, x210221_g_MissionId )
			Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: B¡t trân thú",MSG2PLAYER_PARA )
			CallScriptFunction( 210223, "OnDefaultEvent",sceneId, selfId, targetId)
			BeginEvent(sceneId)
				strText = "#YNhi®m vø hoàn thành#W: B¡t ğßşc trân thú r°i"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
--	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210221_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210221_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210221_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--ÕäÊŞ¸Ä±ä
--**********************************
function x210221_OnPetChanged( sceneId, selfId, petdataId )
	if petdataId==x210221_g_PetDataID then --ÊÇÈÎÎñÕäÊŞ
		misIndex = GetMissionIndexByID(sceneId,selfId,x210221_g_MissionId)	--µÃµ½ÈÎÎñµÄĞòÁĞºÅ
		SetMissionByIndex(sceneId,selfId,misIndex,x210221_g_Param_ok,1)	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ0Î»ÖÃ1

		BeginEvent(sceneId)
			strText = "Ğã b¡t ğßşc trân thú, nhi®m vø hoàn thành!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--Íæ¼ÒÌá½»µÄÎïÆ·¼°ÕäÊŞ
--**********************************
function x210221_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end

--**********************************
--Íæ¼ÒÌá½»µÄÎïÆ·¼°ÕäÊŞ
--**********************************
function x210221_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	
end
