-- ÍÁ¶İÖé
-- 300056
-- ÎïÆ·¿ÉÒÔÊ¹ÓÃ10´Î
-- µÚÒ»´ÎÊ¹ÓÃ¡°¶¨Î»·µ»Øµã¡±
-- ÒÔºóÃ¿´ÎÊ¹ÓÃ¿ÛÒ»´Î£¬¿ÛÍê¾ÍÉ¾³ıÎïÆ·£¬Ë²ÒÆµ½·µ»Øµã

x300056_g_scriptId = 300056
x300056_g_ItemId = 30008030


--ÒøÆ±
x300056_g_Yinpiao = 40002000

-- ÏŞÖÆÊ¹ÓÃ´«ËÍ¹¦ÄÜµÄ³¡¾°
x300056_g_NoChuangsongScn=
{
	151		-- ¼àÓü
}

-- ÏŞÖÆÊ¹ÓÃÍÁ¶İÖé¶¨Î»µÄ³¡¾°
x300056_g_UselessScn=
{
	125,	-- »ªÉ½
	414	  -- ¾º¼¼³¡	
}


--½ûÖ¹´«ËÍµ½Ä³Ğ©³¡¾°µÄµÈ¼¶ÏŞÖÆ....
x300056_g_LimitTransScene =
{
	{423,90},	--»ğÑæÉ½
	{519,90},	--»ğÑæ¹È
	{424,90},	--¸ß²ı
	{520,90},	--¸ß²ıÃÔ¹¬
	{425,90},	--ËşÀïÄ¾
	{427,90},	--Ëş¿ËÀ­Âê¸É
	{186,75},	--Â¥À¼
	{431,90}, --´óÍğ
	{432,90}  --º¹ÑªÁë
}

x300056_g_Impact_NotTransportList = { 5929 } -- ½ûÖ¹´«ËÍµÄImpact
x300056_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}" } -- ½ûÖ¹´«ËÍµÄImpactÌáÊ¾ĞÅÏ¢

--**********************************
-- ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300056_OnDefaultEvent( sceneId, selfId, nItemIndex )
	
end

function x300056_IsSkillLikeScript( sceneId, selfId )
	return 1	 --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end

function x300056_CancelImpacts( sceneId, selfId )
	return 0	 --²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end

function x300056_OnDeplete( sceneId, selfId )
	return 1
end

--**********************************
-- 
--**********************************
function x300056_OnConditionCheck( sceneId, selfId , idid)

	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	
	-- ÅĞ¶ÏÕâ¸öÎïÆ·ÊÇ²»ÊÇÒÑ¾­¶¨Î»
	if GetItemTableIndexByIndex(sceneId, selfId, bagId) ~= x300056_g_ItemId  then
		return 0
	end
	
	--¼ì²âÎïÆ·ÊÇ·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		return 0
	end

	--¼ì²âImpact×´Ì¬×¤ÁôĞ§¹û
	for i, ImpactId in x300056_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x300056_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end

	-- 1£¬¼ì²âÕâ¸öÎïÆ·ÊÇ²»ÊÇÓĞ¼ÇÂ¼µÄÊı¾İÁË£¬
	-- ĞèÒª¼ÇÂ¼µÄÊı¾İÊÇ£¬Ê¹ÓÃ´ÎÊı£¬¶¨Î»³¡¾°Id£¬ÒÑ¾­×ø±ê
	local nUseCount	= GetBagItemParam(sceneId, selfId, bagId, 0, 2)
	local x	= GetBagItemParam(sceneId, selfId, bagId, 4, 2)
	local z	= GetBagItemParam(sceneId, selfId, bagId, 8, 2)

	local nTarSceneId = floor(nUseCount/100)
	local nCount = nUseCount - nTarSceneId*100
	
	if nUseCount==0 and x==0 and z==0  then
		x300056_MsgBox( sceneId, selfId, "Ğµn Th± Châu cüa các hÕ chßa h« ğ¸nh v¸!" )
		return 0
	end

	--¼ì²âÄ¿±ê³¡¾°ÊÇ·ñÏŞÖÆµÈ¼¶....
	for _, tmp in x300056_g_LimitTransScene do
		if ( (tmp[1] == nTarSceneId) and (GetLevel(sceneId, selfId) < tmp[2]) ) then
			local szMsg = format("Bän ğ° c¥n c¤p %d tr· lên m¾i có th¬ tiªn vào", tmp[2])
			x300056_MsgBox( sceneId, selfId, szMsg)
			return 0
		end
	end

	return 1
