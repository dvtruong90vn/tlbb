--µÀ¾ß: çÍ·×ÀñºĞ<ID:30504051>
--½Å±¾ºÅ 889030
--Author:xiehong 2009-02-11

x889030_g_scriptId = 889030
x889030_g_ColorSockPrize = {
				30501169,
				30502002,
				30008034,
				30008048,
				30008009,
				30900006,
				30607001,
				30700203,
				30309731,
				10141804,
				30509011,
				30402087,
				30402088,
				30402089,
				30402090,
				30501178,
				30501187,
				30501232,
				30501223,
				30501214,
				30501241,
				30501196,
				30501205,
				30501179,
				30501188,
				30501233,
				30501224,
				30501215,
				30501242,
				30501197,
				30501206,
				30501180,
				30501189,
				30501234,
				30501225,
				30501216,
				30501243,
				30501198,
				30501207,
				30504049,
				30504048,
				10124101,
				31000001,
				31000003,
				30402096,
				30402097,
				30402099,
				30402098
              } 
                 
x889030_g_strGongGaoInfo = {
	"#c00FFFFXinh ğ©p #G#{_ITEM30504051}#c00FFFF, s£c sŞ loá m¡t xu¤t hi®n trß¾c m¡t, #{_INFOUSR%s}#c00FFFF th§t c¦n th§n m· ra, nhßng lÕi ğÕt ğßşc #{_INFOMSG%s}.",
	"#c00FFFFXinh ğ©p #G#{_ITEM30504051}#c00FFFF, s£c sŞ loá m¡t xu¤t hi®n trß¾c m¡t, #{_INFOUSR%s}#c00FFFF th§t c¦n th§n m· ra, nhßng lÕi ğÕt ğßşc #{_INFOMSG%s}.",
	"#c00FFFFXinh ğ©p #G#{_ITEM30504051}#c00FFFF, s£c sŞ loá m¡t xu¤t hi®n trß¾c m¡t, #{_INFOUSR%s}#c00FFFF th§t c¦n th§n m· ra, nhßng lÕi ğÕt ğßşc #{_INFOMSG%s}.",
}

--ÈÕÖ¾
x889030_g_AuditIndex = 28

--µôÂä±íTÕi ³ÌĞòÀïtoÕ ğµ ĞòºÅ
x889030_g_DropTableIndex = 23

--±³°ü¡¢²ÄÁÏ±ØĞëÔ¤ÁôtoÕ ğµ ¸ñ×Ó
x889030_g_BagPreCount = { 1, 0 }


--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú   
--**********************************
function x889030_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end              
                 
--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x889030_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end              
                 
--**********************************
--Ö±½ÓHuÖ böĞ§¹û:  
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x889030_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end              
                 
--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú:  
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x889030_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ Îï
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < x889030_g_BagPreCount[1] ) then 
		local strNotice = "Ch² tr¯ng trong túi xách không ğü."
			x889030_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < x889030_g_BagPreCount[2] ) then 
		local strNotice = "Ô nguyên li®u không gian không ğü."
			x889030_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end
			
	return 1; --²»C¥n ÈÎºÎÌõ¼ş,²¢ÇÒÊ¼ÖÕTr· v«1.
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x889030_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x889030_OnActivateOnce( sceneId, selfId )

	--Êı¾İÍ³¼Æ: ×ªµ°toÕ ğµ Ê¹ÓÃ,×ªµ°½Å±¾ĞòºÅ¼õmµt 
	LuaFnAuditZhuanDanUsed(sceneId, selfId, x889030_g_AuditIndex, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, x889030_g_DropTableIndex )
    if( RandomBase > 0 ) then
    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, x889030_g_DropTableIndex )
        local PrizeNum = 1
        if (RandomID == x889030_g_ColorSockPrize[1]) then
			PrizeNum = 22
        elseif  (RandomID ==x889030_g_ColorSockPrize[2]) then
			PrizeNum = 10
        elseif  (RandomID ==x889030_g_ColorSockPrize[3] or RandomID ==x889030_g_ColorSockPrize[6] or RandomID ==x889030_g_ColorSockPrize[8]) then
			PrizeNum = 2
        else
			PrizeNum = 1
        end
        
        if( RandomID > 0 ) then
			BeginAddItem(sceneId)
			AddItem( sceneId, RandomID, PrizeNum )
			local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			if Ret > 0 then
				LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
				if 1 == Notice then
					local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					x889030_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				end
				      
				local ItemName = GetItemName(sceneId, RandomID)
				local strNotice = "ĞÕt ğßşc "..ItemName
				x889030_ShowNotice( sceneId, selfId, strNotice)
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
			else
				local strNotice = "Ch² tr¯ng trong túi xách không ğü"
				x889030_ShowNotice( sceneId, selfId, strNotice)
			end
        end
    end
    
	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x889030_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

function x889030_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889030_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889030_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889030_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889030_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
