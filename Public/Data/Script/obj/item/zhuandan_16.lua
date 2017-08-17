--µÀ¾ß: ºÃÔËÀñºĞID:30504017>
--½Å±¾ºÅ x889015
--Author: ÕÅ×³ 2008-10-10

x889015_g_scriptId = 889015

x889015_g_LuckBoxPrize = {
	                 20500001,
	                 20500002,
	                 20500003,
	                 20501001,
	                 20501002,
	                 20501003,
	                 20502001,
	                 20502002,
	                 20502003,
	                 10141102,
	                 30309155,
	                 30309168,
	                 30900038,
	                 30900039,
	                 30900040,
	                 30900041,
	                 30502000,
      						 30502001,
      						 30502002,
      						 30503017,
      						 30503018,
      						 30503019,
      						 30607001,
      						 30900006
}	

x889015_g_strGongGaoInfo = {
	"#{_INFOUSR%s}#c00FFFFĞoan trang #G#{_ITEM30504017}#c00FFFF xinh ğ©p lµng lçy, mµt lu°ng ch¾p b± vào phía trên,#{_INFOMSG%s}#c00FFFF càu nhàu nói hi®n ra ği.",
 	"#{_INFOUSR%s}#c00FFFFĞoan trang #G#{_ITEM30504017}#c00FFFF xinh ğ©p lµng lçy, mµt lu°ng ch¾p b± vào phía trên,#{_INFOMSG%s}#c00FFFF càu nhàu nói hi®n ra ği.",
  "#{_INFOUSR%s}#c00FFFFĞoan trang #G#{_ITEM30504017}#c00FFFF xinh ğ©p lµng lçy, mµt lu°ng ch¾p b± vào phía trên,#{_INFOMSG%s}#c00FFFF càu nhàu nói hi®n ra ği.",
}
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x889015_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x889015_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x889015_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x889015_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ Îï
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--ÒòÎª×ªµ°±¾ÉíÏûºÄmµt cái,»á¶à³ömµt cái¿Õ¸ñ,ÇÒºÃÔËÀñºĞ×î¶à½±Àø3cáiËùÒÔÅĞ¶ÏÊ£Óà¿Õ¼ä<2	
--ÒòÎªºÃÔËÀñºĞÀøÎïÆ·ÓĞtoÕ ğµ TÕi Ô ğÕo cø ğã ğ¥y¸,ÓĞtoÕ ğµ TÕi ²ÄÁÏÀ¸
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 2 ) then 
	        local strNotice = "Ch² tr¯ng trong túi xách không ğü."
		      x889015_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "Ô nguyên li®u không gian không ğü."
		      x889015_ShowNotice( sceneId, selfId, strNotice)
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
function x889015_OnDeplete( sceneId, selfId )
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
function x889015_OnActivateOnce( sceneId, selfId )

    --Êı¾İÍ³¼Æ: ×ªµ°toÕ ğµ Ê¹ÓÃ
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 15, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 15)
    if( RandomBase > 0 ) then    
       	
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 15 )
        
        local PrizeNum = 0
        if( RandomID == x889015_g_LuckBoxPrize[17] ) then
          PrizeNum = 10
        elseif (RandomID == x889015_g_LuckBoxPrize[18] ) then
        	PrizeNum = 4
        elseif (RandomID == x889015_g_LuckBoxPrize[20]) then
          PrizeNum = 3
        elseif (RandomID == x889015_g_LuckBoxPrize[24] or RandomID == x889015_g_LuckBoxPrize[22] or
        RandomID == x889015_g_LuckBoxPrize[21] or RandomID == x889015_g_LuckBoxPrize[19]) then
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
					       x889015_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "ĞÕt ğßşc "..ItemName
				      x889015_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch² tr¯ng trong túi xách không ğü"
				      x889015_ShowNotice( sceneId, selfId, strNotice)
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
function x889015_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

function x889015_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889015_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889015_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889015_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889015_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