end

--**********************************
-- 
--**********************************
function x300056_CallMe( sceneId, selfId, nItemIndex, PlayerGuid)	
	
	-- ¼ì²âÕâ¸öÍæ¼ÒÊÇ²»ÊÇÄÜ¹»Ê¹ÓÃÍÁ¶İÖé¶¨Î»
	--ÅĞ¶Ïµ±Ç°×´Ì¬ÊÇ·ñ¿ÉÊ¹ÓÃ¶¨Î»·û
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		x300056_MsgBox( sceneId, selfId, "Khu vñc các hÕ không cho phép di chuy¬n, không th¬ sØ døng Thô Ğµn Châu d¸ch chuy¬n!" )
		return 0
	end

	--¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓĞ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x300056_g_Yinpiao) >= 1  then
		x300056_MsgBox(sceneId, selfId, "Khu vñc các hÕ không cho phép di chuy¬n, không th¬ sØ døng Thô Ğµn Châu d¸ch chuy¬n!")
		return 0
	end
	
	--¼ì²âÍæ¼ÒÊÇ²»ÊÇ´¦ÓÚ²»ÔÊĞí´«ËÍµÄ³¡¾°£¬±ÈÈç¼àÓü
	for _, tmp in x300056_g_NoChuangsongScn do
		if tmp == sceneId then
			x300056_MsgBox( sceneId, selfId, "Trong khu vñc này không th¬ sØ døng Th± Ğµn Châu d¸ch chuy¬n!" )
			return 0
		end
	end
	
	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇ´¦ÓÚ°ÚÌ¯×´Ì¬£¬
	if LuaFnIsStalling(sceneId, selfId) == 1  then
		x300056_MsgBox( sceneId, selfId, "Trong trÕng thái buôn bán, không th¬ sØ døng Th± Ğµn Châu d¸ch chuy¬n!" )
		return 0
	end
	
	-- ´¦ÓÚ×é¶Ó¸úËæ×´Ì¬ÏÂ£¬²»ÄÜ´«ËÍ
	if IsTeamFollow(sceneId, selfId) == 1  then
		x300056_MsgBox( sceneId, selfId, "Các hÕ ğang trong trang thái t± ğµi theo sau, không th¬ sØ døng Th± Ğµn Châu d¸ch chuy¬n!" )
		return 0
	end
	
	-- [ QUFEI 2007-08-23 20:50 UPDATE BugID 23699 ]
	-- ´¦ÓÚÊ¹ÓÃ½»Í¨¹¤¾ß×´Ì¬ÏÂ£¬²»ÄÜ´«ËÍ
	local	inbus = LuaFnGetBusPassengerIDIsInBus(sceneId, selfId)
	-- PrintNum(inbus)
	if inbus == 1 then
		x300056_MsgBox( sceneId, selfId, "Khu vñc các hÕ không n¢m trong tình trÕng sØ døng d¸ch chuy¬n, không th¬ sØ døng ğÕo cø d¸ch chuy¬n!" )
		return 0
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôĞ§¹û
	for i, ImpactId in x300056_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x300056_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	-- ¿´PlayerGuid ÊÇ²»ÊÇ¶ÓÎéÖĞµÄÈË£¬È»ºóÔÙ¿´Ê±¼äÊÇ²»ÊÇ¹ıÆÚ£¬±ğµÄÒ²Ã»ÓĞÊ²Ã´ÄÜ¼ì²éµÄÁË
	local Time = GetMissionData(sceneId,selfId,MD_TDZ_TIME)
	local nTarSceneId = GetMissionData(sceneId,selfId,MD_TDZ_SCENE)
	local x = GetMissionData(sceneId,selfId,MD_TDZ_X)
	local z = GetMissionData(sceneId,selfId,MD_TDZ_Y)
	
	--¼ì²âÄ¿±ê³¡¾°ÊÇ·ñÏŞÖÆµÈ¼¶....
	for _, tmp in x300056_g_LimitTransScene do
		if ( (tmp[1] == nTarSceneId) and (GetLevel(sceneId, selfId) < tmp[2]) ) then
			local szMsg = format("Bän ğ° c¥n c¤p %d tr· lên m¾i có th¬ tiªn vào.", tmp[2])
			x300056_MsgBox( sceneId, selfId, szMsg)
			return 0
		end
	end
	
	if LuaFnGetCurrentTime() - Time < 30  then
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, nTarSceneId, x, z)
	end

	SetMissionData(sceneId,selfId,MD_TDZ_TIME,	0)
	SetMissionData(sceneId,selfId,MD_TDZ_SCENE,0)
	SetMissionData(sceneId,selfId,MD_TDZ_X,	0)
	SetMissionData(sceneId,selfId,MD_TDZ_Y,	0)
	
