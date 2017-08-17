--NPC HoÕt Ðµng

x210242_g_ScriptId = 210242

x210242_g_ItemId = {30505114,30505115,30505116,30505117,30505118,30505119,30505120,}

x210242_g_PetEggId = 30505121
	
--**********************************--
--*        On Default Event        *--
--**********************************--
function x210242_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetNumText() == 1   then
		BeginEvent(sceneId)
			AddText(sceneId, "#YÐ±i Xí Nga" );
			AddText(sceneId, "Trong cái nóng cüa mùa HÕ, các hÕ có mu¯n 1 tý gió không ? Có mu¯n 1 ly thÑc u¯ng lÕnh không ? Có mu¯n 1 tý thanh thän sän khoái không?" );
			AddText(sceneId, "Chï c¥n có ðü bµ 7 miªng mänh vøn, là có th¬ ðÕt ðßþc r°i!" );
			AddText(sceneId, "Mµt v¸ không biªt tên, ðã dùng s¯ mänh vøn này mang ðªn cho thª gi¾i Thiên Long Bát Bµ càng thêm thoäi mái, ð¬ làm quà t£ng, ngß¶i còn nh¶ ta t£ng cho nhæng ngß¶i thu th§p ðü mänh vøn th¤t tinh 1 món quà!" );
			AddText(sceneId, "Mµt con Xí Nga ðáng yêu!" );
			AddText(sceneId, "Các hÕ xác nh§n mu¯n ð±i trÑng Xí Nga không?" );
			AddNumText(sceneId, x210242_g_ScriptId,"Xác nh§n", 8,3);
			AddNumText(sceneId, x210242_g_ScriptId,"Hüy bö", 8,4);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	if GetNumText() == 4   then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	if GetNumText() == 3   then
		
		local HaveAllItem = 1
		for i, ItemId in x210242_g_ItemId  do
			if GetItemCount(sceneId, selfId, ItemId) < 1   then
				HaveAllItem = 0
			end
			if GetItemCount(sceneId, selfId, ItemId) == 1   then
				BagHavePos = 1
			end
		end
		
		if HaveAllItem == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "Ð±i TrÑng Xí Nga c¥n Kim, Mµc, Thüy, Höa, Th±, Nh§t, Nguy®t 7 loÕi mänh vøn m²i thÑ 1 cái, trên ngß¶i các hÕ không ðü mänh vøn nên không th¬ tiªn hành ð±i." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		local AllItemCanDelete = 1
		for i, ItemId in x210242_g_ItemId  do
			if LuaFnGetAvailableItemCount(sceneId, selfId, ItemId) < 1   then
				AllItemCanDelete = 0
				break;
			end
		end
		
		if AllItemCanDelete == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "Kh¤u tr× v§t ph¦m trên ngß¶i các hÕ th¤t bÕi, xin ki¬m tra lÕi phäi chång v§t ph¦m ðã b¸ khóa ho£c v§t ph¦m ðang trong trÕng thái giao d¸ch." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	 	BeginAddItem(sceneId)
			AddItem( sceneId, x210242_g_PetEggId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		
		local delret = 1
		if ret == 1  then
			for i, ItemId in x210242_g_ItemId  do
				if LuaFnDelAvailableItem(sceneId, selfId, ItemId, 1) == 0   then
					delret = 0
					break
				end
			end
			
			if delret == 1  then
				AddItemListToHuman(sceneId,selfId)
				local transfer = GetItemTransfer(sceneId,selfId,0)
				local str = format("#P #{_INFOUSR%s} träi qua nhæng n± lñc, cu¯i cùng cûng thu ðßþc ðü bµ Kim Tinh, Mµc Tinh, Thüy Tinh, Höa Tinh, Th± Tinh, M£t Trång và M£t Tr¶i 7 bäy miªng mänh vøn. Ð¬ ð«n ðáp, Cüng Thái Vân · ÐÕi Lý ðã t£ng cho 1 viên #{_INFOMSG%s}.",GetName(sceneId,selfId), transfer)
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)

				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
			end
		end
		return

	end
	
	if GetNumText() == 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y Ð±i Xí Nga" );
			AddText(sceneId, "#{duihuanqie_shuoming}" );
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end
--**********************************--
--*          On Enumerate          *--
--**********************************--
function x210242_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId, x210242_g_ScriptId,"Ta mu¯n ð±i TrÑng Xí Nga", 6, 1);
	AddNumText(sceneId, x210242_g_ScriptId,"Liên quan ð±i TrÑng Xí Nga", 0, 2);

end
--**********************************--
--*          Check Accept          *--
--**********************************--
function x210242_CheckAccept( sceneId, selfId )
end
--**********************************--
--*           On Accrpt            *--
--**********************************--
function x210242_OnAccept( sceneId, selfId, targetId )
end
--**********************************--
--*           On Abandon           *--
--**********************************--
function x210242_OnAbandon( sceneId, selfId )
end
--**********************************--
--*          Check Submit          *--
--**********************************--
function x210242_CheckSubmit( sceneId, selfId )
end

--**********************************--
--*            On Submit           *--
--**********************************--
function x210242_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end
--**********************************--
--*          On Enter Zone         *--
--**********************************--
function x210242_OnEnterZone( sceneId, selfId, zoneId )
end
--**********************************--
--*          Pick Up Item          *--
--**********************************--
function x210242_PickupItem( sceneId, selfId, itemId, bagidx )

	local transfer = GetBagItemTransfer(sceneId, selfId, bagidx)
	local str = format("#P #{_INFOUSR%s} làm ra 1 viên ðá, sau khi mang ði rØa sÕch s¨, thì m¾i phát hi®n ra là #{_INFOMSG%s}.",GetName(sceneId,selfId), transfer)
	BroadMsgByChatPipe(sceneId, selfId, str, 4)
	
end
--**********************************--
--*        Check Percent OK        *--
--**********************************--
function x210242_CheckPercentOK( numerator, denominator )

  local roll = random( denominator )
  if roll <= numerator then
      return 1
  end
  return 0
  
end
--**********************************--
--*        Drop Stone List         *--
--**********************************--
function x210242_DropStoneList(sceneId, LongzhuIndex) 
  
  if 1 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 667, 100000 )--0.00667
      if 1 == CheckOK then
          return 30505114
      end
  end
  
  if 2 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 167, 100000 )
      if 1 == CheckOK then
          return 30505115
      end
  end
  
  if 3 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 67, 100000 )
      if 1 == CheckOK then
          return 30505116
      end
  end
  
  if 4 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 37, 100000 )
      if 1 == CheckOK then
          return 30505117
      end
  end
  
  if 5 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 23, 100000 )
      if 1 == CheckOK then
          return 30505118
      end
  end
  
  if 6 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 13, 100000 )
      if 1 == CheckOK then
          return 30505119
      end
  end
  
  if 7 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 7, 100000 )
      if 1 == CheckOK then
          return 30505120
      end
  end
  
  return -1
    
end
