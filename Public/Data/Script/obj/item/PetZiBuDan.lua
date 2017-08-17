-- ´´½¨ÈË[ QUFEI 2007-09-26 22:53 UPDATE BugID 25292 ]

-- ÈËÃñ±Ò³èÁ¸_×Ì²¹µ¤ £¨¸Ä³ÉÕıÈ·Ãû×Ö£©
-- ItemID = 30607000
-- 702000
-- Ôö¼Ó³èÎïÉúÃüÖµºÍ¿ìÀÖ¶È
-- ÎïÆ·¿ÉÒÔÊ¹ÓÃ100´Î
-- ÒÔºóÃ¿´ÎÊ¹ÓÃ¿ÛÒ»´Î£¬¿ÛÍê¾ÍÉ¾³ıÎïÆ·

-- ³èÎïÍ¨ÓÃ¹¦ÄÜ½Å±¾
x702000_g_petCommonId = PETCOMMON

--******************************************************************************
-- ÒÔÏÂ²¿·ÖĞèÒªÊÇĞèÒªĞŞ¸ÄµÄ²¿·Ö
--******************************************************************************

--½Å±¾ºÅ £¨¸Ä³ÉÕıÈ·½Å±¾ºÅ£©
x702000_g_scriptId = 702000

-- Ôö¼ÓÖµ £¨¸ù¾İÒªÇó¸ÄĞ´¾ßÌåÊıÖµ£©
x702000_g_HPValue = 5000			-- ÉúÃüÖµÔö¼ÓÖµ
x702000_g_MaxHPValue = 0			-- ×î´óÉúÃüÖµÔö¼ÓÖµ
x702000_g_LifeValue = 0				-- ÊÙÃüÔö¼ÓÖµ
x702000_g_HappinessValue = 1	-- ¿ìÀÖ¶ÈÔö¼ÓÖµ
x702000_g_MaxUseCount = 100		-- ×î´óÊ¹ÓÃ´ÎÊı100´Î

--±ê×¼Ğ§¹ûID £¨¸Ä³É³èÎï³Ô³èÁ¸µÄÌØĞ§£©
--g_ImpactID = 0

--******************************************************************************
-- ÒÔÉÏ²¿·ÖĞèÒªÊÇĞèÒªĞŞ¸ÄµÄ²¿·Ö
--******************************************************************************

--½Å±¾

--**********************************
--±ØĞë·µ»Ø 1 ²ÅÄÜÕıÈ·Ö´ĞĞÒÔÏÂÁ÷³Ì
--**********************************
function x702000_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x702000_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	-- µÃµ½µ±Ç°ÕıÔÚÊ¹ÓÃµÄÎïÆ·µÄ±³°üÎ»ÖÃ
	nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	
	ret = CallScriptFunction( x702000_g_petCommonId, "IsPetCanUseFood", sceneId, selfId, nIndex )
	return ret
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔğÏûºÄµÄ¼ì²âÒ²¸ºÔğÏûºÄµÄÖ´ĞĞ¡£
--**********************************
function x702000_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1
	end
	return 0
end

