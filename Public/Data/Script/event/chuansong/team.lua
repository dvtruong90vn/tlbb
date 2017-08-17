
--´«ËÍº¯Êý
x400900_g_scriptId=400900

x400900_g_Impact_No_ChangeScene = 38

x400900_g_Yinpiao = 40002000

function x400900_TransferFunc( sceneId, selfId, newSceneId, posX, posY, minLevel, maxLevel )
	local humanList = {};
	local humanCount = 0;
	
	--Ë«ÈËÆï³Ë×´Ì¬
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--´¦ÓÚË«ÈËÆï³Ë×´Ì¬£¬ÇÒÊÇ±»¶¯µÄ£¬½»¸øÖ÷¶¯·½À´´¦Àí
			return
		end
	end
	
	--¶ÓÓÑ
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			--Î´Öª´íÎó
			return
		end
		
		if teamLeaderFlag == 1 then
			if teamFollowFlag == 1 then
				--ÊÇ¶Ó³¤ÇÒÊÇ×é¶Ó¸úËæ×´Ì¬
				local followMemberCount = LuaFnGetFollowedMembersCount(sceneId, selfId);
				local i;
				local followMembers = {};
				for	i = 0, followMemberCount - 1 do
					followMembers[i] = GetFollowedMember(sceneId, selfId, i);
					if followMembers[i] and followMembers[i] ~= -1 then
						
						if followMembers[i] ~= selfId and IsHaveMission(sceneId, followMembers[i], 4021) > 0 then
							x400900_NotifyFailTips(sceneId, selfId, "T± ðµi có thành viên ðang trong trÕng thái tào v§n, không th¬ d¸ch chuy¬n.")
							return
						end
						
						if followMembers[i] ~= selfId and GetItemCount(sceneId, followMembers[i], x400900_g_Yinpiao) >=1 then
							x400900_NotifyFailTips(sceneId, selfId, "T± ðµi có thành viên ðang trong trÕng thái thß½ng nhân, không th¬ d¸ch chuy¬n.")
							return
						end
	
						--Ë«ÈËÆï³Ë×´Ì¬
						local memberHasDRideFlag = LuaFnGetDRideFlag(sceneId, followMembers[i]);
						if memberHasDRideFlag and memberHasDRideFlag == 1 then
							local memberIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, followMembers[i]);
							if memberIsDRideMountOwner and memberIsDRideMountOwner == 1 then
							else
								--Ë«ÈËÆï³ËÔõÃ´¿ÉÄÜÓë×é¶Ó¸úËæ²¢´æÄØ?
								x400900_NotifyFailTips(sceneId, selfId, "CßÞi chung thú cßÞi không th¬ tiªn vào!")
								return
							end
						end
						
						humanCount = humanCount + 1;
						humanList[humanCount] = followMembers[i];
					else
						x400900_NotifyFailTips(sceneId, selfId, "Chßa m· map này!")
						return
					end
				end
			else
				--ÊÇ¶Ó³¤ÇÒ²»ÊÇ×é¶Ó¸úËæ×´Ì¬
				humanCount = humanCount + 1;
				humanList[humanCount] = selfId;
			end
		else
			if teamFollowFlag == 1 then
				--²»ÊÇ¶Ó³¤ÇÒÊÇ×é¶Ó¸úËæ×´Ì¬£¬²»Àí»á£¬ÈÃ¶Ó³¤µÄÕâ¸öº¯ÊýÀ´´¦Àí
				return
			end
			humanCount = humanCount + 1;
			humanList[humanCount] = selfId;
		end
	else
		humanCount = humanCount + 1;
		humanList[humanCount] = selfId;
	end
	
	--¸÷½ÇÉ«µÄË«ÈËÆï³Ë
	local saveHumanCount = humanCount;
	local i;
	for i = 1, saveHumanCount do
		local tempHumanId = humanList[i];
		local drideFlag = LuaFnGetDRideFlag(sceneId, tempHumanId);
		if drideFlag and drideFlag == 1 then
			local isDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, tempHumanId);
			if isDRideMountOwner and isDRideMountOwner == 1 then
				local drideTargetID = LuaFnGetDRideTargetID(sceneId, tempHumanId);
				if drideTargetID and drideTargetID ~= -1 then
					
					if drideTargetID ~= selfId and IsHaveMission(sceneId, drideTargetID, 4021) > 0 then
						x400900_NotifyFailTips(sceneId, selfId, "Trong t± ðµi có ngß¶i ðang trong trÕng thái tào v§n, không th¬ d¸ch chuy¬n.")
						return
					end
					
					if drideTargetID ~= selfId and GetItemCount(sceneId, drideTargetID, x400900_g_Yinpiao) >=1 then
						x400900_NotifyFailTips(sceneId, selfId, "Trong t± ðµi có ngß¶i ðang trong trÕng thái thß½ng nhân, không th¬ d¸ch chuy¬n.")
						return
					end
					
					humanCount = humanCount + 1;
					humanList[humanCount] = drideTargetID;
				end
			else
				--Ç°ÃæµÄ¼ì²â³ö´íÁË
				return
			end
		end
	end
	
	local checkHumanId;
	for _, checkHumanId in humanList do
		local checkRet, errorTips, errorSelfTips = x400900_CheckChangeScene(sceneId, checkHumanId, newSceneId, posX, posY, minLevel, maxLevel);
		if checkRet and checkRet == 1 then
		else
			if errorTips then
				x400900_NotifyFailTips(sceneId, checkHumanId, errorTips);
			end
			if checkHumanId ~= selfId and errorSelfTips then
				x400900_NotifyFailTips(sceneId, selfId, errorSelfTips);
			end
			return
		end
	end
	
	if sceneId ~= newSceneId then
		for _, checkHumanId in humanList do
			NewWorld(sceneId, checkHumanId, newSceneId, posX, posY);
		end
	else
		for _, checkHumanId in humanList do
			SetPos(sceneId, checkHumanId, posX, posY)
		end
	end
