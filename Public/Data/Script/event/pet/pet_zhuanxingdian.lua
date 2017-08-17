-- ×ªÐÔµ¤

-- ½Å±¾ºÅ
x800108_g_ScriptId = 800108;

x800108_zhuanXingdian_ItemDataID = 30502003;	--×ªÐÔµ¤

--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x800108_OnDefaultEvent(sceneId, selfId, targetId)
	--ÕäÊÞÏ´µã
	BeginUICommand(sceneId);
		UICommand_AddInt(sceneId, targetId);
	EndUICommand(sceneId);
	DispatchUICommand(sceneId, selfId, 800108);
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x800108_OnEnumerate(sceneId, selfId, targetId)
	AddNumText(sceneId, x800108_g_ScriptId, "Thay ð±i tính cách trân thú" , 6, -1);
end

--**********************************
-- ×ªÐÔµ¤¹æÔò
-- 0 - µ¨Ð¡
-- 1 - ½÷É÷	
-- 2 - ÖÒ³Ï
-- 3 - ¾«Ã÷
-- 4 - ÓÂÃÍ
--**********************************
function x800108_ZhuanXingdian(sceneId, selfId, petGUID_H, petGUID_L)

	if not sceneId or not selfId or not petGUID_H or not petGUID_L then
		x800108_ShowTips(sceneId, selfId, "Thao tác b¸ l²i.");
		return 0;
	end
	
	local zhuanXingdianItemName = GetItemName(sceneId, x800108_zhuanXingdian_ItemDataID);
	if not zhuanXingdianItemName then
		x800108_ShowTips(sceneId, selfId, "Không có DßÞng Sinh Ðan");
		return 0;
	end

	local curAIType = LuaFnGetPetAITypeByGUID(sceneId, selfId, petGUID_H, petGUID_L);
	if not curAIType or curAIType == -1 then
		x800108_ShowTips(sceneId, selfId, "Trân thú mà các hÕ chï ð¸nh không t°n tÕi");
		return 0;
	end

	local petAvailableFlag = LuaFnIsPetAvailableByGUIDNoPW(sceneId, selfId, petGUID_H, petGUID_L);
	if not petAvailableFlag or petAvailableFlag ~= 1 then
		x800108_ShowTips(sceneId, selfId, "Không th¬ tiªn hành thao tác v¾i trân thú b¸ khóa");
		return 0;
	end
	
	local availableItemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x800108_zhuanXingdian_ItemDataID);
	if not availableItemCount or availableItemCount < 1 then
		x800108_ShowTips(sceneId, selfId, "C¥n có "..zhuanXingdianItemName.."!");
		return 0;
	end
	
	local delRet = LuaFnDelAvailableItem(sceneId, selfId, x800108_zhuanXingdian_ItemDataID, 1);
	if not delRet or delRet ~= 1 then
		x800108_ShowTips(sceneId, selfId, "Kh¤u tr× "..zhuanXingdianItemName.." th¤t bÕi, hãy ki¬m tra s¯ lßþng!");
		return 0;
	end

	--AIÀàÐÍ±Ø¸Ä±ä£¬¶øÇÒÃ¿ÖÖ»úÂÊÊÇÒ»ÑùµÄ
	local toAIType = random(4) - 1;
	if toAIType >= curAIType then
		toAIType = toAIType + 1;
	end

	local ret = LuaFnSetPetAITypeByGUID(sceneId, selfId, petGUID_H, petGUID_L, toAIType);
	if not ret or ret ~= 1 then
		x800108_ShowTips(sceneId, selfId, "Trân thú mà các hÕ chï ð¸nh không t°n tÕi!");
		return 0;
	end

	x800108_ShowTips(sceneId, selfId, "Tính cách trân thú cüa các hÕ ðã biªn ð±i thành công!");
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
	return 1;
end

--**********************************
-- ÌáÊ¾ÐÅÏ¢
--**********************************
function x800108_ShowTips(sceneId, selfId, tipMsg)
	BeginEvent(sceneId);
		AddText(sceneId, tipMsg);
	EndEvent(sceneId);
	DispatchMissionTips(sceneId, selfId);
end
