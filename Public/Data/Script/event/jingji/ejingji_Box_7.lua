-- 210537 宝箱
-- 获取buff的宝箱

x210537_g_scriptId = 210537


--所拥有的事件ID列表用ID集合实现
x210537_g_LimitiBuffCollectionID = 75;

--终极武器，50%掉落随机 1 件
x210537_g_LootItem_1 = {10470050,10470051,
}

--15级宝石，100%掉落随机 1 件
x210537_g_LootItem_2 = {10470052,10470053,
}

--终极宠物，30%掉落随机 1 件
x210537_g_LootItem_3 = {10470054,10470055,
}

--无敌buff
x210537_g_BuffId_1 = 54

--武林盟主buff
x210537_g_BuffId_2 = 8046

--驱散不该有的BUFF的效果
x210537_g_BuffId_3 = 8055	--心无旁骛（开箱驱散）

-- 终结者在 双数次刷
x210537_g_Npc_9_1={	{id=39779,x=81,y=99,script=210539,pp=4,camp=110,ai=21,af=253},
										{id=39779,x=82,y=98,script=210539,pp=4,camp=110,ai=21,af=253},

}

--心无旁骛BuffID
x210537_g_BuffId_4 = 8056	--心无旁骛（开箱免疫）

--Code Check Only
--QUALITY_CREATE_BY_BOSS =nil

--**********************************
--事件列表
--**********************************
function x210537_OnDefaultEvent( sceneId, selfId, targetId )
	
end

--**********************************
--特殊交互:条件判断
--**********************************
function x210537_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- 限制身上的buff
	local bOk = x210537_IsCanOpenBox( sceneId,activatorId )
	
	if bOk == 0  then
    BeginEvent(sceneId)
      AddText(sceneId,"你现在不能开启这个宝箱。");
    EndEvent(sceneId)
    DispatchMissionTips(sceneId,activatorId,selfId)
	end
	-- 驱散不该有的BUFF并添加心无旁骛Buff
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, activatorId, x210537_g_BuffId_3, 0);
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, activatorId, x210537_g_BuffId_4, 0);

	if GetUnitCampID(sceneId, activatorId, activatorId) < 500   then
    BeginEvent(sceneId)
      AddText(sceneId,"你现在的战斗阵营不正确，不能开启宝箱。");
    EndEvent(sceneId)
    DispatchMissionTips(sceneId,activatorId,selfId)
		bOk = 0
	end
	
	if bOk == 1  then
		local str = "#G[封禅台]#W" .. GetName(sceneId, activatorId) .."#P正在试图打开宝箱呢！"
		CallScriptFunction((200060), "Duibai",sceneId, "", "", str)
	end
	
	return bOk
end

--**********************************
-- 检测当前玩家身上的buff，能不能开启宝箱
--**********************************
function x210537_IsCanOpenBox( sceneId,activatorId )
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId,activatorId, x210537_g_BuffId_2)==1  then
		return 0
	end

	return 0==LuaFnHaveImpactInSpecificCollection(sceneId, activatorId, x210537_g_LimitiBuffCollectionID)
end

