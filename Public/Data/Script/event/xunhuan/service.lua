--ÐÞ×°±¸

function x801015_OnService( sceneId, selfId, itemId, platformType )
--Ò»Ð©Ìõ¼þÅÐ¶Ï
--ÐÞÀí
--Íê³É
	local tArray = {}
	tArray[1] = {0}
	tArray[2] = {1,2,3,4,5,14,15}
	tArray[3] = {6,7,11,12,13}
	
	local tArray_Text = {"Ðài chÕm khäm chï có th¬ sØa chæa vû khí","Ðài may m£c chï có th¬ sØa chæa phòng cø","Ðài công ngh® chï có th¬ sØa chæa ð° trang sÑc"}
	local tArray_Ability = {"ðúc khuôn","May m£c","Công ngh®"}
	local nLevel =GetBagItemLevel(sceneId, selfId,itemId)
	local EquipType = LuaFnGetBagEquipType(sceneId, selfId, itemId)
	local find = 0

	for i, item in tArray[platformType] do
		if item == EquipType then
			find =1
		end
	end
	
	if find == 0 then
		BeginEvent(sceneId)
		AddText(sceneId,tArray_Text[platformType])
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if nLevel < 40 then
		BeginEvent(sceneId)
		AddText(sceneId,"Chï có th¬ sØa chæa trang b¸ có ðÆng c¤p yêu c¥u >=40")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	ret = DoRepair( sceneId, selfId, itemId, platformType )

	if ret == -1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b¸ này không th¬ ðßþc sØa chæa l¥n næa")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == -2 then
		BeginEvent(sceneId)
		AddText(sceneId,"S¯ lßþng "..tArray_Ability[platformType].."ÐÆng c¤p kÛ nång không ðü")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == -3 then
		BeginEvent(sceneId)
		AddText(sceneId,"Không ðü hoÕt lñc")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == -4 then
		BeginEvent(sceneId)
		AddText(sceneId,"Th§t không may, trong quá trình sØa, do v§n may cüa các hÕ không t¯t, khiªn chiªc này #{_ITEM"..LuaFnGetItemTableIndexByIndex(sceneId,selfId,itemId).."} b¸ t±n th¤t nhi«u")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif ret == -5 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trong quá trình sØa xu¤t hi®n sai sót không rõ do ðâu")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == -6 then
		BeginEvent(sceneId)
		AddText(sceneId,"V§t ph¦m không có v¤n ð« gì, không c¥n sØa")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif ret == 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Träi qua tay các hÕ tÖ mï tu phøc, chiªc này #{_ITEM"..LuaFnGetItemTableIndexByIndex(sceneId,selfId,itemId).."} ðã sØa xong")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
		Msg2Player(  sceneId, selfId,"Tiêu hao "..floor(nLevel/10+5).." HoÕt lñc",MSG2PLAYER_PARA )
	end
	
end
