-- µ±½ÇÉ«½øÈëÇøÓò£¬¾Í´¥·¢ÊÂ¼þ


--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x037004_OnEnterArea( sceneId, selfId, areaId)
	-- ÔÚÕâÀï´ò¿ªÕ½¶·¿ª¹Ø
	--if 0 == LuaFnGetCopySceneData_Param(sceneId, 7)    then
		--PrintNum(123)
	--	LuaFnSetCopySceneData_Param(sceneId, 7, 1) 
		
		-- ¸Ä±ä¼¸¸ö¸ßÊÖµÄÕóÓª
		local nMonsterNum = GetMonsterCount(sceneId)
		local rrr = GetCurCamp(sceneId, selfId)
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Hoàng H° TØ"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Khôi Bào Khách"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Ð® tØ H± Träo Môn"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Cù Nhi­m Võ Sî"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Su¤t Giác Cao Thü"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				
			elseif GetName(sceneId, nMonsterId)  == "Ðoàn Dñ"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Võ Sî Tây HÕ"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			end
		end
	--end
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x037004_OnLeaveArea( sceneId, selfId, areaId)
end
