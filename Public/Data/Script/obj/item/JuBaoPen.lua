--µÀ¾ß£º¾Û±¦Åè<ID:30008038>
--½Å±¾ºÅ 332204
--Author: Steven.Han 10:39 2007-5-24

x332204_g_scriptId = 332204

x332204_g_MultiJuBaoPenMaxUseCount = 11

x332204_g_strGongGaoInfo = {
   "#{_INFOUSR%s}#HM· ra #G#{_ITEM30008038}#H, th§t sñ nhß nguy®n ğÕt ğßşc #{_INFOMSG%s}#H, th§t sñ là làm ngß¶i ta hâm mµ",
  "#{_INFOUSR%s}#HĞang th¥m oán #G#{_ITEM30008038}#H quá nhö, thª nhßng · bên trong phát hi®n mµt cái l¾n h½n næa #{_INFOMSG%s}!",
  "#{_INFOUSR%s}#HNgày thß¶ng c¥n ki®m tiªt ki®m, hôm nay · #G#{_ITEM30008038}#H chiªm ğßşc mµt cái #{_INFOMSG%s}#H, r¯t cøc không c¥n v§t ph¦m, nhi«u th¶i ği¬m vì ném xu¯ng ngß¶i mà phát s¥u!",
}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x332204_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x332204_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x332204_CancelImpacts( sceneId, selfId )
	return 0; --²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x332204_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
	        local strNotice = "Ch² tr¯ng trong túi xách không ğü."
		      x332204_ShowNotice( sceneId, selfId, strNotice)
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
function x332204_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

function x332204_GetPos( DropList, RandomID )
    local ListSize = getn( DropList )
    for i=1, ListSize do
        if RandomID == DropList[i][1] then
            return i
        end
    end
    
    return 0
end

function x332204_OnTest( sceneId, selfId )

    local DropList = {}
    local RandomBase = GetDarkBoxItemDropCount( sceneId, selfId )
    
    --PrintNum( RandomBase )
    
    for ii = 1, RandomBase do
		if( RandomBase > 0 ) then    
			local RandomNum = random( 0, RandomBase - 1 )
			local RandomID, Notice = DarkBoxItemDropRandom( sceneId, selfId, RandomNum )
	        local Pos = x332204_GetPos( DropList, RandomID )
	        local ListSize = getn( DropList )
	       
	        if 0 == Pos then
	            DropList[ ListSize+1 ] = { RandomID, 1 }
	        else
	            DropList[ Pos ] = { RandomID, DropList[ Pos ][2] + 1 }
	        end
	        
		end
        
    end
    
    local ListSize = getn( DropList )
    local sysstr = "=====================#r"
    local TotalItem = 0
    sysstr = sysstr.."T±ng cµng chüng loÕi v§t ph¦m "..ListSize..", s¯ li®u cø th¬: "
	BroadMsgByChatPipe( sceneId, selfId, sysstr, 4 )
	
	for i=1, ListSize do
	    TotalItem = TotalItem + DropList[ i ][2]
	end
	
	for i=1, ListSize do
	    sysstr = DropList[ i ][1]..","..DropList[ i ][2]
	    local per = DropList[ i ][2] / TotalItem * 100
	    sysstr = sysstr.."     "
	    sysstr = sysstr..(per).."%"
	    BroadMsgByChatPipe( sceneId, selfId, sysstr, 4 )
	end
	
	sysstr = "T±ng cµng s¯ lßşng v§t ph¦m "..TotalItem
	BroadMsgByChatPipe( sceneId, selfId, sysstr, 4 )
	
	
    
end


--**********************************
--Ö»»áÖ´ĞĞÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒıµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x332204_OnActivateOnce( sceneId, selfId )
    
    --x332204_OnTest( sceneId, selfId )
    
    local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
    local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    local ValidValue = x332204_g_MultiJuBaoPenMaxUseCount - UseValue
	
	--ÏûºÄÒ»´Î¾Û±¦Åè
	if bagId >= 0 then
		local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
		
		if UseValue >= x332204_g_MultiJuBaoPenMaxUseCount then   --¼ÇÂ¼µÄÊ¹ÓÃ´ÎÊı´óÓÚµÈÓÚ×î´ó¿ÉÓÃ´ÎÊı,ÀíÂÛÉÏ²»¿ÉÄÜ³öÏÖ.
		    return 0
		end
		
		local CurValue = UseValue + 1
		
		SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332204_g_MultiJuBaoPenMaxUseCount ) --ÉèÖÃ×î´ó´ÎÊı
		SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --ÉèÖÃÒÑÓÃ´ÎÊı
		
		--------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áÊ§°Ü
		local CheckParam1 = GetBagItemParam( sceneId, selfId, bagId, 4, 2 )   
		local CheckParam2 = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
		
		if CheckParam1 ~= x332204_g_MultiJuBaoPenMaxUseCount then
		    return 0
		end
		if CheckParam2 ~= CurValue then
		    return 0
		end
		--------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áÊ§°Ü
		
		
		LuaFnRefreshItemInfo( sceneId, selfId, bagId )
	    
		if CurValue >= x332204_g_MultiJuBaoPenMaxUseCount then  --µ±Ê¹ÓÃ´ÎÊı´ïµ½×î´ó´ÎÊıÊ±,½«É¾³ı´ËÎïÆ·
			local EraseRet = EraseItem( sceneId, selfId, bagId )
			if EraseRet < 0 then      --Èç¹ûÉ¾³ıÊ§°Ü,½«²»»á¸øÍæ¼ÒÎïÆ·
			    local strNotice = "C¥n tø bäo b°n"
				  x332204_ShowNotice( sceneId, selfId, strNotice)
				return 0
			end
			
		end
	else
		local strNotice = "C¥n tø bäo b°n"
		x332204_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end
    
    --Êı¾İÍ³¼Æ£º°µ½ğ±¦ÏäµÄÊ¹ÓÃ
    local nRemain = x332204_g_MultiJuBaoPenMaxUseCount-UseValue-1;
    if(0>nRemain) then
    	nRemain = 0
    end
    
	LuaFnAuditJuBaoContainerUsed(sceneId, selfId, 1, nRemain);
		
    --ÏûºÄ¾Û±¦ÅèÍê±Ï,¸øÓèÍæ¼ÒÎïÆ·
    local RandomBase = GetJuBaoContainerItemDropCount( sceneId, selfId )
    if( RandomBase > 0 ) then    
         
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = JuBaoContainerItemDropRandom( sceneId, selfId, RandomNum )
       
        if( RandomID > 0 ) then
          BeginAddItem(sceneId)
				  AddItem( sceneId, RandomID, 1 )
			    local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			
			    if Ret > 0 then
			       LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
				
				     if 1 == Notice then
					      local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					      x332204_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				     end
				
				     local ItemName = GetItemName(sceneId, RandomID)
				     local strNotice = "ĞÕt ğßşc "..ItemName
				     x332204_ShowNotice( sceneId, selfId, strNotice)
				     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				
			else
				local strNotice = "Ch² tr¯ng trong túi xách không ğü"
				x332204_ShowNotice( sceneId, selfId, strNotice)
			end
    end
        
 end
    
	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x332204_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÊÇÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

function x332204_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x332204_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x332204_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x332204_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x332204_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