--**********************************
--Ö»»áÖ´ĞĞÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒıµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x702000_OnActivateOnce( sceneId, selfId )

	local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
  local ValidValue = x702000_g_MaxUseCount - UseValue

	-- PrintNum(UseValue)
	
	local petGUID_H = LuaFnGetHighSectionOfTargetPetGuid( sceneId, selfId )
	local petGUID_L = LuaFnGetLowSectionOfTargetPetGuid( sceneId, selfId )	
	
	local valueHP = LuaFnGetPetHP( sceneId, selfId, petGUID_H, petGUID_L )
	local MaxHP = LuaFnGetPetMaxHP( sceneId, selfId, petGUID_H, petGUID_L )
	
	local valueHappy = LuaFnGetPetHappiness( sceneId, selfId, petGUID_H, petGUID_L )
	local MaxHappiness = 100
	
	-- PrintNum(valueHP)
	-- PrintNum(MaxHP)
	-- PrintNum(valueHappy)
	
	if valueHP == MaxHP and valueHappy == MaxHappiness then
		x702000_ShowMsg( sceneId, selfId, "Trân thú không c¥n sØ døng thÑc ån")
		return 0
	end

	--ÏûºÄÒ»´ÎÕäÊŞ×Ì²¹µ¤
	if bagId >= 0 then		
	
		if UseValue >= x702000_g_MaxUseCount then   --¼ÇÂ¼µÄÊ¹ÓÃ´ÎÊı´óÓÚµÈÓÚ×î´ó¿ÉÓÃ´ÎÊı,ÀíÂÛÉÏ²»¿ÉÄÜ³öÏÖ.
		    return 0
		end
		
		local CurValue = UseValue + 1
		
		-- PrintNum(CurValue)
		
		SetBagItemParam( sceneId, selfId, bagId, 4, 2, x702000_g_MaxUseCount ) --ÉèÖÃ×î´ó´ÎÊı
		SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --ÉèÖÃÒÑÓÃ´ÎÊı
				
		--------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áÊ§°Ü
		local CheckParam1 = GetBagItemParam( sceneId, selfId, bagId, 4, 2 )   
		local CheckParam2 = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
		
		-- PrintNum(CheckParam1)
		-- PrintNum(CheckParam2)
		
		if CheckParam1 ~= x702000_g_MaxUseCount then
		    return 0
		end
		if CheckParam2 ~= CurValue then
		    return 0
		end
		--------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áÊ§°Ü
		
		
		LuaFnRefreshItemInfo( sceneId, selfId, bagId )	--Ë¢ĞÂ±³°üĞÅÏ¢
	    
		if CurValue >= x702000_g_MaxUseCount then  --µ±Ê¹ÓÃ´ÎÊı´ïµ½×î´ó´ÎÊıÊ±,½«É¾³ı´ËÎïÆ·
			local EraseRet = EraseItem( sceneId, selfId, bagId )
			
			-- PrintStr("É¾³ı")
			-- PrintNum(EraseRet)
			
			if EraseRet < 0 then      --Èç¹ûÉ¾³ıÊ§°Ü,½«²»»á²úÉúÈÎºÎĞ§¹û
			  local strMsg = "C¥n có Trân Thú Tß B± Ğan."
				x702000_ShowMsg( sceneId, selfId, strMsg)
				return 0
			end
			
		end
	else
		local strMsg = "C¥n có Trân Thú Tß B± Ğan."
		x702000_ShowMsg( sceneId, selfId, strMsg)
		return 0
	end

	-- ÏûºÄÕäÊŞ×Ì²¹µ¤Íê±Ï

	-- PrintNum(x702000_g_HPValue)

	if x702000_g_HPValue > 0 then
		CallScriptFunction( x702000_g_petCommonId, "IncPetHP", sceneId, selfId, x702000_g_HPValue )
	end

	if x702000_g_MaxHPValue > 0 then
		CallScriptFunction( x702000_g_petCommonId, "IncPetMaxHP", sceneId, selfId, x702000_g_MaxHPValue )
	end

	if x702000_g_LifeValue > 0 then
		CallScriptFunction( x702000_g_petCommonId, "IncPetLife", sceneId, selfId, x702000_g_LifeValue )
	end

	if x702000_g_HappinessValue > 0 then
		local happy = LuaFnGetPet_Happyness(sceneId, selfId, 0)
		
		-- PrintNum(happy)
		
		if valueHappy < 60 then
			local happyes = 61 - valueHappy
			
			-- PrintNum(happyes)
			
			CallScriptFunction( x702000_g_petCommonId, "IncPetHappiness", sceneId, selfId, happyes )
		else
			CallScriptFunction( x702000_g_petCommonId, "IncPetHappiness", sceneId, selfId, x702000_g_HappinessValue )
		end
	end

--	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, g_ImpactID, 0)
	return 1
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x702000_OnActivateEachTick( sceneId, selfId )
	return 1
end

-- Õâ¸öº¯ÊıÃ»ÓĞÊ²Ã´ÓÃ£¬µ«ÊÇ±ØĞëÓĞ
function x702000_CancelImpacts( sceneId, selfId )
	return 0
end

function x702000_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
