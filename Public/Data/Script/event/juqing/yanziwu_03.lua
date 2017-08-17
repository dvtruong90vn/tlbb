-- Ò¹³¤ÃÎ¶à
-- °Ñ¸±±¾ÀïÍ·ÍõÓïæÌtoÕ ðµ ÐÅ ðßa cho Tô Châu³ÇtoÕ ðµ Mµ Dung Phøc

--MisDescBegin
--½Å±¾ºÅ
x200013_g_ScriptId = 200013

--ÈÎÎñºÅ
x200013_g_MissionId = 12

--Ç°ÐøÈÎÎñºÅ
x200013_g_PreMissionId = 11

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
--g_MissionIdPre = 
--Tiªp thøÈÎÎñNPCÊôÐÔ
x200013_g_Position_X=129
x200013_g_Position_Z=77
x200013_g_SceneID=1
x200013_g_AccomplishNPC_Name="Mµ Dung Phøc"

--Ä¿±êNPC
x200013_g_Name	="Mµ Dung Phøc"

--ÈÎÎñ¹éÀà
x200013_g_MissionKind = 48

--ÐÆng c¤p nhi®m vø 
x200013_g_MissionLevel = 30

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200013_g_IfMissionElite = 0

--ÈÎÎñÃû
x200013_g_MissionName="Ðêm dài l¡m mµng"
x200013_g_MissionInfo="#{Mis_juqing_0012}"
x200013_g_MissionTarget="#{Mis_juqing_Tar_0012}"
x200013_g_MissionContinue="  Các hÕ tìm ta có vi®c gì?"
x200013_g_MissionComplete="  Có phäi bi¬u muµi sai ngß½i mang thß t¾i cho ta? H÷ vçn bình an vô sñ chÑ? Ð¬ ta xem thß trß¾c"

x200013_g_MoneyBonus=8100
x200013_g_exp=8000

x200013_g_DemandItem={{id=40001004,num=1}}

--x200013_g_Custom	= { {id="ÒÑÕÒµ½Mµ Dung Phøc",num=1} }
x200013_g_IsMissionOkFail = 0
--MisDescEnd

--x200013_g_MissionItem = 40001004


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200013_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200013_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200013_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200013_g_Name then
			x200013_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200013_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200013_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
			AddText(sceneId,x200013_g_MissionName)
			AddText(sceneId,x200013_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200013_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200013_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200013_g_ScriptId,x200013_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200013_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200013_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200013_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200013_g_Name then
			AddNumText(sceneId, x200013_g_ScriptId,x200013_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200013_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200013_g_Name then
			AddNumText(sceneId,x200013_g_ScriptId,x200013_g_MissionName,1,-1);
		end
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200013_CheckAccept( sceneId, selfId )
	--C¥n 3c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) < 30 then
		return 0
	end
	
	if 	IsMissionHaveDone(sceneId,selfId,x200013_g_PreMissionId) < 1 then
		return 0
	end

	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200013_OnAccept( sceneId, selfId )
	
	-- Ìí¼ÓÈÎÎñµÀ¾ß,"40001004",ÍõÓïæÌtoÕ ðµ ÐÅ
	BeginAddItem( sceneId )
		AddItem( sceneId, 40001004, 1 )
	local ret = EndAddItem( sceneId, selfId )
	
	if ret <= 0 then 
		--ÌáÊ¾²»ÄÜ½ÓÈÎÎñÁË
		Msg2Player(  sceneId, selfId,"#Yhành Trang nhi®m vø#W cüa các hÕ ðã ð¥y", MSG2PLAYER_PARA )
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		local ret = AddMission( sceneId,selfId, x200013_g_MissionId, x200013_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
			return
		end
	
		AddItemListToHuman(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ðêm dài l¡m mµng",MSG2PLAYER_PARA )
		--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200013_g_SignPost.x, x200013_g_SignPost.z, x200013_g_SignPost.tip )
		
		-- ÉèÖÃÈÎÎñÍê³É±ê¼Ç
		
		local misIndex = GetMissionIndexByID(sceneId,selfId,x200013_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		--SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		
	end
end

--**********************************
--·ÅÆú
--**********************************
function x200013_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	DelMission( sceneId, selfId, x200013_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200013_g_SignPost.tip )
	-- É¾³ýÏà¹ØÎïÆ·
	DelItem( sceneId, selfId, 40001004, 1 )	
	
end

--**********************************
--¼ÌÐø
--**********************************
function x200013_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200013_g_MissionName)
		AddText(sceneId,x200013_g_MissionComplete)
		AddMoneyBonus( sceneId, x200013_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200013_g_ScriptId,x200013_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200013_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200013_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200013_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200013_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--É¾³ýÈÎÎñÎïÆ· 
		DelItem( sceneId, selfId, 40001004, 1 )

		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200013_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200013_g_exp)

		DelMission( sceneId, selfId, x200013_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId, selfId, x200013_g_MissionId )
		Msg2Player( sceneId, selfId, "#YHoàn t¤t nhi®m vø#W: Ðêm dài l¡m mµng", MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200085), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200013_OnKillObject( sceneId, selfId, objdataId )
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200013_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200013_OnItemChanged( sceneId, selfId, itemdataId )
	
end

