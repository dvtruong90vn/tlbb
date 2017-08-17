--´´½¨ÈË:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]

--¹êÍÃÈüÅÜ»î¶¯¹¥»÷µÀ¾ßÊ¹ÓÃ½Å±¾


--½Å±¾ºÅ
x808087_g_scriptId = 808087

--ĞèÒªµÄµÈ¼¶
--ĞèÒªµÄÈÎÎñID
x808087_g_MissionID = 1000

--ĞèÒªµÄĞ§¹ûID	»ğ°ÑÊ¹Õß
x808087_g_ImpactID 	= 5929

--Ğ§¹ûµÄID	Èç¹ûÍæ¼ÒÉíÉÏÓĞ SelfimpactID,ÔòÊ¹ÓÃ impactId01,·ñÔòÊ¹ÓÃ impactId02
x808087_g_itemList = {}
x808087_g_itemList[30505210] = { SelfimpactID=5934, impactId01=5939, impactId02=0		 }			-- î§Ë¯³æ
x808087_g_itemList[30505212] = { SelfimpactID=5933, impactId01=0, 	 impactId02=5938 }			-- Íæ¾ßòÚò¼


--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x808087_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x808087_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x808087_CancelImpacts( sceneId, selfId )
	return 0; --²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x808087_OnConditionCheck( sceneId, selfId )

	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	--¼ì²âÊ¹ÓÃÕßÓĞÃ»ÓĞ¹êÍÃÈüÅÜÈÎÎñ
	if IsHaveMission( sceneId, selfId, x808087_g_MissionID ) <= 0 then
		x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_011}" )
		return 0
	end
	
	--¼ì²âÊ¹ÓÃÕßµÀ¾ßÊ¹ÓÃÌõ¼ş
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808087_g_ImpactID) == 0 then
		x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808087_g_itemList[itemTblIndex];
	if not itemCur then
		x808087_NotifyFailTips(sceneId, selfId, "Chßa m· ğÕo cø, không th¬ sØ døng.");
		return 0;
	end

	--¼ìÑé¹¥»÷Ä¿±êÊ¹ÓÃÌõ¼ş
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then				--´òµÄÊÇÍæ¼Ò....

		-- î§Ë¯³æ,Íæ¾ßòÚò¼²»ÄÜ¶Ô×Ô¼ºÊ¹ÓÃ....
		if itemTblIndex == 30505210 or itemTblIndex == 30505212 then
			if selfId == targetId then
				LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
				return 0
			end
		end

		--¼ì²â±»¹¥»÷ÕßÓĞÃ»ÓĞ¹êÍÃÈüÅÜÈÎÎñ
		if IsHaveMission( sceneId, targetId, x808087_g_MissionID ) <= 0 then
			x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_061}" )
			return 0
		end
		
		--¼ì²â±»¹¥»÷ÕßµÀ¾ßÊ¹ÓÃÌõ¼ş
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, targetId, x808087_g_ImpactID) == 0 then
			x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_061}" )
			return 0
		end
	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 0

	end

	return 1

end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔğÏûºÄµÄ¼ì²âÒ²¸ºÔğÏûºÄµÄÖ´ĞĞ¡£
--**********************************
function x808087_OnDeplete( sceneId, selfId )
	if(LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--Ö»»áÖ´ĞĞÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒıµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x808087_OnActivateOnce( sceneId, selfId )
	
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808087_g_itemList[itemTblIndex];
	if not itemCur then
		x808087_NotifyFailTips(sceneId, selfId, "Chßa m· ğÕo cø, không th¬ sØ døng.");
		return 0;
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--´òµÄÊÇÆäËûÍæ¼Ò....
		-- ¼ì²â±»¹¥»÷ÕßImpact
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, targetId, itemCur.SelfimpactID) ~= 0 then
			if itemCur.impactId01 ~= 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, itemCur.impactId01, 0);
			end
		else
			if itemCur.impactId02 ~= 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, itemCur.impactId02, 0);
			end
		end
		
	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 1

	end

	return 1;

end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x808087_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÊÇÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
-- ĞÑÄ¿ÌáÊ¾
--**********************************
function x808087_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
