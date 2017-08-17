--ÕÒÈËÈÎÎñ
--¶Å×ÓÌÚÑ°ÕÒLô Tam Th¤t
--MisDescBegin
--½Å±¾ºÅ
x210203_g_ScriptId = 210203

x210203_g_Position_X=102.8806
x210203_g_Position_Z=131.8685
x210203_g_SceneID=2
x210203_g_AccomplishNPC_Name="Lô Tam Th¤t"

--ÈÎÎñºÅ
x210203_g_MissionId = 443

--ÉÏÒ»¸öÈÎÎñµÄID
x210203_g_MissionIdPre = 442

--Ä¿±êNPC
x210203_g_Name	="Lô Tam Th¤t"

--ÈÎÎñ¹éÀà
x210203_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210203_g_MissionLevel = 1

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210203_g_IfMissionElite = 0

--ÈÎÎñÃû
x210203_g_MissionName="Ph¥n thu¯c thÑ nh¤t"
x210203_g_MissionInfo="#{event_dali_0005}"
x210203_g_MissionTarget="— #Gğß¶ng l¾n phía Tây thành ĞÕi Lı#W có #YTi®m Dßşc#W hãy tìm ğªn #RLô Tam Th¤t #W#{_INFOAIM270,220,2,Lô Tam Th¤t}.#r#YNh¡c nh·: #G?n chuµt phäi vào t÷a ğµ NPC có th¬ tñ ğµng d¸ch chuy¬n ğªn ch² NPC ğó!"
x210203_g_MissionComplete="Không ng¶ các hÕ có hÑng thú sâu s¡c nhß v§y v¾i y ğÕo, ğßşc ğàm ğÕo v¾i các hÕ th§t thoäi mái. Ch² #Ydßşc ph¦m#W này các hÕ hãy ch÷n l¤y mµt, hãy coi ğó là món quà di®n kiªn ta t£ng các hÕ."
x210203_g_MoneyBonus=1
x210203_g_SignPost = {x = 103, z = 133, tip = "Lô Tam Th¤t"}
x210203_g_RadioItemBonus={{id=30001001,num=5},{id=30003001,num=5},{id=30002001,num=5}}

x210203_g_Custom	= { {id="Ğã tìm ğßşc Lô Tam Th¤t",num=1} }
x210203_g_IsMissionOkFail = 1		--±äÁ¿µÄµÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210203_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210203_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210203_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210203_g_Name then
			x210203_OnContinue( sceneId, selfId, targetId )
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210203_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210203_g_Name then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210203_g_MissionName)
				AddText(sceneId,x210203_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210203_g_MissionTarget)
				for i, item in x210203_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210203_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210203_g_ScriptId,x210203_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210203_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210203_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210203_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210203_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210203_g_Name then
			AddNumText(sceneId, x210203_g_ScriptId,x210203_g_MissionName,2,-1);
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210203_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210203_g_Name then
			AddNumText(sceneId,x210203_g_ScriptId,x210203_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210203_CheckAccept( sceneId, selfId )
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
function x210203_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210203_g_MissionId, x210203_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ph¥n thu¯c thÑ nh¤t",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210203_g_SignPost.x, x210203_g_SignPost.z, x210203_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210203_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x210203_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210203_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210203_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210203_OnContinue( sceneId, selfId, targetId )
    BeginEvent(sceneId)
		AddText(sceneId,x210203_g_MissionName)
		AddText(sceneId,x210203_g_MissionComplete)
		AddMoneyBonus( sceneId, x210203_g_MoneyBonus )
		for i, item in x210203_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210203_g_ScriptId,x210203_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210203_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210203_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210203_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210203_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		BeginAddItem(sceneId)
			for i, item in x210203_g_RadioItemBonus do
				if item.id == selectRadioId then
					AddItem( sceneId,item.id, item.num )
				end
			end
		ret = EndAddItem(sceneId,selfId)
		if ret > 0 then
		--Ìí¼ÓÈÎÎñ½±Àø
			AddMoney(sceneId,selfId,x210203_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,25)
			DelMission( sceneId,selfId,  x210203_g_MissionId )
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
			MissionCom( sceneId,selfId,  x210203_g_MissionId )
			AddItemListToHuman(sceneId,selfId)
			Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Ph¥n thu¯c thÑ nh¤t",MSG2PLAYER_PARA )
			CallScriptFunction( 210204, "OnDefaultEvent",sceneId, selfId, targetId)
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
function x210203_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210203_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210203_OnItemChanged( sceneId, selfId, itemdataId )
end
