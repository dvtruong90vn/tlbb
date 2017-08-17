--ÈËÖ®³õ--°ÑÒ»¸öÂøÍ·ËÍ¸øÐ¡ÆòØ¤
--Ðoàn Diên Khánh
--MisDescBegin
--½Å±¾ºÅ
x210226_g_ScriptId = 210226

--ÈÎÎñºÅ
x210226_g_MissionId = 706

--ÉÏÒ»¸öÈÎÎñµÄID
x210226_g_MissionIdPre = 705

--Ä¿±êNPC
x210226_g_Name	="Ðoàn Diên Khánh"

--ÈÎÎñ¹éÀà
x210226_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210226_g_MissionLevel = 8

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210226_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈÝ£¬ÓÃÓÚÔÚÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x210226_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»

--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210226_g_MissionName="T£ng bánh bao"
x210226_g_MissionInfo="[Thì ra các hÕ vì cáo th¸ ðó mà ðªn. Ta không m¤t th¶i gian v¾i các hÕ. Bên kia có tên #RTi¬u Kh¤t Cái#W ðói s¡p chªt. Các hÕ hãy ði kiªm mµt cái #YBánh Bao#W cho h¡n ån këo h¡n chªt thì lÕi u±ng công ta có lòng t¯t.]"
x210226_g_MissionTarget="#{event_dali_0037}"
x210226_g_ContinueInfo="[Các hÕ ðã t£ng #YBánh Bao#W cho #RTi¬u Kh¤t Cái#W chßa?]"
x210226_g_MissionComplete="[Chà, xem ra con ngß¶i trë tu±i các hÕ vçn là tài nång có th¬ ðào tÕo.]"
x210226_g_SignPost = {x = 371, z = 367, tip = "Ti¬u Kh¤t Cái"}
x210226_g_Custom	= { {id="Cho h¡n mµt cái bánh bao.",num=1} }
--ÈÎÎñ½±Àø
x210226_g_MoneyBonus=100
--g_ItemBonus={{id=40002108,num=1}}

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210226_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ£¨Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾£¬µ«ÊÇÔÙ¼ì²âÒ»´Î±È½Ï°²È«£©
    --if IsMissionHaveDone(sceneId,selfId,x210226_g_MissionId) > 0 then
	--	return
	--end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210226_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210226_g_MissionName)
			AddText(sceneId,x210226_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210226_g_MoneyBonus )
		EndEvent()
		bDone = x210226_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210226_g_ScriptId,x210226_g_MissionId,bDone)		
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210226_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210226_g_MissionName)
			AddText(sceneId,x210226_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x210226_g_MissionTarget)
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210226_g_MoneyBonus )
			EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210226_g_ScriptId,x210226_g_MissionId)
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210226_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210226_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210226_g_MissionId) > 0 then
    	return 
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x210226_g_MissionId) > 0 then
		AddNumText(sceneId,x210226_g_ScriptId,x210226_g_MissionName,2,-1);
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210226_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210226_g_ScriptId,x210226_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x210226_CheckAccept( sceneId, selfId )
	--ÐèÒª8¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 8 then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210226_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210226_g_MissionId, x210226_g_ScriptId, 1, 0, 0 )		--Ìí¼ÓÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210226_g_MissionId)			--µÃµ½ÈÎÎñµÄÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: T£ng bánh bao",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210226_g_SignPost.x, x210226_g_SignPost.z, x210226_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210226_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210226_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210226_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210226_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210226_g_MissionName)
		AddText(sceneId,x210226_g_MissionComplete)
		AddMoneyBonus( sceneId, x210226_g_MoneyBonus )
		--for i, item in g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
		--for i, item in g_RadioItemBonus do
		--	AddRadioItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210226_g_ScriptId,x210226_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210226_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210226_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210226_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,0)
    if num == 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210226_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210226_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	--BeginAddItem(sceneId)
		--	for i, item in g_ItemBonus do
		--		AddItem( sceneId,item.id, item.num )
		--	end
		--ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		--if ret > 0 then
		--else
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
		--	BeginEvent(sceneId)
		--		strText = "±³°üÒÑÂú,ÎÞ·¨Íê³ÉÈÎÎñ"
		--		AddText(sceneId,strText);
		--	EndEvent(sceneId)
		--	DispatchMissionTips(sceneId,selfId)
		--end
		AddMoney(sceneId,selfId,x210226_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 400)
		--¿Û³ýÈÎÎñÎïÆ·
		--for i, item in g_DemandItem do
		--	DelItem( sceneId, selfId, item.id, item.num )
		--end
		ret = DelMission( sceneId, selfId, x210226_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210226_g_MissionId )
			--AddItemListToHuman(sceneId,selfId)
			Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: T£ng bánh bao",MSG2PLAYER_PARA )
			CallScriptFunction( 210227, "OnDefaultEvent",sceneId, selfId, targetId)
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210226_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210226_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210226_OnItemChanged( sceneId, selfId, itemdataId )
end
