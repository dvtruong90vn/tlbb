--°×ÂíËÂÈÎÎñ
--ÕÒÈË
--MisDescBegin
--½Å±¾ºÅ
x230012_g_ScriptId = 230012

--Ç°ÌáÈÎÎñ
--g_MissionIdPre =

--ÈÎÎñºÅ
x230012_g_MissionId = 4011

--Møc tiêu nhi®m vønpc
x230012_g_Name	="Trí Thanh ĞÕi Sß"

--ÈÎÎñ¹éÀà
x230012_g_MissionKind = 1

--ĞÆng c¤p nhi®m vø 
x230012_g_MissionLevel = 10000

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x230012_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x230012_g_IsMissionOkFail = 0		--±äÁ¿toÕ ğµ µÚ0Î»

--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ği¬mµ½toÕ ğµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x230012_g_MissionName="Tu hành BÕch Mã Tñ"
x230012_g_MissionInfo="#{event_xunhuan_0003}"  --ÈÎÎñÃèÊö
x230012_g_MissionTarget="#{event_xunhuan_0004}"		--Møc tiêu nhi®m vø
x230012_g_ContinueInfo="A Di Ğà Ph§t... #rThiªu hi®p phäi chång ğã thông qua Trân Long KÏ Cuµc ?"		--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x230012_g_MissionComplete="Thi®n tai thi®n tai, thiªu hi®p vì ngß¶i hào hi®p, thß½ng yêu bách tính, ngày sau s¨ thành công"					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

--¿ØÖÆ½Å±¾
x230012_g_ControlScript=230000

--ÈÎÎñ½±Àø


--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x230012_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x230012_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x230012_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x230012_g_MissionName )
			AddText( sceneId, x230012_g_ContinueInfo )
		EndEvent( )
		bDone = x230012_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x230012_g_ScriptId, x230012_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x230012_CheckAccept( sceneId, selfId ) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x230012_g_MissionName )
			AddText( sceneId, x230012_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}" )
			AddText( sceneId, x230012_g_MissionTarget )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x230012_g_ScriptId, x230012_g_MissionId )
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x230012_OnEnumerate( sceneId, selfId, targetId )
 	if GetName( sceneId, targetId ) ~= x230012_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x230012_g_MissionId ) > 0 or x230012_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x230012_g_ScriptId, x230012_g_MissionName,3,-1 )
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x230012_CheckAccept( sceneId, selfId )
	if CallScriptFunction( x230012_g_ControlScript, "CheckAccept", sceneId, selfId ) == 1 then
		--¼ì²âÍæ¼ÒĞúng·ñ·ûºÏTiªp thøÈÎÎñtoÕ ğµ Ìõ¼ş
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x230012_OnAccept( sceneId, selfId, targetId )
 	if GetName( sceneId, targetId ) ~= x230012_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	CallScriptFunction( x230012_g_ControlScript, "OnAccept", sceneId, selfId, targetId, x230012_g_ScriptId )

	if IsHaveMission( sceneId, selfId, x230012_g_MissionId ) <= 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x230012_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, 7, 1 )						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ7Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)

	--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		AddText( sceneId, x230012_g_MissionInfo )
		AddText( sceneId,"#r        Ngß¶i nh§n nhi®m vø: BÕch Mã Tñ tu hành" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--·ÅÆú
--**********************************
function x230012_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x230012_g_ControlScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌĞø
--**********************************
function x230012_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
	BeginEvent( sceneId )
	AddText( sceneId, x230012_g_MissionName )
	AddText( sceneId, x230012_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x230012_g_ScriptId, x230012_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x230012_CheckSubmit( sceneId, selfId )
	return CallScriptFunction( x230012_g_ControlScript, "CheckSubmit", sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x230012_OnSubmit( sceneId, selfId, targetId, selectRadioId )
 	if GetName( sceneId, targetId ) ~= x230012_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	CallScriptFunction( x230012_g_ControlScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x230012_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x230012_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x230012_OnItemChanged( sceneId, selfId, itemdataId )
end
