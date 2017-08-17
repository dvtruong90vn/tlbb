-- 889083 套装兑换NPC


--脚本号
x889083_g_ScriptId = 889083
--所拥有的事件ID列表
x889083_g_eventList={}
x889083_g_EquipList={	
-- #G小喇叭
{n=110,id=30900046},
-- #G高级宝石合成符
{n=120,id=30900016},
-- #G功力丹
{n=130,id=39999901},
-- #G门派转换令
{n=140,id=39910006},
-- #G9·9级冥晶石冰
{n=150,id=50921016},
-- #G9·9级冥晶石火
{n=160,id=50921017},
-- #G9·9级冥晶石玄
{n=170,id=50921015},
-- #G9·9级冥晶石毒
{n=180,id=50921018},
}

x889083_g_StoneList={
-- 蓝色龙珠
{n=1,id=30505141,num=50,str="蓝色龙珠"},
-- 蓝色龙珠
{n=2,id=30505141,num=30,str="蓝色龙珠"},
-- 蓝色龙珠
{n=3,id=30505141,num=30,str="蓝色龙珠"},
-- 蓝色龙珠
{n=4,id=30505141,num=300,str="蓝色龙珠"},
-- 蓝色龙珠
{n=5,id=30505141,num=100,str="蓝色龙珠"},
-- 蓝色龙珠
{n=6,id=30505141,num=100,str="蓝色龙珠"},
-- 蓝色龙珠
{n=7,id=30505141,num=100,str="蓝色龙珠"},
-- 蓝色龙珠
{n=8,id=30505141,num=100,str="蓝色龙珠"},
}

