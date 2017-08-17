--×°±¸¸Ä±äÍâÐÎ
--½Å±¾ºÅ
x809264_g_ScriptId = 809264

--×°±¸¸Ä±äÍâÐÎUI 1010

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x809264_OnEnumerate( sceneId, selfId, targetId )

end


--**********************************
--×°±¸¸Ä±äÍâÐÎ
--**********************************
function x809264_ChangeVisual( sceneId, selfId, nItemIndex1, nItemIndex2, nVisualIndex)
	local text="Thay ð±i ngoÕi hình thành công"

	local ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex1 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Xin ð£t vào trang b¸ có th¬ biªn hình");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Xin ð£t vào phù biªn hình");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	sy_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, nItemIndex2 )
	if sy_index ~= 30900004 then
		--±äÐÎ·û
		BeginEvent(sceneId)
		AddText(sceneId,"Thay ð±i ngoÕi hình trang b¸ c¥n phù biªn hình");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	money = GetMoney( sceneId, selfId )
	need_money = GetBagItemLevel( sceneId, selfId, nItemIndex1 ) * 20000
	if money < need_money then
		text="NgoÕi hình trang b¸ làm mÕnh c¥n #{_MONEY%d}, ngân lßþng trên ngß¶i các hÕ không ðü"
		text=format( text, need_money )
		BeginEvent(sceneId)
		AddText(sceneId,text);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	ret, arg0 = LuaFnChangeVisual( sceneId, selfId, nItemIndex1, nItemIndex2, nVisualIndex )

	if ret == 0 then
		LuaFnCostMoney( sceneId, selfId, need_money )
		LuaFnEraseItem( sceneId, selfId, nItemIndex2 )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
	end
	
	if ret == -1 then
		text="Trang b¸ này không th¬ biªn hình"
	end

	if ret == -2 then
		text="Không dùng ðßþc trang b¸ này"
	end
	
	if ret == -3 then
		text="Không dùng ðßþc phù biªn hình"
	end

	if ret == -4 then
		text="Không th¬ thay ð±i ngoÕi hình tß½ng ð°ng"
	end

	if ret == -5 then
		text="Không t°n tÕi ngoÕi hình ðã thay ð±i"
	end

	BeginEvent(sceneId)
	AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
