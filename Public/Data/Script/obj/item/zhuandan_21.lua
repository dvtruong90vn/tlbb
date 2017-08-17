--µÀ¾ß: GFÀñ°ü<ID:30504042>
--½Å±¾ºÅ 889021
--Author:zhangzhuang 2008-12-27

x889021_g_scriptId = 889021
x889021_g_GFPrize = {
	               10141087,	
						30501132,
						30501133,
						30501153,
						30501151,
						31000001,
						31000003,
						30607000,
						30008011,
						30900006,
						30502002,
						30008002,
						30402026,
						30402092,
						30402046,
						30402094,
						30402072,
						30402036,
						30402076,
						30402078,
						30402025,
						30402030,
						30402034,
						30402040,
						30402042,
						30402044,
						30402048,
						30402050,
						30402012,
						30402014,
						30402016,
						30402018,
						30402020,
						30402056,
						30402060,
						30402062,
						30402064,
						30402066,
						30402068,
						30402070,
						30402074,
						30402080,
						30402091,
						30402093,
						30402051,
						30402052,
						30402053,
						30402054,
						30402045,
						30402029,
						30402035,
						30402055,
						30402059,
						30402047,
						30402049,
						30402061,
						30402063,
						30402065,
						30402067,
						30402069,
						30402073,
						30402033,
						30402039,
						30402041,
						30402043,
						30402075,
						30402077,
						30402079,
						30008034,
						30008048,
						30008009,
						30309619,
						10124063,
						10124066,
						10141091,
						30700203,
						30501169
	              } 

x889021_g_strGongGaoInfo = {
	"#{_INFOUSR%s}#c00FFFFNhìn th§t tinh xäo #G#{_ITEM30504042}#c00FFFF, ki«m chª không ðßþc m· ra, th· mÕnh, ðßþc mµt cái #{_INFOMSG%s}#c00FFFF.",
 "#{_INFOUSR%s}#c00FFFFNhìn th§t tinh xäo #G#{_ITEM30504042}#c00FFFF, ki«m chª không ðßþc m· ra, th· mÕnh, ðßþc mµt cái #{_INFOMSG%s}#c00FFFF.",
  "#{_INFOUSR%s}#c00FFFFNhìn th§t tinh xäo #G#{_ITEM30504042}#c00FFFF, ki«m chª không ðßþc m· ra, th· mÕnh, ðßþc mµt cái #{_INFOMSG%s}#c00FFFF.",
}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x889021_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý
end

--**********************************
--Cái này ÎïÆ·toÕ ðµ Ê¹ÓÃ¹ý³ÌÐúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ÐÐ¿ªÊ¼Ê±¼ì²âCái này º¯ÊýtoÕ ðµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ðµ ÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ðµ ÎïÆ·,¿ÉÒÔ¼ÌÐøÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ£»Tr· v«0: ºöÂÔºóÃætoÕ ðµ ²Ù×÷.
--**********************************
function x889021_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böÐ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ð§¹û,²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»Tr· v«0: Ã»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û,¼ÌÐøÖ´ÐÐ.
--**********************************
function x889021_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼þ¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: Ìõ¼þ¼ì²âÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: Ìõ¼þ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--**********************************
function x889021_OnConditionCheck( sceneId, selfId )
	--Ð£ÑéÊ¹ÓÃtoÕ ðµ Îï
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--ÒòÎª×ªµ°±¾ÉíÏûºÄmµt cái,»á¶à³ömµt cái¿Õ¸ñ,ÇÒºÃÔËÀñºÐ×î¶à½±Àø3cáiËùÒÔÅÐ¶ÏÊ£Óà¿Õ¼ä<2	
--ÒòÎªÉñÃØ²ÊÍàÀøÎïÆ·ÓÐtoÕ ðµ TÕi Ô ðÕo cø ðã ð¥y¸,ÓÐtoÕ ðµ TÕi ²ÄÁÏÀ¸
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 2 ) then 
	        local strNotice = "Ch² tr¯ng trong túi xách không ðü."
		      x889021_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
			
	return 1; --²»C¥n ÈÎºÎÌõ¼þ,²¢ÇÒÊ¼ÖÕTr· v«1.
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--×¢Òâ: Õâ²»¹â¸ºÔðÏûºÄtoÕ ðµ ¼ì²âÒ²¸ºÔðÏûºÄtoÕ ðµ Ö´ÐÐ.
--**********************************
function x889021_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

--**********************************
--Ö»»áÖ´ÐÐmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼þ¶¼Thöa mãntoÕ ðµ Ê±ºò),¶øÒýµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ðµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ÐÐÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x889021_OnActivateOnce( sceneId, selfId )

    --Êý¾ÝÍ³¼Æ: ×ªµ°toÕ ðµ Ê¹ÓÃ
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 20, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 18)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 18 )
        local PrizeNum = 0
         if (RandomID == x889021_g_GFPrize[77]) then
          PrizeNum = 22
        elseif (RandomID == x889021_g_GFPrize[76]) then
          PrizeNum = 4
        elseif (RandomID == x889021_g_GFPrize[9] or RandomID == x889021_g_GFPrize[10] or 
        	RandomID == x889021_g_GFPrize[11] or RandomID == x889021_g_GFPrize[12]) then
        	PrizeNum = 3
        elseif (RandomID == x889021_g_GFPrize[71] or RandomID == x889021_g_GFPrize[69]) then
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
					       x889021_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "ÐÕt ðßþc "..ItemName
				      x889021_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch² tr¯ng trong túi xách không ðü"
				      x889021_ShowNotice( sceneId, selfId, strNotice)
			     end
			
        end
        
    end
    
	return 1;
end

--**********************************
--Òýµ¼ÐÄÌø´¦ÀíÈë¿Ú: 
--Òýµ¼¼¼ÄÜ»áTÕi Ã¿´ÎÐÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌÐøÏÂ´ÎÐÄÌø£»0: ÖÐ¶ÏÒýµ¼.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x889021_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÐúngÒýµ¼ÐÔ½Å±¾, Ö»±£Áô¿Õº¯Êý.
end

function x889021_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889021_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889021_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889021_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889021_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
