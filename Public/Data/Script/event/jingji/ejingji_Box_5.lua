-- 210535 宝箱
-- 获取buff的宝箱

x210535_g_scriptId = 210535


--所拥有的事件ID列表用ID集合实现
x210535_g_LimitiBuffCollectionID = 75;

--终极武器，50%掉落随机 1 件
x210535_g_LootItem_3 = {
30505278,30505279,30505280,
}

--15级宝石，100%掉落随机 1 件
x210535_g_LootItem_2 = {
50901001,50901002,50902005,
50902006,50902007,50902008,50903001,50904002,50711001,50911002,50912005,
50912006,50912007,50912008,50913001,50913002,50913003,50913004,50913005,
50913006,50914001,
}


x210535_g_LootItem_5 = {
10470050,10470051,10470052,10470053,10470054,10470055,10470056,10470057,
10470058,10470059,10470090,10470091,10470092,10470093,39990033,39990032,
39990031,39990030,39990029,39990028,39990027,
}
--终极宠物，30%掉落随机 1 件
x210535_g_LootItem_1 = {
50921001,50921002,50921003,50921004,20310181,20310182,20310183,38000152,
38000164,38000165,38000287,10155002,10433322,
}
--终极宝石，20%掉落随机 1 件
x210535_g_LootItem_4 = {
10553101,10553102,10553103,39990006,39990007,39990008,
}
--无敌buff
x210535_g_BuffId_1 = 54

--武林盟主buff
x210535_g_BuffId_2 = 8046

--驱散不该有的BUFF的效果
x210535_g_BuffId_3 = 8055	--心无旁骛（开箱驱散）


--心无旁骛BuffID
x210535_g_BuffId_4 = 8056	--心无旁骛（开箱免疫）

--Code Check Only
--QUALITY_CREATE_BY_BOSS =nil

--**********************************
--事件列表
--**********************************
function x210535_OnDefaultEvent( sceneId, selfId, targetId )
	
end

--**********************************
--特殊交互:条件判断
--**********************************
function x210535_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- 限制身上的buff
	local bOk = x210535_IsCanOpenBox( sceneId,activatorId )
	
	if bOk == 0  then
    BeginEvent(sceneId)
      AddText(sceneId,"你现在不能开启这个宝箱。");
    EndEvent(sceneId)
    DispatchMissionTips(sceneId,activatorId,selfId)
	end
	-- 驱散不该有的BUFF并添加心无旁骛Buff
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, activatorId, x210535_g_BuffId_3, 0);
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, activatorId, x210535_g_BuffId_4, 0);

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
function x210535_IsCanOpenBox( sceneId,activatorId )
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId,activatorId, x210535_g_BuffId_2)==1  then
		return 0
	end

	return 0==LuaFnHaveImpactInSpecificCollection(sceneId, activatorId, x210535_g_LimitiBuffCollectionID)
end

--**********************************
--特殊交互:消耗和扣除处理
--**********************************
function x210535_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--特殊交互:聚气类成功生效处理
--**********************************
function x210535_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- selfId == 宝箱Id
	-- activatorId == 开启人Id
	
	local x
	local z
	
	x,z = GetWorldPos(sceneId, selfId)
	
	local nCount = GetMonsterCount(sceneId)
	local bDelOk = 0
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 39775 then
			bDelOk = 1
			LuaFnDeleteMonster(sceneId, nObjId)
		end
	end
	
	-- 给开启成功的玩家一个掉落包
	local nItemCount = 2
	local nItemId_1
	local nItemId_2
	local nItemId_3
	local nItemId_4
	local nItemId_5
	local nItemId_6

	if random(1000) <= 900  then
		nItemCount = 3
		nItemId_1 = x210535_g_LootItem_1[random( getn(x210535_g_LootItem_1))]
	end

	if random(1000) <= 50  then
		nItemCount = 4
	       nItemId_3 = x210535_g_LootItem_3[random( getn(x210535_g_LootItem_3) )]
	end	
	if random(1000) <= 150  then
		nItemCount = 5
	       nItemId_6 = x210535_g_LootItem_4[random( getn(x210534_g_LootItem_4) )]
	end

	nItemId_2 = x210535_g_LootItem_2[random( getn(x210535_g_LootItem_2) )]
	nItemId_4 = x210535_g_LootItem_2[random( getn(x210535_g_LootItem_2) )]
	nItemId_5 = x210535_g_LootItem_5[random( getn(x210535_g_LootItem_5) )]
	
	
	if bDelOk == 1  then
		local nBoxId = DropBoxEnterScene(	x,z,sceneId )
		if nBoxId > -1  then
			if nItemCount == 3  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,4,
								nItemId_1,nItemId_2,nItemId_4,nItemId_5)
			elseif nItemCount == 2  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,3,
								nItemId_2,nItemId_4,nItemId_5)
			elseif nItemCount == 4  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,4,
								nItemId_2,nItemId_3,nItemId_4,nItemId_5)

			elseif nItemCount == 5  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,5,
								nItemId_2,nItemId_3,nItemId_4,nItemId_5,nItemId_6)
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
			local str = format("#Y于九莲#cff99cc大喊：天下英雄们！强大的#{_INFOUSR%s}#cff99cc已经打开了竞技场的宝箱！获得了150000潜能丹.终极武器棒棒堂.终极幻化宝宝.武魂暗器.重楼套装.9级宝石等,宝箱整点刷新三个,欢迎各位英雄#Y%s点后继续夺宝！",GetName(sceneId,activatorId),nCurHour)
	BroadMsgByChatPipe(sceneId, selfId, str, 4)
			
		end
	end
	
	-- 在这里记录开启宝箱的日志
	LuaFnAuditPlayerBehavior(sceneId, activatorId, "开启盟主宝箱");
	
	-- 给这个玩家一个buff
	LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x210535_g_BuffId_1, 100 )
	
	LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x210535_g_BuffId_2, 100 )
										
	x210535_DealExp(sceneId, activatorId)
	
	return 1
end

--**********************************
--特殊交互:引导类每时间间隔生效处理
--**********************************
function x210535_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--特殊交互:交互开始时的特殊处理
--**********************************
function x210535_OnActivateActionStart( sceneId, selfId, activatorId )
	--PrintNum(777)
	return 1
end

--**********************************
--特殊交互:交互撤消时的特殊处理
--**********************************
function x210535_OnActivateCancel( sceneId, selfId, activatorId )
	local str = "#G[封禅台]#W" .. GetName(sceneId,activatorId) .. "#P打开宝箱的努力功败垂成！"
	CallScriptFunction((200060), "Duibai",sceneId, "", "", str)
	return 0
end

--**********************************
--特殊交互:交互中断时的特殊处理
--**********************************
function x210535_OnActivateInterrupt( sceneId, selfId, activatorId )
	
	return 0
end

function x210535_OnActivateInterrupt( sceneId, selfId, activatorId )

end

function x210535_DealExp(sceneId, activatorId)

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
