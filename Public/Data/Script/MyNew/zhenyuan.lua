--洛阳NPC
--抽奖
--普通
x892106_g_strGongGaoInfo = {
  --"#I恭喜玩家#cFF0000#{_INFOUSR%s}#I经过一番努力，终于收集到了足够数量的#G玄昊玉#I，成功兑换#c0066ff暗器#I。", 
  --"#I恭喜玩家#cFF0000#{_INFOUSR%s}#I经过一番努力，终于收集到了足够数量的#G玄昊玉#I，成功兑换#c0066ff暗器#I。", 
  --"#I恭喜玩家#cFF0000#{_INFOUSR%s}#I经过一番努力，终于收集到了足够数量的#G玄昊玉#I，成功兑换#c0066ff暗器#I。", 
  --"#I恭喜玩家#cFF0000#{_INFOUSR%s}#I经过一番努力，终于收集到了足够数量的#G玄昊玉#I，成功兑换#c0066ff暗器#I。", 
}
--**********************************
--事件交互入口
--**********************************
function x892106_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "  欢迎来我这使用真元凝练系统，凝练后都附带属性哦，#r#cFF0000凝练一件属性时装要求如下：衣服需天一神水+40个丝线3级，坐骑需许愿枝+50个丝线3级！丝线在草原钓鱼获得！！" )
		--AddNumText( sceneId, x892106_g_ScriptId, "兑换冰魄神针", 5, 100 )
		--AddNumText( sceneId, x892106_g_ScriptId, "兑换飞羽箭", 5, 200 )
		--AddNumText( sceneId, x892106_g_ScriptId, "兑换坐骑金羽", 5, 300 )
		AddNumText( sceneId, x892106_g_ScriptId, "新时装坐骑凝练属性", 5, 400 )
		AddNumText( sceneId, x892106_g_ScriptId, "下次再来", 5, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件列表选中一项
--**********************************
function x892106_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
	       	local nStoneId0 = 20310020
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310020,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10155003, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，成功兑换#Y冰魄神针！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，就不要来打扰本使者了，小心我扁你哦！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 300 then
	       	local nStoneId0 = 30505197
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=15 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30505197,15)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10149046, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，成功兑换#Y绝版坐骑：金羽！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G亲，你材料不够哦！请准备好充足的材料再来找我！祝你好运！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 400 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#cFF0000亲，材料准备充足了吗？准备开始吧！！！" )
			AddNumText( sceneId, x900034_g_scriptId, "凝练仙侣情缘", 5, 701)
			AddNumText( sceneId, x900034_g_scriptId, "凝练飞龙乘云", 5, 702)
			AddNumText( sceneId, x900034_g_scriptId, "凝练雪羽霜衣", 5, 703)
			AddNumText( sceneId, x900034_g_scriptId, "凝练春风余雪", 5, 704)
			AddNumText( sceneId, x900034_g_scriptId, "凝练  金 羽 ", 5, 705)
			AddNumText( sceneId, x900034_g_scriptId, "凝练傲雪灵狮", 5, 706)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 200 then
	       	local nStoneId0 = 20310020
	       	local nStoneId1 = 10155003
                local nStoneId3 =10124501
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
                c2 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId2)
            if c0 >=200 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310020,200)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,10155003,1)--删除物品
                                         LuaFnDelAvailableItem(sceneId,selfId,10124501,1)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10155005, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，成功兑换#Y飞羽箭！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，就不要来打扰本使者了，小心我扁你哦！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 701 then
	       	local nStoneId0 = 38000111
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000111,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20103108,40)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10125001, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，凝练成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G亲，你材料不够哦！请准备好所需物品再来找我！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 702 then
	       	local nStoneId0 = 30503140
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000111,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20103108,40)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553220, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，凝练成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G亲，你材料不够哦！请准备好所需物品再来找我！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 703 then
	       	local nStoneId0 = 38000111
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000111,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20103108,40)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10125003, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，凝练成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G亲，你材料不够哦！请准备好所需物品再来找我！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 704 then
	       	local nStoneId0 = 38000111
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000111,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20103108,40)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10125004, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，凝练成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G亲，你材料不够哦！请准备好所需物品再来找我！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 705 then
	       	local nStoneId0 = 38000112
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000112,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20103108,50)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553218, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，凝练成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G亲，你材料不够哦！请准备好所需物品再来找我！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 706 then
	       	local nStoneId0 = 38000112
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000112,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20103108,50)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10149012, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，凝练成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G亲，你材料不够哦！请准备好所需物品再来找我！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
end
--**********************************
-- 对话窗口信息提示
--**********************************
function x892106_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x892106_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x892106_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x892106_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x892106_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x892106_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x892106_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
