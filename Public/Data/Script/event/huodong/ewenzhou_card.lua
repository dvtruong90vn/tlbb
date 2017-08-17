--»î¶¯¡ª¡ª
--ÎÂÖİÓÎÏ·ÍÆ¹ã¿¨Æ¬

x808069_g_ScriptId = 808069

function x808069_WenZhouCard(sceneId,selfId,targetId)
	--Ğúng·ñÒÑ¾­Lînh ¹ıÎÂÖİÍÆ¹ã½±Àø
	if GetMissionFlag( sceneId, selfId, MF_ActiveWenZhouCard ) == 1 then
		x808069_NotifyFailBox( sceneId, selfId, targetId, "    Ngß½i ğã lînh r°i, không th¬ lînh tiªp." )
		return
	end
	
	--Ğúng·ñ´óÓÚ20c¤p
	--if GetLevel( sceneId, selfId ) < 20 then
	--	x808069_NotifyFailBox( sceneId, selfId, targetId, "    ÇëÄútoÕ ğµ µÈc¤p³¬¹ı20c¤pºóÔÙÀ´Lînh »î¶¯½±Àø." )
	--	return
	--end
	
	--¼ì²é±³°ü¿Õ¼ä
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		x808069_NotifyFailBox( sceneId, selfId, targetId, "    Thñc xin l²i, ngài cûng không ğü không gian ô thú lan, thïnh sØa sang lÕi sau lÕi ğªn lînh." )
		return
	end

	--´ò¿ªÊäÈë¿¨ºÅ½çÃæ
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2007 )		
end

--**********************************
-- ¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x808069_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x808069_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId, x808069_g_ScriptId, "Lînh thßŞng m· rµng Ôn Châu", 1, 1 )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x808069_OnDefaultEvent( sceneId, selfId, targetId )
	local TextNum = GetNumText()

	if TextNum == 1 then
		x808069_WenZhouCard( sceneId, selfId, targetId )
	end
end
