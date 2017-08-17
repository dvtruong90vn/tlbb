--±¦Ê¯µñ×Á

--½Å±¾ºÅ
x800117_g_ScriptId	= 800117
x800117_g_BINDED = 1              -- ÒÑ¾­°ó¶¨
			

function x800117_OnGemCarve( sceneId, selfId, GemItemPos, NeedItemPos,TargetID )

	if (TargetID == nil ) then
		return
	end 
	if (TargetID == -1) then
		return
	end
	if GemItemPos == -1 or NeedItemPos == -1 then
		return
	end

	local GemItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos )
	local NeedItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, NeedItemPos )

	--»ñµÃ±¦Ê¯µñ×ÁµÄÐÅÏ¢....
	local ProductID, NeedID, NeedMoney = LuaFnGetGemCarveInfo( GemItemID )
	if  -1 == ProductID then
		return
	end

	--¼ì²âÊÇ·ñÓÐËùÐèÎïÆ·....
	if NeedID ~= NeedItemID then
		return
	end
	
	--¼ì²â½ðÇ®ÊÇ·ñ×ã¹»....
	local PlayerMoney = GetMoney( sceneId, selfId ) +  GetMoneyJZ(sceneId, selfId)  --½»×ÓÆÕ¼° Vega
	if PlayerMoney < NeedMoney then
		return
	end

	local ProductNeedBind = 0    -- ²úÉúµÄÐÂ±¦Ê¯ÊÇ·ñÐèÒª°ó¶¨ 0ÊÇ²»ÐèÒª°ó¶¨×´Ì¬£¬1ÊÇÐèÒª°ó¶¨
	--¸ù¾Ý±¦Ê¯ÊÇ·ñ°ó¶¨ºÍ±¦Ê¯µñ×Á·ûÊÇ·ñ°ó¶¨£¬¾ö¶¨Õª³ýºóµÄ±¦Ê¯ÊÇ·ñ°ó¶¨
	if (LuaFnGetItemBindStatus(sceneId,selfId,GemItemPos) == x800117_g_BINDED or LuaFnGetItemBindStatus(sceneId,selfId,NeedItemPos) == x800117_g_BINDED) then
	  ProductNeedBind = 1
	end	

	local NeedItemInfo = GetBagItemTransfer( sceneId, selfId, NeedItemPos )

	--¿Û³ý±¦Ê¯ºÍËùÐèÎïÆ·....
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos )
	if ret ~= 1 then
		x800117_NotifyTip( sceneId, selfId, "LoÕi bäo thÕch này không th¬ tÕo hình ðßþc" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, NeedItemPos )
	if ret ~= 1 then
		x800117_NotifyTip( sceneId, selfId, "V§t ph¦m không th¬ sØ døng" )
		return
	end

	LuaFnEraseItem( sceneId, selfId, GemItemPos )
	LuaFnEraseItem( sceneId, selfId, NeedItemPos )

	--¿ÛÇ®....
	ret = LuaFnCostMoneyWithPriority( sceneId, selfId, NeedMoney )    --½»×ÓÆÕ¼° Vega
	if ret < 0 then
		x800117_NotifyTip( sceneId, selfId, "Không ðü Ngân Lßþng" )
		return
	end

	--¸øÍæ¼Òµñ×ÁºóµÄ±¦Ê¯....²»ÓÃ¼ì²â±³°üÊÇ·ñÓÐµØ·½....Ã»µØ·½Ç°±ßÒ²del³öµØ·½ÁË....
	local BagIndex = TryRecieveItem( sceneId, selfId, ProductID, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		x800117_NotifyTip( sceneId, selfId, "Túi ðeo thiªu không gian" )
	end
	
	--¸ù¾Ý±¦Ê¯ÊÇ·ñ°ó¶¨ºÍ±¦Ê¯µñ×Á·ûÊÇ·ñ°ó¶¨£¬¾ö¶¨Õª³ýºóµÄ±¦Ê¯ÊÇ·ñ°ó¶¨
	if (ProductNeedBind == 1) then
	  local	bindidx	=	LuaFnItemBind(sceneId, selfId,BagIndex)
	  if bindidx ~= 1 then
		  local bindmsg = "V§t ph¦m ðã ðßþc c¯ ð¸nh"													
		  BeginEvent( sceneId )
		    AddText( sceneId, bindmsg )
		  EndEvent( sceneId )
		  DispatchMissionTips( sceneId, selfId )
	  end
	end	

	--Í³¼Æ....
	LuaFnAuditGemCarve( sceneId, selfId, GemItemID)

	--ÐÑÄ¿ÌáÊ¾Íæ¼Òµñ×Á³É¹¦....
	x800117_NotifyTip( sceneId, selfId, "#{_ITEM"..GemItemID.."} tÕo hình thành công, tr· thành #{_ITEM"..ProductID.."}" )

	--¹«¸æ....
	local Name = GetName(sceneId, selfId)
	local SceneName = GetSceneName(sceneId)
	local NPCName   = GetName(sceneId,TargetID)
	local GemItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
	local gemQual = GetItemQuality( ProductID )
	--local strText = format("#{_INFOUSR%s}#IÔÚ%s#RÅí»³Óñ#I´¦Ê¹ÓÃ#{_INFOMSG%s}#Iµñ×Á³öÒ»¿Å#{_INFOMSG%s}#I£¬ÂåÑô³ÇÒ»Ê±±¦¹â³åÌì¡£", Name, SceneName,NeedItemInfo, GemItemInfo )
	local strText = format("#{_INFOUSR%s}#I SØ døng tÕi #G%s#R%s#I sØ døng chÑc nång tÕo hình cüa #{_INFOMSG%s}#I tÕo ra mµt viên #{_INFOMSG%s}#I phát quang sáng chói...", Name, SceneName,NPCName,NeedItemInfo, GemItemInfo, SceneName)
	
	--¹«¸æ¾«¼ò£¬Ö»±£Áô3¼¶ÒÔÉÏµÄ±¦Ê¯µñ×Á¹«¸æ
	if (gemQual > 3) then
		BroadMsgByChatPipe(sceneId,selfId, strText, 4)
	end

	-- µñ×Á³É¹¦ÌØÐ§....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x800117_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