end

function x400900_TransferFuncFromNpc( sceneId, selfId, newSceneId, posX, posY, minLevel, maxLevel )
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		BeginEvent( sceneId )
			local strText = "Các hÕ ðang trong trÕng thái tào v§n, không th¬ d¸ch chuy¬n."
			AddText( sceneId, strText )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
	elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 113) == 1 then
		BeginEvent( sceneId )
			local strText = "Các hÕ ðang trong trÕng thái tào v§n, không th¬ d¸ch chuy¬n."
			AddText( sceneId, strText )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
	else
		x400900_TransferFunc(sceneId, selfId, newSceneId, posX, posY, minLevel, maxLevel);
	end
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x400900_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--  tr· lên m¾i có th¬ ðªn n½i này!±ðÏÞÖÆµÄ¼ì²â
--**********************************
function x400900_CheckChangeScene(sceneId, selfId, newSceneId, posX, posY, minLevel, maxLevel)
	if not sceneId or not selfId or not newSceneId or not posX or not posY then
		return 0, "Ð« ngh¸ chuy¬n ð±i không thñc hi®n ðßþc, không th¬ chuy¬n ð±i.", "Ð« ngh¸ chuy¬n ð±i không thñc hi®n ðßþc, không th¬ chuy¬n ð±i.";
	end

	local selfLevel = LuaFnGetLevel(sceneId, selfId);
	if not selfLevel then
		return 0, "Ð« ngh¸ chuy¬n ð±i không thñc hi®n ðßþc, không th¬ chuy¬n ð±i.", "Ð« ngh¸ chuy¬n ð±i không thñc hi®n ðßþc, không th¬ chuy¬n ð±i.";
	end
	
	local livingFlag = LuaFnIsCharacterLiving(sceneId, selfId);
	if not livingFlag or livingFlag ~= 1 then
		return 0, "Các hÕ ðã chªt, không th¬ chuy¬n ð±i.", GetName(sceneId, selfId).."Ðã chªt, không th¬ chuy¬n ð±i.";
	end
	
	if minLevel and selfLevel < minLevel then
		return 0, "C¤p b§c cüa các hÕ không ðü"..tostring(minLevel)..", không th¬ chuy¬n ð±i.", GetName(sceneId, selfId).."C¤p b§c không ðü "..tostring(minLevel)..", không th¬ chuy¬n ð±i."; 
	end
	
	if maxLevel and selfLevel >= maxLevel then
		return 0, "C¤p b§c cüa các hÕ c¥n nhö h½n"..tostring(maxLevel)..", m¾i có th¬ chuy¬n ð±i.", GetName(sceneId, selfId).."C¤p b§c c¥n nhö h½n"..tostring(maxLevel)..", m¾i có th¬ chuy¬n ð±i.";
	end
	
	local changeSceneImpactCheck = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x400900_g_Impact_No_ChangeScene);
	if not changeSceneImpactCheck or changeSceneImpactCheck ~= 0 then
		return 0, "Các hÕ hi®n gi¶ không th¬ bö ði.", GetName(sceneId, selfId).."Hi®n gi¶ không th¬ bö ði";
	end
	
	--if IsHaveMission(sceneId, selfId, 4021) > 0 then
	--	return 0,"ÄãÕý´¦ÓÚäîÔË×´Ì¬ÖÐ£¬ÎÞ·¨´«ËÍ¡£", GetName(sceneId, selfId).."Õý´¦ÓÚäîÔË×´Ì¬ÖÐ£¬ÎÞ·¨´«ËÍ¡£";
	--end
	
	--if GetItemCount(sceneId, selfId, x400900_g_Yinpiao) >=1 then
	--	return 0, "ÄãÕý´¦ÓÚÅÜÉÌ×´Ì¬ÖÐ£¬ÎÞ·¨´«ËÍ¡£", GetName(sceneId, selfId).."Õý´¦ÓÚÅÜÉÌ×´Ì¬ÖÐ£¬ÎÞ·¨´«ËÍ¡£";
	--end
	
	return 1, "", "";
end
