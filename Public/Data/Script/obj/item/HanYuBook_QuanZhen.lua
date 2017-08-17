--È«ÕæĞĞ¹¦Òª¾÷

--º®Óñ´²¹Ò»úÓÃµÄÊé....RMBÊé....

x300067_g_scriptId = 300067

x300067_g_NoRMBBuffID = 5901	--·ÇRMB¹Ò»úµÄbuffµÄID....
x300067_g_RMBBuffID = 5902		--RMB¹Ò»úµÄbuffµÄID....

x300067_g_SpouseBuffID = 5704

x300067_g_MaxUseCount = 10
x300067_g_SkillBook30_OneTime_id = 30700203; -- zchw

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300067_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x300067_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x300067_CancelImpacts( sceneId, selfId )
	return 0; --²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x300067_OnConditionCheck( sceneId, selfId )

	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local BagIndex = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	local BookId = LuaFnGetItemTableIndexByIndex(sceneId, selfId, BagIndex)
	local PlayerLevel = GetLevel( sceneId, selfId )
	if 30700201 == BookId then
		if PlayerLevel < 90 then
			x300067_ShowTips( sceneId, selfId, "Yªu Quyªt này chï thích hşp c¤p 90 tr· lên ( bao g°m cä c¤p 90 ) tu luy®n." )
			return 0
		end
	elseif 30700202 == BookId then
		if PlayerLevel >= 90 then
			x300067_ShowTips( sceneId, selfId, "Yªu Quyªt này chï thích hşp c¤p 90 tr· xu¯ng ( không bao g°m c¤p 90 ) tu luy®n." )
			return 0
		end
	elseif x300067_g_SkillBook30_OneTime_id == BookId or 30504039 == BookId then
	else
		return 0
	end

	--´ËÒª¾÷ÔÚ±¾³¡¾°Ê¹ÓÃÎŞĞ§....
	if sceneId ~= 194 then
		x300067_ShowTips( sceneId, selfId, "Yªu Quyªt này không th¬ sØ døng tÕi ğây." )
		return 0
	end
	
	--Äã½ñÌìÒÑ¾­Ê¹ÓÃ¹ıº®Óñ´²ĞĞ¹¦Òª¾÷....
	local lastDayTime = GetMissionData( sceneId, selfId, MD_HANYUBED_USEBOOK_LASTDAY )
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		x300067_ShowTips( sceneId, selfId, "Ngß½i hôm nay ğã sØ døng C± Mµ Hành Công Yªu Quyªt." )
		return 0
	end

	--µ±Ç°ÊÇ·ñÒÑÓĞ¹Ò»úbuff....
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x300067_g_NoRMBBuffID ) == 1 then
		x300067_ShowTips( sceneId, selfId, "Ngß½i ğã tu luy®n" )
		return 0
	end

	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x300067_g_RMBBuffID ) == 1 
	 	or LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x300067_g_SpouseBuffID ) == 1 then
		x300067_ShowTips( sceneId, selfId, "Ngß½i ğã tu luy®n" )
		return 0
	end

	return 1; --²»ĞèÒªÈÎºÎÌõ¼ş£¬²¢ÇÒÊ¼ÖÕ·µ»Ø1¡£

end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔğÏûºÄµÄ¼ì²âÒ²¸ºÔğÏûºÄµÄÖ´ĞĞ¡£
--**********************************
function x300067_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
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
function x300067_OnActivateOnce( sceneId, selfId )
    
  local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
  -- zchw
  local BookId = LuaFnGetItemTableIndexByIndex(sceneId, selfId, bagId) 
  if BookId == x300067_g_SkillBook30_OneTime_id or 30504039 == BookId then
  else
  
	  local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
	  local ValidValue = x300067_g_MaxUseCount - UseValue
	
		if UseValue >= x300067_g_MaxUseCount then   --¼ÇÂ¼µÄÊ¹ÓÃ´ÎÊı´óÓÚµÈÓÚ×î´ó¿ÉÓÃ´ÎÊı,ÀíÂÛÉÏ²»¿ÉÄÜ³öÏÖ.
		    return 0
		end
	
		local CurValue = UseValue + 1
		SetBagItemParam( sceneId, selfId, bagId, 4, 2, x300067_g_MaxUseCount ) --ÉèÖÃ×î´ó´ÎÊı
		SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --ÉèÖÃÒÑÓÃ´ÎÊı
		LuaFnRefreshItemInfo( sceneId, selfId, bagId )
		    
		if CurValue >= x300067_g_MaxUseCount then  --µ±Ê¹ÓÃ´ÎÊı´ïµ½×î´ó´ÎÊıÊ±,½«É¾³ı´ËÎïÆ·
			local ret = EraseItem( sceneId, selfId, bagId )
			if ret < 0 then	 --Èç¹ûÉ¾³ıÊ§°Ü,½«²»»á¸øÍæ¼Òbuff
					return 0
			end
		end
		
	end

	--¸øÍæ¼Òº®Óñ´²¹Ò»úbuff....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300067_g_RMBBuffID, 0)

	CallScriptFunction( 808072, "OnPlayerUseHanYuBook", sceneId, selfId )

	--¼ÇÂ¼½ñÌìÓÃ¹ıÊéÁË....
	local CurDayTime = GetDayTime()
	SetMissionData( sceneId, selfId, MD_HANYUBED_USEBOOK_LASTDAY, CurDayTime )

	return 1

end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x300067_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÊÇÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end


function x300067_ShowTips( sceneId, selfId, msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
