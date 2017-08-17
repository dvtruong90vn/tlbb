--x212144_g_ScriptId = 212144
-- Ãð´Ë³¯Ê³

-- ½»5GÑ§¼¼ÄÜ

--MisDescBegin

--½Å±¾ºÅ
x212144_g_ScriptId = 212144

--Tiªp thøÈÎÎñNPCÊôÐÔ
x212144_g_Position_X=217
x212144_g_Position_Z=255
x212144_g_SceneID=2
x212144_g_AccomplishNPC_Name="Vß½ng Thi«u"

--ÈÎÎñºÅ
x212144_g_MissionId = 966

--Ç°ÐøÈÎÎñ
x212144_g_PreMissionId = 965

--Ä¿±êNPC
x212144_g_Name	="Vß½ng Thi«u"

--ÈÎÎñ¹éÀà
x212144_g_MissionKind = 20

--ÐÆng c¤p nhi®m vø 
x212144_g_MissionLevel = 30

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x212144_g_IfMissionElite = 0

--ÈÎÎñÃû
x212144_g_MissionName="Di®t thØ tri«u thñc"
x212144_g_MissionInfo="#{Mis_shaolin_966}"
x212144_g_MissionTarget="  Mang 5 vàng ðªn Tu Vån Ðài · thành ÐÕi Lý#W giao cho #RVß½ng Thi«u #W#{_INFOAIM217,255,2, Vß½ng Thi«u}. "
x212144_g_MissionContinue="  Các hÕ quyªt ð¸nh mu¯n h÷c kÛ nång \"Di®t ThØ Tri«u Thñc\" không ?"
x212144_g_MissionComplete="  Nhìn kî ðây, chiêu này s¨ truy«n cho ngß½i, sau này phäi sØ døng cho t¯t nhé."

x212144_g_MoneyBonus=1000
x212144_g_exp=2000

--x212144_g_Custom	= { {id="",num=1} }
x212144_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212144_OnDefaultEvent( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x212144_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212144_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212144_g_Name then
			x212144_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212144_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x212144_g_MissionName)
			AddText(sceneId,x212144_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212144_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x212144_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212144_g_ScriptId,x212144_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212144_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212144_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212144_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212144_g_Name then
			AddNumText(sceneId, x212144_g_ScriptId,x212144_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212144_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x212144_g_ScriptId,x212144_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x212144_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212144_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x212144_g_MissionLevel then
		return 0
	end
	
	-- ½ÓÈÎÎñtoÕ ðµ Íæ¼Ò±ØÐëÐúngÉÙÁîÅÉtoÕ ðµ 
	if GetMenPai(sceneId, selfId) ~= 0  then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñtoÕ ðµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x212144_g_PreMissionId) < 1  then
		return 0
	end
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x212144_OnAccept( sceneId, selfId, targetId )
	if x212144_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x212144_g_MissionId, x212144_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#Y Tiªp nh§n nhi®m vø: Di®t ThØ Tri«u Thñc",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212144_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x212144_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x212144_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x212144_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x212144_g_MissionName)
		AddText(sceneId,x212144_g_MissionComplete)
		AddMoneyBonus( sceneId, x212144_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x212144_g_ScriptId,x212144_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212144_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212144_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	if GetMoney(sceneId, selfId) < 50000   then
		return 2
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x212144_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x212144_CheckSubmit( sceneId, selfId, selectRadioId ) == 2 then
    BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ không có ðü ti«n m£t ð¬ hoàn thành nhi®m vø này.")
    EndEvent( )
    DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if x212144_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		-- ¿Û³ýÍæ¼Ò5cáiG
		if CostMoney(sceneId, selfId, 50000)  == 1  then
			--Ìí¼ÓÈÎÎñ½±Àø
			AddMoney(sceneId,selfId,x212144_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,x212144_g_exp)
			
			-- ¼ì²âÍæ¼ÒÐúng²»Ðúng¶ëÃ¼ÅÉtoÕ ðµ µÜ×Ó
			if GetMenPai(sceneId, selfId) == 0  then
				-- ¸øÍæ¼ÒÔö¼Ó304ºÅ¼¼ÄÜ
				AddSkill(sceneId, selfId, 304)
		    BeginEvent(sceneId)
					AddText(sceneId,"Các hÕ ðã h÷c ðßþc kÛ nång \"Di®t ThØ Tri«u Thñc\"")
		    EndEvent( )
		    DispatchMissionTips(sceneId,selfId)
			end
			
			DelMission( sceneId,selfId,  x212144_g_MissionId )
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
			MissionCom( sceneId,selfId,  x212144_g_MissionId )
			Msg2Player(  sceneId, selfId,"#Y Hoàn thành nhi®m vø: Di®t ThØ Tri«u Thñc",MSG2PLAYER_PARA )
			
			-- µ÷ÓÃºóÐøÈÎÎñ
			CallScriptFunction((200087), "OnDefaultEvent",sceneId, selfId, targetId )
		
		else
	    BeginEvent(sceneId)
				AddText(sceneId,"Kh¤u tr× ti«n m£t có sai sót")
	    EndEvent( )
	    DispatchMissionTips(sceneId,selfId)
			return
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212144_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212144_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212144_OnItemChanged( sceneId, selfId, itemdataId )
	
end
