--大理NPC
--抽奖
--普通
x892107_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于把材料收集全了。在洛阳的#Y材料兑换使者#W处兑换了一个#{_INFOMSG%s}！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于把材料收集全了。在洛阳的#Y材料兑换使者#W处兑换了一个#{_INFOMSG%s}！", 
  "#e0e8de5#Y#u#{_INFOUSR%s}#H经过不懈努力收集齐了所有材料，获得#W#{_INFOMSG%s}#H，真是令人羡慕啊！", 
  "#e0e8de5#Y#u#{_INFOUSR%s}#H经过不懈努力收集齐了所有材料，获得#W#{_INFOMSG%s}#H，真是令人羡慕啊！", 
}
--**********************************
--事件交互入口
--**********************************
function x892107_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#c0066ff猎命江湖最新QQ会员等一系列物品兑换系统,换取凭证之后请联系猎命江湖客服帮你开通！！！" )
		AddText( sceneId, "#cff99ff提示（#G#Y请在#G圣火宫，凤凰古筝，束河等地图#G获得这些兑换材料！）" )
		AddNumText( sceneId, x892107_g_ScriptId, "进入最新QQ功能兑换系统", 5, 100 )
		--AddNumText( sceneId, x892107_g_ScriptId, "QQ黄钻·兑换", 5, 200 )
                --AddNumText( sceneId, x892107_g_ScriptId, "QQ红砖·兑换", 5, 300 )
		--AddNumText( sceneId, x892107_g_ScriptId, "QQ蓝砖·兑换", 5, 400 )
                --AddNumText( sceneId, x892107_g_ScriptId, "#cFF0000兑换说明", 5, 500 )
		--AddNumText( sceneId, x892107_g_ScriptId, "下次再来", 5, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件列表选中一项
--**********************************
function x892107_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "QQ材料兑换" )
		      AddText( sceneId, "#G你确定要兑换吗？" )
                    AddNumText( sceneId, x892107_g_scriptId, "100个#cFF0000会员碎片#Y兑换#GQQ会员凭证", 5, 101)
                    AddNumText( sceneId, x892107_g_scriptId, "100个#cFF0000黄钻碎片#Y兑换#GQQ黄钻凭证", 5, 102)
                    AddNumText( sceneId, x892107_g_scriptId, "100个#cFF0000红砖碎片#Y兑换#GQQ红砖凭证", 5, 103)
			AddNumText( sceneId, x892107_g_scriptId, "100个#cFF0000蓝砖碎片#Y兑换#GQQ蓝砖碎片", 5, 104)
			--AddNumText( sceneId, x892107_g_scriptId, "1000个#cFF0000鲑 鱼#Y兑换#G10万赠点票1张", 5, 105)
			--AddNumText( sceneId, x892107_g_scriptId, "6000个#cFF0000鲑 鱼#Y兑换#G红宝石(5级)2个", 5, 106)
			--AddNumText( sceneId, x892107_g_scriptId, "取消", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

       elseif GetNumText() == 101 then
	       	local nStoneId0 = 39901042
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=80 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,39901042,100)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 102 then
	       	local nStoneId0 = 39901044
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=80 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,39901044,100)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 103 then
	       	local nStoneId0 = 20102022
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=100 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,39901043,100)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 104 then
	       	local nStoneId0 = 39901044
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=50 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,39901044,100)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 105 then
	       	local nStoneId0 = 20102010
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1000 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20102010,1000)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 106 then
	       	local nStoneId0 = 20102010
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1000 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20102010,6000)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 50513004, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 200 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#G种植材料兑换" )
		      AddText( sceneId, "#Y你确定要兑换吗？" )
			AddNumText( sceneId, x892101_g_scriptId, "60个小麦兑换怡红院令牌", 5, 201)
			AddNumText( sceneId, x892101_g_scriptId, "60个小麦兑换忘无石30个", 5, 202)
			AddNumText( sceneId, x892101_g_scriptId, "取消", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then
	       	local nStoneId0 = 20104001
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=60 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20104001,60)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30501359, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 202 then
	       	local nStoneId0 = 20104001
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=60 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20104001,60)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30503118, 30)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 300 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff挖矿材料兑换" )
		      AddText( sceneId, "#G你确定要兑换吗？" )
			AddNumText( sceneId, x892101_g_scriptId, "30个金矿石兑换小喇叭30个", 5, 301)
			AddNumText( sceneId, x892101_g_scriptId, "100个方解石兑换(红宝石6级)", 5, 302)
			AddNumText( sceneId, x892101_g_scriptId, "取消", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 301 then
	       	local nStoneId0 = 20103119
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=20 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20103119,30)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30505107, 30)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 302 then
	       	local nStoneId0 = 20103053
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=20 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20103053,100)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 50513004, 3)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 400 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff采药材料兑换" )
		      AddText( sceneId, "#G你确定要兑换吗？" )
			AddNumText( sceneId, x892101_g_scriptId, "100个象贝兑换七夕的花瓣3个", 5, 401)
			AddNumText( sceneId, x892101_g_scriptId, "10个人参兑换漫天花雨", 5, 402)
			AddNumText( sceneId, x892101_g_scriptId, "取消", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 401 then
	       	local nStoneId0 = 20101025
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=20 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20101025,100)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30008081, 3)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 402 then
	       	local nStoneId0 = 20101026
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=20 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20101026,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30509012, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G恭喜你，兑换成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y你的材料不够，请检查你的材料是否齐全！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 500 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#Y兑换说明：" )
		      AddText( sceneId, "#G在洛阳学习生活技能后，去草原可以钓鱼,挖矿,采药,种植一定要去束河古镇哦,亲们,可以换赠点商品" )
			AddNumText( sceneId, x892101_g_scriptId, "取消", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

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
function x892107_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示

--**********************************
function x892107_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--消息提示
--**********************************
function x892107_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x892107_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x892107_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x892107_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x892107_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x892107_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end

