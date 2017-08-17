--×°±¸Éý¼¶
--½Å±¾ºÅ
x809263_g_ScriptId = 809263

--×°±¸Éý¼¶UI 1003

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x809263_OnEnumerate( sceneId, selfId, targetId )

end


--**********************************
--×°±¸Éý¼¶
--**********************************
function x809263_EquipLevelUp( sceneId, selfId, nItemIndex1, nItemIndex2)
	ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex1 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b¸ này không th¬ thång c¤p");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Thång C¤p Bäo ThÕch không sØ døng ðßþc");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	equip_level = GetBagItemLevel( sceneId, selfId, nItemIndex1 )
	if equip_level < 60 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b¸ t× c¤p 60 tr· xu¯ng không ðßþc thång c¤p");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, nItemIndex2 )
	if gem_index ~= 30900008 then
		--Éý¼¶±¦Ê¯
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b¸ thång c¤p c¥n sØ døng Thång C¤p Bäo ThÕch");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	money = GetMoney( sceneId, selfId )
	need_money = GetBagItemLevel( sceneId, selfId, nItemIndex1 ) * 20000
	if money < need_money then
		BeginEvent(sceneId)
		AddText(sceneId,"Không ðü ngân lßþng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = GetGemEmbededCount( sceneId, selfId, nItemIndex1 )
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b¸ khäm Bäo ThÕch trang b¸ không ðßþc thång c¤p");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	ret, arg0 = LuaFnEquipLevelUp( sceneId, selfId, nItemIndex1, nItemIndex2 )
	
	local text="Thång c¤p trang b¸ thành công!"
	if ret == 0 then
		LuaFnEraseItem( sceneId, selfId, nItemIndex2 )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
		LuaFnCostMoney( sceneId, selfId, need_money )
		if arg0 == 0 then
			text="Chúc m×ng!! Trang b¸ thång c¤p thành công, mau ði xem trang b¸ m¾i sau khi thång c¤p nào."
		else
			text="Chúc m×ng!! Trang b¸ thång c¤p thành công, nhßng ðÆng c¤p làm mÕnh b¸ giäm 1, gi¶ ðây ðÆng c¤p làm mÕnh trang b¸ là "..tostring(arg0)
		end
	end

	if ret == -1 then
		text="Thao tác b¸ l²i"
	end

	if ret == -2 then
		text="Trang b¸ này không th¬ thång c¤p"
	end
	
	if ret == -3 then
		text="Thång C¤p Bäo ThÕch không sØ døng ðßþc"
	end

	if ret == -6 then
		text="Thao tác b¸ l²i"
	end

	if ret == -7 then
		LuaFnEraseItem( sceneId, selfId, nItemIndex2 )
		LuaFnCostMoney( sceneId, selfId, need_money )
		text="Th§t không may, trang b¸ thång c¤p cüa các hÕ b¸ th¤t bÕi!"
	end

	if ret == -8 then
		text="Trang b¸ này không th¬ thång c¤p"
	end

	BeginEvent(sceneId)
	AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
