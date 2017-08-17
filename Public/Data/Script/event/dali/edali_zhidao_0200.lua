--ÕÒÈËÈÎÎñ
--ÕÔÌìÊ¦Ñ°ÕÒB° Lß½ng
--MisDescBegin
--½Å±¾ºÅ
x210200_g_ScriptId = 210200

--½ÓÊÜÈÎÎñNPCÊôĞÔ
x210200_g_Position_X=341
x210200_g_Position_Z=221
x210200_g_SceneID=2
x210200_g_AccomplishNPC_Name="B° Lß½ng"

--ÈÎÎñºÅ
x210200_g_MissionId = 440

--ÉÏÒ»¸öÈÎÎñµÄID
--g_MissionIdPre = 

--Ä¿±êNPC
x210200_g_Name	="B° Lß½ng"

--ÈÎÎñ¹éÀà
x210200_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210200_g_MissionLevel = 1

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210200_g_IfMissionElite = 0

--ÈÎÎñÃû
x210200_g_MissionName="Thanh vû khí thÑ nh¤t"
x210200_g_MissionInfo_1="Ğây không phäi là #R"
x210200_g_MissionInfo_2="#{event_dali_0001}" --Ó¦ÎÒÃÇÕòÄÏÍõµÄÑûÇëÇ°À´²Î¼ÓÎäÁÖ´ó»á¡£
x210200_g_MissionTarget="#{xinshou_001}"
x210200_g_MissionComplete="#{event_dali_0002}"
x210200_g_MoneyBonus=1
x210200_g_SignPost = {x = 341, z = 221, tip = "B° Lß½ng"}

x210200_g_ItemBonus={id=30101001, num=10}
x210200_g_RadioItemBonus={{id=10101000 ,num=1},{id=10102000,num=1},{id=10104000,num=1},{id=10103000,num=1}}

x210200_g_Custom	= { {id="Ğã tìm th¤y B° Lß½ng",num=1} }
x210200_g_IsMissionOkFail = 1		--±äÁ¿µÄµÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210200_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210200_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210200_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210200_g_Name then
			x210200_OnContinue( sceneId, selfId, targetId )
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210200_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210200_g_Name then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
				local  PlayerName=GetName(sceneId,selfId)	
	            local  PlayerSex=GetSex(sceneId,selfId)
	            if PlayerSex == 0 then
		            PlayerSex = " cô nß½ng "
	            else
		            PlayerSex = " thiªu hi®p "
	            end
			BeginEvent(sceneId)
				AddText(sceneId,x210200_g_MissionName)
				AddText(sceneId,x210200_g_MissionInfo_1..PlayerName..PlayerSex..x210200_g_MissionInfo_2)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210200_g_MissionTarget)
				AddItemDemand( sceneId, 30101001, 10 )
				
				for i, item in x210200_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
				
				AddMoneyBonus( sceneId, x210200_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210200_g_ScriptId,x210200_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210200_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210200_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x210200_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210200_g_Name then
			AddNumText(sceneId, x210200_g_ScriptId,x210200_g_MissionName,2,-1);
		end
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210200_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210200_g_Name then
			AddNumText(sceneId,x210200_g_ScriptId,x210200_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210200_CheckAccept( sceneId, selfId )
	--ĞèÒª1¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210200_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210200_g_MissionId, x210200_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Thanh vû khí thÑ nh¤t",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210200_g_SignPost.x, x210200_g_SignPost.z, x210200_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210200_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

end

--**********************************
--·ÅÆú
--**********************************
function x210200_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210200_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210200_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210200_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210200_g_MissionName)
		AddText(sceneId,x210200_g_MissionComplete)
		AddMoneyBonus( sceneId, x210200_g_MoneyBonus )
		AddItemDemand( sceneId, 30101001, 10 )
		
		for i, item in x210200_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210200_g_ScriptId,x210200_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210200_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210200_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210200_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210200_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210200_g_RadioItemBonus do
				if item.id == selectRadioId then
					AddItem( sceneId,item.id, item.num )
				end
			end
			AddItem( sceneId,30101001, 10 )
			
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			AddMoney(sceneId,selfId,x210200_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId, 10)
			
			ret = DelMission( sceneId, selfId, x210200_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId, selfId, x210200_g_MissionId )
				--¿Û³ıÈÎÎñÎïÆ·
				--for i, item in g_DemandItem do
				--	DelItem( sceneId, selfId, item.id, item.num )
				--end
				AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Thanh vû khí thÑ nh¤t",MSG2PLAYER_PARA )
				CallScriptFunction( 210201, "OnDefaultEvent",sceneId, selfId, targetId)
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
function x210200_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210200_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210200_OnItemChanged( sceneId, selfId, itemdataId )
end
