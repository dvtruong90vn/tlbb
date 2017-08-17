-- ¾çÇéÈÎÎñ¡ª¡ªÍò½Ù¹È  ¸±±¾ÄÚËÍÐÅµ½¸±±¾Íâ
-- Ê¯¸Òµ±->¶ÎÕý´¾

--MisDescBegin
--½Å±¾ºÅ
x200004_g_ScriptId = 200004

--ÈÎÎñºÅ
x200004_g_MissionId = 4

--Ç°ÐøÈÎÎñ
x200004_g_PreMissionId = 3

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
--g_MissionIdPre = 

--Ä¿±êNPC
x200004_g_Name	="Ðoàn Chính Thu¥n"

--ÈÎÎñ¹éÀà
x200004_g_MissionKind = 51

--ÐÆng c¤p nhi®m vø 
x200004_g_MissionLevel = 20

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200004_g_IfMissionElite = 0

--Tiªp thøÈÎÎñNPCÊôÐÔ
x200004_g_Position_X=189
x200004_g_Position_Z=94
x200004_g_SceneID=2
x200004_g_AccomplishNPC_Name="Ðoàn Chính Thu¥n"

--ÈÎÎñÃû
x200004_g_MissionName="Ác Quán Mãn Doanh"
x200004_g_MissionInfo="#{Mis_juqing_0004}"
x200004_g_MissionTarget="#{Mis_juqing_Tar_0004}"
x200004_g_MissionComplete="  Này, này, ta l§p tÑc thông báo vi®c này cho hoàng huynh"

x200004_g_MoneyBonus=7200
x200004_g_exp=6900

x200004_g_RadioItemBonus={{id=10414001 ,num=1},{id=10414002,num=1},{id=10414003,num=1},{id=10414004,num=1}}

x200004_g_Custom	= { {id="Ðã tìm ðßþc Ðoàn Chính Thu¥n",num=1} }

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200004_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200004_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200004_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200004_g_Name then
			x200004_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200004_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200004_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
			AddText(sceneId,x200004_g_MissionName)
			AddText(sceneId,x200004_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200004_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200004_g_MoneyBonus )
			for i, item in x200004_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200004_g_ScriptId,x200004_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200004_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200004_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200004_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200004_g_Name then
			AddNumText(sceneId, x200004_g_ScriptId,x200004_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200004_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200004_g_Name then
			AddNumText(sceneId,x200004_g_ScriptId,x200004_g_MissionName,1,-1);
		end
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200004_CheckAccept( sceneId, selfId )
	--C¥n 3c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) < 20 then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200004_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x200004_OnAccept( sceneId, selfId, targetId )
	if x200004_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200004_g_MissionId, x200004_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ác Quán Mãn Doanh",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200004_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x200004_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200004_g_MissionId )
--	--CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200004_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200004_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200004_g_MissionName)
		AddText(sceneId,x200004_g_MissionComplete)
		AddMoneyBonus( sceneId, x200004_g_MoneyBonus )
		for i, item in x200004_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200004_g_ScriptId,x200004_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200004_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200004_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200004_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200004_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
  	BeginAddItem(sceneId)
		for i, item in x200004_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret < 1 then
			--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Không th¬ Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x200004_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200004_g_exp)

		DelMission( sceneId,selfId,  x200004_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x200004_g_MissionId )
		Msg2Player( sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Ác Quán Mãn Doanh",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200002), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200004_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200004_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200004_OnItemChanged( sceneId, selfId, itemdataId )
end
