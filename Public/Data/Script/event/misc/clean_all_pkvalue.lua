--Ï´É±Æø

--½Å±¾ºÅ 
x800112_g_scriptId = 800112

-- *****************************
-- ¼ì²éÊÇ·ñÓÐ×ã¹»µÄÉÆ¶ñÖµºÍ½ðÇ®
-- ******************************
-- nValue : µ±Ç°É±ÆøÖµ
function x800112_CheckCost( sceneId, selfId, targetId ,nValue )

	-- ÉÆ¶ñÖµ¿Û³ýÇ°µÄÅÐ¶Ï
	local gb_value = LuaFnGetHumanGoodBadValue( sceneId, selfId )
	if not gb_value or gb_value < nValue * 2000 then
		x800112_NotifyFail( sceneId, selfId, "Các hÕ có sát khí b¢ng " .. nValue * 2000 .. "" ,targetId)
--		Msg2Player( sceneId, selfId, "ÄãµÄÉÆ¶ñÖµ²»×ã" .. nValue * 1000 .. "¡£", MSG2PLAYER_PARA )
--		x800112_NotifyFailTips(sceneId, selfId, "Ïû³ýÄúµÄÉ±ÆøÐèÒª" .. nValue * 2000 .. "µãÉÆ¶ñÖµ£¬Ä¿Ç°ÄúÉíÉÏµÄÉÆ¶ñµãÊý²»×ã¡£");
		return 0
	end

	-- ½ðÇ®¿Û³ýÇ°µÄÅÐ¶Ï
	local money = GetMoney( sceneId, selfId )
	if not money or money < nValue * 50000 then
		x800112_NotifyFail( sceneId, selfId, "Ti«n cüa các hÕ không ðü #{_MONEY" .. nValue * 50000 .. "}", targetId )
--		Msg2Player( sceneId, selfId, "ÄãµÄ½ðÇ®²»×ã#{_MONEY" .. nValue * 50000 .. "}¡£", MSG2PLAYER_PARA )
--		x800112_NotifyFailTips(sceneId, selfId, "Ïû³ýÄúµÄÉ±ÆøÐèÒª½ðÇ®#{_MONEY" .. nValue * 20000 .. "}£¬ÄúµÄ½ðÇ®²»×ã¡£");
		return 0
	end

	return 1

end

-- *****************
-- ¿Û³ýÉÆ¶ñÖµºÍ½ð±Ò
-- *****************
-- nValue : µ±Ç°É±ÆøÖµ
function x800112_PayForClean( sceneId, selfId, nValue )
	local gb_value = LuaFnGetHumanGoodBadValue( sceneId, selfId )

	-- Ã¿Ò»µãÉ±Æø¿Û³ý2000µãÉÆ¶ñÖµ
	LuaFnSetHumanGoodBadValue( sceneId, selfId, gb_value - ( nValue * 2000 ) )
	
	-- Ã¿Ò»µãÉ±Æø¿Û³ý5¸ö½ð±Ò
	CostMoney( sceneId, selfId, nValue * 50000 )
end

-- *************
-- ÊÂ¼þ´¦Àíº¯Êý
-- *************
function x800112_OnDefaultEvent( sceneId, selfId, targetId )

	-- µÃµ½µ±Ç°É±ÆøÖµ
	local pk_value = LuaFnGetHumanPKValue(sceneId, selfId);
	if pk_value then
	else
		return 0;
	end

	-- ÅÐ¶ÏÊÇ·ñÓÐÉ±Æø
	if pk_value < 1 then
		x800112_NotifyFail( sceneId, selfId,"Äã²¢Ã»ÓÐÉ±Æø",targetId)
--		Msg2Player(sceneId, selfId, "Äã²¢Ã»ÓÐÉ±Æø", MSG2PLAYER_PARA);
		return 0;
	end

	-- ¼ì²éÊÇ·ñÓÐ×ã¹»µÄÉÆ¶ñÖµºÍ½ðÇ®À´¿Û³ýËùÓÐÉ±Æø
	if x800112_CheckCost( sceneId, selfId, targetId, pk_value ) ~= 1 then
		return 0
	end

	-- ¸ù¾Ýµ±Ç°É±ÆøÖµÀ´¿Û³ýÉÆ¶ñÖµºÍ½ð±Ò
	x800112_PayForClean( sceneId, selfId, pk_value )

	-- ÖØÐÂÉèÖÃÍæ¼Òµ±Ç°µÄÉ±ÆøÖµÎª0
	LuaFnSetHumanPKValue(sceneId, selfId, 0)
	LuaFnAuditGoodbadDecPKValue( sceneId, selfId, 0 ); --¼ÇÂ¼ÓÃÉÆ¶ñÖµ¼õÉÙÉ±ÆøµÄÍ³¼ÆÐÅÏ¢....(0´ú±íÇå³ýËùÓÐÉ±Æø)
	
	x800112_NotifyFail( sceneId, selfId,"Äã³É¹¦Ïû³ýÁËËùÓÐÉ±Æø¡£",targetId)
--	x800112_NotifyFailTips(sceneId, selfId, "Äã³É¹¦Ïû³ýÁËËùÓÐÉ±Æø¡£");
	
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
function x800112_OnEnumerate( sceneId, selfId,targetId )

	AddNumText(sceneId, x800112_g_scriptId, "Çå³ýËùÓÐÉ±Æø", 6, x800112_g_scriptId)

end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x800112_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--¶Ô»°¿òÌáÊ¾
function x800112_NotifyFail( sceneId, selfId, Tip ,targetId)
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end
