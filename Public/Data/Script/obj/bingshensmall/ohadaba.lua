--çÎç¿·å¸±±¾....
--¹þ´ó°Ô¶Ô»°½Å±¾....

--½Å±¾ºÅ
x895070_g_ScriptId = 895070

--¸±±¾Âß¼­½Å±¾ºÅ....
x895070_g_FuBenScriptId = 895063

--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x895070_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"Thiên ðß¶ng có ðß¶ng ngß½i không ði, cÑ thích xu¯ng tìm g£p quÖ dÕ xoa ð¸a ngøc làm chi?")
		--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½....	
		if 0 == CallScriptFunction( x895070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoYiFeng" ) then
		    AddNumText( sceneId, x895070_g_ScriptId, "Khiêu chiªn", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x895070_OnEventRequest( sceneId, selfId, targetId, eventId )

	--Èç¹ûÕýÔÚ¼¤»îBOSSÔò·µ»Ø....
	if 1 == CallScriptFunction( x895070_g_FuBenScriptId, "IBQZSTimerRunning", sceneId ) then
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
	local ret, msg = CallScriptFunction( x895070_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½É£ÍÁ¹«....	
	if 0 ~= CallScriptFunction( x895070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoYiFeng" ) then
		BeginEvent(sceneId)
			AddText( sceneId, "Ngß½i ðã khiêu chiªn r°i!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
	CallScriptFunction( x895070_g_FuBenScriptId, "OpenBQZTimer", sceneId, 7, x895070_g_ScriptId, -1 ,-1 )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x895070_OnBQZTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 5 giây sau b¡t ð¥u!" )
		return
	end

	if 6 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 4 giây sau b¡t ð¥u!" )
		return
	end

	if 5 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 3 giây sau b¡t ð¥u!" )
		return
	end

	if 4 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 2 giây sau b¡t ð¥u!" )
		return
	end

	if 3 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 1 giây sau b¡t ð¥u!" )
		return
	end

	if 2 == step then
		--ÌáÊ¾Chiªn ð¤u b¡t ð¥u!....
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u b¡t ð¥u!" )
		--É¾³ýNPC....
		CallScriptFunction( x895070_g_FuBenScriptId, "DeleteBOSS", sceneId, "XiaoYiFeng_NPC" )
		return
	end

	if 1 == step then
		--½¨Á¢BOSS....
		CallScriptFunction( x895070_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoYiFeng_BOSS", -1, -1 )
		return
	end

end
