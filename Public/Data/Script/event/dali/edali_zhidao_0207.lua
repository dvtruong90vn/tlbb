--ÎÊ´ðÈÎÎñ
--Ti«n LongÒªÄãÁ¬Ðø´ð¶Ô12¸öÎÊÌâ
--MisDescBegin
--½Å±¾ºÅ
x210207_g_ScriptId = 210207

--½ÓÊÜÈÎÎñNPCÊôÐÔ
x210207_g_Position_X=147.4986
x210207_g_Position_Z=146.2925
x210207_g_SceneID=2
x210207_g_AccomplishNPC_Name="Ti«n Long"

--ÈÎÎñºÅ
x210207_g_MissionId = 447

--ÉÏÒ»¸öÈÎÎñµÄID
x210207_g_MissionIdPre = 445

--Ä¿±êNPC
x210207_g_Name	="Ti«n Long"

--ÈÎÎñµÀ¾ß±àºÅ
--g_ItemId = 20101001

--ÈÎÎñµÀ¾ßÐèÇóÊýÁ¿
--g_ItemNeedNum = 1

--ÈÎÎñ¹éÀà
x210207_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210207_g_MissionLevel = 2

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210207_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈÝ£¬ÓÃÓÚÔÚÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x210207_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»
x210207_g_Custom	= { {id="Ðã liên tøc trä l¶i ðúng 5 câu höi cüa Ti«n Long",num=1} }

--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñÃû
x210207_g_MissionName="L¥n ð¥u höi ðáp"
x210207_g_MissionInfo="#{event_dali_0010}"
x210207_g_MissionTarget="Liên tøc trä l¶i ðúng 5 câu höi cüa #RTi«n Long #W#{_INFOAIM266,234,2,Ti«n Long}."
x210207_g_MissionComplete="Ta không tùy ti®n v¾i ngß¶i bình thß¶ng kªt giao b¢ng hæu, nhßng Ngß½i là bÕn cüa TÑ ÐÕi Thi®n Nhân. V§y ta s¨ nói cho ngß½i biªt mµt vài ði«u hay."
x210207_g_MoneyBonus=210
x210207_g_SignPost = {x = 145, z = 138, tip = "Ti«n Long"}
x210207_g_ItemBonus={{id=10110000,num=1}}

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210207_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ£¨Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾£¬µ«ÊÇÔÙ¼ì²âÒ»´Î±È½Ï°²È«£©
    --if IsMissionHaveDone(sceneId,selfId,x210207_g_MissionId) > 0 then
	--	return
	--end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
		if IsHaveMission(sceneId,selfId,x210207_g_MissionId) > 0 then
			misIndex = GetMissionIndexByID(sceneId,selfId,x210207_g_MissionId)
			num = GetMissionParam(sceneId,selfId,misIndex,1)
			if num < 1 then
				CallScriptFunction( 311100, "OnDefaultEvent",sceneId, selfId, targetId )
			else
				--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢
				BeginEvent(sceneId)
				AddText(sceneId,x210207_g_MissionName)
				AddText(sceneId,x210207_g_MissionComplete)
				AddMoneyBonus( sceneId, x210207_g_MoneyBonus )
				EndEvent( )
				bDone = x210207_CheckSubmit( sceneId, selfId )
				DispatchMissionDemandInfo(sceneId,selfId,targetId,x210207_g_ScriptId,x210207_g_MissionId,bDone)
			end
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
		elseif x210207_CheckAccept(sceneId,selfId) > 0 then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210207_g_MissionName)
				AddText(sceneId,x210207_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210207_g_MissionTarget)
				for i, item in x210207_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210207_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210207_g_ScriptId,x210207_g_MissionId)
		end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210207_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210207_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210207_g_MissionId) > 0 then
    	return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210207_g_MissionId) > 0 then
		AddNumText(sceneId,x210207_g_ScriptId,x210207_g_MissionName,2,-1);
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210207_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210207_g_ScriptId,x210207_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x210207_CheckAccept( sceneId, selfId )
	--ÐèÒª1¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 2 then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210207_OnAccept( sceneId, selfId, targetId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210207_g_MissionId, x210207_g_ScriptId, 0, 0, 0 )
	CallScriptFunction( 311100, "OnDefaultEvent",sceneId, selfId, targetId )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: L¥n ð¥u höi ðáp",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210207_g_SignPost.x, x210207_g_SignPost.z, x210207_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210207_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210207_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210207_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210207_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210207_g_MissionName)
		AddText(sceneId,x210207_g_MissionComplete)
		AddMoneyBonus( sceneId, x210207_g_MoneyBonus )
		for i, item in x210207_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210207_g_ScriptId,x210207_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210207_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210207_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210207_g_MissionId)
	num = GetMissionParam(sceneId,selfId,misIndex,1)
	if num < 1 then
		return 0
	else
		return 1
	end
end

--**********************************
--Ìá½»
--**********************************
function x210207_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210207_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210207_g_ItemBonus do
				AddItem( sceneId, item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		if ret > 0 then
			AddMoney(sceneId,selfId,x210207_g_MoneyBonus );
			LuaFnAddExp(sceneId, selfId,100)
			ret = DelMission( sceneId, selfId, x210207_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId, selfId, x210207_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: L¥n ð¥u höi ðáp",MSG2PLAYER_PARA )
				CallScriptFunction( 210208, "OnDefaultEvent",sceneId, selfId, targetId)
			end
		else
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
function x210207_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210207_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210207_OnItemChanged( sceneId, selfId, itemdataId )
end
