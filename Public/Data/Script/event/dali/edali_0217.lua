--É±¹ÖÈÎÎñ
--Îª¹úÎªÃñ
--ÐÂÊÖ´åÉ±ÉÁµç±ªºÍÉ½ÖëÈÎÎñ
--MisDescBegin
--½Å±¾ºÅ
x210217_g_ScriptId = 210217

--½ÓÊÜÈÎÎñNPCÊôÐÔ
x210217_g_Position_X=282
x210217_g_Position_Z=253
x210217_g_SceneID=2
x210217_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÉÏÒ»¸öÈÎÎñµÄID
--g_MissionIdPre =

--ÈÎÎñºÅ
x210217_g_MissionId = 457

--Ä¿±êNPC
x210217_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210217_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210217_g_MissionLevel = 6

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210217_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈÝ£¬ÓÃÓÚÔÚÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x210217_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»

--ÈÎÎñÐèÒªÉ±ËÀµÄ¹Ö
x210217_g_DemandKill ={{id=906,num=8}}		--±äÁ¿µÚ1Î»

--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210217_g_MissionName="Giªt càng nhi«u quái v§t"
x210217_g_MissionInfo="#{event_dali_0025}"
x210217_g_MissionTarget="#{event_dali_0026}"
x210217_g_ContinueInfo="Các hÕ ðã giªt 8 con #RS½n Thù#W chßa?"
x210217_g_MissionComplete="Làm r¤t t¯t, bây gi¶ #RS½n Thù#W cüa #GVô Lßþng S½n#W cûng không dám tùy ti®n t§p kích các huynh ð® Tào Bang næa r°i."
x210217_g_SignPost = {x = 282, z = 253, tip = "Tri®u Thiên Sß"}
--ÈÎÎñ½±Àø
x210217_g_MoneyBonus=20
x210217_g_ItemBonus={{id=40002108,num=1},{id=10113000,num=1}}
x210217_g_SignPost_1 = {x = 127, z = 195, tip = "S½n Thù"}

--MisDescEnd

x210217_g_DemandTrueKill ={{name="S½n Thù",num=8}}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210217_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ£¨Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾£¬µ«ÊÇÔÙ¼ì²âÒ»´Î±È½Ï°²È«£©
    --if IsMissionHaveDone(sceneId,selfId,x210217_g_MissionId) > 0 then
	--	return
	--end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210217_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210217_g_MissionName)
			AddText(sceneId,x210217_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210217_g_MoneyBonus )
		EndEvent( )
		bDone = x210217_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210217_g_ScriptId,x210217_g_MissionId,bDone)
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210217_CheckAccept(sceneId,selfId) > 0 then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210217_g_MissionName)
				AddText(sceneId,x210217_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210217_g_MissionTarget)
				for i, item in x210217_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210217_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210217_g_ScriptId,x210217_g_MissionId)
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210217_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210217_g_MissionId) > 0 then
    	return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x210217_g_MissionId) > 0 then
			AddNumText(sceneId,x210217_g_ScriptId,x210217_g_MissionName,2,-1);
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210217_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x210217_g_ScriptId,x210217_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x210217_CheckAccept( sceneId, selfId )
	--ÐèÒª6¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 6 then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210217_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210217_g_MissionId, x210217_g_ScriptId, 1, 0, 0 )		--Ìí¼ÓÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210217_g_MissionId)			--µÃµ½ÈÎÎñµÄÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Giªt càng nhi«u nhi«u quái v§t",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210217_g_SignPost.x, x210217_g_SignPost.z, x210217_g_SignPost.tip )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 6, x210217_g_SignPost_1.x, x210217_g_SignPost_1.z, x210217_g_SignPost_1.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210217_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
  DelMission( sceneId, selfId, x210217_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210217_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210217_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210217_g_MissionName)
		AddText(sceneId,x210217_g_MissionComplete)
		AddMoneyBonus( sceneId, x210217_g_MoneyBonus )
		for i, item in x210217_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210217_g_ScriptId,x210217_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210217_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210217_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210217_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,0)
    if num == 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210217_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210217_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210217_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
	if ret > 0 then
			AddMoney(sceneId,selfId,x210217_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId, 1800)
			--¿Û³ýÈÎÎñÎïÆ·
			--for i, item in g_DemandItem do
			--	DelItem( sceneId, selfId, item.id, item.num )
			--end
		ret = DelMission( sceneId, selfId, x210217_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210217_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Giªt càng nhi«u quái v§t",MSG2PLAYER_PARA )
			end
		else
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
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
function x210217_OnKillObject( sceneId, selfId, objdataId ,objId)
	if GetName(sceneId,objId) == x210217_g_DemandTrueKill[1].name	  then
		-- »ñµÃËùÓÐÈË
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ¿´ÓÐÃ»ÓÐÕâ¸öÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x210217_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x210217_g_MissionId)
				local nNum = GetMissionParam(sceneId,humanObjId,misIndex,1)

	 			if nNum < x210217_g_DemandTrueKill[1].num then
	 				if nNum == x210217_g_DemandTrueKill[1].num - 1 then
	 					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
	 				end
	 				
			    SetMissionByIndex(sceneId,humanObjId,misIndex,1,nNum+1)
			  	BeginEvent(sceneId)
					strText = format("Ðã giªt chªt %d/8 con S½n Thù", GetMissionParam(sceneId,humanObjId,misIndex,1) )
					AddText(sceneId,strText);
			  	EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
	 			end
			end
		end
	end

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210217_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210217_OnItemChanged( sceneId, selfId, itemdataId )
end
