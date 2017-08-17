-- ÕäÊÞÏ´µã

-- ½Å±¾ºÅ
x800107_g_ScriptId = 800107;

x800107_g_resetptItemDataID = 30503021;	--Á¶ÊÞµ¤

--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x800107_OnDefaultEvent(sceneId, selfId, targetId)
	--ÕäÊÞÏ´µã
	BeginUICommand(sceneId);
		UICommand_AddInt(sceneId, targetId);
	EndUICommand(sceneId);
	DispatchUICommand(sceneId, selfId, 800107);
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x800107_OnEnumerate(sceneId, selfId, targetId)
	AddNumText(sceneId, x800107_g_ScriptId, "T¦y ði¬m trân thú" , 6, -1);
end

--**********************************
-- ÕäÊÞÏ´µã
--**********************************
function x800107_ResetPetAttrPt(sceneId, selfId, petGUID_H, petGUID_L, itemPos)
	if not sceneId or not selfId or not petGUID_H or not petGUID_L or not itemPos then
		return 0;
	end
	
	local checkPet = LuaFnIsPetAvailableByGUID(sceneId, selfId, petGUID_H, petGUID_L);
	if not checkPet or checkPet ~= 1 then
		x800107_ShowTips(sceneId, selfId, "Không th¬ tiªn hành thao tác v¾i trân thú xu¤t chiªn.");
		return 0;
	end

	local checkRet = LuaFnCheckResetPetAttrPt(sceneId, selfId, petGUID_H, petGUID_L);
	if not checkRet or checkRet ~= 1 then
		return 0;
	end

	--¢Ü ÌØÊâµÀ¾ßÀ¸ÖÐÓÐ¡°Á¶ÊÞµ¤¡±	ÐèÒª¡°Á¶ÊÞµ¤¡±
	local itemDataID = GetItemTableIndexByIndex(sceneId, selfId, itemPos);
	if not itemDataID or itemDataID ~= x800107_g_resetptItemDataID then
		x800107_ShowTips(sceneId, selfId, "C¥n có Luy®n Thú Ðan");
		return 0;
	end
	
	local itemAvailable = LuaFnIsItemAvailable(sceneId, selfId, itemPos);
	if not itemAvailable or itemAvailable ~= 1 then
		x800107_ShowTips(sceneId, selfId, "Không th¬ thao tác v¾i Luy®n Thú Ðan c¯ ð¸nh");
		return 0;
	end
	
	local eraseRet = LuaFnEraseItem(sceneId, selfId, itemPos);
	if not eraseRet or eraseRet ~= 1 then
		x800107_ShowTips(sceneId, selfId, "Thao tác Luy®n Thú Ðan th¤t bÕi");
		return 0;
	end

	local ret = LuaFnResetPetAttrPt(sceneId, selfId, petGUID_H, petGUID_L);
	if not ret or ret ~= 1 then
		return 0;
	end
	x800107_ShowTips(sceneId, selfId, "T¦y ði¬m trân thú thành công!");
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
	return 1;
end

--**********************************
-- ÌáÊ¾ÐÅÏ¢
--**********************************
function x800107_ShowTips(sceneId, selfId, tipMsg)
	BeginEvent(sceneId);
		AddText(sceneId, tipMsg);
	EndEvent(sceneId);
	DispatchMissionTips(sceneId, selfId);
end
