--ÇéÈË½Ú»î¶¯

--°®ÉñÖ®¼ıÊ¹ÓÃ½Å±¾


--½Å±¾ºÅ
x300071_g_scriptId = 300071

--×î´óÊ¹ÓÃ´ÎÊı
x300071_UseMaxCount = 3

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300071_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x300071_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x300071_CancelImpacts( sceneId, selfId )
	return 0; --²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x300071_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--´òµÄÊÇÍæ¼Ò....

			--²»ÄÜ¶Ô×Ô¼ºÊ¹ÓÃ....
		if selfId == targetId then
			x300071_MsgBox( sceneId, selfId, "#{QRJ_81009_19}" )
			return 0
		end
		
			--ÅĞ¶ÏÁ½ÈËµÄĞÔ±ğ
			
		if (LuaFnGetSex(sceneId,selfId) == LuaFnGetSex(sceneId,targetId)) then
			x300071_MsgBox( sceneId, selfId, "#{QRJ_81009_20}")
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
function x300071_OnDeplete( sceneId, selfId )
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
function x300071_OnActivateOnce( sceneId, selfId )
	
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--´òµÄÊÇÆäËûÍæ¼Ò....
		
			--±³°üÖĞµÄÎ»ÖÃ
		local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
		if bagId < 0 then
			return 1
		end 
			--¼ì²âÎïÆ·ÊÇ·ñ¼ÓËø
		if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
			x300071_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
			return 1
		end
		
		local	CurUseCount			--°®ÉñÖ®¼ıµÄÊ£ÓàÊ¹ÓÃ´ÎÊı
		CurUseCount		= GetBagItemParam( sceneId, selfId, bagId, 8, 2 )	--»ñÈ¡Ê£ÓàÊ¹ÓÃ´ÎÊı	
		if(CurUseCount == 0)then	--µÚÒ»´ÎÊ¹ÓÃ
			CurUseCount = x300071_UseMaxCount		
		end
		
		if (CurUseCount>0) then
			CurUseCount = CurUseCount - 1
			if(CurUseCount <= 0) then
				local ret = EraseItem( sceneId, selfId, bagId )		
				if ret ~= 1 then
					return 0--É¾³ıÊ§°Ü
				end
			end
			--±£´æÒ»ÏÂÊı¾İ
			SetBagItemParam( sceneId, selfId, bagId, 4, 2, x300071_UseMaxCount )--±£´æ×î´óÊ¹ÓÃ´ÎÊı
			SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurUseCount )--±£´æ»¹¿ÉÒÔÊ¹ÓÃ´ÎÊı
			
			--Ë¢ĞÂClient¶ËµÄ±³°üÎïÆ·ĞÅÏ¢
			LuaFnRefreshItemInfo( sceneId, selfId, bagId )
			
			LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, 74, 1500) 
			x300071_MsgBox( sceneId, targetId, LuaFnGetName(sceneId,selfId).."#{QRJ_81009_22}" )
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
function x300071_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÊÇÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x300071_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
