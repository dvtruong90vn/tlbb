--------------------------------------------
--ÓŞÈË±¦ÖéµÀ¾ß½Å±¾
--Created By ĞÅµÂ·å
--------------------------------------------

--½Å±¾ID
x335136_g_scriptId = 335136

--ÓŞÈË±¦ÖéID
x335136_g_YuRenBaoZhuID = 30501161

--×î´óÊ¹ÓÃ´ÎÊı
x335136_g_CanUseMaxCount = 5

x335136_g_CanUseCity = {[1] = SCENE_LUOYANG,[2] = SCENE_SUZHOU,[3] = SCENE_DALI,
	                      [4] = SCENE_LOULAN,[5] = 71,[6] = 72}
--Ğ§¹ûÊıÁ¿
x335136_g_ImpactCount = 10

--Ğ§¹ûID±í
x335136_g_ImpactTable = { 
	[1] = 
	{													
		[1] = 5000,
		[2] = 5001,
		[3] = 5002,
		[4] = 5003,
		[5] = 5004,
		[6] = 5005,
		[7] = 5006,
		[8] = 5007,
		[9] = 5008,
		[10] = 5009
	},
	[2] =
	{
		[1] = 5014,
		[2] = 5015,
		[3] = 5016,
		[4] = 5017,
		[5] = 5018,
		[6] = 5019,
		[7] = 5020,
		[8] = 5021,
		[9] = 5022,
		[10] = 5023
	}
	

												}

--ÂäÂí¼ıĞ§¹ûID
x335136_g_LuoMaJianImpactID = 154


