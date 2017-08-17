--»î¶¯¡ª¡ª
--Íø¾Û»î¶¯¿¨

x808077_g_ScriptId						= 808077
x808077_g_SportsPrize_Active	= 0			--Ä¬ÈÏ¹Ø±Õ

x808077_g_ActiveStartTime			= 7168	--20070618


function x808077_SportsCard(sceneId,selfId,targetId)
	--Ðúng·ñÒÑ¾­Lînh ¹ýÌåÓý¾º²Â½±Àø
	--if GetMissionFlag( sceneId, selfId, MF_ActiveJuCard ) == 1 then
	--	x808077_NotifyFailBox( sceneId, selfId, targetId, "    Ngß½i ðã lînh r°i, không th¬ lînh tiªp." )
	--	return
	--end
	
	--Ðúng·ñ´óÓÚ20c¤p
	--if GetLevel( sceneId, selfId ) < 5 then
	--	x808077_NotifyFailBox( sceneId, selfId, targetId, "    ÇëÄútoÕ ðµ µÈc¤p³¬¹ý5c¤pºóÔÙÀ´Lînh »î¶¯½±Àø." )
	--	return
	--end
	
	--¼ì²é±³°ü¿Õ¼ä
	--local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	--if( FreeSpace < 1 ) then
	--	x808077_NotifyFailBox( sceneId, selfId, targetId, "    Thñc xin l²i, ngài cûng không ðü không gian ô thú lan, thïnh sØa sang lÕi sau lÕi ðªn lînh." )
	--	return
	--end

	--´ò¿ªÊäÈë¿¨ºÅ½çÃæ
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2007950 )		
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x808077_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¼ì²é»î¶¯Ê±¼ä
--**********************************
function x808077_CheckRightTime()
	--local DayTime = GetDayTime()
	--PrintNum(DayTime)
	--if DayTime < x808077_g_ActiveStartTime then
	--	x808077_g_SportsPrize_Active = 0
	--	return 0    --´ËÇ°·Ç»î¶¯Ê±¼ä
	--end

--if DayTime > x808077_g_ActiveEndTime then
--	x808077_g_SportsPrize_Active = 0
--	return 0    --´Ëºó»î¶¯ÒÑ¾­½áÊø
--end

	x808077_g_SportsPrize_Active = 1
	return 1
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808077_OnEnumerate( sceneId, selfId, targetId )
    x808077_CheckRightTime()
	  if 1 == x808077_g_SportsPrize_Active then
			AddNumText(sceneId, x808077_g_ScriptId, "#{CB_XUBAO_LINGQU_1}", 1, 1 )
    end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808077_OnDefaultEvent( sceneId, selfId, targetId )
	x808077_CheckRightTime()
	if 1 ~= x808077_g_SportsPrize_Active then
		return
	end

	local TextNum = GetNumText()

	if TextNum == 1 then
		x808077_SportsCard( sceneId, selfId, targetId )
	end
end
