--ÈËÖ®³õ--°ÑÒ»°Ñ¿ó³úËÍ¸øÐ¡ÆòØ¤
--Ðoàn Diên Khánh
--MisDescBegin
--½Å±¾ºÅ
x210228_g_ScriptId = 210228

--ÈÎÎñºÅ
x210228_g_MissionId = 708

--ÉÏÒ»¸öÈÎÎñµÄID
x210228_g_MissionIdPre = 707

--Ä¿±êNPC
x210228_g_Name	="Ðoàn Diên Khánh"

--ÈÎÎñ¹éÀà
x210228_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210228_g_MissionLevel = 8

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210228_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈÝ£¬ÓÃÓÚÔÚÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x210228_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»

--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210228_g_MissionName="T£ng cu¯c khai khoáng"
x210228_g_MissionInfo="[Có ån, có m£c, tên #RTi¬u Kh¤t Cái#W vçn không th¬ s¯ng n±i ðâu. Ði tìm #YCu¯c Khai Khoáng#W cho h¡n ði. Ð¬ v« sau h¡n có th¬ tñ nuôi bän thân.] #r#r#e00f000 Nh¡c nhö: #e000000Các hÕ có th¬ tìm #gfff0f0#WNgß¶i Nuôi Ðiêu #g000000#W bay trñc tiªp t¾i ti®m tÕp hóa g¥n ðó. #r"
x210228_g_MissionTarget="#{event_dali_0040}"
x210228_g_ContinueInfo="[Các hÕ ðã t£ng #YCu¯c Khai Khoáng#W cho #RTi¬u Kh¤t Cái#W chßa?]"
x210228_g_MissionComplete="#{event_dali_0041}"
x210228_g_SignPost = {x = 371, z = 367, tip = "Ti¬u Kh¤t Cái"}
x210228_g_Custom	= { {id="Cho h¡n mµt cái cu¯c khai khoáng",num=1} }
--ÈÎÎñ½±Àø
x210228_g_MoneyBonus=240
--g_ItemBonus={{id=40002108,num=1}}

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210228_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ£¨Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾£¬µ«ÊÇÔÙ¼ì²âÒ»´Î±È½Ï°²È«£©
    --if IsMissionHaveDone(sceneId,selfId,x210228_g_MissionId) > 0 then
	--	return
	--end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210228_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210228_g_MissionName)
			AddText(sceneId,x210228_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210228_g_MoneyBonus )
		EndEvent()
		bDone = x210228_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210228_g_ScriptId,x210228_g_MissionId,bDone)		
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210228_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210228_g_MissionName)
			AddText(sceneId,x210228_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x210228_g_MissionTarget)
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210228_g_MoneyBonus )
			EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210228_g_ScriptId,x210228_g_MissionId)
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210228_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210228_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210228_g_MissionId) > 0 then
    	return 
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x210228_g_MissionId) > 0 then
		AddNumText(sceneId,x210228_g_ScriptId,x210228_g_MissionName,2,-1);
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210228_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210228_g_ScriptId,x210228_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x210228_CheckAccept( sceneId, selfId )
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
function x210228_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210228_g_MissionId, x210228_g_ScriptId, 1, 0, 0 )		--Ìí¼ÓÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210228_g_MissionId)			--µÃµ½ÈÎÎñµÄÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: T£ng cu¯c khai khoáng",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210228_g_SignPost.x, x210228_g_SignPost.z, x210228_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210228_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210228_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210228_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210228_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210228_g_MissionName)
		AddText(sceneId,x210228_g_MissionComplete)
		AddMoneyBonus( sceneId, x210228_g_MoneyBonus )
		--for i, item in g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
		--for i, item in g_RadioItemBonus do
		--	AddRadioItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210228_g_ScriptId,x210228_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210228_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210228_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210228_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,0)
    if num == 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210228_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210228_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
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
		AddMoney(sceneId,selfId,x210228_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 500)
		--¿Û³ýÈÎÎñÎïÆ·
		--for i, item in g_DemandItem do
		--	DelItem( sceneId, selfId, item.id, item.num )
		--end
		ret = DelMission( sceneId, selfId, x210228_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210228_g_MissionId )
			--AddItemListToHuman(sceneId,selfId)
			Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: T£ng cu¯c khai khoáng",MSG2PLAYER_PARA )
			CallScriptFunction( 210229, "OnDefaultEvent",sceneId, selfId, targetId)
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210228_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210228_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210228_OnItemChanged( sceneId, selfId, itemdataId )
end
