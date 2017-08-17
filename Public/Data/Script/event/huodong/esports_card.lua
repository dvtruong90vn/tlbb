--»î¶¯¡ª¡ª
--ÌåÓý¾º²Â¿¨

x808060_g_ScriptId = 808060
x808060_g_SportsPrize_Active = 0   --Ä¬ÈÏ¹Ø±Õ

x808060_g_ActiveStartTime = 7154	 --20070604
x808060_g_ActiveEndTime = 7171		 --20070621

function x808060_SportsCard(sceneId,selfId,targetId)
	--Ðúng·ñÒÑ¾­Lînh ¹ýÌåÓý¾º²Â½±Àø
	if GetMissionFlag( sceneId, selfId, MF_ActiveSportsCard ) == 1 then
		x808060_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã nh§n giäi thß·ng r°i, không th¬ tiªp tøc nh§n næa." )
		return
	end
	
	--Ðúng·ñ´óÓÚ20c¤p
	if GetLevel( sceneId, selfId ) < 20 then
		x808060_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ vui lòng ðÕt trên ðÆng c¤p 20 r°i hãy quay lÕi nh§n v§t ph¦m." )
		return
	end
	
	--¼ì²é±³°ü¿Õ¼ä
	local FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		x808060_NotifyFailBox( sceneId, selfId, targetId, "    Xin l²i, các hÕ không ðü ô tr¯ng, xin s¡p xªp lÕi r°i hãy ðªn nh§n." )
		return
	end

	--´ò¿ªÊäÈë¿¨ºÅ½çÃæ
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2005 )		
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x808060_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¼ì²é»î¶¯Ê±¼ä
--**********************************
function x808060_CheckRightTime()
	local DayTime = GetDayTime()
	--PrintNum(DayTime)
	if DayTime < x808060_g_ActiveStartTime then
		x808060_g_SportsPrize_Active = 0
		return 0    --´ËÇ°·Ç»î¶¯Ê±¼ä
	end

	if DayTime > x808060_g_ActiveEndTime then
  	x808060_g_SportsPrize_Active = 0
  	return 0    --´Ëºó»î¶¯ÒÑ¾­½áÊø
	end

	x808060_g_SportsPrize_Active = 1
	return 1
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808060_OnEnumerate( sceneId, selfId, targetId )
    x808060_CheckRightTime()
	  if 1 == x808060_g_SportsPrize_Active then
			AddNumText(sceneId, x808060_g_ScriptId, "Nh§n giäi thß·ng cüa hoÕt ðµng dñ ðóan th¬ thao", 1, 1 )
    end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808060_OnDefaultEvent( sceneId, selfId, targetId )
	x808060_CheckRightTime()
	if 1 ~= x808060_g_SportsPrize_Active then
		return
	end

	local TextNum = GetNumText()

	if TextNum == 1 then
		x808060_SportsCard( sceneId, selfId, targetId )
	end
end
