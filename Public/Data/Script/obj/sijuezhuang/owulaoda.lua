--çÎç¿·å¸±±¾....
--ÎÚÀÏ´ó¶Ô»°½Å±¾....

--½Å±¾ºÅ
x893072_g_ScriptId = 893072

--¸±±¾Âß¼­½Å±¾ºÅ....
x893072_g_FuBenScriptId = 893063

--Õ½°ÜÎÚÀÏ´ó¶Ô»°½Å±¾ºÅ....
x893072_g_LossScriptId = 893075

--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x893072_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)

		AddText( sceneId, "Noi này chính là T?n V?n s? t?i - Tây V?n Các . Theo ta di?u tra  tin t?c, T?n V?n có Chúc ?nh Diêu H?ng và Kim S¡c Cu°ng Vû là hai d?i tuy?t k?.#r Chúc ?nh Diêu H?ng s? gây thuong t?n l?n lên các h? và chính mình d?i ngu c?a mình." )
		AddText( sceneId, "Kim S¡c Cu°ng Vû dña vào h°i âm phiên ð¬ cß¶ng hóa công lñc cüa T¥n V§n. Nghe nói có ngß¶i ðã b¸ m¤t mÕng trong mµt chiêu cüa h¡n, uy lñc vô cùng!#r Các ngß½i chu¦n b¸ t¯t , cho ta biªt, ta s¨ dçn T¥n V§n ra!" )

		if 1 == CallScriptFunction( x893070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "TaoQin" ) then
		    AddNumText( sceneId, x893072_g_ScriptId, "Khiêu chiªn T¥n V§n", 10, 1 )
		end

		--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½ÀîÇïË®....	
		if 0 ~= CallScriptFunction( x893072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "PangQi" ) then
		    AddNumText( sceneId, x893072_g_ScriptId, "Ði tiªp vào trong", 10, 2 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x893072_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then

	--Èç¹ûÕýÔÚ¼¤»îBOSSÔò·µ»Ø....
	if 1 == CallScriptFunction( x893072_g_FuBenScriptId, "IsSJZTimerRunning", sceneId ) then
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
	local ret, msg = CallScriptFunction( x893072_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½ÎÚÀÏ´ó....	
		if 1 ~= CallScriptFunction( x893072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "TaoQin" ) then
			BeginEvent(sceneId)
				AddText( sceneId, "#{PMF_20080521_11}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
		CallScriptFunction( x893072_g_FuBenScriptId, "OpenSJZTimer", sceneId, 7, x893072_g_ScriptId, -1 ,-1 )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
  end

   if GetNumText() == 2 then
	SetPos(sceneId, selfId, 28, 57)
  end

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x893072_OnSJZTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x893072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 5 giây sau b¡t ð¥u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x893072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 4 giây sau b¡t ð¥u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x893072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 3 giây sau b¡t ð¥u." )
		return
	end

	if 4 == step then
		CallScriptFunction( x893072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 2 giây sau b¡t ð¥u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x893072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 1 giây sau b¡t ð¥u." )
		return
	end

	if 2 == step then
		--ÌáÊ¾Chiªn ð¤u b¡t ð¥u.....
		CallScriptFunction( x893072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u b¡t ð¥u." )
		--É¾³ýNPC....
		--CallScriptFunction( x893072_g_FuBenScriptId, "DeleteBOSS", sceneId, "TaoQin_NPC" )
		return
	end

	if 1 == step then
		--½¨Á¢BOSS....
		CallScriptFunction( x893072_g_FuBenScriptId, "CreateBOSS", sceneId, "TaoQin_BOSS", -1, -1 )
		return
	end

end
