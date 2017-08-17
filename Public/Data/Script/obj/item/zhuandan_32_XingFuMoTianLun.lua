--µÀ¾ß: ĞÒ¸£Ä¦ÌìÂÖ<ID:>
--½Å±¾ºÅ 889041
--Author:xiehong 2009-03-18

x889041_g_scriptId = 889041

x889041_g_ColorSockPrize = {
					10124104,
					50213006,
					50201001,
					50201002,
					50202001,
					50202002,
					50202003,
					50202004,
					50203001,
					50204002,
					50211001,
					50211002,
					50212001,
					50212002,
					50212003,
					50212004,
					50213001,
					50213002,
					50213003,
					50213004,
					50213005,
					50214001,
					30900015,
					30900006,
					30008003,
					30504037,					
              } 

x889041_g_strGongGaoInfo = {
	"#G#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504072}#c00FFFF gi¯ng nhß ğã b¸ tri®u h°i, ğµt nhiên trào ra làm ngß¶i ta h½i th· run r¦y, mµt cái #G#{_INFOMSG%s}#c00FFFF ğµt nhiên xu¤t hi®n · trong tay.",
	"#G#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504072}#c00FFFF gi¯ng nhß ğã b¸ tri®u h°i, ğµt nhiên trào ra làm ngß¶i ta h½i th· run r¦y, mµt cái #G#{_INFOMSG%s}#c00FFFF ğµt nhiên xu¤t hi®n · trong tay.",
	"#G#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504072}#c00FFFF gi¯ng nhß ğã b¸ tri®u h°i, ğµt nhiên trào ra làm ngß¶i ta h½i th· run r¦y, mµt cái #G#{_INFOMSG%s}#c00FFFF ğµt nhiên xu¤t hi®n · trong tay.",
}

--ÈÕÖ¾
x889041_g_AuditIndex = 31

--µôÂä±íTÕi ³ÌĞòÀïtoÕ ğµ ĞòºÅ
x889041_g_DropTableIndex = 26

--±³°ü¡¢²ÄÁÏ±ØĞëÔ¤ÁôtoÕ ğµ ¸ñ×Ó
x889041_g_BagPreCount = { 2, 2 }


--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú   
--**********************************
function x889041_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end              
                 
--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x889041_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end              
                 
--**********************************
--Ö±½ÓHuÖ böĞ§¹û:  
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x889041_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end              
                 
--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú:  
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x889041_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ Îï
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < x889041_g_BagPreCount[1] ) then 
		local strNotice = "Ch² tr¯ng trong túi xách không ğü."
			x889041_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < x889041_g_BagPreCount[2] ) then 
		local strNotice = "Ô nguyên li®u không gian không ğü."
			x889041_ShowNotice( sceneId, selfId, strNotice)
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
function x889041_OnDeplete( sceneId, selfId )
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
function x889041_OnActivateOnce( sceneId, selfId )

	--Êı¾İÍ³¼Æ: ×ªµ°toÕ ğµ Ê¹ÓÃ,×ªµ°½Å±¾ĞòºÅ¼õmµt 
	LuaFnAuditZhuanDanUsed(sceneId, selfId, x889041_g_AuditIndex, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, x889041_g_DropTableIndex )
    
    if( RandomBase > 0 ) then
    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, x889041_g_DropTableIndex )
        local PrizeNum = 1
        if (RandomID == x889041_g_ColorSockPrize[26]) then
			PrizeNum = 5
        elseif  (RandomID ==x889041_g_ColorSockPrize[1] or RandomID ==x889041_g_ColorSockPrize[23] or RandomID ==x889041_g_ColorSockPrize[25]) then
			PrizeNum = 1
        else
			PrizeNum = 2
        end
        
        if( RandomID > 0 ) then
			
			if RandomID == x889041_g_ColorSockPrize[1] then
				
				BeginAddItem(sceneId)
				AddItem( sceneId, RandomID, PrizeNum )
				local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
				if Ret > 0 then
					LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
					if 1 == Notice then
						local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
						x889041_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					end
				end
				
			else
				for i = 1, PrizeNum do
					local bagpos = TryRecieveItem( sceneId, selfId, RandomID, QUALITY_MUST_BE_CHANGE )
					LuaFnItemBind( sceneId, selfId, bagpos )					
				end
			end
			
			local ItemName = GetItemName(sceneId, RandomID)
			local strNotice = "ĞÕt ğßşc "..ItemName
			x889041_ShowNotice( sceneId, selfId, strNotice)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
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
function x889041_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

function x889041_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889041_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889041_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889041_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889041_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
