-- ÓÎÉ½ÍæË®

--MisDescBegin

-- ½Å±¾ºÅ
x228904_g_ScriptId = 228904

-- Ä¿±ê NPC
x228904_g_Position_X = 217
x228904_g_Position_Z = 255
x228904_g_SceneID = 2
x228904_g_AccomplishNPC_Name = "Vß½ng Thi«u"

-- ÈÎÎñºÅ
x228904_g_MissionId = 949

-- Ç°ÐøÈÎÎñ
x228904_g_PreMissionId = 948

-- Tiªp thøÈÎÎñ NPC ÊôÐÔ
x228904_g_Name = "Chüng Thª Hoành"

--ÈÎÎñ¹éÀà
x228904_g_MissionKind = 28

--ÐÆng c¤p nhi®m vø 
x228904_g_MissionLevel = 30

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x228904_g_IfMissionElite = 0

--ÈÎÎñÃû
x228904_g_MissionName = "Du s½n ngoÕn thüy"
x228904_g_MissionInfo = "#{TIANSHAN_SKILL_06}"
x228904_g_MissionTarget = "    Mang 5 vàng ðªn Tu Vån Ðài · thành ÐÕi Lý#W giao cho #RVß½ng Thi«u #W#{_INFOAIM217,255,2, Vß½ng Thi«u}."
x228904_g_MissionContinue = "#{TIANSHAN_SKILL_07}"
x228904_g_MissionComplete = "#{TIANSHAN_SKILL_08}"

x228904_g_MoneyCost = 50000

x228904_g_MoneyBonus = 1000
x228904_g_exp = 2000

x228904_g_IsMissionOkFail = 0					-- Ðúng·ñHoàn t¤t nhi®m vøtoÕ ðµ ±ê¼ÇÎ»
x228904_g_IsFindTarget = 1						-- Ðúng·ñÕÒµ½ÍõÉØ±ê¼ÇÎ»

--MisDescEnd

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x228904_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x228904_g_Name then
		return 0
	end

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, x228904_g_MissionId ) > 0 then
		return
	elseif IsHaveMission( sceneId, selfId, x228904_g_MissionId ) > 0 then
		if GetName( sceneId, targetId ) == x228904_g_AccomplishNPC_Name then
			local misIndex = GetMissionIndexByID( sceneId, selfId, x228904_g_MissionId )
			SetMissionByIndex( sceneId, selfId, misIndex, x228904_g_IsMissionOkFail, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x228904_g_IsFindTarget, 1 )
			x228904_OnContinue( sceneId, selfId, targetId )
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x228904_CheckAccept( sceneId, selfId ) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x228904_g_MissionName )
			AddText( sceneId, x228904_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}#r" )
			AddText( sceneId, x228904_g_MissionTarget )
			AddText( sceneId, "#{M_SHOUHUO}#r" )
			AddMoneyBonus( sceneId, x228904_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x228904_g_ScriptId, x228904_g_MissionId )
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x228904_OnEnumerate( sceneId, selfId, targetId )
	if IsMissionHaveDone( sceneId, selfId, x228904_g_PreMissionId ) <= 0 then
		return
	end

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, x228904_g_MissionId ) > 0 then
		return
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission( sceneId, selfId, x228904_g_MissionId ) > 0 then
		if GetName( sceneId, targetId ) == x228904_g_AccomplishNPC_Name then
			AddNumText( sceneId, x228904_g_ScriptId, x228904_g_MissionName, 2, -1 )
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif GetName( sceneId, targetId ) == x228904_g_Name and GetLevel( sceneId, selfId ) >= x228904_g_MissionLevel then
		AddNumText( sceneId, x228904_g_ScriptId, x228904_g_MissionName, 1, -1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x228904_CheckAccept( sceneId, selfId )
	if IsMissionHaveDone( sceneId, selfId, x228904_g_PreMissionId ) <= 0 then
		return 0
	end

	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if IsMissionHaveDone( sceneId, selfId, x228904_g_MissionId ) > 0 then
		return 0
	end

	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x228904_g_MissionLevel then
		return 0
	end

	if IsHaveMission( sceneId, selfId, x228904_g_MissionId ) > 0 then
		return 0
	end

	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x228904_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x228904_g_Name then
		return 0
	end

	if x228904_CheckAccept( sceneId, selfId ) < 1 then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId, selfId, x228904_g_MissionId, x228904_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		x228904_NotifyFailBox( sceneId, selfId, targetId, "    #YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" )
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x228904_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x228904_g_IsMissionOkFail, 0 )	-- ³õÊ¼»¯ÈÎÎñÍê³É±ê¼Ç
	SetMissionByIndex( sceneId, selfId, misIndex, x228904_g_IsFindTarget, 0 )		-- ³õÊ¼»¯±ê¼Ç

	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	x228904_NotifyFailTips( sceneId, selfId, "Các hÕ ðã nh§n nhi®m vø: " .. x228904_g_MissionName )
	Msg2Player( sceneId, selfId, "#YTiªp nh§n" .. x228904_g_MissionName, MSG2PLAYER_PARA )
end

--**********************************
--·ÅÆú
--**********************************
function x228904_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	DelMission( sceneId, selfId, x228904_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x228904_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent( sceneId )
		AddText( sceneId, x228904_g_MissionName )
		AddText( sceneId, x228904_g_MissionContinue )
		AddMoneyBonus( sceneId, x228904_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo( sceneId, selfId, targetId, x228904_g_ScriptId, x228904_g_MissionId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x228904_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x228904_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x228904_g_MissionId )				--  ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	bRet = GetMissionParam( sceneId, selfId, misIndex, x228904_g_IsMissionOkFail )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x228904_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x228904_g_AccomplishNPC_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if x228904_CheckSubmit( sceneId, selfId ) ~= 1 then
		return
	end

	if GetMoney( sceneId, selfId ) < x228904_g_MoneyCost then
		x228904_NotifyFailBox( sceneId, selfId, targetId, "    S¯ ti«n các hÕ mang theo không ðü, không th¬ hoàn thành nhi®m vø." )
		return
	end

	--¿ÛÇ®
	CostMoney( sceneId, selfId, x228904_g_MoneyCost )

	--Ìí¼ÓÈÎÎñ½±Àø
	AddMoney( sceneId, selfId, x228904_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x228904_g_exp )

	DelMission( sceneId, selfId, x228904_g_MissionId )
	--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
	MissionCom( sceneId, selfId, x228904_g_MissionId )

	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngThiên S½nÅÉtoÕ ðµ µÜ×Ó
	if GetMenPai( sceneId, selfId ) == MP_TIANSHAN then
		-- ¸øÍæ¼ÒÔö¼Ó514ºÅ¼¼ÄÜ
		AddSkill( sceneId, selfId, 514 )
		x228904_NotifyFailTips( sceneId, selfId, "Các hÕ ðã h÷c ðßþc kÛ nång \"Li­u Ám Hoa Minh\"." )
	end

	x228904_NotifyFailBox( sceneId, selfId, targetId, x228904_g_MissionComplete )
	Msg2Player( sceneId, selfId, "#YHoàn thành nhi®m vø: " .. x228904_g_MissionName, MSG2PLAYER_PARA )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x228904_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x228904_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x228904_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x228904_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x228904_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
