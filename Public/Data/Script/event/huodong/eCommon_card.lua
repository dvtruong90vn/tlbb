--*********************************************************************

-- Author	: liudun
-- Desc		: Í¨ÓÃ³é½±Á÷³Ì,Í³mµt ÎÂÖÝ,Íø¾Û,ÐÒÔËÐÇ³é½±¹¦ÄÜ
-- ScriptID	: 808078
-- Date		: 2008/03/15

--*********************************************************************

x808078_g_ScriptId						= 808078
x808078_g_CommonPrize_Active			= 0			--Ä¬ÈÏ¹Ø±Õ

x808078_g_ActiveStartTime				= 7168	--20070618
--x808078_g_ActiveEndTime				= 7198	--20070718

function x808078_CommonCard(sceneId,selfId,targetId)	
	--´ò¿ªÊäÈë¿¨ºÅ½çÃæ
	--if GetLevel(sceneId, selfId) > 30 then
		--BeginEvent(sceneId)
			--AddText(sceneId, "ÄútoÕ ðµ µÈc¤p¹ý¸ß,ÎÞ·¨¼¤»î²Æ¸»¿¨!")
		--EndEvent()
		--DispatchEventList( sceneId, selfId, targetId )
		--return 
	--end
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2006 )		
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x808078_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¼ì²é»î¶¯Ê±¼ä
--**********************************
--function x808078_CheckRightTime()
--	local DayTime = GetDayTime()
--	PrintNum(DayTime)
--	if DayTime < x808078_g_ActiveStartTime then
--		x808078_g_CommonPrize_Active = 0
--		return 0    --´ËÇ°·Ç»î¶¯Ê±¼ä
--	end

--	if DayTime > x808078_g_ActiveEndTime then
--		x808078_g_CommonPrize_Active = 0
--		return 0    --´Ëºó»î¶¯ÒÑ¾­½áÊø
--	end

--	x808078_g_CommonPrize_Active = 1
--	return 1
--	end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808078_OnEnumerate( sceneId, selfId, targetId )
    --x808078_CheckRightTime()
	AddNumText(sceneId, x808078_g_ScriptId, "Lînh ph¥n thß·ng Thiên Long", 1, 1 )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808078_OnDefaultEvent( sceneId, selfId, targetId )
	local TextNum = GetNumText()
	if TextNum == 1 then
		x808078_CommonCard( sceneId, selfId, targetId )
	end
end