--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x335136_OnDefaultEvent( sceneId, selfId, bagIndex )	
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x335136_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x335136_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x335136_OnConditionCheck( sceneId, selfId )
	--¼ì²âItemÊÇ·ñÓĞĞ§
	if(LuaFnVerifyUsedItem(sceneId, selfId) == 0) then
		return 0;	--ItemÎŞĞ§Ö±½Ó·µ»Ø
	end
	-- zchw
	local itemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	--²»ÄÜ¸ø×Ô¼ºÊ¹ÓÃ
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)--¶ÔÏóID
	if((targetId == selfId) or (targetId < 0))then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_SelfUseTip}")	--²»ÄÜ¸ø×Ô¼ºÊ¹ÓÃ
			return 0;
	end
	
	--Ö»ÄÜ¸øÍæ¼ÒÊ¹ÓÃ
	local objType = GetCharacterType( sceneId, targetId )--¶ÔÏóÀàĞÍ
	if(objType ~= 1)then	--¶ÔÏó²»ÊÇHuman
		x335136_MsgBox( sceneId, selfId, "#{ResultText_8}")	--ÎŞĞ§Ä¿±ê
		return 0
	end
	
	--¼ì²âÎïÆ·ÊÇ·ñ¼ÓËø
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	--±³°üÖĞµÄÎ»ÖÃ
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x335136_MsgBox( sceneId, selfId, "#{Item_Locked}" )	--ÎïÆ·ÒÑ¼ÓËø
		return 0
	end
	
	--¼ì²âÍæ¼ÒÊÇ²»ÊÇ´¦ÓÚ°ÚÌ¯×´Ì¬
	if LuaFnIsStalling(sceneId, selfId) == 1  then
	  if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_LimitStallageTip}")	--ÎŞ·¨¶Ô°ÚÌ¯×´Ì¬µÄÍæ¼ÒÊ¹ÓÃÓŞÈË±¦Öé
		else
			x335136_MsgBox( sceneId, selfId, "Không th¬ ğ±i trÕng thái #GBày bán #Whãy sØ døng sß ğ° bäo châu.");
		end
		return 0
	end
	
	--¼ì²â¶Ô·½ÊÇ·ñÔÚBUSÉÏ
	if(LuaFnIsInBus(sceneId, selfId, targetId) == 1)then
		if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_TargetInBusTip}")	--ÎŞ·¨¶ÔBUS×´Ì¬µÄÍæ¼ÒÊ¹ÓÃÓŞÈË±¦Öé
		else
			x335136_MsgBox( sceneId, selfId, "Không th¬ ğ±i trÕng thái BUFF hãy sØ døng sß ğ° bäo châu.");
		end
		return 0
	end
	
	--¼ì²â¶Ô·½ÊÇ·ñÔÚË«ÈËÆï³ËÉÏ
	if(LuaFnGetDRide(sceneId, selfId, targetId) == 1)then
		if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_DoubleRideTip}")	--ÎŞ·¨¶ÔË«ÈËÆï³ËµÄÍæ¼ÒÊ¹ÓÃÓŞÈË±¦Öé¡£
		else
			x335136_MsgBox( sceneId, selfId, "Không th¬ ğ±i song nhân kÜ hãy sØ døng sß ğ° bäo châu.");
		end
		return 0
	end
	
	--¼ì²âÍæ¼ÒÊÇ·ñÔÚËÄ´óÖ÷³ÇÖĞ(°üÀ¨Â¥À¼),Íæ¼ÒÔÚ,¶ÔÏóÍæ¼ÒÒ²¾ÍÔÚà¶
  local flag = 0 
  for i,_ in x335136_g_CanUseCity do
  	if sceneId == x335136_g_CanUseCity[i] then
  		 flag = 1
  	end
  end
  if flag == 0 then --0±íÊ¾Íæ¼Ò²»ÔÚËÄ´óÖ÷³ÇÖĞ
		if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_LimitCityTip}")	--Ö»ÄÜÔÚ³ÇÊĞÄÚÊ¹ÓÃÓŞÈË±¦Öé
		else
			x335136_MsgBox( sceneId, selfId, "#{STBZ_090324_1}")
		end
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
function x335136_OnDeplete( sceneId, selfId )	
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
function x335136_OnActivateOnce( sceneId, selfId )
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if(targetId < 0) then	--Ä¿±ê²»ºÏ·¨
		return 0
	end
	
	--»ñÈ¡"±¦Öé"ËùÔÚ±³°üÖĞµÄÎ»ÖÃ
	local	bagId = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	--zchw
  local itemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	--»ñÈ¡¼ÇÂ¼ÔÚÎïÆ·ÉíÉÏµÄ¶¨Î»Êı¾İ
	local	CurUseCount		= GetBagItemParam( sceneId, selfId, bagId, 8, 2 )	--»ñÈ¡Ê£ÓàÊ¹ÓÃ´ÎÊı	
	if(CurUseCount == 0)then	--µÚÒ»´ÎÊ¹ÓÃ
		CurUseCount = x335136_g_CanUseMaxCount		
	end
  
	--¼õÉÙ¿ÉÊ¹ÓÃ´ÎÊı
	CurUseCount = CurUseCount - 1
	if(CurUseCount <= 0) then
		local ret = EraseItem( sceneId, selfId, bagId )		
		if ret ~= 1 then
			return 0--É¾³ıÊ§°Ü
		end
	end
	
	--±£´æÒ»ÏÂÊı¾İ
	SetBagItemParam( sceneId, selfId, bagId, 4, 2, x335136_g_CanUseMaxCount )--±£´æ×î´óÊ¹ÓÃ´ÎÊı
	SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurUseCount )--±£´æ»¹¿ÉÒÔÊ¹ÓÃ´ÎÊı
	
	--Ë¢ĞÂClient¶ËµÄ±³°üÎïÆ·ĞÅÏ¢
	LuaFnRefreshItemInfo( sceneId, selfId, bagId )
	
	--¼ÓĞ§¹û
	local bRet = LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, x335136_g_LuoMaJianImpactID, 0)	--ÏÈÊ¹ÓÃÂäÂí¼ıĞ§¹û
	
	if (bRet == 1) then	--ÂäÂí¼ı³É¹¦
	  -- zchw
	  if (itemIndex == x335136_g_YuRenBaoZhuID) then
			local ImpactIndex = x335136_g_ImpactTable[1][random(x335136_g_ImpactCount)]	--Ëæ»úÑ¡ÔñĞ§¹û
			bRet = LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, ImpactIndex, 0)		--ÔÙÌí¼Ó±äÉíĞ§¹û
		elseif (itemIndex == 30501162) then --Ê¦Í½±¦Öé
			local ImpactIndex = x335136_g_ImpactTable[2][random(x335136_g_ImpactCount)]	--Ëæ»úÑ¡ÔñĞ§¹û
			bRet = LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, ImpactIndex, 0)		--ÔÙÌí¼Ó±äÉíĞ§¹û
		end
	end
	
	if(bRet == 1) then --±äÉí³É¹¦
		--zchw
		if (itemIndex == x335136_g_YuRenBaoZhuID) then
			 szMsg = format("Ngß½i %s sØ døng Th¢ng B¶m Bäo Châu ", GetName(sceneId,selfId))
		elseif (itemIndex == 30501162) then --Ê¦Í½±¦Öé
			 szMsg = format("Ngß½i %s sØ døng Sß Ğ° Bäo Châu ", GetName(sceneId,selfId))
		end	
		x335136_MsgBox( sceneId, targetId, szMsg )	--¸ø¶Ô·½·¢Ò»¸öÏûÏ¢:Äã±»XXXÊ¹ÓÃÁËÓŞÈË±¦Öé
	end
	
	return 1
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x335136_OnActivateEachTick( sceneId, selfId)
	return 1
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x335136_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
