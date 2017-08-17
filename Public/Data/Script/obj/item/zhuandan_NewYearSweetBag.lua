--µÀ¾ß: ÌðÃÛµ°<ID:30504045>
--½Å±¾ºÅ 889026
--Author:xiehong 2009-02-05

x889026_g_scriptId = 889026
x889026_g_ColorSockPrize = {
													30501132,	--1
													30501133,	--2
													30501153,	--3
													30501151,	--4
													31000001,	--5
													31000003,	--6
													30607000,	--7
													30008011,	--8
													30900006,	--9
													30502002,	--10
													30008002,	--11
													30402096,	--12
													30402097,	--13
													30402098,	--14
													30402099,	--15
													30402026,	--16
													30402092,	--17
													30402046,	--18
													30402094,	--19
													30402072,	--20
													30402036,	--21
													30402076,	--22
													30402078,	--23
													30402025,	--24
													30402030,	--25
													30402034,	--26
													30402040,	--27
													30402042,	--28
													30402044,	--29
													30402048,	--30
													30402050,	--31
													30402012,	--32
													30402014,	--33
													30402016,	--34
													30402018,	--35
													30402020,	--36
													30402056,	--37
													30402060,	--38
													30402062,	--39
													30402064,	--40
													30402066,	--41
													30309612,	--42
													30402070,	--43
													30402074,	--44
													30402080,	--45
													10141091,	--46
													30402093,	--47
													30402051,	--48
													30402052,	--49
													30402053,	--50
													30402054,	--51
													30402045,	--52
													30402029,	--53
													30402035,	--54
													30402055,	--55
													30402059,	--56
													30402047,	--57
													30402049,	--58
													30402061,	--59
													30402063,	--60
													30402065,	--61
													30402067,	--62
													30402069,	--63
													30402073,	--64
													30402033,	--65
													30402039,	--66
													30402041,	--67
													30402043,	--68
													30402075,	--69
													30402077,	--70
													30402079,	--71
													30008034,	--72
													30008048,	--73
													30008009,	--74
													30309187,	--75
													10124101,	--76
													10141804,	--77
													30700203,	--78
													30501169,	--79
													30501231,	--80
													30501222,	--81
													30501231,	--82
													30501222,	--83
													30501213,	--84
													30501240,	--85
													30501232,	--86
													30501223,	--87
													30501232,	--88
													30501223,	--89
													30501214,	--90
													30501241,	--91
													30501233,	--92
													30501224,	--93
													30501233,	--94
													30501224,	--95
													30501215,	--96
													30501242	--97
													}
                 
x889026_g_strGongGaoInfo = {
	"#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504045}#c00FFFF k¸ch li®t run run ðÑng lên, th¤t s¡c quang mang theo thÑ tñ hi®n lên, mµt cái #{_INFOMSG%s}#c00FFFF xu¤t hi®n · trong tay.",
	"#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504045}#c00FFFF k¸ch li®t run run ðÑng lên, th¤t s¡c quang mang theo thÑ tñ hi®n lên, mµt cái #{_INFOMSG%s}#c00FFFF xu¤t hi®n · trong tay.",
	"#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504045}#c00FFFF k¸ch li®t run run ðÑng lên, th¤t s¡c quang mang theo thÑ tñ hi®n lên, mµt cái #{_INFOMSG%s}#c00FFFF xu¤t hi®n · trong tay.",
}                
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú   
--**********************************
function x889026_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý
end              
                 
--**********************************
--Cái này ÎïÆ·toÕ ðµ Ê¹ÓÃ¹ý³ÌÐúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ÐÐ¿ªÊ¼Ê±¼ì²âCái này º¯ÊýtoÕ ðµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ðµ ÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ðµ ÎïÆ·,¿ÉÒÔ¼ÌÐøÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ£»Tr· v«0: ºöÂÔºóÃætoÕ ðµ ²Ù×÷.
--**********************************
function x889026_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end              
                 
--**********************************
--Ö±½ÓHuÖ böÐ§¹û:  
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ð§¹û,²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»Tr· v«0: Ã»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û,¼ÌÐøÖ´ÐÐ.
--**********************************
function x889026_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý,²¢ÇÒÊ¼ÖÕTr· v«0.
end              
                 
--**********************************
--Ìõ¼þ¼ì²âÈë¿Ú:  
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: Ìõ¼þ¼ì²âÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: Ìõ¼þ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--**********************************
function x889026_OnConditionCheck( sceneId, selfId )
	--Ð£ÑéÊ¹ÓÃtoÕ ðµ Îï
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--ÒòÎª×ªµ°±¾ÉíÏûºÄmµt cái,»á¶à³ömµt cái¿Õ¸ñ,ÇÒ°×½ðÀñºÐ×î¶à½±Àø3cáiËùÒÔÅÐ¶ÏÊ£Óà¿Õ¼ä<2	
--ÒòÎªÆß²ÊÉñÃØ²ÊÍàÎïÆ·ÓÐtoÕ ðµ TÕi Ô ðÕo cø ðã ð¥y¸,ÓÐtoÕ ðµ TÕi ²ÄÁÏÀ¸
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 2 ) then 
	        local strNotice = "Ch² tr¯ng trong túi xách không ðü."
		      x889026_ShowNotice( sceneId, selfId, strNotice)
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
function x889026_OnDeplete( sceneId, selfId )
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
function x889026_OnActivateOnce( sceneId, selfId )

    --Êý¾ÝÍ³¼Æ: ×ªµ°toÕ ðµ Ê¹ÓÃ
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 25, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 22)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 22 )
        local PrizeNum = 1
				
				if (RandomID == x889026_g_ColorSockPrize[8])
				or (RandomID == x889026_g_ColorSockPrize[9])
				or (RandomID == x889026_g_ColorSockPrize[10])
				or (RandomID == x889026_g_ColorSockPrize[11])
				or (RandomID == x889026_g_ColorSockPrize[80])
				or (RandomID == x889026_g_ColorSockPrize[81])
				or (RandomID == x889026_g_ColorSockPrize[82])
				or (RandomID == x889026_g_ColorSockPrize[83])
				or (RandomID == x889026_g_ColorSockPrize[84])
				or (RandomID == x889026_g_ColorSockPrize[85]) then
					PrizeNum = 3
				elseif (RandomID == x889026_g_ColorSockPrize[78]) then
					PrizeNum = 4
				elseif (RandomID == x889026_g_ColorSockPrize[79]) then
					PrizeNum = 22
				elseif (RandomID == x889026_g_ColorSockPrize[72])
				or (RandomID == x889026_g_ColorSockPrize[74])	then
					PrizeNum = 2
				end
					
					
        if( RandomID > 0 ) then
           BeginAddItem(sceneId)
				   AddItem( sceneId, RandomID, PrizeNum )
			     local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			     if Ret > 0 then
			       	LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
			       	if 1 == Notice then
			       	   local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					       x889026_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "ÐÕt ðßþc "..ItemName
				      x889026_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch² tr¯ng trong túi xách không ðü"
				      x889026_ShowNotice( sceneId, selfId, strNotice)
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
function x889026_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÐúngÒýµ¼ÐÔ½Å±¾, Ö»±£Áô¿Õº¯Êý.
end

function x889026_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889026_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889026_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889026_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889026_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
