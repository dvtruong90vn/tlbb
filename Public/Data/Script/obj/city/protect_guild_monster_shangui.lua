-- 805046
-- É½¹íboss

--¸±±¾Êı¾İË÷Òı¶ÔÕÕ
x805046_g_keySD					= {}
x805046_g_keySD["typ"]			= 0		--ÉèÖÃ¸±±¾ÀàĞÍ
x805046_g_keySD["spt"]			= 1		--ÉèÖÃ¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
x805046_g_keySD["tim"]			= 2		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
x805046_g_keySD["currStage"]	= 3		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
x805046_g_keySD["scn"]			= 4		--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
x805046_g_keySD["cls"]			= 5		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
x805046_g_keySD["dwn"]			= 6		--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
x805046_g_keySD["tem"]			= 7		--±£´æ¶ÓÎéºÅ
x805046_g_keySD["x"]			= 8			--ÈËÎïÔÚÈë¿Ú³¡¾°ÖĞµÄxÎ»ÖÃ
x805046_g_keySD["z"]			= 9			--ÈËÎïÔÚÈë¿Ú³¡¾°ÖĞµÄzÎ»ÖÃ
x805046_g_keySD["killMonsterNum"]	= 10		--É±ËÀ¹ÖÎïÊıÁ¿
x805046_g_keySD["genMonsterNum"]	= 11			--Éú³É¹ÖÎïÊıÁ¿
x805046_g_keySD["playerLevel"]	= 12		--¼ÇÂ¼µ±Ç°¸±±¾µÄ¼¶±ğ


--**********************************
-- ×Ô¼ºËÀÍö
--**********************************
function x805046_OnDie( sceneId, selfId, killerId )
	local killNum = LuaFnGetCopySceneData_Param( sceneId, x805046_g_keySD["killMonsterNum"] )	
	killNum = killNum + 1
	LuaFnSetCopySceneData_Param( sceneId, x805046_g_keySD["killMonsterNum"], killNum )
	
	local genNum = LuaFnGetCopySceneData_Param( sceneId, x805046_g_keySD["genMonsterNum"] )	
	x805046_TipAllHuman(sceneId, "Ğã giªt chªt s½n quÖ "..killNum.." / "..genNum )	
end

--**********************************
-- ĞÄÌø
--**********************************
function x805046_OnHeartBeat(sceneId, selfId, nTick)

end

--**********************************
-- ³õÊ¼»¯
--**********************************
function x805046_OnInit(sceneId, selfId)
	local genNum = LuaFnGetCopySceneData_Param( sceneId, x805046_g_keySD["genMonsterNum"] )	
	genNum = genNum + 1
	LuaFnSetCopySceneData_Param( sceneId, x805046_g_keySD["genMonsterNum"], genNum )	
end

--**********************************
-- É±ËÀÍæ¼Ò
--**********************************
function x805046_OnKillCharacter(sceneId, selfId, targetId)

end

--**********************************
-- ½øÈëÕ½¶·
--**********************************
function x805046_OnEnterCombat(sceneId, selfId, enmeyId)

end

--**********************************
-- ÍÑÀëÕ½¶·
--**********************************
function x805046_OnLeaveCombat(sceneId, selfId)

end

--**********************************
--ÌáÊ¾ËùÓĞ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x805046_TipAllHuman( sceneId, Str )
	-- »ñµÃ³¡¾°ÀïÍ·µÄËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËµÄ³¡¾°£¬Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end
end

--Ëæ»úÑ¡ÔñÒ»¸öÍæ¼Ò
function x805046_RandPlayer( sceneId )
	-- »ñµÃ³¡¾°ÀïÍ·µÄËùÓĞÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËµÄ³¡¾°
	if nHumanNum < 1 then
		return -1
	end
	
	
	local rPlayerIndex = random( nHumanNum )

	local PlayerId = LuaFnGetCopyScene_HumanObjId( sceneId, rPlayerIndex )
	return PlayerId
end
