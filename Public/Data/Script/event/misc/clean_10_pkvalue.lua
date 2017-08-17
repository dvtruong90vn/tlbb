--Ï´É±Æø

--½Å±¾ºÅ
x800111_g_scriptId = 800111

x800111_g_ModScript = 800112


function x800111_OnDefaultEvent( sceneId, selfId, targetId )

	-- µÃµ½µ±Ç°É±ÆøÖµ
	pk_value = LuaFnGetHumanPKValue(sceneId, selfId);
	if pk_value then
	else
		return 0;
	end

	-- ÅÐ¶ÏÊÇ·ñÓÐ10µãÉ±Æø
	if pk_value < 10 then
		x800111_NotifyFail(sceneId, selfId, "Sát khí cüa các hÕ không ðü 10 ði¬m",targetId)
--		Msg2Player(sceneId, selfId, "ÄãµÄÉ±Æø²»×ã10µã", MSG2PLAYER_PARA);
		return 0;
	end

	-- ¼ì²éÊÇ·ñÓÐ×ã¹»µÄÉÆ¶ñÖµºÍ½ðÇ®À´¿Û³ý10µãÉ±Æø
	if CallScriptFunction( x800111_g_ModScript, "CheckCost", sceneId, selfId, targetId ,10 ) ~= 1 then
		return 0
	end

	-- ¸ù¾Ý10µãÉ±ÆøÖµÀ´¿Û³ýÉÆ¶ñÖµºÍ½ð±Ò
	CallScriptFunction( x800111_g_ModScript, "PayForClean", sceneId, selfId, 10 )
	
	-- ¿Û³ý10µãÉ±ÆøÖµ
	LuaFnSetHumanPKValue(sceneId, selfId, pk_value - 10)
	LuaFnAuditGoodbadDecPKValue( sceneId, selfId, 10 ); --¼ÇÂ¼ÓÃÉÆ¶ñÖµ¼õÉÙÉ±ÆøµÄÍ³¼ÆÐÅÏ¢....

	x800111_NotifyFail( sceneId, selfId,"Các hÕ giäi tr× thành công 10 ði¬m sát khí." ,targetId)
--	x800111_NotifyFailTips(sceneId, selfId, "Äã³É¹¦Ïû³ýÁË10µãÉ±Æø¡£");

	-- [ QUFEI 2007-11-09 15:36 UPDATE BugID 27611 ]		
	local LogInfo	= format( "[ChangePKValue]:ClearPKValue sceneId=%d, GUID=%0X, PKValueBgn=%d, PKValueEnd=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),			
			pk_value,
			LuaFnGetHumanPKValue(sceneId, selfId) )
	WriteCheckLog( sceneId, selfId, LogInfo )

	return 1;

end


-- ************************
-- NPC¶Ô»°´°¿ÚÖÐµ÷ÓÃµÄº¯Êý
-- ************************
function x800111_OnEnumerate( sceneId, selfId,targetId )

	AddNumText(sceneId, x800111_g_scriptId, "Giäi tr× 10 ði¬m sát khí", 6, x800111_g_scriptId)

end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x800111_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--¶Ô»°¿òÌáÊ¾
function x800111_NotifyFail( sceneId, selfId, Tip, targetId)
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end
