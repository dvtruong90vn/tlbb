-- ÕäÊÞ¹²ÓÃ½Å±¾½Ó¿Úº¯ÊýÎÄ¼þ

-- ½Å±¾ºÅ
x800105_g_ScriptId = 800105

--**********************************
-- ÌáÊ¾ÐÅÏ¢
--**********************************
function x800105_ShowTips(sceneId, selfId, tipMsg)
	BeginEvent(sceneId);
		AddText(sceneId, tipMsg);
	EndEvent(sceneId);
	DispatchMissionTips(sceneId, selfId);
end

--**********************************
-- Éú³ÉÈËÃñ±ÒÕäÊÞ
--**********************************
function x800105_CreateRMBPetToHuman(sceneId, selfId, petDataId, level)
	if not sceneId or not selfId or not petDataId then
		return 0;
	end

	local checkCreatePet = TryCreatePet(sceneId, selfId, 1);
	if not checkCreatePet or checkCreatePet ~= 1 then
		x800105_ShowTips(sceneId, selfId, "Các hÕ không th¬ mang thêm Trân thú.");
		return 0;
	end

	local ret, petGUID_H, petGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, petDataId, level, 1);
	if not ret or ret ~= 1 or not petGUID_H or not petGUID_L then
		x800105_ShowTips(sceneId, selfId, "ÐÆng c¤p các hÕ không th¬ mang theo Trân thú.");
		return 0;
	end
	return 1, petGUID_H, petGUID_L
end