end

--**********************************
-- Íæ¼Ò×Ô¼ºÊ¹ÓÃÎïÆ·
--**********************************
function x300056_UseItem( sceneId, selfId, nType, nItemIndex )
	
	if GetLevel(sceneId, selfId)<10  then
		x300056_MsgBox( sceneId, selfId, "Không ğü ğÆng c¤p" )
		return
	end
	
	-- ·µ»Ø²ÎÊı£¬¶¨Î»0£¬´«ËÍ1
	if nType == 0  then
		x300056_SetPosition( sceneId, selfId, nItemIndex )
		
	elseif nType == 1  then
		--x300056_PlayerGoto( sceneId, selfId, nItemIndex )
	end
	
end

--**********************************
-- 
--**********************************
function x300056_OnActivateOnce( sceneId, selfId )
	
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	
	if bagId<0  then
		return
	end
	
	x300056_PlayerGoto( sceneId, selfId, bagId )

	--	-- ĞÂµÄĞŞ¸Ä£¬ÔÚÕâÀïµ¯³ö¶Ô»°¿òÌáÎÊÍæ¼ÒÊÇ×ö´«ËÍ»¹ÊÇ¶¨Î»¡£=======
	--	local	nItemIndex	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	--
	--	BeginUICommand(sceneId)
	--		UICommand_AddInt(sceneId,x300056_g_scriptId);
	--		UICommand_AddString(sceneId,"UseItem");
	--		UICommand_AddInt(sceneId,nItemIndex);
	--	EndUICommand(sceneId)
	--	DispatchUICommand(sceneId,selfId, 1008)
	
end

