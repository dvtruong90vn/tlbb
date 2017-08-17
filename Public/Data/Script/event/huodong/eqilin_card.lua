--»î¶¯¡ª¡ª
--VIPÍæ¼ÒÔùËÍ÷è÷ë»î¶¯

x808070_g_ScriptId = 808070
--x808070_g_QiLinPrize_Active = 0   --Ä¬ÈÏ¹Ø±Õ

--x808070_g_ActiveStartTime = 7154	 --20070604
--x808070_g_ActiveEndTime = 7171		 --20070621

function x808070_QiLinCard(sceneId,selfId,targetId)
	--Ðúng·ñÒÑ¾­Lînh ¹ýVIP÷è÷ë½±Àø
	--if GetMissionFlag( sceneId, selfId, MF_ActiveQiLinCard ) == 1 then
	--	x808070_NotifyFailBox( sceneId, selfId, targetId, "    Ngß½i ðã lînh r°i, không th¬ lînh tiªp." )
	--	return
	--end
	
	--Ðúng·ñ´óÓÚ20c¤p
	--if GetLevel( sceneId, selfId ) < 20 then
	--	x808070_NotifyFailBox( sceneId, selfId, targetId, "    ÇëÄútoÕ ðµ µÈc¤p³¬¹ý20c¤pºóÔÙÀ´Lînh »î¶¯½±Àø." )
	--	return
	--end
	
	--¼ì²é±³°ü¿Õ¼ä
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		x808070_NotifyFailBox( sceneId, selfId, targetId, "    Thñc xin l²i, ngài cûng không ðü không gian ô thú lan, thïnh sØa sang lÕi sau lÕi ðªn lînh." )
		return
	end

	--´ò¿ªÊäÈë¿¨ºÅ½çÃæ
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2008 )		
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x808070_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¼ì²é»î¶¯Ê±¼ä
--**********************************
--function x808070_CheckRightTime()
--	local DayTime = GetDayTime()
--	--PrintNum(DayTime)
--	if DayTime < x808070_g_ActiveStartTime then
--		x808070_g_QiLinPrize_Active = 0
--		return 0    --´ËÇ°·Ç»î¶¯Ê±¼ä
--	end
--
--	if DayTime > x808070_g_ActiveEndTime then
--  	x808070_g_QiLinPrize_Active = 0
--  	return 0    --´Ëºó»î¶¯ÒÑ¾­½áÊø
--	end
--
--	x808070_g_QiLinPrize_Active = 1
--	return 1
--end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808070_OnEnumerate( sceneId, selfId, targetId )
    --x808070_CheckRightTime()
	  --if 1 == x808070_g_QiLinPrize_Active then
			AddNumText(sceneId, x808070_g_ScriptId, "Lînh hÕnh v§n tinh tß·ng", 1, 1 )
    --end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808070_OnDefaultEvent( sceneId, selfId, targetId )
	--x808070_CheckRightTime()
	--if 1 ~= x808070_g_QiLinPrize_Active then
	--	return
	--end

	local TextNum = GetNumText()

	if TextNum == 1 then
		x808070_QiLinCard( sceneId, selfId, targetId )
	end
end
