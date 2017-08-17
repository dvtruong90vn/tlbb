--Ë®ÀÎÈÎÎñ
--ÕÒÈË

--MisDescBegin
--½Å±¾ºÅ
x232001_g_ScriptId	= 232001

--Tiªp thøÈÎÎñNPCÊôĞÔ
x232001_g_Position_X=66.5252
x232001_g_Position_Z=76.7254
x232001_g_SceneID=4
x232001_g_AccomplishNPC_Name="H° Diên Khánh"

--ÈÎÎñºÅ
x232001_g_MissionId	= 1212
--Møc tiêu nhi®m vønpc
x232001_g_Name			= "H° Diên Báo"
--ÈÎÎñ¹éÀà
x232001_g_MissionKind			= 1
--ĞÆng c¤p nhi®m vø 
x232001_g_MissionLevel		= 10000
--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x232001_g_IfMissionElite	= 0
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x232001_g_IsMissionOkFail	= 0		--±äÁ¿toÕ ğµ µÚ0Î»
--ÈÎÎñÎÄ±¾ÃèÊö
x232001_g_MissionName			= "Bình ğ¸nh ThuÖ lao phän loÕn"
--ÈÎÎñÃèÊö
x232001_g_MissionInfo			= "#{event_xunhuan_0005}"
--Møc tiêu nhi®m vø
x232001_g_MissionTarget		= "  Ği vào Thái H° thüy trÕi tìm H° Diên Khánh#{_INFOAIM67,77,4,H° Diên Khánh}."
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x232001_g_ContinueInfo		= "  Thiªu hi®p ğã hoàn t¤t nhi®m vø ThuÖ lao chßa?"
--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x232001_g_MissionComplete	= "  R¤t cäm tÕ sñ giúp ğŞ cüa các hÕ, bÕo ğµng cüa phÕm nhân trong ThuÖ lao ğã l¡ng"
--¿ØÖÆ½Å±¾
x232001_g_ControlScript		= 232000
--MisDescEnd


--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x232001_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x232001_g_Name then
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x232001_g_MissionId ) > 0 then

		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x232001_g_MissionName )
			AddText( sceneId, x232001_g_ContinueInfo )
		EndEvent( )
		local	bDone	= x232001_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x232001_g_ScriptId, x232001_g_MissionId, bDone )

	--Î´½Ó,ÇÒThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x232001_CheckAccept( sceneId, selfId ) > 0 then

		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x232001_g_MissionName )
			AddText( sceneId, x232001_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}" )
			AddText( sceneId, x232001_g_MissionTarget )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x232001_g_ScriptId, x232001_g_MissionId )

	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x232001_OnEnumerate( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
 	if LuaFnGetName( sceneId, targetId ) ~= x232001_g_Name then
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x232001_g_MissionId ) > 0 or x232001_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x232001_g_ScriptId, x232001_g_MissionName,3,-1 )
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x232001_CheckAccept( sceneId, selfId )

	if CallScriptFunction( x232001_g_ControlScript, "CheckAccept", sceneId, selfId ) == 1 then
		--¼ì²âÍæ¼ÒĞúng·ñ·ûºÏTiªp thøÈÎÎñtoÕ ğµ Ìõ¼ş
		return 1
	else
		return 0
	end

end

--**********************************
--Tiªp thø
--**********************************
function x232001_OnAccept( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
 	if LuaFnGetName( sceneId, targetId ) ~= x232001_g_Name then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	CallScriptFunction( x232001_g_ControlScript, "OnAccept", sceneId, selfId, targetId, x232001_g_ScriptId )

	if IsHaveMission( sceneId, selfId, x232001_g_MissionId ) <= 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x232001_g_MissionId )
	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ6Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
	SetMissionByIndex( sceneId, selfId, misIndex, 6, 1 )

	--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		AddText( sceneId, x232001_g_MissionInfo )
		AddText( sceneId, "#rNgß½i nh§n nhi®m vø: #r  "..x232001_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--·ÅÆú
--**********************************
function x232001_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x232001_g_ControlScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌĞø
--**********************************
function x232001_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
	BeginEvent( sceneId )
	AddText( sceneId, x232001_g_MissionName )
	AddText( sceneId, x232001_g_MissionComplete )
	EndEvent()
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x232001_g_ScriptId, x232001_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x232001_CheckSubmit( sceneId, selfId )
	return CallScriptFunction( x232001_g_ControlScript, "CheckSubmit", sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x232001_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
 	if LuaFnGetName( sceneId, targetId ) ~= x232001_g_Name then
		return
	end
	CallScriptFunction( x232001_g_ControlScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
function x232001_OnKillObject( sceneId, selfId, objdataId , objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x232001_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x232001_OnItemChanged( sceneId, selfId, itemdataId )
end
