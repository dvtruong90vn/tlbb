-- 200088
-- ËÍÐÅÈÎÎñ 

--MisDescBegin

--½Å±¾ºÅ
x200088_g_ScriptId = 200088

--ÈÎÎñºÅ
x200088_g_MissionId = 18

--Ç°ÐøÈÎÎñ
x200088_g_PreMissionId = 17

--Ä¿±êNPC
x200088_g_Name	="T× Kinh Lôi"

--ÈÎÎñ¹éÀà
x200088_g_MissionKind = 47

--ÐÆng c¤p nhi®m vø 
x200088_g_MissionLevel = 40

--Tiªp thøÈÎÎñNPCÊôÐÔ
x200088_g_Position_X=307
x200088_g_Position_Z=343
x200088_g_SceneID=0
x200088_g_AccomplishNPC_Name="T× Kinh Lôi"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200088_g_IfMissionElite = 0

--ÈÎÎñÃû
x200088_g_MissionName="Cùng tiªn, cùng lùi"
x200088_g_MissionInfo="#{Mis_juqing_0018}"
x200088_g_MissionTarget="#{Mis_juqing_Tar_0018}"
x200088_g_MissionComplete="  Th§t không ng¶ Ch¤n Nam Vß½ng lÕi không màng ðªn ðÕi nghîa dân tµc, th§t khiªn ngß¶i ta ðau lòng"

x200088_g_MoneyBonus=5400
x200088_g_exp=5400

x200088_g_Custom	= { {id="Ðã tìm ðßþc T× Kinh Lôi",num=1} }
x200088_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200088_OnDefaultEvent( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200088_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200088_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200088_g_Name then
			x200088_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200088_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200088_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200088_g_MissionName)
				AddText(sceneId,x200088_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200088_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200088_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200088_g_ScriptId,x200088_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200088_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200088_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200088_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200088_g_Name then
			AddNumText(sceneId, x200088_g_ScriptId,x200088_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200088_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200088_g_Name then
			AddNumText(sceneId,x200088_g_ScriptId,x200088_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200088_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200088_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200088_g_MissionLevel then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñtoÕ ðµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x200088_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200088_OnAccept( sceneId, selfId, targetId )
	if x200088_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	-- C¥n ÍøÍæ¼ÒÉíÉÏ¶ªmµt cáiÎïÆ·
	BeginAddItem( sceneId )
		AddItem( sceneId, 40001006, 1 )
	local ret = EndAddItem( sceneId, selfId )

	if ret <= 0 then 
		--ÌáÊ¾²»ÄÜ½ÓÈÎÎñÁË
		Msg2Player(  sceneId, selfId,"#Yhành Trang nhi®m vø#W cüa các hÕ ðã ð¥y", MSG2PLAYER_PARA )
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		
		
		local ret = AddMission( sceneId,selfId, x200088_g_MissionId, x200088_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
			return
		end
		
		AddItemListToHuman(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Cùng tiªn, cùng lùi",MSG2PLAYER_PARA )

		local misIndex = GetMissionIndexByID(sceneId,selfId,x200088_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	end
	
end

--**********************************
--·ÅÆú
--**********************************
function x200088_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200088_g_MissionId )
	DelItem( sceneId, selfId, 40001006, 1 )	

--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200088_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200088_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200088_g_MissionName)
		AddText(sceneId,x200088_g_MissionComplete)
		AddMoneyBonus( sceneId, x200088_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200088_g_ScriptId,x200088_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200088_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200088_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200088_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200088_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		-- É¾³ýÈÎÎñµÀ¾ß
		DelItem( sceneId, selfId, 40001006, 1 )	
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x200088_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200088_g_exp)
		DelMission( sceneId,selfId,  x200088_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x200088_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Cùng tiªn, cùng lùi",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200089), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200088_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200088_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200088_OnItemChanged( sceneId, selfId, itemdataId )
end
