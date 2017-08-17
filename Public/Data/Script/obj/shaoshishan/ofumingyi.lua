--çÎç¿·å¸±±¾....
--·ûÃôÒÇ¶Ô»°½Å±¾....

--½Å±¾ºÅ
x890073_g_ScriptId = 890073

--¸±±¾Âß¼­½Å±¾ºÅ....
x890073_g_FuBenScriptId = 890063

--ÕðÉåbuff±í....
x890073_g_ZhenSheBuffTbl = { 10264, 10265, 10266 }
--ÓÐÈ¤buff±í....
x890073_g_YouQuBuffTbl = { 10261, 10262, 10263 }


--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x890073_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText( sceneId, "Các hÕ nªu mu¯n yên ±n · Thiªu Th¤t S½n, trß¾c tiên hãy ðánh bÕi Trang Tø Hi«n cùng Mµ Dung Phøc r°i ðªn ch² ta lînh nh§n nhi®m vø m¾i." )

		--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½Ë«×Ó....	
		if 1 == CallScriptFunction( x890073_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" ) then
			AddNumText( sceneId, x890073_g_ScriptId, "Khiêu chiªn Hung Th¥n Ác Sát", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x890073_OnEventRequest( sceneId, selfId, targetId, eventId )

	--Èç¹ûÕýÔÚ¼¤»îBOSSÔò·µ»Ø....
	if 1 == CallScriptFunction( x890073_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
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

	--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½Ë«×Ó....	
	if 1 ~= CallScriptFunction( x890073_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" ) then
		return
	end

	--Èç¹ûÕýÔÚºÍ±ðµÄBOSSChiªn ð¤u Ôò·µ»Ø....
	local ret, msg = CallScriptFunction( x890073_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
	CallScriptFunction( x890073_g_FuBenScriptId, "OpenPMFTimer", sceneId, 16, x890073_g_ScriptId, -1 ,-1 )
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x890073_OnPMFTimer( sceneId, step, data1, data2 )

	if 16 == step then
		MonsterTalk(sceneId, -1, "", "#{CJG_101231_165}" )
		return
	end

	if 13 == step then
		MonsterTalk(sceneId, -1, "", "#{CJG_101231_164}" )
		return
	end

	if 10 == step then
		MonsterTalk(sceneId, -1, "", "#{CJG_101231_170}" )
		return
	end

	if 7 == step then
		MonsterTalk(sceneId, -1, "", "#{CJG_101231_181}" )
		x890073_UseZhenShe( sceneId )
		CallScriptFunction( x890073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 5 giây sau b¡t ð¥u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x890073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 4 giây sau b¡t ð¥u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x890073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 3 giây sau b¡t ð¥u." )
		return
	end

	if 4 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080530_04}" )
		x890073_UseYouQu( sceneId )
		CallScriptFunction( x890073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 2 giây sau b¡t ð¥u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x890073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 1 giây sau b¡t ð¥u." )
		return
	end

	if 2 == step then
		--ÌáÊ¾Chiªn ð¤u b¡t ð¥u.....
		CallScriptFunction( x890073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u b¡t ð¥u." )
		return
	end

	if 1 == step then
		--½¨Á¢BOSS....
		CallScriptFunction( x890073_g_FuBenScriptId, "CreateBOSS", sceneId, "YaoBoDang_BOSS", -1, -1 )
		CallScriptFunction( x890073_g_FuBenScriptId, "CreateBOSS", sceneId, "SiMaLing_BOSS", -1, -1 )
		return
	end

end

--**********************************
--·¢¶¯ÕðÉå....
--**********************************
function x890073_UseZhenShe( sceneId )

	local bossId = CallScriptFunction( x890073_g_FuBenScriptId, "FindBOSS", sceneId, "LiFan_NPC" )
	if bossId == -1 then
		return
	end

	local idx = random( getn(x890073_g_ZhenSheBuffTbl) )
	local buffId = x890073_g_ZhenSheBuffTbl[idx]

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
		end
	end

end

--**********************************
--·¢¶¯ÓÐÈ¤....
--**********************************
function x890073_UseYouQu( sceneId )

	local bossId = CallScriptFunction( x890073_g_FuBenScriptId, "FindBOSS", sceneId, "LiFan_NPC" )
	if bossId == -1 then
		return
	end

	local idx = random( getn(x890073_g_YouQuBuffTbl) )
	local buffId = x890073_g_YouQuBuffTbl[idx]

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
		end
	end

end
