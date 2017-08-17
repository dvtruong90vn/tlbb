-- ´´½¨ÈË[ QUFEI 2007-09-30 21:53 UPDATE BugID 25759 ]
-- ĞŞ¸ÄÈË[ ñÒÉÙÎ¢ 2008.5.20 Ìí¼Ó102c¤pÉñÆ÷toÕ ğµ ºÏ³ÉÅä·½ ]

-- ÑªÔ¡Éñ±øÍêÕûÖ÷²ÄtoÕ ğµ ºÏ³É»úÖÆÊµÏÖ (¸Ä³ÉÕıÈ·Tên)
-- ItemID = 30505800~30505805(ĞÂÃ§Éñ·û)			30505806 102c¤pÉñÆ÷
-- 335135
-- Ìá¸ßÉñ·ûÍê³É¶È¼°ÍêÕûÉñ·ûtoÕ ğµ ºÏ³É
-- ÎïÆ·¿ÉÒÔÊ¹ÓÃ1´Î
-- Ê¹ÓÃÍê¾ÍÉ¾³ıÎïÆ·


--******************************************************************************
-- ÒÔÏÂ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾ºÅ (¸Ä³ÉÕıÈ·½Å±¾ºÅ)
x335135_g_scriptId = 335135

-- Ôö¼ÓÖµ (¸ù¾İÒªÇó¸ÄĞ´¾ßÌåÊıÖµ)
x335135_g_CompleteValue = 5			-- Éñ²ÄÔö¼ÓÍê³É¶È			-- ñÒÉÙÎ¢,102ÉñÆ÷.·½±ã²âÊÔµ÷³ÉÁË50,²âÊÔÍê±Ïµ÷»Ø5¼´¿É.
--x335135_g_MaxCompleteValue = 100-- ×î´óÉñ²ÄÍê³É¶ÈÉÏÏŞ
x335135_g_MaxUseCount = 1				-- ×î´óÊ¹ÓÃ´ÎÊı1´Î

--±ê×¼Ğ§¹ûID (¸Ä³ÉÉñ²ÄºÏ³ÉtoÕ ğµ ÌØĞ§)
--g_ImpactID = 0

--Éñ²ÄºÏ³É¶ÔÓ¦±í
x335135_g_ShenCaiTable = {{sjid=30505700,sfid=30505800,lrid=30505900},
													{sjid=30505701,sfid=30505801,lrid=30505901},
													{sjid=30505702,sfid=30505802,lrid=30505902},
													{sjid=30505703,sfid=30505803,lrid=30505903},
													{sjid=30505704,sfid=30505804,lrid=30505904},
													{sjid=30505705,sfid=30505805,lrid=30505905},
													{sjid=30505706,sfid=30505806,lrid=30505906},}		-- -- ñÒÉÙÎ¢ 2008.5.20. 102c¤pÉñÆ÷ÖıÔìÍ¼Ñù.²ĞÈ±toÕ ğµ Éñ½Ú7c¤p,Tân mãng th¥n phù c¤p 7,Á¬ÈÖÉñ½Ú7c¤p.
x335135_g_MaxCompleteValue = {25,50,75,100,100,100,100}
-- µ±Ç°¿ÉÒÔºÏ³ÉtoÕ ğµ Éñ²ÄË÷ÒıºÅ
x335135_g_ShenCaiIndex = 0

-- Ê¹ÓÃĞÂÃ§Éñ·ûÔö¼ÓÍêÕû¶ÈÊ±toÕ ğµ ÌØĞ§ID
x335135_g_Impact_LevelUP = 47

-- ºÏ³É³öÁ¬ÈÖÉñ½ÚÊ±toÕ ğµ ÌØĞ§ID
x335135_g_Impact_Complete = 48

-- ñÒÉÙÎ¢,102ÉñÆ÷
x335135_g_XinMang7JiInfo = "Tân mãng th¥n phù c¤p 7"