--**********************************
--特殊交互:消耗和扣除处理
--**********************************
function x210537_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--特殊交互:聚气类成功生效处理
--**********************************
function x210537_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- selfId == 宝箱Id
	-- activatorId == 开启人Id
	
	local x
	local z
	
	x,z = GetWorldPos(sceneId, selfId)
	
	local nCount = GetMonsterCount(sceneId)
	local bDelOk = 0
	for i=0, nCount-1  do
		local tempCamp = random(449) + 50
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 39777 then
			bDelOk = 1
			LuaFnDeleteMonster(sceneId, nObjId)
		       nObjID = LuaFnCreateMonster(sceneId, 39779, 81, 99, 1, 253, 210547);
			SetCharacterTitle(sceneId, nObjID, "我暴重楼装备");
		       SetMonsterFightWithNpcFlag(sceneId, nObjID, 0)
		       SetUnitCampID(sceneId, nObjID, nObjID, tempCamp)
		end
	end

	-- 给开启成功的玩家一个掉落包
	local nItemCount = 2
	local nItemId_1
	local nItemId_2
	local nItemId_3

	if random(1000) <= 125  then
		nItemCount = 3
		nItemId_1 = x210537_g_LootItem_1[random( getn(x210537_g_LootItem_1))]
	end

	if random(1000) <= 50  then
		nItemCount = 4
	       nItemId_3 = x210537_g_LootItem_3[random( getn(x210537_g_LootItem_3) )]
	end	

	nItemId_2 = x210537_g_LootItem_2[random( getn(x210537_g_LootItem_2) )]
	
	
	if bDelOk == 1  then
		local nBoxId = DropBoxEnterScene(	x,z,sceneId )
		if nBoxId > -1  then
			if nItemCount == 3  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,4,
								nItemId_1,nItemId_2,nItemId_2,nItemId_2)
			elseif nItemCount == 2  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,3,
								nItemId_2,nItemId_2,nItemId_2)
			elseif nItemCount == 4  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,4,
								nItemId_2,nItemId_3,nItemId_2,nItemId_2)
			end
			
			-- 把这个掉落绑定给制定玩家
			SetItemBoxOwner(sceneId, nBoxId, LuaFnGetGUID(sceneId,activatorId))

			-- 发送系统公告
			local nCurHour = GetHour()
			if nCurHour==0 or nCurHour==2 or nCurHour==4 or
				 nCurHour==6 or nCurHour==8 or nCurHour==10 or
				 nCurHour==12 or nCurHour==14 or nCurHour==16 or
				 nCurHour==18 or nCurHour==20 or nCurHour==22  then
				
					nCurHour = nCurHour + 2
			else
					nCurHour = nCurHour + 1
			
			end
			
			if nCurHour >= 2 and nCurHour < 10  then
				nCurHour = 10
			end
			
			if nCurHour == 24  then
				nCurHour = 0
			end
			
			--#P [世界]于九莲大喊：天下英雄们！强大的AAA已经打开了武林盟主的宝箱！请大家XXX点再来封禅台争夺武林盟主之位吧！
			local str = format("#Y于九莲#cff99cc大喊：天下英雄们！强大的#{_INFOUSR%s}#cff99cc已经打开了竞技场的宝箱！运气真差，是个空的宝箱,欢迎各位英雄#Y%s点后继续夺宝！",GetName(sceneId,activatorId),nCurHour)
	BroadMsgByChatPipe(sceneId, selfId, str, 4)
			
		end
	end
	
	-- 在这里记录开启宝箱的日志
	LuaFnAuditPlayerBehavior(sceneId, activatorId, "开启盟主宝箱");

	
	-- 给这个玩家一个buff
	LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x210537_g_BuffId_1, 100 )
	
	LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x210537_g_BuffId_2, 100 )
										
	x210537_DealExp(sceneId, activatorId)

	x210537_TipAllHuman(sceneId, "警惕！有人无意间打开了藏有终结者的宝箱,此怪物超级变态,大家注意避让。")
	x210537_TipAllHuman(sceneId, "警惕！有人无意间打开了藏有终结者的宝箱,此怪物超级变态,大家注意避让。")
	x210537_TipAllHuman(sceneId, "警惕！有人无意间打开了藏有终结者的宝箱,此怪物超级变态,大家注意避让。")
	x210537_TipAllHuman(sceneId, "警惕！有人无意间打开了藏有终结者的宝箱,此怪物超级变态,大家注意避让。")
	x210537_TipAllHuman(sceneId, "警惕！有人无意间打开了藏有终结者的宝箱,此怪物超级变态,大家注意避让。")
	x210537_TipAllHuman(sceneId, "警惕！有人无意间打开了藏有终结者的宝箱,此怪物超级变态,大家注意避让。")
	
	return 1
end

--**********************************
--特殊交互:引导类每时间间隔生效处理
--**********************************
function x210537_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--特殊交互:交互开始时的特殊处理
--**********************************
function x210537_OnActivateActionStart( sceneId, selfId, activatorId )
	--PrintNum(777)
	return 1
end

--**********************************
--特殊交互:交互撤消时的特殊处理
--**********************************
function x210537_OnActivateCancel( sceneId, selfId, activatorId )
	local str = "#G[封禅台]#W" .. GetName(sceneId,activatorId) .. "#P打开宝箱的努力功败垂成！"
	CallScriptFunction((200060), "Duibai",sceneId, "", "", str)
	return 0
end

function x210537_CreateMonster_7_3(sceneId)
	local posX, posZ;
	posX, posZ = LuaFnGetWorldPos(sceneId, selfId)
	for i, Npc in x210537_g_Npc_9_1  do
		local nNpcId = x210537_CreateNpc(sceneId, Npc.id, posX, posZ, Npc.ai, Npc.af, Npc.script)
		SetUnitCampID(sceneId,nNpcId, nNpcId, Npc.camp)
		SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
		SetPatrolId(sceneId, nNpcId, Npc.pp)
	end
end

--**********************************
--提示所有副本内玩家
--**********************************
function x210537_TipAllHuman( sceneId, Str )
	-- 获得场景里头的所有人
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- 没有人的场景，什么都不做
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end
--**********************************
--特殊交互:交互中断时的特殊处理
--**********************************
function x210537_OnActivateInterrupt( sceneId, selfId, activatorId )
	
	return 0
end

function x210537_OnActivateInterrupt( sceneId, selfId, activatorId )

end

function x210537_DealExp(sceneId, activatorId)

	local nPlayerCamp = GetUnitCampID(sceneId, activatorId, activatorId)

	-- 开启宝箱的同时，分配Exp
	local nHumanIdList = {}
	
	for i=1, 10  do
		nHumanIdList[i] = -1
	end
	
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	local j=1
	for i=0, nHumanCount-1  do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if GetUnitCampID(sceneId, nHumanId, nHumanId) == nPlayerCamp   then
			nHumanIdList[j] = nHumanId
			j = j+1
		end
	end
	
	j = j-1
	
	for i=1, j  do
		if nHumanIdList[i] ~= -1  then
			AddExp(sceneId, nHumanIdList[i], floor(10000000/j))
		end
	end
	
	for i=0, nHumanCount-1  do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if GetUnitCampID(sceneId, nHumanId, nHumanId) ~= nPlayerCamp   then
			AddExp(sceneId, nHumanId, floor(10000000/(nHumanCount-j)))
		end
	end
	
end

--经验，
--和开宝箱的人相同阵营的人平分 10 万
--在场的除这些人以外的人平分 10 万
