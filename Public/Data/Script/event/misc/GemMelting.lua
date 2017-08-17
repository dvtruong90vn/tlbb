--±¦Ê¯ÈÛÁ¶

--½Å±¾ºÅ
x800118_g_ScriptId	= 800118


function x800118_OnGemMelting( sceneId, selfId, GemItemPos1, GemItemPos2, GemItemPos3, NeedItemPos )

	if GemItemPos1 == -1 or GemItemPos2 == -1 or GemItemPos3 == -1 or NeedItemPos == -1 then
		return
	end

	--ÊÇ·ñÔÚ°²È«Ê±¼äÄÚ....Õâ¸öÅÐ¶Ïº¯ÊýÀïÃæ×Ô¼ºÓÐÌáÊ¾ÐÅÏ¢....
	if IsPilferLockFlag(sceneId, selfId) <= 0 then
		return
	end
	
	-- ²»ÔÊÐíÓÐÖØ¸´µÄbagIndexList³öÏÖ added by dun.liu 2009.2.5
	if ScriptGlobal_IsUniqueNumberTable({GemItemPos1, GemItemPos2, GemItemPos3}) == 0 then
		return
	end

	local GemItemID1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos1 )
	local GemItemID2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos2 )
	local GemItemID3 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos3 )
	local NeedItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, NeedItemPos )

	--¼ì²âÊÇ·ñÊÇÓÐÍ¬ÑùµÄ±¦Ê¯....
	if GemItemID1 ~= GemItemID2 or GemItemID1 ~= GemItemID3 then
		x800118_NotifyTip( sceneId, selfId, "LoÕi hình bäo thÕch không ð°ng nh¤t, dung luy®n th¤t bÕi" )
		return
	end

	--¼ì²âÊÇ·ñ¿ÉÒÔÈÛÁ¶....
	local ProductID, NeedID, NeedMoney = LuaFnGetGemMeltingInfo( GemItemID1 )
	if  -1 == ProductID then
		x800118_NotifyTip( sceneId, selfId, "Bäo thÕch này không th¬ dung luy®n" )
		return
	end

	--¼ì²âÊÇ·ñÓÐËùÐèÎïÆ·....
	if NeedID ~= NeedItemID then
		x800118_NotifyTip( sceneId, selfId, "Không ðü s¯ lßþng Dung Luy®n Phù" )
		return
	end

	--¼ì²â½ðÇ®ÊÇ·ñ×ã¹»....
	local PlayerMoney = GetMoney( sceneId, selfId ) +  GetMoneyJZ(sceneId, selfId)  --½»×ÓÆÕ¼° Vega
	if PlayerMoney < NeedMoney then
		x800118_NotifyTip( sceneId, selfId, "Không ðü Ngân Lßþng" )
		return
	end

	--¼ì²â²úÎïÊÇ·ñÐèÒª°ó¶¨....
	local bNeedBind = 0
	if LuaFnGetItemBindStatus(sceneId, selfId, GemItemPos1) == 1 then
	  bNeedBind = 1
	end
	if LuaFnGetItemBindStatus(sceneId, selfId, GemItemPos2) == 1 then
	  bNeedBind = 1
	end
	if LuaFnGetItemBindStatus(sceneId, selfId, GemItemPos3) == 1 then
	  bNeedBind = 1
	end
	if LuaFnGetItemBindStatus(sceneId, selfId, NeedItemPos) == 1 then
	  bNeedBind = 1
	end

	--¿Û³ý±¦Ê¯ºÍËùÐèÎïÆ·....
	--local GemItemInfo = GetBagItemTransfer( sceneId, selfId, GemItemPos1 )
	local NeedItemInfo = GetBagItemTransfer( sceneId, selfId, NeedItemPos )

	local ret = -1
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos1 )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "Bäo thÕch không th¬ sØ døng, dung luy®n th¤t bÕi" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos2 )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "Bäo thÕch không th¬ sØ døng, dung luy®n th¤t bÕi" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos3 )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "Bäo thÕch không th¬ sØ døng, dung luy®n th¤t bÕi" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, NeedItemPos )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "Không có Dung Luy®n Phù" )
		return
	end


	-- ±ØÐë±£Ö¤¿Û³ýÎïÆ·È«²¿³É¹¦£¬ÈÎºÎÒ»´ÎÊ§°Ü¶¼µ¼ÖÂÎÞ·¨ºÏ³É±¦Ê¯£¬²¢ÇÒÒÑ¾­¿Û³ýµÄ±¦Ê¯²»¹é»¹£¬added by dun.liu 2009.2.5
	if LuaFnEraseItem( sceneId, selfId, GemItemPos1 ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh¤u tr× v§t ph¦m th¤t bÕi" )
		return
	end
	
	if LuaFnEraseItem( sceneId, selfId, GemItemPos2 ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh¤u tr× v§t ph¦m th¤t bÕi" )
		return
	end
	
	if LuaFnEraseItem( sceneId, selfId, GemItemPos3 ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh¤u tr× v§t ph¦m th¤t bÕi" )
		return
	end
	
	if LuaFnEraseItem( sceneId, selfId, NeedItemPos ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh¤u tr× v§t ph¦m th¤t bÕi" )
		return
	end


	--¿ÛÇ®....
	ret = LuaFnCostMoneyWithPriority( sceneId, selfId, NeedMoney )      --½»×ÓÆÕ¼° Vega
	if ret < 0 then
		x800118_NotifyTip( sceneId, selfId, "Không ðü Ngân Lßþng" )
		return
	end

	--¸øÍæ¼ÒÈÛÁ¶ºóµÄ±¦Ê¯....²»ÓÃ¼ì²â±³°üÊÇ·ñÓÐµØ·½....Ã»µØ·½Ç°±ßÒ²del³öµØ·½ÁË....
	local BagIndex = TryRecieveItem( sceneId, selfId, ProductID, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		x800118_NotifyTip( sceneId, selfId, "Túi ðeo thiªu không gian" )
		return
	end
	if bNeedBind == 1 then
		LuaFnItemBind(sceneId, selfId, BagIndex)
	end
	local ProductItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )

	--Í³¼Æ....
	LuaFnAuditGemMelting( sceneId, selfId, GemItemID1, GemItemID2, GemItemID3, NeedItemID, ProductID )

	--ÐÑÄ¿ÌáÊ¾....
	x800118_NotifyTip( sceneId, selfId, "3 viên #{_ITEM"..GemItemID1.."} dung luy®n thành công ðßþc 1 viên #{_ITEM"..ProductID.."}" )

	--¹«¸æ....
	if LuaFnGetItemQuality(ProductID) >= 3 then
		local MeltingNPCTbl =
		{
			[0]   = "LÕc Dß½ng - Bành Hoài Ng÷c[280,322]",
			[420] = "Thúc Hà - Kinh Khäm Th§t[134,84]",
			[186] = "Lâu Lan - Kh¡c Lý Mµc[74,161]",
		}
		local NPCInfo = MeltingNPCTbl[sceneId]
		local PlayerName = GetName(sceneId, selfId)
		local strText = format("#{JKBS_081021_016}#{_INFOUSR%s}#{JKBS_081021_017}#{_ITEM%s}#{JKBS_081021_018}#{_INFOMSG%s}#{JKBS_081021_019}%s#{JKBS_081021_020}#{_INFOMSG%s}#{JKBS_081021_021}", PlayerName, GemItemID1, NeedItemInfo, NPCInfo, ProductItemInfo )
		BroadMsgByChatPipe(sceneId,selfId, strText, 4)
	end

	--ÈÛÁ¶³É¹¦ÌØÐ§....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x800118_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
