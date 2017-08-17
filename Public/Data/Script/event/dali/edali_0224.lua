--ÈËÖ®³õ--ÔÄ¶Á²¼¸æÅÆÈÎÎñ
--Tri®u Thiên Sß
--MisDescBegin
--½Å±¾ºÅ
x210224_g_ScriptId = 210224

--½ÓÊÜÈÎÎñNPCÊôÐÔ
x210224_g_Position_X=282
x210224_g_Position_Z=253
x210224_g_SceneID=2
x210224_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÈÎÎñºÅ
x210224_g_MissionId = 704

--ÉÏÒ»¸öÈÎÎñµÄID
--g_MissionIdPre =

--Ä¿±êNPC
x210224_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210224_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210224_g_MissionLevel = 8

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210224_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈÝ£¬ÓÃÓÚÔÚÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x210224_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»

--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210224_g_MissionName="Ði xem b¯ cáo"
x210224_g_MissionInfo="#{event_dali_0034}"
x210224_g_MissionTarget="Ð÷c #RBäng cáo th¸ · #GÐÕi Lý#W#{_INFOAIM269,83,2,-1}, sau ðó v«#G Ngû Hoa Ðàn thành ÐÕi Lý#W tìm #RTri®u Thiên Sß #W#{_INFOAIM282,253,2,Tri®u Thiên Sß}.#r#YNh¡c nh·: #G?n chuµt phäi vào t÷a ðµ NPC có th¬ tñ ðµng d¸ch chuy¬n ðªn ch² NPC ðó!"
x210224_g_ContinueInfo="Ngß½i ðã xem #YBäng cáo th¸#W chßa?"
x210224_g_MissionComplete="Ngß½i ðã xem #YBäng cáo th¸ #Wchßa? Lû ngß¶i x¤u nhß v§y, nh¤t ð¸nh phäi tr×ng tr¸ nghiêm kh¡c."
x210224_g_SignPost = {x = 269, z = 83, tip = "²¼¸æÅÆ"}
--ÈÎÎñ½±Àø
x210224_g_MoneyBonus=100
--g_ItemBonus={{id=40002108,num=1}}

x210224_g_Custom	= { {id="Ðã ð÷c Cáo th¸",num=1} }
x210224_g_IsMissionOkFail = 1		--±äÁ¿µÄµÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210224_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ£¨Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾£¬µ«ÊÇÔÙ¼ì²âÒ»´Î±È½Ï°²È«£©
    --if IsMissionHaveDone(sceneId,selfId,x210224_g_MissionId) > 0 then
	--	return
	--end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210224_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210224_g_MissionName)
			AddText(sceneId,x210224_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210224_g_MoneyBonus )
		EndEvent()
		bDone = x210224_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210224_g_ScriptId,x210224_g_MissionId,bDone)		
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210224_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210224_g_MissionName)
			AddText(sceneId,x210224_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x210224_g_MissionTarget)
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210224_g_MoneyBonus )
			EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210224_g_ScriptId,x210224_g_MissionId)
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210224_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210224_g_MissionId) > 0 then
    	return 
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x210224_g_MissionId) > 0 then
		AddNumText(sceneId,x210224_g_ScriptId,x210224_g_MissionName,2,-1);
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210224_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210224_g_ScriptId,x210224_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x210224_CheckAccept( sceneId, selfId )
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
function x210224_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210224_g_MissionId, x210224_g_ScriptId, 1, 0, 0 )		--Ìí¼ÓÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210224_g_MissionId)			--µÃµ½ÈÎÎñµÄÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ð÷c cáo th¸",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210224_g_SignPost.x, x210224_g_SignPost.z, x210224_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210224_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
  DelMission( sceneId, selfId, x210224_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210224_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210224_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210224_g_MissionName)
		AddText(sceneId,x210224_g_MissionComplete)
		AddMoneyBonus( sceneId, x210224_g_MoneyBonus )
		--for i, item in g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
		--for i, item in g_RadioItemBonus do
		--	AddRadioItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210224_g_ScriptId,x210224_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210224_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210224_g_MissionId )
	if bRet ~= 0 then
		return 1
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210224_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,0)
    if num == 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210224_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210224_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
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
		AddMoney(sceneId,selfId,x210224_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 100)
		--¿Û³ýÈÎÎñÎïÆ·
		--for i, item in g_DemandItem do
		--	DelItem( sceneId, selfId, item.id, item.num )
		--end
		ret = DelMission( sceneId, selfId, x210224_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210224_g_MissionId )
			--AddItemListToHuman(sceneId,selfId)
			Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Ð÷c cáo th¸",MSG2PLAYER_PARA )
			CallScriptFunction( 210225, "OnDefaultEvent",sceneId, selfId, targetId)
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210224_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210224_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210224_OnItemChanged( sceneId, selfId, itemdataId )
end
