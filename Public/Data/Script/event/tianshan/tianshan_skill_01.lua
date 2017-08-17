-- ×ÔÁ¢ÃÅ»§

-- ÕÒµ½ÍõÉØ

--MisDescBegin

-- ½Å±¾ºÅ
x228902_g_ScriptId = 228902

-- Ä¿±ê NPC
x228902_g_Position_X = 217
x228902_g_Position_Z = 255
x228902_g_SceneID = 2
x228902_g_AccomplishNPC_Name = "Vß½ng Thi«u"

-- ÈÎÎñºÅ
x228902_g_MissionId = 944

-- Ç°ÐøÈÎÎñ
-- g_PreMissionId = -1

-- Tiªp thøÈÎÎñ NPC ÊôÐÔ
x228902_g_Name = "Lan Kiªm"

--ÈÎÎñ¹éÀà
x228902_g_MissionKind = 28

--ÐÆng c¤p nhi®m vø 
x228902_g_MissionLevel = 30

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x228902_g_IfMissionElite = 0

--ÈÎÎñÃû
x228902_g_MissionName = "Tñ l§p môn hµ"
x228902_g_MissionInfo = "#{TIANSHAN_SKILL_01}"
x228902_g_MissionTarget = "    TÕi #Gthành ÐÕi Lý Tu Vån Ðài#W tìm #RVß½ng Thi«u #W#{_INFOAIM217,255,2,Vß½ng Thi«u}."
x228902_g_MissionContinue = "    "
x228902_g_MissionComplete = "#{TIANSHAN_SKILL_02}"

x228902_g_MoneyBonus = 1000
x228902_g_exp = 2000

x228902_g_IsMissionOkFail = 0					-- Ðúng·ñHoàn t¤t nhi®m vøtoÕ ðµ ±ê¼ÇÎ»
x228902_g_IsFindTarget = 1						-- Ðúng·ñÕÒµ½ÍõÉØ±ê¼ÇÎ»
x228902_g_Custom = { { id = "Ðã tìm ðßþc Vß½ng Thi«u", num = 1 } }

--MisDescEnd

x228902_g_XinfaDemand = {
	{ id = 43, lvl = 10 },				-- LinhðÕ¹¦ -- zchw
	{ id = 44, lvl = 10 },				-- Ð¡ÎÞÏà¹¦
	{ id = 45, lvl = 10 },				-- ¹êÏ¢¹¦
	{ id = 46, lvl = 10 },				-- Thiên S½nÈÚÑ©¹¦
	{ id = 47, lvl = 10 },				-- Thiên S½nÕÛÃ·ÊÖ
	{ id = 48, lvl = 10 },				-- Thiên S½nÁùÑôÕÆÐÄ·¨
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x228902_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, x228902_g_MissionId ) > 0 then
		return
	elseif IsHaveMission( sceneId, selfId, x228902_g_MissionId ) > 0 then
		if GetName( sceneId, targetId ) == x228902_g_AccomplishNPC_Name then
			local misIndex = GetMissionIndexByID( sceneId, selfId, x228902_g_MissionId )
			SetMissionByIndex( sceneId, selfId, misIndex, x228902_g_IsMissionOkFail, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x228902_g_IsFindTarget, 1 )
			x228902_OnContinue( sceneId, selfId, targetId )
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x228902_CheckAccept( sceneId, selfId ) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x228902_g_MissionName )
			AddText( sceneId, x228902_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}#r" )
			AddText( sceneId, x228902_g_MissionTarget )
			AddText( sceneId, "#{M_SHOUHUO}#r" )
			AddMoneyBonus( sceneId, x228902_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x228902_g_ScriptId, x228902_g_MissionId )
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x228902_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, x228902_g_MissionId ) > 0 then
		return
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission( sceneId, selfId, x228902_g_MissionId ) > 0 then
		if GetName( sceneId, targetId ) == x228902_g_AccomplishNPC_Name then
			AddNumText( sceneId, x228902_g_ScriptId, x228902_g_MissionName, 2, -1 )
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif GetName( sceneId, targetId ) == x228902_g_Name and GetLevel( sceneId, selfId ) >= x228902_g_MissionLevel then
		AddNumText( sceneId, x228902_g_ScriptId, x228902_g_MissionName, 1, -1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x228902_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if IsMissionHaveDone( sceneId, selfId, x228902_g_MissionId ) > 0 then
		return 0
	end

	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x228902_g_MissionLevel then
		return 0
	end

	if IsHaveMission( sceneId, selfId, x228902_g_MissionId ) > 0 then
		return 0
	end

	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x228902_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x228902_g_Name then
		return 0
	end

	if x228902_CheckAccept( sceneId, selfId ) < 1 then
		return
	end

	for i, xinfa in x228902_g_XinfaDemand do										-- ¼ì²éÐÄ·¨c¤p±ðÐúng·ñ×ã¹»
		if HaveXinFa( sceneId, selfId, xinfa.id ) < xinfa.lvl then
			x228902_NotifyFailBox( sceneId, selfId, targetId, "    Cüa ngß½i #{_XINFA" .. xinfa.id
				.. "} tâm pháp tu luy®n ít nh¤t phäi ðªn" .. xinfa.lvl .. " c¤p." )
			return
		end
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId, selfId, x228902_g_MissionId, x228902_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		x228902_NotifyFailBox( sceneId, selfId, targetId, "    #YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" )
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x228902_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x228902_g_IsMissionOkFail, 0 )	-- ³õÊ¼»¯ÈÎÎñÍê³É±ê¼Ç
	SetMissionByIndex( sceneId, selfId, misIndex, x228902_g_IsFindTarget, 0 )		-- ³õÊ¼»¯±ê¼Ç

	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	x228902_NotifyFailTips( sceneId, selfId, "Các hÕ ðã nh§n nhi®m vø: " .. x228902_g_MissionName )
	Msg2Player( sceneId, selfId, "#YTiªp nh§n " .. x228902_g_MissionName, MSG2PLAYER_PARA )
end

--**********************************
--·ÅÆú
--**********************************
function x228902_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	DelMission( sceneId, selfId, x228902_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x228902_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent( sceneId )
		AddText( sceneId, x228902_g_MissionName )
		AddText( sceneId, x228902_g_MissionComplete )
		AddMoneyBonus( sceneId, x228902_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo( sceneId, selfId, targetId, x228902_g_ScriptId, x228902_g_MissionId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x228902_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x228902_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x228902_g_MissionId )				--  ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	bRet = GetMissionParam( sceneId, selfId, misIndex, x228902_g_IsMissionOkFail )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x228902_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x228902_g_AccomplishNPC_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if x228902_CheckSubmit( sceneId, selfId ) ~= 1 then
		return
	end

	--Ìí¼ÓÈÎÎñ½±Àø
	AddMoney( sceneId, selfId, x228902_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x228902_g_exp )

	DelMission( sceneId, selfId, x228902_g_MissionId )
	--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
	MissionCom( sceneId, selfId, x228902_g_MissionId )
	Msg2Player( sceneId, selfId, "#YHoàn thành nhi®m vø: " .. x228902_g_MissionName, MSG2PLAYER_PARA )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x228902_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x228902_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x228902_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x228902_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x228902_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
