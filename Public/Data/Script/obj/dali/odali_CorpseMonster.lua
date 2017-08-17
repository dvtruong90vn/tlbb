--¶¯Ì¬Éú³ÉµÄ½©Ê¬

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002073_OnDefaultEvent( sceneId, selfId, targetId )
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
	
	if  teamCount < 2 then	
		BeginEvent(sceneId)
			AddText(sceneId, "Dám xem thß¶ng ta, hãy m¶i ít nh¤t 3 ngß¶i mµt t± ğµi r°i hãy ğªn tìm ta.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	elseif teamLeaderLevel < npcLevel then
		--ÌáÊ¾Ìõ¼ş²»·û
		BeginEvent(sceneId)
			AddText(sceneId, "Dám xem thß¶ng ta, không ğü c¤p ğµ mà cûng ğòi ğánh ta ß. V« tu luy®n thêm ği.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return

	else
		--¼¤»înpc, ÆäÊµÊÇÉú³ÉÁËÒ»¸öÄ£ĞÍÏàÍ¬µÄĞÂµÄNPC
		local PosX,PosZ=LuaFnGetWorldPos(sceneId, targetId)
		PosX=floor(PosX)
		PosZ=floor(PosZ)
		
		LuaFnDeleteMonster(sceneId, targetId)
		local aifile = random(10)
		LuaFnCreateMonster(sceneId, 1551, PosX, PosZ, 0, aifile, -1)
	
	end
	
end
