--çÎç¿·å¸±±¾....
--É£ÍÁ¹«¶Ô»°½Å±¾....

--½Å±¾ºÅ
x894071_g_ScriptId = 894071

--¸±±¾Âß¼­½Å±¾ºÅ....
x894071_g_FuBenScriptId = 894063

--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x894071_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"Các ngß½i s¨ phäi trä giá cho tµi l²i các ngß½i ðã gây ra...")
		if 0 ~= CallScriptFunction( x894070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoRuJun" ) then
		    AddNumText( sceneId, x894071_g_ScriptId, "Khiêu chiªn", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x894071_OnEventRequest( sceneId, selfId, targetId, eventId )

	--Èç¹ûÕýÔÚ¼¤»îBOSSÔò·µ»Ø....
	if 1 == CallScriptFunction( x894071_g_FuBenScriptId, "IBQZSTimerRunning", sceneId ) then
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
	local ret, msg = CallScriptFunction( x894071_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔKhiêu chiªnÉ£ÍÁ¹«....	
	if 0 == CallScriptFunction( x894071_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoRuJun" ) then
		BeginEvent(sceneId)
			AddText( sceneId, "Ngß½i ðã khiêu chiªn r°i!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
	CallScriptFunction( x894071_g_FuBenScriptId, "OpenBQZTimer", sceneId, 7, x894071_g_ScriptId, -1, -1 )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x894071_OnBQZTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x894071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 5 giây sau b¡t ð¥u!" )
		return
	end

	if 6 == step then
		CallScriptFunction( x894071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 4 giây sau b¡t ð¥u!" )
		return
	end

	if 5 == step then
		CallScriptFunction( x894071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 3 giây sau b¡t ð¥u!" )
		return
	end

	if 4 == step then
		CallScriptFunction( x894071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 2 giây sau b¡t ð¥u!" )
		return
	end

	if 3 == step then
		CallScriptFunction( x894071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 1 giây sau b¡t ð¥u!" )
		return
	end

	if 2 == step then
		--ÌáÊ¾Chiªn ð¤u b¡t ð¥u!....
		CallScriptFunction( x894071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u b¡t ð¥u!" )
		--É¾³ýNPC....
		CallScriptFunction( x894071_g_FuBenScriptId, "DeleteBOSS", sceneId, "XiaoRuJun_NPC" )
		CallScriptFunction( x894071_g_FuBenScriptId, "DeleteBOSS", sceneId, "XiaoRuWei_NPC" )
		return
	end

	if 1 == step then
		--½¨Á¢BOSS....
		CallScriptFunction( x894071_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoRuJun_BOSS", -1, -1 )
		CallScriptFunction( x894071_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoRuWei_BOSS", -1, -1 )
		return
	end

end