--**********************************
-- 
--**********************************
function x300056_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- Íæ¼ÒÊ¹ÓÃÎïÆ· ¶¨Î»
--**********************************
function x300056_SetPosition( sceneId, selfId, nItemIndex )

	if LuaFnGetSceneType( sceneId ) == 1 or LuaFnGetSceneType( sceneId ) == 4 then
		x300056_MsgBox( sceneId, selfId, "Trong thành th¸ bang hµi ho£c phø bän không th¬ sØ døng Th± Ğµn Châu ğ¸nh v¸!" )
		return 0
	end
	for _, tmp in x300056_g_UselessScn do
		if tmp == sceneId then
			x300056_MsgBox( sceneId, selfId, "Trong khu vñc này không th¬ sØ døng Th± Ğµn Châu ğ¸nh v¸!" )
			return 0
		end
	end

	-- 0£¬ÎïÆ·°²È«ĞÔ¼ì²é
	-- ÏÈ¼ì²âÕâ¸ö nItemIndex µÄÎïÆ·ÊÇ²»ÊÇºÍµ±Ç°µÄ¶ÔÓ¦£¬
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300056_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m ğã b¸ höng.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--¼ì²âÎïÆ·ÊÇ·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, nItemIndex, 0 ) < 0 then
		x300056_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return 0
	end

	-- 1£¬¼ì²âÕâ¸öÎïÆ·ÊÇ²»ÊÇÓĞ¼ÇÂ¼µÄÊı¾İÁË£¬
	-- ĞèÒª¼ÇÂ¼µÄÊı¾İÊÇ£¬Ê¹ÓÃ´ÎÊı£¬¶¨Î»³¡¾°Id£¬ÒÑ¾­×ø±ê
	local nUseCount	= GetBagItemParam(sceneId, selfId, nItemIndex, 0, 2)
	local x	= GetBagItemParam(sceneId, selfId, nItemIndex, 4, 2)
	local z	= GetBagItemParam(sceneId, selfId, nItemIndex, 8, 2)

	local nTarSceneId = floor(nUseCount/100)
	local nCount = nUseCount - nTarSceneId*100
	
	if nUseCount==0 and x==0 and z==0  then
		nCount = 10
	end 
	
	-- Ò»¸öĞÂµÄÃ»ÓĞ¶¨Î»¹ıµÄÎïÆ·
	-- ¼ÇÂ¼ÏÂµ±Ç°³¡¾°ºÍÎ»ÖÃ£¬ÉèÖÃÊ¹ÓÃ´ÎÊıÎª10
	local x
	local z
	x,z = GetWorldPos(sceneId, selfId)
	
	SetBagItemParam(sceneId, selfId, nItemIndex, 0, 2, sceneId*100+nCount)
	SetBagItemParam(sceneId, selfId, nItemIndex, 4, 2, floor(x))
	SetBagItemParam(sceneId, selfId, nItemIndex, 8, 2, floor(z))
	LuaFnRefreshItemInfo( sceneId, selfId, nItemIndex )
	
	BeginEvent(sceneId)
		AddText(sceneId,"Ğ¸nh v¸ thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
-- Íæ¼Ò×Ô¼ºµÄ´«ËÍ
--**********************************
function x300056_PlayerGoto( sceneId, selfId, nItemIndex )
	
	-- 0£¬ÎïÆ·°²È«ĞÔ¼ì²é
	-- ÏÈ¼ì²âÕâ¸ö nItemIndex µÄÎïÆ·ÊÇ²»ÊÇºÍµ±Ç°µÄ¶ÔÓ¦£¬
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300056_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m ğã b¸ höng.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ´¦ÓÚ×é¶Ó¸úËæ×´Ì¬ÏÂ£¬²»ÄÜ´«ËÍ
	if IsTeamFollow(sceneId, selfId) == 1  then
		x300056_MsgBox( sceneId, selfId, "Các hÕ ğang trong trang thái t± ğµi theo sau, không th¬ sØ døng Th± Ğµn Châu d¸ch chuy¬n!" )
		return 0
	end
	
	--ÅĞ¶Ïµ±Ç°×´Ì¬ÊÇ·ñ¿ÉÊ¹ÓÃ¶¨Î»·û
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		x300056_MsgBox( sceneId, selfId, "Khu vñc các hÕ không cho phép di chuy¬n, không th¬ sØ døng Thô Ğµn Châu d¸ch chuy¬n!" )
		return 0
	end

	--¼ì²âÎïÆ·ÊÇ·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, nItemIndex, 0 ) < 0 then
		x300056_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return 0
	end

	--¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓĞ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x300056_g_Yinpiao) >= 1  then
		x300056_MsgBox(sceneId, selfId, "Khu vñc các hÕ không cho phép di chuy¬n, không th¬ sØ døng Thô Ğµn Châu d¸ch chuy¬n!")
		return 0
	end
	
	--¼ì²âÍæ¼ÒÊÇ²»ÊÇ´¦ÓÚ²»ÔÊĞí´«ËÍµÄ³¡¾°£¬±ÈÈç¼àÓü
	for _, tmp in x300056_g_NoChuangsongScn do
		if tmp == sceneId then
			x300056_MsgBox( sceneId, selfId, "Trong khu vñc này không th¬ sØ døng Th± Ğµn Châu d¸ch chuy¬n!" )
			return 0
		end
	end
	
	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇ´¦ÓÚ°ÚÌ¯×´Ì¬£¬
	if LuaFnIsStalling(sceneId, selfId) == 1  then
		x300056_MsgBox( sceneId, selfId, "Trong trÕng thái buôn bán, không th¬ sØ døng Th± Ğµn Châu d¸ch chuy¬n!" )
		return 0
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôĞ§¹û
	for i, ImpactId in x300056_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x300056_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	-- 1£¬¼ì²âÕâ¸öÎïÆ·ÊÇ²»ÊÇÓĞ¼ÇÂ¼µÄÊı¾İÁË£¬
	-- ĞèÒª¼ÇÂ¼µÄÊı¾İÊÇ£¬Ê¹ÓÃ´ÎÊı£¬¶¨Î»³¡¾°Id£¬ÒÔ¼°×ø±ê
	local nUseCount	= GetBagItemParam(sceneId, selfId, nItemIndex, 0, 2)
	
	-- Ö´ĞĞ´«ËÍ
	local nTarSceneId = floor(nUseCount/100)
	local nCount = nUseCount - nTarSceneId*100
	local nPointX		= GetBagItemParam(sceneId, selfId, nItemIndex, 4, 2)
	local nPointZ		= GetBagItemParam(sceneId, selfId, nItemIndex, 8, 2)
	
	if nCount==0 and nPointX==0 and nPointZ==0  then
		x300056_MsgBox( sceneId, selfId, "Th± Ğµn Châu này chßa h« ğ¸nh v¸ nên không th¬ d¸ch chuy¬n." )
		return
	end
	
	-- ¼ì²éÄ¿±ê³¡¾°ÊÇ²»ÊÇÄÜ¹»µ½´ï
	if sceneId ~= nTarSceneId then
		if IsCanNewWorld( sceneId, selfId, nTarSceneId, nPointX, nPointZ ) ~= 1 then
			x300056_MsgBox( sceneId, selfId, "Không th¬ d¸ch chuy¬n ğªn khu vñc møc tiêu." )
			return 0
		end
	end
	
	local ret = 0
	if nCount > 1  then
		-- ÎïÆ·¿ÉÒÔ¼ÌĞøÏûºÄ
		SetBagItemParam( sceneId, selfId, nItemIndex, 0, 2, nTarSceneId*100+(nCount-1) )
		LuaFnRefreshItemInfo( sceneId, selfId, nItemIndex )
		ret = 1
		
	elseif nCount <= 1  then
		-- É¾³ıÎïÆ·
		ret = EraseItem(sceneId, selfId, nItemIndex)
	end
	
	if ret == 1  then
		-- »ñµÃÍæ¼Ò¶ÓÎéÖĞÔÚ¸½½üµÄ¶ÓÔ±
		local nTeamCount = GetNearTeamCount(sceneId,selfId)
		local selfGuid = LuaFnGetGUID(sceneId,selfId)
		
		local nTarSceneName = GetSceneName(nTarSceneId)

		if nTeamCount > 0  then
			for i=0, nTeamCount-1  do
				local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
				if nPlayerId ~= selfId  then
					-- ¸øÕâ¸öÍæ¼Ò·¢ËÍÒ»¸ö´«ËÍÑûÇë
					local str = "Ğµi hæu cüa các hÕ " .. GetName(sceneId, selfId) .. " Ğã sØ døng Th± Ğµn Châu, v« [" .. nTarSceneName .. "], các hÕ phäi chång mu¯n cùng d¸ch chuy¬n? Chú ı: quá 20 giây mà không quyªt ğ¸nh s¨ hüy bö d¸ch chuy¬n."
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId,x300056_g_scriptId);
						UICommand_AddInt(sceneId,nItemIndex)
						UICommand_AddInt(sceneId,selfGuid)
						UICommand_AddString(sceneId,"CallMe");
						UICommand_AddString(sceneId,str);
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,nPlayerId, 1009)
					
					-- Í¬Ê±°ÑÕâĞ©ÖØÒªÊı¾İ¼ÇÂ¼µ½MissionDataÖĞ
					SetMissionData(sceneId,nPlayerId,MD_TDZ_TIME,LuaFnGetCurrentTime())
					SetMissionData(sceneId,nPlayerId,MD_TDZ_SCENE,nTarSceneId)
					SetMissionData(sceneId,nPlayerId,MD_TDZ_X,nPointX)
					SetMissionData(sceneId,nPlayerId,MD_TDZ_Y,nPointZ)
				end
			end
		end
		
		-- ´«ËÍ×Ô¼º
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, nTarSceneId, nPointX, nPointZ)
	end

end
