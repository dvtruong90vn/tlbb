-- ����ɫ�������򣬾ʹ����¼�


--**********************************
--���������¼�
--**********************************
function x037004_OnEnterArea( sceneId, selfId, areaId)
	-- �������ս������
	--if 0 == LuaFnGetCopySceneData_Param(sceneId, 7)    then
		--PrintNum(123)
	--	LuaFnSetCopySceneData_Param(sceneId, 7, 1) 
		
		-- �ı伸�����ֵ���Ӫ
		local nMonsterNum = GetMonsterCount(sceneId)
		local rrr = GetCurCamp(sceneId, selfId)
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Ho�ng H� T�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Kh�i B�o Kh�ch"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Ю t� H� Tr�o M�n"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "C� Nhi�m V� S�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Su�t Gi�c Cao Th�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				
			elseif GetName(sceneId, nMonsterId)  == "�o�n D�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "V� S� T�y H�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			end
		end
	--end
end

--**********************************
--���������¼�
--**********************************
function x037004_OnLeaveArea( sceneId, selfId, areaId)
end