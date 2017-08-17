--×°±¸¼õÉÙÐÞÀíÊ§°Ü´ÎÊý
--½Å±¾ºÅ
x809265_g_ScriptId = 809265

--¼õÉÙÐÞÀíÊ§°Ü´ÎÊýUI 1005

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x809265_OnEnumerate( sceneId, selfId, targetId )

end


--**********************************
--¼õÉÙÐÞÀíÊ§°Ü´ÎÊý
--**********************************
function x809265_EquipFaileTimes( sceneId, selfId, nItemIndex1, nItemIndex2)

	local ret = LuaFnIsItemLocked( sceneId, selfId, nItemIndex1 )
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b¸ này không th¬ gia tång s¯ l¥n sØa chæa");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	
	ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Không th¬ sØ døng Nhu§n V§t Lµ");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local szTransfer = GetBagItemTransfer(sceneId,selfId, nItemIndex2);


	local sy_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, nItemIndex2 )
	if sy_index ~= 30900007 and sy_index ~= 30900000   then
		BeginEvent(sceneId)
		AddText(sceneId,"Gia tång s¯ l¥n sØa chæa trang b¸ c¥n có Nhu§n V§t Lµ");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	local	text	= "Gia tång s¯ l¥n sØa chæa thành công"
	local money = GetMoney( sceneId, selfId )
	local jiaozi = GetMoneyJZ(sceneId, selfId);
	local need_money = GetBagItemLevel( sceneId, selfId, nItemIndex1 ) * 200
	if money+jiaozi < need_money then
		text="Gia tång s¯ l¥n sØa chæa trang b¸ th¤t bÕi c¥n có #{_EXCHG%d}, ngân lßþng trên ngß¶i các hÕ không ðü"
		text=format( text, need_money )
		BeginEvent(sceneId)
		AddText(sceneId,text);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	local szMsg;
	local szName;
	szName = GetName( sceneId, selfId );		
	
	if sy_index == 30900007  then
		ret = LuaFnFaileTimes( sceneId, selfId, nItemIndex1, nItemIndex2, 1 )
		szMsg = format( "#W#{_INFOUSR%s}#H sau khi ðã sØ døng #W#{_INFOMSG%s}#H, h°i phøc thành công s¯ l¥n sæa chæa cüa trang b¸ là 1 l¥n, tránh gãy vÞ sau 3 l¥n sØa chæa trang b¸ th¤t bÕi.", szName, szTransfer );
	elseif sy_index == 30900000  then
		ret = LuaFnFaileTimes( sceneId, selfId, nItemIndex1, nItemIndex2, 0 )
		szMsg = format( "#W#{_INFOUSR%s}#H sau khi ðã sØ døng #W#{_INFOMSG%s}#H, h°i phøc thành công s¯ l¥n sæa chæa cüa trang b¸ là 3 l¥n, tránh gãy vÞ sau 3 l¥n sØa chæa trang b¸ th¤t bÕi.", szName, szTransfer );
	end

	if ret == 0 then
		LuaFnCostMoneyWithPriority( sceneId, selfId, need_money ) --zchw
		LuaFnEraseItem( sceneId, selfId, nItemIndex2 )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);

		
		AddGlobalCountNews( sceneId, szMsg )
		
	end
	
	if ret == -1 then
		text="Thao tác b¸ l²i"
	end

	if ret == -2 then
		text="Trang b¸ này không th¬ gia tång s¯ l¥n sØa chæa"
	end
	
	if ret == -3 then
		text="Không th¬ sØ døng Nhu§n V§t Lµ"
	end

	if ret == -4 then
		text="S¯ l¥n sØa chæa ðã ðÕt mÑc t¯i ða"
	end

	BeginEvent(sceneId)
		AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