--**********************************
--事件列表
--**********************************
function x889083_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #Y#b请选择对应的进行兑换...")
		for i, eventId in x889083_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x889083_g_ScriptId, "#G『我要兑换物品』", 3, 100 )
		AddNumText( sceneId, x889083_g_ScriptId, "离开……", 13, 0 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x889083_OnDefaultEvent( sceneId, selfId,targetId )
	x889083_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x889083_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()
	if nNumText == 0  then
		-- 关闭窗口
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	if nNumText == 100 or nNumText == 200 then
		BeginEvent(sceneId)
			AddText(sceneId, "看什么看啊，没有集齐别来找我，我很忙！！！")
			if nNumText == 100 then
			AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96兑换『琢刻符』", 1, nNumText+10)
			AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96兑换『高级宝石合成符』", 1, nNumText+20)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96兑换『功力丹』", 1, nNumText+30)
			AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96兑换『门派转换令』", 1, nNumText+40)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96兑换『蓝冥晶石9级·9级』", 1, nNumText+50)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96兑换『红冥晶石9级·9级』", 1, nNumText+60)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96兑换『黄冥晶石9级·9级』", 1, nNumText+70)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96兑换『绿冥晶石9级·9级』", 1, nNumText+80)
			end
			if nNumText == 200 then
			AddNumText(sceneId, x889083_g_ScriptId, "#Y真·重楼戒状态领取", 4, nNumText+10)
			AddNumText(sceneId, x889083_g_ScriptId, "#Y真·重楼玉状态领取", 4, nNumText+11)
			AddNumText(sceneId, x889083_g_ScriptId, "#Y真·重楼链状态领取", 4, nNumText+12)
			AddNumText(sceneId, x889083_g_ScriptId, "#Y真·重楼带状态领取", 4, nNumText+13)
			AddNumText(sceneId, x889083_g_ScriptId, "#Y真·重楼肩状态领取", 4, nNumText+14)
			end																		
			AddNumText( sceneId, x889083_g_ScriptId, "离开……", 0, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 210 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554054) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "你没有此道具，不能领取状态。"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5988, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 211 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554055) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "你没有此道具，不能领取状态。"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5989, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 212 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554053) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "你没有此道具，不能领取状态。"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5986, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		
	
	if nNumText == 213 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554071) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "你没有此道具，不能领取状态。"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5994, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		
	
	if nNumText == 214 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554073) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "你没有此道具，不能领取状态。"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5997, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		
	
	if nNumText > 100 and nNumText < 800  then
		BeginEvent(sceneId)
			AddText(sceneId, "  不是白给的，用这个东西来换的哦！！")
			
			local nLevel = 0
			if nNumText == 110 then    -- 小喇叭
				nLevel = 1
			end
			if nNumText == 120 then    -- 高级宝石合成符
				nLevel = 2
			end
			if nNumText == 130 then    -- 功力丹
				nLevel = 3
			end
			if nNumText == 140 then    -- 门派转换令
				nLevel = 4
			end
			if nNumText == 150 then    -- 冥晶石冰
				nLevel = 5
			end
			if nNumText == 160 then    -- 冥晶石火
				nLevel = 6
			end
			if nNumText == 170 then    -- 冥晶石玄
				nLevel = 7
			end
			if nNumText == 180 then    -- 冥晶石毒
				nLevel = 8
			end
			local szStr = "  要获得这些装备，你需要给我“" .. x889083_g_StoneList[nLevel].str
										.. "”“".. tostring(x889083_g_StoneList[nLevel].num) .. "”个  #r  #G注意看装备适合什么门派，不要换错了哦#W"
			AddText(sceneId, szStr)
			
			for i, item in x889083_g_EquipList do
				if item.n == nNumText  then
					AddRadioItemBonus( sceneId, item.id, 4 )
				end
			end
    		EndEvent(sceneId)
   	 	--DispatchMissionDemandInfo(sceneId,selfId,targetId, x889083_g_ScriptId, x210200_g_MissionId)
   		DispatchMissionContinueInfo(sceneId,selfId,targetId, x889083_g_ScriptId, 0)		
	end
			
	for i, findId in x889083_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x889083_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x889083_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x889083_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x889083_g_eventList do
		if missionScriptId == findId then
			x889083_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			x889083_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x889083_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x889083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x889083_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	--处理提交后的显示情况
	--为了安全，这里要仔细，不能出错
	local nItemIndex = -1
	
	for i, item in x889083_g_EquipList do
		if item.id == selectRadioId  then
			nItemIndex = i
		end
	end
	
	if nItemIndex == -1  then
		return
	end
	
	-- 看完家是不是够材料提交
	local nLevel = 0
	if x889083_g_EquipList[nItemIndex].n == 110 then
		nLevel = 1
	end
	if x889083_g_EquipList[nItemIndex].n == 120 then
		nLevel = 2
	end
	if x889083_g_EquipList[nItemIndex].n == 130 then
		nLevel = 3
	end	
	if x889083_g_EquipList[nItemIndex].n == 140 then
		nLevel = 4
	end	
	if x889083_g_EquipList[nItemIndex].n == 150 then
		nLevel = 5
	end	
	if x889083_g_EquipList[nItemIndex].n == 160 then
		nLevel = 6
	end	
	if x889083_g_EquipList[nItemIndex].n == 170 then
		nLevel = 7
	end	
	if x889083_g_EquipList[nItemIndex].n == 180 then
		nLevel = 8
	end	
		
	local bStoneOk = 0
	if GetItemCount(sceneId, selfId, x889083_g_StoneList[nLevel].id) >= x889083_g_StoneList[nLevel].num  then
		bStoneOk = 1
	end
	
	if  bStoneOk == 0 then
		BeginEvent(sceneId)
			strText = "你没有足够的物品，不能换取装备。"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- 检查是不是有足够的石头可以扣除
	if LuaFnGetAvailableItemCount(sceneId, selfId, x889083_g_StoneList[nLevel].id) < x889083_g_StoneList[nLevel].num   then
		BeginEvent(sceneId)
			strText = "你没有足够的物品可以被扣除，请检查物品是否上锁。"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
		
	end
	
	-- 检查背包空间
	BeginAddItem(sceneId)
		AddItem(sceneId, selectRadioId, 1)
	local bBagOk = EndAddItem(sceneId, selfId)
	
	if bBagOk < 1 then
		BeginEvent(sceneId)
			strText = "你的背包没有空间了。"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local nItemBagIndexStone = GetBagPosByItemSn(sceneId, selfId, x889083_g_StoneList[nLevel].id)
	local szTransferStone = GetBagItemTransfer(sceneId,selfId, nItemBagIndexStone)
	
	-- 删除相关的石头
	local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x889083_g_StoneList[nLevel].id, x889083_g_StoneList[nLevel].num)
	
	if bDelOk < 1  then
		BeginEvent(sceneId)
			strText = "扣出石头失败。"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	else
		--给完家东西，完成
		-- AddItemListToHuman(sceneId,selfId)
		--
		local nBagIndex = TryRecieveItem( sceneId, selfId, x889083_g_EquipList[nItemIndex].id, 1 );
		
		BeginEvent(sceneId)
			strText = "兑换成功。"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local message;	
		local randMessage = random(3);
		local sItemName = GetItemName(sceneId, x889083_g_EquipList[nItemIndex].id)
		
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, nBagIndex)
		
		if randMessage == 1 then
			message = format("#W#{WLS_00}#Y%d#cffffcc颗#W#{_INFOMSG%s}#cffffcc由衷的赞道：“#W#{_INFOUSR%s}#{WLS_01}#{_INFOMSG%s}#{WLS_02}", x889083_g_StoneList[nLevel].num, szTransferStone, LuaFnGetName(sceneId, selfId), szTransferEquip);
		elseif randMessage == 2 then
			message = format("#W#{WLS_00}#Y%d#cffffcc颗#W#{_INFOMSG%s}#cffffcc由衷的赞道：“#W#{_INFOUSR%s}#{WLS_01}#{_INFOMSG%s}#{WLS_02}", x889083_g_StoneList[nLevel].num, szTransferStone, LuaFnGetName(sceneId, selfId), szTransferEquip);
		else
			message = format("#W#{WLS_00}#Y%d#cffffcc颗#W#{_INFOMSG%s}#cffffcc由衷的赞道：“#W#{_INFOUSR%s}#{WLS_01}#{_INFOMSG%s}#{WLS_02}", x889083_g_StoneList[nLevel].num, szTransferStone, LuaFnGetName(sceneId, selfId), szTransferEquip);
		end
		
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		return
	end

	for i, findId in x889083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x889083_OnDie( sceneId, selfId, killerId )
end

