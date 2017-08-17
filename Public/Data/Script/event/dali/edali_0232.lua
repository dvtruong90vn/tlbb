--ÕÒÈËÈÎÎñ
--»ÆÃ¼É®Ñ°ÕÒTri®u Thiên Sß
--MisDescBegin
--½Å±¾ºÅ
x210232_g_ScriptId = 210232

--½ÓÊÜÈÎÎñNPCÊôĞÔ
x210232_g_Position_X=282
x210232_g_Position_Z=220
x210232_g_SceneID=2
x210232_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÈÎÎñºÅ
x210232_g_MissionId = 712

--ÉÏÒ»¸öÈÎÎñµÄID
x210232_g_MissionIdPre = 711

--Ä¿±êNPC
x210232_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210232_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210232_g_MissionLevel = 9

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210232_g_IfMissionElite = 0

--ÈÎÎñÃû
x210232_g_MissionName="Ta có th¬ nh§p môn phái r°i"
x210232_g_MissionInfo="#{event_dali_0044}"
x210232_g_MissionTarget="V« #GNgû Hoa Ğàn thành ĞÕi Lı#W tìm #RTri®u Thiên Sß #W#{_INFOAIM282,253,2,Tri®u Thiên Sß}.#r#YNh¡c nh·: #G?n chuµt phäi vào t÷a ğµ NPC có th¬ tñ ğµng d¸ch chuy¬n ğªn ch² NPC ğó!"
x210232_g_MissionComplete="#{event_dali_0045}"
x210232_g_MoneyBonus=72
x210232_g_SignPost = {x = 160, z = 156, tip = "Tri®u Thiên Sß"}
x210232_g_ItemBonus={{id=40002108,num=1}}

x210232_g_Custom	= { {id="Ğã tìm th¤y Tri®u Thiên Sß",num=1} }
x210232_g_IsMissionOkFail = 1		--±äÁ¿µÄµÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210232_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210232_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210232_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210232_g_Name then
			x210232_OnContinue( sceneId, selfId, targetId )
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210232_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210232_g_Name then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210232_g_MissionName)
				AddText(sceneId,x210232_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210232_g_MissionTarget)
				AddMoneyBonus( sceneId, x210232_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210232_g_ScriptId,x210232_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210232_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210232_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210232_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210232_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210232_g_Name then
			AddNumText(sceneId, x210232_g_ScriptId,x210232_g_MissionName,2,-1);
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210232_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210232_g_Name then
			AddNumText(sceneId,x210232_g_ScriptId,x210232_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210232_CheckAccept( sceneId, selfId )
	--ĞèÒª9¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 9 then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210232_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210232_g_MissionId, x210232_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Gia nh§p môn phái",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210232_g_SignPost.x, x210232_g_SignPost.z, x210232_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210232_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x210232_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210232_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210232_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210232_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210232_g_MissionName)
		AddText(sceneId,x210232_g_MissionComplete)
		AddMoneyBonus( sceneId, x210232_g_MoneyBonus )
		for i, item in x210232_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210232_g_ScriptId,x210232_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210232_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210232_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210232_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210232_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210232_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
			if ret > 0 then
					AddMoney(sceneId,selfId,x210232_g_MoneyBonus );
					LuaFnAddExp( sceneId, selfId,400)
					ret = DelMission( sceneId, selfId, x210232_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210232_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Gia nh§p môn phái",MSG2PLAYER_PARA )
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
function x210232_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210232_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210232_OnItemChanged( sceneId, selfId, itemdataId )
end
