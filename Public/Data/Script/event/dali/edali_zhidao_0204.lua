--ÕÒÈËÈÎÎñ
--Â¬ÈıÆßÑ°ÕÒTri®u Thiên Sß
--MisDescBegin
--½Å±¾ºÅ
x210204_g_ScriptId = 210204

--½ÓÊÜÈÎÎñNPCÊôĞÔ
x210204_g_Position_X=160.0895
x210204_g_Position_Z=156.9309
x210204_g_SceneID=2
x210204_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÈÎÎñºÅ
x210204_g_MissionId = 444

--ÉÏÒ»¸öÈÎÎñµÄID
x210204_g_MissionIdPre = 443

--Ä¿±êNPC
x210204_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210204_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210204_g_MissionLevel = 1

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210204_g_IfMissionElite = 0

--ÈÎÎñÃû
x210204_g_MissionName="Lá thß tiªn cØ thÑ 1"
x210204_g_MissionInfo="#{event_dali_0006}"
x210204_g_MissionTarget="V« #GNgû Hoa Ğàn thành ĞÕi Lı#W tìm ğªn #GTri®u Thiên Sß #W#{_INFOAIM282,253,2,Tri®u Thiên Sß}.#r#YNh¡c nh·: #G?n chuµt phäi vào t÷a ğµ NPC có th¬ tñ ğµng d¸ch chuy¬n ğªn ch² NPC ğó!"
x210204_g_MissionComplete="#{event_dali_0007}" --#r  #YÒ»·âÍÆ¼öĞÅ#WÖ»ÄÜÑ§Ï°Ò»¸ö¼¼ÄÜ¡£ÒÔºóËæ×ÅÄãÔÚ#G´óÀí³Ç#WÉùÍûµÄÈÕÒæÉÏÉı£¬ÎÒÃÇ»¹»á°ïÄãĞ´#YÍÆ¼öĞÅ#WµÄ¡£
x210204_g_MoneyBonus=1
x210204_g_SignPost = {x = 160, z = 156, tip = "Tri®u Thiên Sß"}
x210204_g_ItemBonus={{id=40002108,num=1}}

x210204_g_Custom	= { {id="Ğã tìm th¤y Tri®u Thiên Sß",num=1} }
x210204_g_IsMissionOkFail = 1		--±äÁ¿µÄµÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210204_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210204_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210204_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210204_g_Name then
			x210204_OnContinue( sceneId, selfId, targetId )
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210204_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210204_g_Name then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210204_g_MissionName)
				AddText(sceneId,x210204_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210204_g_MissionTarget)
				for i, item in x210204_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210204_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210204_g_ScriptId,x210204_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210204_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼Ò»¹Î´Íê³ÉÉÏÒ»¸öÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210204_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210204_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210204_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210204_g_Name then
			AddNumText(sceneId, x210204_g_ScriptId,x210204_g_MissionName,2,-1);
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210204_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210204_g_Name then
			AddNumText(sceneId,x210204_g_ScriptId,x210204_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210204_CheckAccept( sceneId, selfId )
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
function x210204_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210204_g_MissionId, x210204_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Lá thß tiªn cØ thÑ 1",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210204_g_SignPost.x, x210204_g_SignPost.z, x210204_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210204_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x210204_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210204_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210204_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210204_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210204_g_MissionName)
		AddText(sceneId,x210204_g_MissionComplete)
		AddMoneyBonus( sceneId, x210204_g_MoneyBonus )
		for i, item in x210204_g_ItemBonus do
			AddItemBonus( sceneId,item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210204_g_ScriptId,x210204_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210204_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210204_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210204_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210204_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210204_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
			if ret > 0 then
					AddMoney(sceneId,selfId,x210204_g_MoneyBonus );
					LuaFnAddExp( sceneId, selfId,30)
					ret = DelMission( sceneId, selfId, x210204_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210204_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
				end
				Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Lá thß tiªn cØ thÑ 1",MSG2PLAYER_PARA )
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
function x210204_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210204_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210204_OnItemChanged( sceneId, selfId, itemdataId )
end
