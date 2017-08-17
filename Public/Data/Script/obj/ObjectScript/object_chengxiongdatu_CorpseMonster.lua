--¶¯Ì¬Éú³ÉµÄ½©Ê¬

x807001_g_scriptId=807001



--**********************************

--ÊÂ¼ş½»»¥Èë¿Ú

--**********************************

function x807001_OnDefaultEvent( sceneId, selfId, targetId )

	--ÅĞ¶ÏÊÇ·ñÄÜ¹»¼¤»î¸ÃnpcµÄÌõ¼ş

	--PrintStr("haha...ÎÒÊÇ½©Ê¬")

	local npcLevel = GetCharacterLevel(sceneId, targetId)

	local teamCount = GetTeamMemberCount(sceneId, selfId)

	local teamLeaderID = GetTeamLeader(sceneId, selfId)

	local teamLeaderLevel = GetCharacterLevel(sceneId, teamLeaderID)

	

	--PrintNum(teamLeaderID)

	--PrintNum(teamCount)

	--PrintNum(teamLeaderLevel)

	--PrintNum(npcLevel)

	
	--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if  nearteammembercount < 1 then	

		BeginEvent(sceneId)

			AddText(sceneId, "Dám coi thß¶ng ta, chí ít cûng phäi là 3 ngß¶i hşp lÕi m¾i ğßşc, ha ha.")

		EndEvent(sceneId)

		DispatchEventList(sceneId,selfId,targetId)

		return

	elseif teamLeaderLevel < npcLevel then

		--ÌáÊ¾Ìõ¼ş²»·û

		BeginEvent(sceneId)

			AddText(sceneId, "Dám coi thß¶ng ta, ğÆng c¤p cao h½n s¨ biªt lşi hÕi cüa ta")

		EndEvent(sceneId)

		DispatchEventList(sceneId,selfId,targetId)

		return



	else

		--¼¤»înpc

		--PrintStr("active npc...")

		--ÉèÖÃ¶Ô¹ÖÎªµĞ¶ÔµÄ Ä¿Ç°ÊÇ28ºÅÊÇµĞ¶ÔµÄ£¬Èç¹ûÓĞÈË¸Ä±äÁËÏàÓ¦µÄÊÆÁ¦ÉùÍûÄÇÎÒ¾Í²ÒÁË£¡£¡:-(((
		SetUnitReputationID(sceneId, selfId, targetId, 28)


	end

	

end



function x807001_OnDie(sceneId, selfId, killerId)



end

