--çÎç¿·å¸±±¾....
--ÎÚÀÏ´ó¶Ô»°½Å±¾....

--½Å±¾ºÅ
x890072_g_ScriptId = 890072

--¸±±¾Âß¼­½Å±¾ºÅ....
x890072_g_FuBenScriptId = 890063

--Õ½°ÜÎÚÀÏ´ó¶Ô»°½Å±¾ºÅ....
x890072_g_LossScriptId = 890075

--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x890072_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)

		AddText( sceneId, "Hßng phøc ÐÕi Yªn th§t tß·ng trong vô v÷ng...#rThiên Ðß¶ng có ðß¶ng l¾n ngß½i không ði, ð¸a ngøc vô môn ngß½i lÕi dçn xác ðªn.#r#b#YNÕp mÕng ði!...." )
		AddNumText( sceneId, x890072_g_ScriptId, "Khiêu chiªn", 10, 1 )

		--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½ÀîÇïË®....	
		--if 1 == CallScriptFunction( x890072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "DingChunQiu" ) then
			--AddNumText( sceneId, x890072_g_ScriptId, "¾öÕ½ÀîÇïË®£¿", 10, 2 )
		--end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x890072_OnEventRequest( sceneId, selfId, targetId, eventId )

	--Èç¹ûÕýÔÚ¼¤»îBOSSÔò·µ»Ø....
	if 1 == CallScriptFunction( x890072_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
		return
	end

	--ÊÇ²»ÊÇ¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--Èç¹ûÕýÔÚºÍ±ðµÄBOSSChiªn ð¤u Ôò·µ»Ø....
	local ret, msg = CallScriptFunction( x890072_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	if GetNumText() == 1 then

		--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½ÎÚÀÏ´ó....	
		if 1 ~= CallScriptFunction( x890072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "MuRongFu" ) then
			BeginEvent(sceneId)
				AddText( sceneId, "#{PMF_20080521_11}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
		CallScriptFunction( x890072_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x890072_g_ScriptId, -1 ,-1 )

	elseif GetNumText() == 2 then

		--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½ÀîÇïË®....	
		if 1 ~= CallScriptFunction( x890072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "DingChunQiu" ) then
			return
		end
		--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»îÀîÇïË®....
		CallScriptFunction( x890072_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x890072_g_LossScriptId, -1 ,-1 )

	end

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x890072_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 5 giây sau b¡t ð¥u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 4 giây sau b¡t ð¥u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 3 giây sau b¡t ð¥u." )
		return
	end

	if 4 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 2 giây sau b¡t ð¥u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 1 giây sau b¡t ð¥u." )
		return
	end

	if 2 == step then
		--ÌáÊ¾Chiªn ð¤u b¡t ð¥u.....
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u b¡t ð¥u." )
		--É¾³ýNPC....
		CallScriptFunction( x890072_g_FuBenScriptId, "DeleteBOSS", sceneId, "MuRongFu_NPC" )
		return
	end

	if 1 == step then
		--½¨Á¢BOSS....
		CallScriptFunction( x890072_g_FuBenScriptId, "CreateBOSS", sceneId, "MuRongFu_BOSS", -1, -1 )
		return
	end

end
