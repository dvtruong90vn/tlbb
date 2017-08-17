--É±¹ÖÈÎÎñ
--¿ï·öÕýÒå
--ÐÂÊÖ´åÉ±ÊñµÀBÕch ViênÈÎÎñ
--MisDescBegin
--½Å±¾ºÅ
x210213_g_ScriptId = 210213

--½ÓÊÜÈÎÎñNPCÊôÐÔ
x210213_g_Position_X=282
x210213_g_Position_Z=253
x210213_g_SceneID=2
x210213_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÉÏÒ»¸öÈÎÎñµÄID
--g_MissionIdPre =

--ÈÎÎñºÅ
x210213_g_MissionId = 453

--Ä¿±êNPC
x210213_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210213_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210213_g_MissionLevel = 4

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210213_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈÝ£¬ÓÃÓÚÔÚÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************

--ÈÎÎñÐèÒªÉ±ËÀµÄ¹Ö
x210213_g_DemandKill ={{id=719,num=8}}		--±äÁ¿µÚ1Î»

--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210213_g_MissionName="L¥n ð¥u giªt quái v§t"
x210213_g_MissionInfo="#{event_dali_0018}"
x210213_g_MissionTarget="#{event_dali_0019}"
x210213_g_ContinueInfo="Các hÕ ðã giªt chªt 8 con #RThøc ÐÕo BÕch Viên#W chßa?"
x210213_g_MissionComplete="Làm r¤t t¯t, bây gi¶ #RThøc ÐÕo BÕch Viên#W · #GÐ°i ThÕch Than#W cûng không dám tùy ti®n t§p kích bá tánh r°i."
x210213_g_SignPost = {x = 282, z = 253, tip = "Tri®u Thiên Sß"}
--ÈÎÎñ½±Àø
x210213_g_MoneyBonus=200
x210213_g_ItemBonus={{id=40002108,num=1},{id=30101001,num=5}}

x210213_g_DemandTrueKill ={{name="Thøc ÐÕo BÕch Viên",num=8}}
x210213_g_IsMissionOkFail = 1		--±äÁ¿µÄµÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210213_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ£¨Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾£¬µ«ÊÇÔÙ¼ì²âÒ»´Î±È½Ï°²È«£©
    --if IsMissionHaveDone(sceneId,selfId,x210213_g_MissionId) > 0 then
	--	return
	--end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210213_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210213_g_MissionName)
			AddText(sceneId,x210213_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210213_g_MoneyBonus )
		EndEvent( )
		bDone = x210213_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210213_g_ScriptId,x210213_g_MissionId,bDone)
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210213_CheckAccept(sceneId,selfId) > 0 then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210213_g_MissionName)
				AddText(sceneId,x210213_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210213_g_MissionTarget)
				for i, item in x210213_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210213_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210213_g_ScriptId,x210213_g_MissionId)
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210213_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210213_g_MissionId) > 0 then
    	return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x210213_g_MissionId) > 0 then
		AddNumText(sceneId,x210213_g_ScriptId,x210213_g_MissionName,2,-1);
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210213_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210213_g_ScriptId,x210213_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x210213_CheckAccept( sceneId, selfId )
	--ÐèÒª4¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 4 then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210213_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210213_g_MissionId, x210213_g_ScriptId, 1, 0, 0 )		--Ìí¼ÓÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210213_g_MissionId)			--µÃµ½ÈÎÎñµÄÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: L¥n ð¥u giªt quái v§t",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210213_g_SignPost.x, x210213_g_SignPost.z, x210213_g_SignPost.tip )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 7, 71, 250, "BÕch Viên" )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 75, 71, 250, "BÕch Viên" )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 76, 71, 250, "BÕch Viên" )
end

--**********************************
--·ÅÆú
--**********************************
function x210213_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210213_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210213_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210213_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210213_g_MissionName)
		AddText(sceneId,x210213_g_MissionComplete)
		AddMoneyBonus( sceneId, x210213_g_MoneyBonus )
		for i, item in x210213_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210213_g_ScriptId,x210213_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210213_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210213_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210213_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,1)
    if num == x210213_g_DemandTrueKill[1].num then
			return 1
		end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210213_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210213_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210213_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
	if ret > 0 then
			AddMoney(sceneId,selfId,x210213_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId, 1200)
			--¿Û³ýÈÎÎñÎïÆ·
			--for i, item in g_DemandItem do
			--	DelItem( sceneId, selfId, item.id, item.num )
			--end
		ret = DelMission( sceneId, selfId, x210213_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210213_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: L¥n ð¥u giªt quái v§t",MSG2PLAYER_PARA )
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
function x210213_OnKillObject( sceneId, selfId, objdataId ,objId)

	if GetName(sceneId,objId) == x210213_g_DemandTrueKill[1].name	  then
		-- »ñµÃËùÓÐÈË
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ¿´ÓÐÃ»ÓÐÕâ¸öÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x210213_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x210213_g_MissionId)
				local nNum = GetMissionParam(sceneId,humanObjId,misIndex,1)
	 			if nNum < x210213_g_DemandTrueKill[1].num then
	 				if nNum == x210213_g_DemandTrueKill[1].num - 1 then
	 					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
	 				end
	 				
			    SetMissionByIndex(sceneId,humanObjId,misIndex,1,nNum+1)
			  	BeginEvent(sceneId)
					strText = format("Ðã giªt chªt %d/8 con Thøc ÐÕo BÕch Viên", GetMissionParam(sceneId,humanObjId,misIndex,1) )
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
function x210213_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210213_OnItemChanged( sceneId, selfId, itemdataId )
end
