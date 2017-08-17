--------------------------------------------
--Çé±¨²¾µÀ¾ß½Å±¾
--Created By ×ó´ºÎ°
--------------------------------------------

--½Å±¾ID
x335807_g_scriptId = 335807
-- ÊÕ¼¯Çé±¨ÈÎÎñºÅ
x335807_g_MissionId = 1121;

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x335807_OnDefaultEvent( sceneId, selfId, bagIndex )	
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x335807_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x335807_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x335807_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if IsHaveMission(sceneId, selfId, x335807_g_MissionId) ==  1 then	
		if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
			return 0;
		end	
		if x335807_IsFitCondition(sceneId, selfId) == 0 then
			return 0;
		end
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335807_g_MissionId);	
		local flag = GetMissionParam(sceneId, selfId, misIndex, 5);
		if flag == 0 then
			x335807_MsgBox(sceneId, selfId, "Ngß½i ğang thu th§p tình báo, thïnh không r¶i ği vùng phø c§n, nªu không thu th§p tình báo th¤t bÕi."); 
			SetMissionByIndex(sceneId, selfId, misIndex, 5, 1);		
		end
		return 1;
	end
	return 0;
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔğÏûºÄµÄ¼ì²âÒ²¸ºÔğÏûºÄµÄÖ´ĞĞ¡£
--**********************************
function x335807_OnDeplete( sceneId, selfId )	
	return 1;
end

--**********************************
--Ö»»áÖ´ĞĞÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒıµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x335807_OnActivateOnce( sceneId, selfId )
	if IsHaveMission(sceneId, selfId, x335807_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335807_g_MissionId);
		local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1) + 1;	
		SetMissionByIndex(sceneId, selfId, misIndex, 1, ringNum);  				--ÈÎÎñ»·Êı¼Ó1
		SetMissionByIndex(sceneId, selfId, misIndex, ringNum+1, sceneId); --¸Ã³¡¾°ÒÑ´òÌ½¹ı	
		SetMissionByIndex(sceneId, selfId, misIndex, 5, 0);								--ÌáÊ¾ĞÅÏ¢±êÊ¶
		if ringNum >= 3 then 																							-- ÉèÖÃÈÎÎñÍê³É
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1);
		end
		local msg = "";
		msg = format("#{DT_80815_23}%d/3#{DT_80815_24}", ringNum);
		x335807_MsgBox(sceneId, selfId, msg);	
		return 1;
	end
	return 0;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x335807_OnActivateEachTick( sceneId, selfId)
	return 1;
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x335807_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- Ìõ¼ş¼ì²é 
-- ³É¹¦£º1  Ê§°Ü£º0
--**********************************
function x335807_IsFitCondition(sceneId, selfId)
	--ÔÚÍæ¼Ò°ïÅÉ³ÇÊĞ£¿
	if GetCityGuildID(sceneId, selfId, sceneId) == -1 then
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_8}");
		return 0;
	elseif GetCityGuildID(sceneId, selfId, sceneId) == GetHumanGuildID(sceneId, selfId) then -- ±¾°ïÅÉ
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_9}");
		return 0;	
	end
	--ÒÑ´òÌ½¹ı£¿
	local misIndex = GetMissionIndexByID(sceneId, selfId, x335807_g_MissionId);
 	for i=2, 3 do 	--2£¬3Î»±£´æ´òÌ½µÄµÚÒ»£¬¶ş¸ö³ÇÊĞID
 		local city = GetMissionParam(sceneId, selfId, misIndex, i);
 		if city == sceneId then
			x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_10}");
			return 0;	 			
 		end
 	end
 	--×é¶Ó£¿
 	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_11}");
		return 0;	 		
 	elseif GetTeamSize(sceneId, selfId) < 2 then
 		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_11}");
		return 0;	 		
 	end
 	local teamSize = GetTeamSize(sceneId, selfId);
 	--¶ÓÔ±¶¼ÔÚ¸½½ü
 	if GetNearTeamCount(sceneId, selfId) < teamSize then
 		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_13}");
		return 0;	 		
 	end 	
 	--¶ÓÎé¶¼ÊÇ±¾°ï³ÉÔ±£¿
 	local guildId = GetHumanGuildID(sceneId, selfId);
 	for i=0, teamSize-1 do
 		local memGuid = GetTeamMemberGuid(sceneId, selfId, i);
 		local objId = LuaFnGuid2ObjId(sceneId, memGuid);
 		if objId ~= -1 then
			if GetHumanGuildID(sceneId, objId) ~= guildId then
				x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_12}");
				return 0;	 			
			end
	 	end
 	end
 	--ÒÑ´òÌ½ÍêÈı³ÇÊĞ£¿
 	local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1)
 	if ringNum >= 3 then
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_14}");
		return 0;	  		
 	end
	-- OK
	return 1;
end