--******************************************************************************
-- ÒÔÉÏ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x335135_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x335135_IsSkillLikeScript( sceneId, selfId)
	return 1	--Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x335135_OnConditionCheck( sceneId, selfId )
	-- PrintStr("OnConditionCheck...")
	
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	--  ği¬mµ½µ±Ç°ÕıTÕi Ê¹ÓÃtoÕ ğµ ÎïÆ·toÕ ğµ trí tay näi
	local nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	
	
	--  ği¬mµ½µ±Ç°ÕıTÕi Ê¹ÓÃtoÕ ğµ ÎïÆ·toÕ ğµ ID
	local Item01 = LuaFnGetItemTableIndexByIndex(sceneId, selfId, nIndex)
	
	-- PrintStr("Item01 ="..Item01)
	
	-- ñÒÉÙÎ¢ 2008.5.20. 102c¤pÉñÆ÷ÖıÔìÍ¼Ñù.ÆßcáiĞÂÃ§Éñ·û.
	for i=1, 7 do				--for i=1, 6 do
		if Item01 == x335135_g_ShenCaiTable[i].sfid then
			x335135_g_ShenCaiIndex = i
			-- PrintStr("x335135_g_ShenCaiIndex ="..x335135_g_ShenCaiIndex)
			break
		end
		-- PrintStr("sfid ="..x335135_g_ShenCaiTable[i].sfid)
	end
	
	-- PrintStr("x335135_g_ShenCaiIndex ="..x335135_g_ShenCaiIndex)
		
	-- ñÒÉÙÎ¢ 2008.5.20. 102c¤pÉñÆ÷ÖıÔìÍ¼Ñù.Ìí¼ÓĞÂtoÕ ğµ ĞÂÃ§Éñ·û
	if Item01 < 30505800 or Item01 > 30505806 then			-- if Item01 < 30505800 or Item01 > 30505805 then
		local strNotice = "Chï có th¬ dùng tân mãng th¥n phù hşp thành" -- ĞÂÃ§Éñ·û
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	-- PrintStr("sjid ="..x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid)
	
	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid )
	if ItemCount < 1 then
		local strNotice = "Ngß½i c¥n ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ²ĞÈ±toÕ ğµ Éñ½Ú
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	local bagbegin = GetBasicBagStartPos(sceneId, selfId)
	local bagend   = GetBasicBagEndPos(sceneId, selfId)
	-- PrintStr("bagbegin ="..bagbegin)
	-- PrintStr("bagend ="..bagend)
	local ItemEX
	--  ğÕt ğßşcµ±Ç°¿ÉÒÔºÏ³ÉtoÕ ğµ µÚmµt cáiÉñ½ÚTÕi ±³°üÖĞtoÕ ğµ Î»ÖÃ	
	local sjbagpos = -1
	for i=bagbegin, bagend do
		if LuaFnIsItemAvailable( sceneId, selfId, i ) == 1 then
			ItemEX = LuaFnGetItemTableIndexByIndex(sceneId, selfId, i)			
			if ItemEX == x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid then
				-- PrintStr("ItemEX ="..ItemEX)
				sjbagpos = i
				break
			end		
		end
	end
		
	-- PrintStr("sjbagpos ="..sjbagpos)
	
	if sjbagpos == -1 then
		local strNotice = "Ngß½i c¥n ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ²ĞÈ±toÕ ğµ Éñ½Ú
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	-- PrintStr("sjbagpos ="..sjbagpos)
	
	local CheckParam = GetBagItemParam( sceneId, selfId, sjbagpos, 8, 2 )   
	
	-- PrintStr("CheckParam ="..CheckParam)
	
	if CheckParam < x335135_g_MaxCompleteValue[x335135_g_ShenCaiIndex] and CheckParam + x335135_g_CompleteValue >= x335135_g_MaxCompleteValue[x335135_g_ShenCaiIndex] then		-- µ±ÍêÕû¶È´ïµ½100Ê±Ğúng·ñ»¹ÓĞ¿Õ¼ä
		local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
		if( FreeSpace < 1 ) then
	     local strNotice = "Ô ğÕo cø không có không gian, c¥n sØa sang lÕi."
		   x335135_ShowMsg( sceneId, selfId, strNotice)
	     return 0
		end
	end
	
	
	-- ñÒÉÙÎ¢,102ÉñÆ÷.Èç¹ûÊ¹ÓÃtoÕ ğµ ĞúngTân mãng th¥n phù c¤p 7
	if Item01 == 30505806 then
		x335135_g_XinMang7JiInfo = GetBagItemTransfer( sceneId, selfId, nIndex )
		--PrintStr(x335135_g_XinMang7JiInfo)
	end
	
	
	return 1; --²»C¥n ÈÎºÎÌõ¼ş,²¢ÇÒÊ¼ÖÕTr· v«1.
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x335135_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1
	end
	return 0
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335135_OnActivateOnce( sceneId, selfId )

	-- PrintStr("OnActivateOnce...")
	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid )
	
	if ItemCount < 1 then
		local strNotice = "Ngß½i c¥n ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ²ĞÈ±toÕ ğµ Éñ½Ú
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	--  ği¬mµ½µ±Ç°ÕıTÕi Ê¹ÓÃtoÕ ğµ ÎïÆ·toÕ ğµ trí tay näi
	local nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	
	
	-- PrintStr("nIndex ="..nIndex)
	
	--  ği¬mµ½µ±Ç°ÕıTÕi Ê¹ÓÃtoÕ ğµ ÎïÆ·toÕ ğµ ID
	local Item01 = x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sfid
	
	-- PrintStr("Item01 ="..Item01)
	
	--ÏûºÄÑ¡ÖĞtoÕ ğµ ĞÂÃ§Éñ·û
  -- ret = LuaFnDelAvailableItem(sceneId, selfId, Item01, 1)
	local bagbegin = GetBasicBagStartPos(sceneId, selfId)
	local bagend   = GetBasicBagEndPos(sceneId, selfId)
	-- PrintStr("bagbegin ="..bagbegin)
	-- PrintStr("bagend ="..bagend)
	local ItemEX
	--  ğÕt ğßşcµ±Ç°¿ÉÒÔºÏ³ÉtoÕ ğµ µÚmµt cáiÉñ½ÚTÕi ±³°üÖĞtoÕ ğµ Î»ÖÃ	
	local sjbagpos = -1
	for i=bagbegin, bagend do
		if LuaFnIsItemAvailable( sceneId, selfId, i ) == 1 then
			ItemEX = LuaFnGetItemTableIndexByIndex(sceneId, selfId, i)			
			if ItemEX == x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid then
				-- PrintStr("ItemEX ="..ItemEX)
				sjbagpos = i
				break
			end		
		end
	end
		
	-- PrintStr("sjbagpos ="..sjbagpos)
	
	if sjbagpos == -1 then
		local strNotice = "Ngß½i c¥n ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ²ĞÈ±toÕ ğµ Éñ½Ú
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end
	
	--  ğÕt ğßşcµ±Ç°ºÏ³ÉtoÕ ğµ Éñ½ÚÍêÕû¶È	
	local CompleteValue = GetBagItemParam( sceneId, selfId, sjbagpos, 8, 2 )
	-- PrintStr("CompleteValue ="..CompleteValue)

	if nIndex >= 0 then		
		
		-- ¼ÇÂ¼Í³¼ÆĞÅÏ¢
		LuaFnAuditShenCai(sceneId, selfId, Item01)
		
		CompleteValue = CompleteValue + x335135_g_CompleteValue
		
		-- PrintStr("CompleteValue ="..CompleteValue)
		
		SetBagItemParam( sceneId, selfId, sjbagpos, 8, 2, CompleteValue ) --ÉèÖÃÍê³É¶È
		
		-- ñÒÉÙÎ¢,2008.5.22 Ìí¼ÓÊÀ½çH® th¯ng¹«¸æ	#ISØ døng mµt cáiĞÂÃ§Éñ·û#G7c¤p#I,ÀëÖı³É¾øÊÀÉñÆ÷ÓÖ½üÁËmµt ²½.
		if Item01 == 30505806 then
			local playername = GetName(sceneId, selfId)	
			local strText = format("#{_INFOUSR%s}#{DQSJ_20080512_12}#{_INFOMSG%s}#{DQSJ_20080512_13}", playername, x335135_g_XinMang7JiInfo)						
			BroadMsgByChatPipe(sceneId,selfId, strText, 4)
		end
		
		--------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áth¤t bÕi
		local CheckParam = GetBagItemParam( sceneId, selfId, sjbagpos, 8, 2 )   
				
		-- PrintStr("CheckParam ="..CheckParam)
				
		if CheckParam ~= CompleteValue then
		    return 0
		end		
		--------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áth¤t bÕi
		
		local strNotice = "Cüa ngß½i ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}".."Ğ¥y ğü ğµ gia tång 1 r°i" -- ²ĞÈ±toÕ ğµ Éñ½Ú
		x335135_ShowMsg( sceneId, selfId, strNotice)
		
		LuaFnRefreshItemInfo( sceneId, selfId, sjbagpos )	--Ë¢ĞÂ±³°üĞÅÏ¢
		
		if CompleteValue >= x335135_g_MaxCompleteValue[x335135_g_ShenCaiIndex] then		-- µ±ÍêÕû¶È´ïµ½100Ê±
					
			local EraseRet = EraseItem( sceneId, selfId, sjbagpos )
			
			if EraseRet < 0 then      --Èç¹ûÉ¾³ıth¤t bÕi,½«²»»á²úÉúÈÎºÎĞ§¹û			  
					return 0
			end
			
			-- PrintStr("lrid ="..x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].lrid)
			
			BeginAddItem( sceneId )
			AddItem( sceneId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].lrid, 1 )
			ret = EndAddItem( sceneId, selfId )
											
			if ret > 0 then
				TryRecieveItem( sceneId, selfId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].lrid, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË							
				
			else
					BeginEvent(sceneId)
					strText = "Ô ğÕo cø ho£c nguyên li®u không ğü không gian, thïnh sØa sang lÕi sau lÕi ğªn lînh."
					AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return 0
			end		
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x335135_g_Impact_Complete, 0 )
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x335135_g_Impact_LevelUP, 0 )
		end
		
	else
		local strMsg = "Hşp thành th¤t bÕi"
		x335135_ShowMsg( sceneId, selfId, strMsg)
		return 0
	end
  
	-- Ö÷²ÄºÏ³ÉÍê±Ï

--	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, g_ImpactID, 0)
	return 1
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335135_OnActivateEachTick( sceneId, selfId )
	return 1
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
function x335135_CancelImpacts( sceneId, selfId )
	return 0		--²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

function x335135_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
