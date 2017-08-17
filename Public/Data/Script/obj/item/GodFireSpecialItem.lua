--´´½¨ÈË:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]

--¹êÍÃÈüÅÜ»î¶¯ÏİÚåµÀ¾ßÊ¹ÓÃ½Å±¾


--½Å±¾ºÅ
x808089_g_scriptId = 808089

--ĞèÒªµÄµÈ¼¶
--ĞèÒªµÄÈÎÎñID
x808089_g_MissionID = 1000

--ĞèÒªµÄĞ§¹ûID	»ğ°ÑÊ¹Õß
x808089_g_ImpactID 	= 5929

x808089_g_itemList = {}
x808089_g_SpecialList = {}
x808089_g_itemList[30505209] = { SpecialID=47 }			-- Î÷¹ÏÆ¤
x808089_g_itemList[30505211] = { SpecialID=48 }			-- ²¶ÊŞ¼Ğ

--ÏİÚåµÄID	Èç¹ûÍæ¼ÒÉíÉÏÓĞ SelfimpactID,ÔòÊ¹ÓÃ impactId01,·ñÔòÊ¹ÓÃ impactId02
x808089_g_SpecialList[47] = { SelfimpactID=5933, impactId01=5936, impactId02=5935 }
x808089_g_SpecialList[48] = { SelfimpactID=5933, impactId01=0, 	 impactId02=5937 }

-- ÏİÚå¼¤»îÑÓ³ÙÊ±¼ä_ºÁÃë
x808089_g_Special_DelayTime = 5000

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x808089_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x808089_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x808089_CancelImpacts( sceneId, selfId )
	return 0; --²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x808089_OnConditionCheck( sceneId, selfId )

	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	--¼ì²âÊ¹ÓÃÕßÓĞÃ»ÓĞ¹êÍÃÈüÅÜÈÎÎñ
	if IsHaveMission( sceneId, selfId, x808089_g_MissionID ) <= 0 then
		x808089_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_011}" )
		return 0
	end
	
	--¼ì²âÊ¹ÓÃÕßµÀ¾ßÊ¹ÓÃÌõ¼ş
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808089_g_ImpactID) == 0 then
		x808089_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );

	local itemCur = x808089_g_itemList[itemTblIndex];
	if not itemCur then
		x808089_NotifyFailTips(sceneId, selfId, "Chßa m· ğÕo cø, không th¬ sØ døng.");
		return 0;
	end

	return 1

end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔğÏûºÄµÄ¼ì²âÒ²¸ºÔğÏûºÄµÄÖ´ĞĞ¡£
--**********************************
function x808089_OnDeplete( sceneId, selfId )
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
function x808089_OnActivateOnce( sceneId, selfId )
	
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808089_g_itemList[itemTblIndex];
	if not itemCur then
		x808089_NotifyFailTips(sceneId, selfId, "Chßa m· ğÕo cø, không th¬ sØ døng.");
		return 0;
	end

	local posX,posZ = GetWorldPos(sceneId, selfId)
	CreateSpecialObjByDataIndex(sceneId, selfId, itemCur.SpecialID, posX, posZ, x808089_g_Special_DelayTime )
	return 1;

end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x808089_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÊÇÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
-- ĞÑÄ¿ÌáÊ¾
--**********************************
function x808089_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--*****************************************************
-- Íæ¼Ò´¥·¢SpecialÊ±»Øµ÷¼ì²â½Å±¾,¸ù¾İ·µ»ØÖµÈ·¶¨ÊÇ·ñÏìÓ¦
-- ²ÎÊıËµÃ÷:³¡¾°ID,ÏİÚåÍ¶·ÅÕßID,ÏİÚå´¥·¢ÕßID,ÏİÚåID
--*****************************************************
function x808089_OnSpecialCheck( sceneId, AttackObjID, SpringObjID, SpecialId )

	--¼ìÑé´¥·¢ÕßÌõ¼ş
	if AttackObjID < 0 or SpringObjID < 0 then
		return 0
	end
  
  local SpecialCur = x808089_g_SpecialList[SpecialId];
	if not SpecialCur then		
		return 0;
	end
	
	-- ²¶ÊŞ¼Ğ²»ÄÜ¶Ô×Ô¼ºÊ¹ÓÃ....
	if SpecialId == 48 then
		if AttackObjID == SpringObjID then			
			return 0
		end
	end
  
	--¼ì²â±»¹¥»÷ÕßÓĞÃ»ÓĞ¹êÍÃÈüÅÜÈÎÎñ
	if IsHaveMission( sceneId, SpringObjID, x808089_g_MissionID ) <= 0 then
		return 0
	end
	
	--¼ì²â±»¹¥»÷ÕßµÀ¾ßÊ¹ÓÃÌõ¼ş
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, SpringObjID, x808089_g_ImpactID) == 0 then
		return 0
	end
	
	return 1
end

--*************************************************
-- Íæ¼Ò´¥·¢SpecialÊ±»Øµ÷´¥·¢½Å±¾,¸øÓèImpact
-- ²ÎÊıËµÃ÷:³¡¾°ID,ÏİÚå´¥·¢ÕßID,ÏİÚåID
--*************************************************
function x808089_OnSpecialFadeOut( sceneId, SpringObjID, SpecialId )

	--¼ìÑé´¥·¢ÕßÌõ¼ş
	if SpringObjID < 0 then
		return 0
	end
  
  local SpecialCur = x808089_g_SpecialList[SpecialId];
	if not SpecialCur then		
		return 0;
	end

	--¼ì²â±»¹¥»÷ÕßÓĞÃ»ÓĞ¹êÍÃÈüÅÜÈÎÎñ
	if IsHaveMission( sceneId, SpringObjID, x808089_g_MissionID ) <= 0 then
		return 0
	end
	
	--¼ì²â±»¹¥»÷ÕßµÀ¾ßÊ¹ÓÃÌõ¼ş
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, SpringObjID, x808089_g_ImpactID) == 0 then
		return 0
	end

	-- ¼ì²â±»¹¥»÷ÕßImpact
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, SpringObjID, SpecialCur.SelfimpactID) ~= 0 then
		if SpecialCur.impactId01 ~= 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, SpringObjID, SpringObjID, SpringObjID, SpecialCur.impactId01, 0);
		end
	else
		if SpecialCur.impactId02 ~= 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, SpringObjID, SpringObjID, SpringObjID, SpecialCur.impactId02, 0);
		end
	end

	return 1
end
