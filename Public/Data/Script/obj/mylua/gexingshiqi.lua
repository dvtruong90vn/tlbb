--洛阳NPC
--抽奖
--普通
x210531_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于炼化了个性神器，突然乌云密布天空一声巨响#{_INFOMSG%s}炼化成功！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于炼化了个性神器，突然乌云密布天空一声巨响#{_INFOMSG%s}炼化成功！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于炼化了个性神器，突然乌云密布天空一声巨响#{_INFOMSG%s}炼化成功！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于炼化了个性神器，突然乌云密布天空一声巨响#{_INFOMSG%s}炼化成功！", 
}
--**********************************
--事件交互入口
--**********************************
function x510532_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#c0066ff个性神器炼魂平台" )
		AddText( sceneId, "#G（#cFF0000个性神器兑换#G）" )
		AddText( sceneId, "#G（#cFF0000个性神器加星#G）" )
		AddText( sceneId, "#G（#cFF0000终极个性神器#G）" )
              AddText( sceneId, "#G（#cFF0000重洗个性神器#G）" )
		AddText( sceneId, "#cff99ff提示（#G请拆下已镶嵌的宝石#cff99ff）" )
		AddNumText( sceneId, x510532_g_ScriptId, "#G（#cFF0000进入平台#G）", 10, 100 )
		AddNumText( sceneId, x510532_g_ScriptId, "下次再来", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件列表选中一项
--**********************************
function x510532_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff炼化材料#W可以在#Y各大BOSS#W获得!" )
		      AddText( sceneId, "#G（#cFF0000神器兑换#G）" )
		      AddText( sceneId, "#G（#cFF0000神器加星#G）" )
		      AddText( sceneId, "#G（#cFF0000神器附体#G）" )
		       AddText( sceneId, "#cff99ff提示（#G请拆下已镶嵌的宝石#cff99ff）" )
			AddNumText( sceneId, x510532_g_scriptId, "#G（#cFF0000106个性神器兑换#G）", 10, 101)
			AddNumText( sceneId, x510532_g_scriptId, "#G（#cFF0000106个性神器加星#G）", 10, 102)
			AddNumText( sceneId, x510532_g_scriptId, "#G（#cFF0000106个性神器附体#G）", 10, 103)
                     AddNumText( sceneId, x510532_g_scriptId, "#G（#cFF0000106重洗个性神器#G）", 10, 104)
			AddNumText( sceneId, x510532_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff七夕的花瓣#W可以在#Y各大BOSS#W获得!" )
		      AddText( sceneId, "兑换个性神器需要消耗：" )
		      AddText( sceneId, "#cff99ff七夕的花瓣#W50#cff99ff个" )
		      AddText( sceneId, "#G你确定要兑换吗？" )
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（龙）", 10, 1011)
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（蝶）", 10, 1012)
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（凤）", 10, 1013)
			AddNumText( sceneId, x510532_g_scriptId, "#G红郁金香", 10, 1014)
			AddNumText( sceneId, x510532_g_scriptId, "#G紫郁金香", 10, 1015)
			AddNumText( sceneId, x510532_g_scriptId, "#G粉玫瑰", 10, 1016)
			AddNumText( sceneId, x510532_g_scriptId, "#G红玫瑰", 10, 1017)
			AddNumText( sceneId, x510532_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553101, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
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

	elseif GetNumText() == 1012 then
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553104, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
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


	elseif GetNumText() == 1013 then
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553107, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
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

	elseif GetNumText() == 1014 then
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553110, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
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


	elseif GetNumText() == 1015 then
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553113, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
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

			
	elseif GetNumText() == 1016 then
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553116, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
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


	elseif GetNumText() == 1017 then
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553119, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
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


	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff七夕的花瓣#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV9#G）#cFF000070%↑" )
		      AddText( sceneId, "神器加星需要消耗：" )
		      AddText( sceneId, "#G相对应的神器#W1#G把" )
		      AddText( sceneId, "#cff99ff七夕的花瓣#W20#cff99ff个" )
		      AddText( sceneId, "#G确记一定要先摘除武器上的宝石！" )
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（龙）  加9星", 10, 1021)
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（蝶）  加9星", 10, 1022)
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（凤）  加9星", 10, 1023)
			AddNumText( sceneId, x510532_g_scriptId, "#G红郁金香  加9星", 10, 1024)
			AddNumText( sceneId, x510532_g_scriptId, "#G紫郁金香  加9星", 10, 1025)
			AddNumText( sceneId, x510532_g_scriptId, "#G粉玫瑰  加9星", 10, 1026)
			AddNumText( sceneId, x510532_g_scriptId, "#G红玫瑰  加9星", 10, 1027)
			AddNumText( sceneId, x510532_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
                     local nStoneId0 = 10553101
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553101,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553102, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器加星成功！"
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

	elseif GetNumText() == 1022 then
                     local nStoneId0 = 10553104
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553104,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553105, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器加星成功！"
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


	elseif GetNumText() == 1023 then
                     local nStoneId0 = 10553107
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553107,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553108, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器加星成功！"
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

	elseif GetNumText() == 1024 then
                     local nStoneId0 = 10553110
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553110,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553111, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器加星成功！"
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


	elseif GetNumText() == 1025 then
                     local nStoneId0 = 10553113
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553113,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553114, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器加星成功！"
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

			
	elseif GetNumText() == 1026 then
                     local nStoneId0 = 10553116
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553116,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553117, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器加星成功！"
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


	elseif GetNumText() == 1027 then
                     local nStoneId0 = 10553119
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553119,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553120, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器加星成功！"
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

			
	elseif GetNumText() == 103 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff七夕的花瓣#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV9#G）#cFF000070%↑" )
		      AddText( sceneId, "终极神器需要消耗：" )
		      AddText( sceneId, "#G相对应的神器#W1#G把" )
		      AddText( sceneId, "#cff99ff七夕的花瓣#W20#cff99ff个" )
		      AddText( sceneId, "#G确记一定要先摘除武器上的宝石！" )
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（龙）  终极", 10, 1031)
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（蝶）  终极", 10, 1032)
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（凤）  终极", 10, 1033)
			AddNumText( sceneId, x510532_g_scriptId, "#G红郁金香  终极", 10, 1034)
			AddNumText( sceneId, x510532_g_scriptId, "#G紫郁金香  终极", 10, 1035)
			AddNumText( sceneId, x510532_g_scriptId, "#G粉玫瑰  终极", 10, 1036)
			AddNumText( sceneId, x510532_g_scriptId, "#G红玫瑰  终极", 10, 1037)
			AddNumText( sceneId, x510532_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1031 then
                     local nStoneId0 = 10553102
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553102,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553103, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器升为终极成功！"
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

	elseif GetNumText() == 1032 then
                     local nStoneId0 = 10553105
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553105,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553106, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器升为终极成功！"
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


	elseif GetNumText() == 1033 then
                     local nStoneId0 = 10553108
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553108,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553109, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器升为终极成功！"
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

	elseif GetNumText() == 1034 then
                     local nStoneId0 = 10553111
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553111,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553112, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器升为终极成功！"
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


	elseif GetNumText() == 1035 then
                     local nStoneId0 = 10553114
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553114,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553115, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器升为终极成功！"
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

			
	elseif GetNumText() == 1036 then
                     local nStoneId0 = 10553117
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553117,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553118, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器升为终极成功！"
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


	elseif GetNumText() == 1037 then
                     local nStoneId0 = 10553120
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553120,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553121, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器升为终极成功！"
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

       elseif GetNumText() == 104 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff七夕的花瓣#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV9#G）#cFF000070%↑" )
		      AddText( sceneId, "重洗神器需要消耗：" )
		      AddText( sceneId, "#G相对应的神器#W1#G把" )
		      AddText( sceneId, "#cff99ff七夕的花瓣#W20#cff99ff个" )
		      AddText( sceneId, "#G确记一定要先摘除武器上的宝石！" )
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（龙）  终极", 10, 1041)
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（蝶）  终极", 10, 1042)
			AddNumText( sceneId, x510532_g_scriptId, "#G棒棒糖（凤）  终极", 10, 1043)
			AddNumText( sceneId, x510532_g_scriptId, "#G红郁金香  终极", 10, 1044)
			AddNumText( sceneId, x510532_g_scriptId, "#G紫郁金香  终极", 10, 1045)
			AddNumText( sceneId, x510532_g_scriptId, "#G粉玫瑰  终极", 10, 1046)
			AddNumText( sceneId, x510532_g_scriptId, "#G红玫瑰  终极", 10, 1047)
			AddNumText( sceneId, x510532_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1041 then
                     local nStoneId0 = 10553103
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553103,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553103, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器重洗成功！"
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

	elseif GetNumText() == 1042 then
                     local nStoneId0 = 10553106
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553106,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553106, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器重洗成功！"
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


	elseif GetNumText() == 1043 then
                     local nStoneId0 = 10553109
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553109,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553109, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器重洗成功！"
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

	elseif GetNumText() == 1044 then
                     local nStoneId0 = 10553112
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553112,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553112, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器重洗成功！"
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


	elseif GetNumText() == 1045 then
                     local nStoneId0 = 10553115
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553115,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553115, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器重洗成功！"
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

			
	elseif GetNumText() == 1046 then
                     local nStoneId0 = 10553118
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553118,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553118, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器重洗成功！"
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


	elseif GetNumText() == 1047 then
                     local nStoneId0 = 10553121
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553121,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553121, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，个性神器重洗成功！"
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
function x210531_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x210531_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x210531_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x210531_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x210531_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x210531_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x210531_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
