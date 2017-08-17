-- 125021
-- ¾º¼¼³¡ ¸¨Öú¹¦ÄÜ£¬¶Ò»»Ñü´ø
x125021_g_ScriptId = 125021

--ÃËÖ÷Ö®Ó¡		Buff6_1		30505143
--Í­Ñü´ø		Girdle3_4		10421018
--ÒøÑü´ø		Girdle3_3		10421019
--½ðÑü´ø		Girdle3_2		10421020
--Æß±¦Ñü´ø	Girdle3_1		10421021

x125021_g_StoneId = 30505143

x125021_g_Item_1 = 10421018
x125021_g_Item_2 = 10421019
x125021_g_Item_3 = 10421020
x125021_g_Item_4 = 10421021

x125021_g_Exp = 50000

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x125021_OnEnumerate( sceneId, selfId, targetId )	
	AddNumText( sceneId, x125021_g_ScriptId, "Minh chü ð°ng yêu ðái ð±i minh chü chi ¤n", 12, 1 )
	AddNumText( sceneId, x125021_g_ScriptId, "Minh chü ngân yêu ðái ð±i minh chü chi ¤n", 12, 2 )
	AddNumText( sceneId, x125021_g_ScriptId, "Minh chü kim yêu ðái ð±i minh chü chi ¤n", 12, 3 )

	AddNumText( sceneId, x125021_g_ScriptId, "Thång c¤p minh chü ð°ng yêu ðái", 6, 7 )
	AddNumText( sceneId, x125021_g_ScriptId, "Thång c¤p minh chü ngân yêu ðái", 6, 4 )
	AddNumText( sceneId, x125021_g_ScriptId, "Thång c¤p minh chü kim yêu ðái", 6, 5 )
	AddNumText( sceneId, x125021_g_ScriptId, "Thång c¤p minh chü th¤t bäo yêu ðái", 6, 6 )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x125021_OnDefaultEvent( sceneId, selfId, targetId )
	local Num = GetNumText()
	if Num == 1  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BMinh chü ð°ng yêu ðái ð±i minh chü chi ¤n");
      AddText(sceneId,"  1 cái minh chü ð°ng yêu ðái có th¬ ð±i 1 cái minh chü chi ¤n");
      AddNumText( sceneId, x125021_g_ScriptId, "Xác nh§n", 8, 10 )
      AddNumText( sceneId, x125021_g_ScriptId, "HuÖ bö", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
	
	elseif Num == 2  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BMinh chü ngân yêu ðái ð±i minh chü chi ¤n");
      AddText(sceneId,"  1 cái minh chü ngân yêu ðái có th¬ ð±i 10 cái minh chü chi ¤n");
      AddNumText( sceneId, x125021_g_ScriptId, "Xác nh§n", 8, 11 )
      AddNumText( sceneId, x125021_g_ScriptId, "HuÖ bö", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
		
	elseif Num == 3  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BMinh chü kim yêu ðái ð±i minh chü chi ¤n");
      AddText(sceneId,"  1 cái minh chü kim yêu ðái có th¬ ð±i 100 cái minh chü chi ¤n");
      AddNumText( sceneId, x125021_g_ScriptId, "Xác nh§n", 8, 12 )
      AddNumText( sceneId, x125021_g_ScriptId, "HuÖ bö", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 4  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BThång c¤p minh chü ngân yêu ðái");
      AddText(sceneId,"  Thång c¤p tr· thành minh chü ngân yêu ðái c¥n tiêu hao:#r#G    1 cái minh chü ð°ng yêu ðái#r    9 cái minh chü chi ¤n#r    ngß½i xác ð¸nh thång c¤p không?");
      AddNumText( sceneId, x125021_g_ScriptId, "Xác nh§n", 8, 13 )
      AddNumText( sceneId, x125021_g_ScriptId, "HuÖ bö", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 5  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BThång c¤p minh chü kim yêu ðái");
      AddText(sceneId,"  Thång c¤p tr· thành minh chü kim yêu ðái c¥n tiêu hao:#r#G    1 cái minh chü ngân yêu ðái#r    90 cái minh chü chi ¤n#r    #{_EXCHG"..tostring(500000).."}#W#r  ngß½i xác ð¸nh thång c¤p không?");
      AddNumText( sceneId, x125021_g_ScriptId, "Xác nh§n", 8, 14 )
      AddNumText( sceneId, x125021_g_ScriptId, "HuÖ bö", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 6  then
    BeginEvent(sceneId)
      AddText(sceneId,"#Thång c¤p minh chü th¤t bäo yêu ðái");
      AddText(sceneId,"  Thång c¤p tr· thành minh chü th¤t bäo yêu ðái c¥n tiêu hao:#r#G    1 cái minh chü kim yêu ðái#r    400 cái minh chü chi ¤n#r    #{_EXCHG"..tostring(1000000).."}#W#r  ngß½i xác ð¸nh thång c¤p không?");
      AddNumText( sceneId, x125021_g_ScriptId, "Xác nh§n", 8, 15 )
      AddNumText( sceneId, x125021_g_ScriptId, "HuÖ bö", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 7  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BThång c¤p minh chü ð°ng yêu ðái");
      AddText(sceneId,"  Thång c¤p tr· thành minh chü ð°ng yêu ðái c¥n tiêu hao:#r#G    40 cái minh chü ð°ng yêu ðái toái phiªn#W#r  ngß½i xác ð¸nh thång c¤p không?");
      AddNumText( sceneId, x125021_g_ScriptId, "Xác nh§n", 8, 16 )
      AddNumText( sceneId, x125021_g_ScriptId, "HuÖ bö", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
	end
		
	if Num == 10  then
    x125021_ChangeItem( sceneId, selfId, 1 )
	elseif Num == 11  then
    x125021_ChangeItem( sceneId, selfId, 2 )
	elseif Num == 12  then
		x125021_ChangeItem( sceneId, selfId, 3 )
	end
	
	if Num == 13  then
		x125021_UpdateItem( sceneId, selfId, 1 )
	elseif Num == 14  then
		x125021_UpdateItem( sceneId, selfId, 2 )
	elseif Num == 15  then
		x125021_UpdateItem( sceneId, selfId, 3 )
	end	
	
	if Num == 16  then
		x125021_StoneToItem(sceneId, selfId)
	end
	
	if Num == 20  then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end

end

--**********************************
-- ËéÆ¬»»Ñü´ø
--**********************************
function x125021_StoneToItem(sceneId, selfId)
	
	BeginAddItem(sceneId)
		AddItem( sceneId, x125021_g_Item_1, 1 )
	local ret = EndAddItem(sceneId,selfId)
	
	-- Ñü´øËéÆ¬µÄID
	local nStoneId = 40004434
	if ret > 0  then
		if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=40 then
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,40)
			AddItemListToHuman(sceneId,selfId)
			x125021_DispatchTips(sceneId,selfId,1)
			-- Ìí¼ÓÒ»¸ö¶Ò»»ÈÕÖ¾
			LuaFnAuditPlayerBehavior(sceneId, selfId, "Toái phiªn ð±i yêu ðái");
		else
			x125021_DispatchTips(sceneId,selfId,0)
		end
		
	else
		x125021_DispatchTips(sceneId,selfId,-2)
	end
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end

--**********************************
--x125021_UpdateItem
--**********************************
function x125021_UpdateItem( sceneId, selfId, nIndex )
	if nIndex == 1  then
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_2, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=9 and
				LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_1)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,9)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_1,1)
				
				AddItemListToHuman(sceneId,selfId)
				-- Ìí¼Ó×°±¸Éý¼¶ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ð°ng yêu ðái ð±i ngân yêu ðái");

		    	x125021_DispatchTips(sceneId,selfId,1)
				return
			end
		end
		
	elseif nIndex == 2  then
		
		if GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId) < 500000   then  
			x125021_DispatchTips(sceneId,selfId,-1)
			return
		end
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_3, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=90 and
				LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_2)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,90)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_2,1)
				
				-- ¿ÛG
				--CostMoney(sceneId,selfId,500000)
				LuaFnCostMoneyWithPriority( sceneId, selfId, 500000 )  
				
				AddItemListToHuman(sceneId,selfId)
				-- Ìí¼Ó×°±¸Éý¼¶ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ngân yêu ðái ð±i kim yêu ðái");

		    	x125021_DispatchTips(sceneId,selfId,1)
				return
			end
		end
		
	elseif nIndex == 3  then
		
		if GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId)< 1000000   then
			x125021_DispatchTips(sceneId,selfId,-1)
			return
		end
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_4, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=400 and
					LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_3)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,400)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_3,1)
				
				-- ¿ÛG
				--CostMoney(sceneId,selfId,1000000)
				LuaFnCostMoneyWithPriority( sceneId, selfId, 1000000 )  
				AddItemListToHuman(sceneId,selfId)
				
				
				-- Ìí¼Ó×°±¸Éý¼¶ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Kim yêu ðái ð±i th¤t bäo yêu ðái");
	    	x125021_DispatchTips(sceneId,selfId,1)
		    	
		    -- ·¢ËÍÊÀ½ç¹«¸æ
				local szTransferEquip = GetItemTransfer(sceneId,selfId,0)
		    
				local str = ""
				str = format("#PVu CØu Liên hô to: Thiên hÕ anh hùng! Anh hùng vî ðÕi #{_INFOUSR%s} nhi«u nåm qua tÕi Phong Thi®n Ðài ðçm máu chiªn ð¤u hång hái, cu¯i cùng th¡ng ðßþc võ lâm minh chü chính thÑc! #{_INFOMSG%s}!", GetName(sceneId,selfId), szTransferEquip)
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
		    
				return
			end
		end
		
	end
	
  x125021_DispatchTips(sceneId,selfId,0)
  
end

--**********************************
--x125021_ChangeItem
--**********************************
function x125021_ChangeItem( sceneId, selfId, nIndex )
	if nIndex == 1  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_1,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--Ìí¼Ó¶Ò»»ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ð°ng yêu ðái ð±i 1 minh chü ¤n");
			    x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	elseif nIndex == 2  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 10 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_2,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--Ìí¼Ó¶Ò»»ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ngân yêu ðái ð±i 10 minh chü ¤n");
			    x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	elseif nIndex == 3  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 100 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_3,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--Ìí¼Ó¶Ò»»ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Kim yêu ðái ð±i 100 minh chü ¤n");
			  	x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	end
	
 	x125021_DispatchTips(sceneId,selfId,0)  
  return
  
end

function x125021_DispatchTips(sceneId,selfId,bOk)
	if bOk == 0  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Trao ð±i th¤t bÕi, ki¬m tra v§t ph¦m có ðü hay không.");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	elseif bOk == -1  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Không ðü ngân lßþng");    
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	elseif bOk == -2  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Tay näi cüa ngß½i không ðü không gian.");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	else
	  BeginEvent(sceneId)
	    AddText(sceneId,"Trao ð±i thành công");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	end
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end
