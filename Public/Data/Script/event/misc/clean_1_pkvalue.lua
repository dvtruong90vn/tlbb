--Ï´É±Æø

--½Å±¾ºÅ
x800110_g_scriptId = 800110

x800110_g_ModScript = 800112

function x800110_OnDefaultEvent( sceneId, selfId, targetId )

	-- µÃµ½µ±Ç°É±ÆøÖµ
	local pk_value = LuaFnGetHumanPKValue(sceneId, selfId);
	if pk_value then
	else
		return 0;
	end

	-- ÅÐ¶ÏÊÇ·ñÓÐÉ±Æø
	if pk_value < 1 then
		x800110_NotifyFail(sceneId, selfId, "Các hÕ không có sát khí",targetId)
--		Msg2Player(sceneId, selfId, "Äã²¢Ã»ÓÐÉ±Æø", MSG2PLAYER_PARA);
		return 0;
	end

	-- ¼ì²éÊÇ·ñÓÐ×ã¹»µÄÉÆ¶ñÖµºÍ½ðÇ®À´¿Û³ý1µãÉ±Æø
	if CallScriptFunction( x800110_g_ModScript, "CheckCost", sceneId, selfId, targetId ,1 ) ~= 1 then
		return 0
	end

	-- ¸ù¾Ý1µãÉ±ÆøÖµÀ´¿Û³ýÉÆ¶ñÖµºÍ½ð±Ò
	CallScriptFunction( x800110_g_ModScript, "PayForClean", sceneId, selfId, 1 )
	
	-- ¿Û³ý1µãÉ±ÆøÖµ
	LuaFnSetHumanPKValue(sceneId, selfId, pk_value - 1)
	LuaFnAuditGoodbadDecPKValue( sceneId, selfId, 1 ); --¼ÇÂ¼ÓÃÉÆ¶ñÖµ¼õÉÙÉ±ÆøµÄÍ³¼ÆÐÅÏ¢....
	
	x800110_NotifyFail( sceneId, selfId, "Các hÕ giäi tr× thành công 1 ði¬m sát khí." ,targetId)
--	x800110_NotifyFailTips(sceneId, selfId, "Äã³É¹¦Ïû³ýÁË1µãÉ±Æø¡£");
	
	-- [ QUFEI 2007-11-09 15:36 UPDATE BugID 27611 ]		
	local LogInfo	= format( "[ChangePKValue]:ClearPKValue sceneId=%d, GUID=%0X, PKValueBgn=%d, PKValueEnd=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),			
			pk_value,
			LuaFnGetHumanPKValue(sceneId, selfId) )
	WriteCheckLog( sceneId, selfId, LogInfo )

end

-- ************************
-- NPC¶Ô»°´°¿ÚÖÐµ÷ÓÃµÄº¯Êý
-- ************************
function x800110_OnEnumerate( sceneId, selfId,targetId )

	AddNumText(sceneId, x800110_g_scriptId, "Tr× 1 ði¬m sát khí", 6, x800110_g_scriptId)

end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x800110_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--¶Ô»°¿òÌáÊ¾
function x800110_NotifyFail( sceneId, selfId, Tip ,targetId)
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end
