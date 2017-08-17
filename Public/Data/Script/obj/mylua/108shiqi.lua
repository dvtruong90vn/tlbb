--洛阳NPC
--抽奖
--普通
x210531_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于炼化了神器，突然乌云密布天空一声巨响#{_INFOMSG%s}炼化成功！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于炼化了神器，突然乌云密布天空一声巨响#{_INFOMSG%s}炼化成功！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于炼化了神器，突然乌云密布天空一声巨响#{_INFOMSG%s}炼化成功！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于炼化了神器，突然乌云密布天空一声巨响#{_INFOMSG%s}炼化成功！", 
}
--**********************************
--事件交互入口
--**********************************
function x510533_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#c0066ff神器炼魂平台" )
		AddText( sceneId, "#G（#cFF0000四代神器兑换#G）" )
		AddText( sceneId, "#G（#cFF0000四代神器重炼#G）" )
		AddText( sceneId, "#cff99ff提示（#G请拆下已镶嵌的宝石#cff99ff）" )
		AddNumText( sceneId, x510533_g_ScriptId, "#G（#cFF0000进入平台#G）", 10, 100 )
		AddNumText( sceneId, x510533_g_ScriptId, "下次再来", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件列表选中一项
--**********************************
function x510533_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff炼化材料#W可以在#Y各大BOSS#W获得!" )
		      AddText( sceneId, "#G（#cFF0000四代神器兑换#G）" )
		       AddText( sceneId, "#cff99ff提示（#G请拆下已镶嵌的宝石#cff99ff）" )
			AddNumText( sceneId, x510533_g_scriptId, "#G（#cFF0000终极五代神器兑换#G）", 10, 101)
			AddNumText( sceneId, x510531_g_scriptId, "#G（#cFF0000终极五代神器通灵#G）", 10, 102)
			AddNumText( sceneId, x510533_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff神器精魄#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV3#G）#cFF000050%↑" )
		      AddText( sceneId, "兑换神器需要消耗：" )
		      --AddText( sceneId, "#G相对应的神器#W1#G把" )
		      AddText( sceneId, "#cff99ff神器精魄#W200#cff99ff个" )
		      AddText( sceneId, "#G你确定要兑换吗？" )
			AddNumText( sceneId, x510533_g_scriptId, "#G大衍天玄", 10, 1011)
			AddNumText( sceneId, x510533_g_scriptId, "#G倚天长生", 10, 1012)
			AddNumText( sceneId, x510533_g_scriptId, "#G洪荒龙舞", 10, 1013)
			AddNumText( sceneId, x510533_g_scriptId, "#G万世枯荣", 10, 1014)
			AddNumText( sceneId, x510533_g_scriptId, "#G六道黄泉", 10, 1015)
			AddNumText( sceneId, x510533_g_scriptId, "#G无相绝踪", 10, 1016)
			AddNumText( sceneId, x510533_g_scriptId, "#G达摩一叹", 10, 1017)
			AddNumText( sceneId, x510533_g_scriptId, "#G太古飘翎", 10, 1018)
			AddNumText( sceneId, x510533_g_scriptId, "#G末世王权", 10, 1019)
			AddNumText( sceneId, x510533_g_scriptId, "#G九霄焱阳", 10, 1020)
			AddNumText( sceneId, x510533_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555168, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，最新型的五代神器，要精魄200个才可以炼制出来哦！就不要来打扰本使者了，小心我扁你哦！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1012 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555171, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，最新型的五代神器，要精魄200个才可以炼制出来哦！兑换神器成功！"
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
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555174, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，最新型的五代神器，要精魄200个才可以炼制出来哦！兑换神器成功！"
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
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555177, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，就不要来打扰本使者了最新型的五代神器，要精魄200个才可以炼制出来哦！，小心我扁你哦！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 1015 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555180, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，最新型的五代神器，要精魄200个才可以炼制出来哦！兑换神器成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，最新型的五代神器，要精魄200个才可以炼制出来哦！就不要来打扰本使者了，小心我扁你哦！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

			
	elseif GetNumText() == 1016 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555183, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，最新型的五代神器，要精魄200个才可以炼制出来哦！兑换神器成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，最新型的五代神器，要精魄200个才可以炼制出来哦！就不要来打扰本使者了，小心我扁你哦！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 1017 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555186, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，最新型的五代神器，要精魄200个才可以炼制出来哦！就不要来打扰本使者了，小心我扁你哦！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

			
	elseif GetNumText() == 1018 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555189, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，最新型的五代神器，要精魄200个才可以炼制出来哦！就不要来打扰本使者了，小心我扁你哦！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

			
	elseif GetNumText() == 1019 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555192, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，最新型的五代神器，要精魄200个才可以炼制出来哦！兑换神器成功！"
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

			
	elseif GetNumText() == 1020 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555195, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，兑换神器成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，就不要来打扰本使者了，最新型的五代神器，要精魄200个才可以炼制出来哦！小心我扁你哦！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff神器精魄#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV9#G）#cFF000070%↑" )
		      AddText( sceneId, "神器加星需要消耗：" )
		      AddText( sceneId, "#G相对应的神器#W1#G把" )
		      AddText( sceneId, "#cff99ff神器精魄#W20#cff99ff个" )
			  AddText( sceneId, "#cff99ff神器通灵后，可以将神器属性强化，或者削弱！#W看你的人品哦！#cff99ff" )
		      AddText( sceneId, "#G确记一定要先摘除武器上的宝石！" )
			AddNumText( sceneId, x510533_g_scriptId, "#G大衍天玄 - 神器通灵", 10, 1021)
			AddNumText( sceneId, x510533_g_scriptId, "#G倚天长生 - 神器通灵", 10, 1022)
			AddNumText( sceneId, x510533_g_scriptId, "#G洪荒龙舞 - 神器通灵", 10, 1023)
			AddNumText( sceneId, x510533_g_scriptId, "#G万世枯荣 - 神器通灵", 10, 1024)
			AddNumText( sceneId, x510533_g_scriptId, "#G六道黄泉 - 神器通灵", 10, 1025)
			AddNumText( sceneId, x510533_g_scriptId, "#G无相绝踪 - 神器通灵", 10, 1026)
			AddNumText( sceneId, x510533_g_scriptId, "#G达摩一叹 - 神器通灵", 10, 1027)
			AddNumText( sceneId, x510533_g_scriptId, "#G太古飘翎 - 神器通灵", 10, 1028)
			AddNumText( sceneId, x510533_g_scriptId, "#G末世王权 - 神器通灵", 10, 1029)
			AddNumText( sceneId, x510533_g_scriptId, "#G九霄焱阳 - 神器通灵", 10, 1030)
			AddNumText( sceneId, x510533_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
                     local nStoneId0 = 10555168
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555168,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555168, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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
                     local nStoneId0 = 10555171
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555171,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555171, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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
                     local nStoneId0 = 10555174
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555174,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555174, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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
                     local nStoneId0 = 10555177
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555177,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555177, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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
                     local nStoneId0 = 10555180
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555180,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555180, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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
                     local nStoneId0 = 10555183
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555183,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555183, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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
                     local nStoneId0 = 10555186
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555186,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555186, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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


			
	elseif GetNumText() == 1028 then
                     local nStoneId0 = 10555189
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555189,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555189, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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

			
	elseif GetNumText() == 1029 then
                     local nStoneId0 = 10555192
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555192,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555192, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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


	elseif GetNumText() == 1030 then
                     local nStoneId0 = 10555195
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555195,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555195, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器通灵成功！"
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
		      AddText( sceneId, "#c0066ff神兵符#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV9#G）#cFF000070%↑" )
		      AddText( sceneId, "神器熔炼附体需要消耗：" )
		      AddText( sceneId, "#G相对应的9星神器#W1#G把" )
		      AddText( sceneId, "#cff99ff神兵符#W20#cff99ff个" )
		      AddText( sceneId, "#G请先摘除神器上的宝石，以免造成损失！" )
			AddNumText( sceneId, x510533_g_scriptId, "#G熔炼龙附体", 10, 104)
			AddNumText( sceneId, x510533_g_scriptId, "#G熔炼凤附体", 10, 105)
			AddNumText( sceneId, x510533_g_scriptId, "#G熔炼蝶附体", 10, 106)
			AddNumText( sceneId, x510533_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

       elseif GetNumText() == 104 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff神兵符#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV9#G）#cFF000070%↑" )
		      AddText( sceneId, "神器熔炼附体需要消耗：" )
		      AddText( sceneId, "#G相对应的9星神器#W1#G把" )
		      AddText( sceneId, "#cff99ff神兵符#W20#cff99ff个" )
		      AddText( sceneId, "#G请先摘除神器上的宝石，以免造成损失！" )
			AddNumText( sceneId, x510533_g_scriptId, "#G赤焰九纹刀 - 龙附体", 10, 1041)
			AddNumText( sceneId, x510533_g_scriptId, "#G斩忧断愁枪 - 龙附体", 10, 1042)
			AddNumText( sceneId, x510533_g_scriptId, "#G弈天破邪杖 - 龙附体", 10, 1043)
			AddNumText( sceneId, x510533_g_scriptId, "#G含光弄影剑 - 龙附体", 10, 1044)
			AddNumText( sceneId, x510533_g_scriptId, "#G万仞龙渊剑 - 龙附体", 10, 1045)
			AddNumText( sceneId, x510533_g_scriptId, "#G星移无痕剑 - 龙附体", 10, 1046)
			AddNumText( sceneId, x510533_g_scriptId, "#G转魂灭魄钩 - 龙附体", 10, 1047)
			AddNumText( sceneId, x510533_g_scriptId, "#G雷鸣离火扇 - 龙附体", 10, 1048)
			AddNumText( sceneId, x510533_g_scriptId, "#G碎情雾影环 - 龙附体", 10, 1049)
			AddNumText( sceneId, x510533_g_scriptId, "#G天星耀阳环 - 龙附体", 10, 1050)
			AddNumText( sceneId, x510533_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
       elseif GetNumText() == 1041 then
                     local nStoneId0 = 10555117
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555117,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555118, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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
                     local nStoneId0 = 10555122
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555122,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555123, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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
                     local nStoneId0 = 10555127
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555127,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555128, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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
                     local nStoneId0 = 10555132
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555132,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555133, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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
                     local nStoneId0 = 10555137
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555137,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555138, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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
                     local nStoneId0 = 10555142
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555142,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555143, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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
                     local nStoneId0 = 10555147
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555147,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555148, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


			
	elseif GetNumText() == 1048 then
                     local nStoneId0 = 10555152
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555152,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555153, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

			
	elseif GetNumText() == 1049 then
                     local nStoneId0 = 10555157
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555157,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555158, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


	elseif GetNumText() == 1050 then
                     local nStoneId0 = 10555162
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555162,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555163, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

       elseif GetNumText() == 105 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff神兵符#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV9#G）#cFF000070%↑" )
		      AddText( sceneId, "神器熔炼附体需要消耗：" )
		      AddText( sceneId, "#G相对应的9星神器#W1#G把" )
		      AddText( sceneId, "#cff99ff神兵符#W20#cff99ff个" )
		      AddText( sceneId, "#G请先摘除神器上的宝石，以免造成损失！" )
			AddNumText( sceneId, x510533_g_scriptId, "#G赤焰九纹刀 - 凤附体", 10, 1051)
			AddNumText( sceneId, x510533_g_scriptId, "#G斩忧断愁枪 - 凤附体", 10, 1052)
			AddNumText( sceneId, x510533_g_scriptId, "#G弈天破邪杖 - 凤附体", 10, 1053)
			AddNumText( sceneId, x510533_g_scriptId, "#G含光弄影剑 - 凤附体", 10, 1054)
			AddNumText( sceneId, x510533_g_scriptId, "#G万仞龙渊剑 - 凤附体", 10, 1055)
			AddNumText( sceneId, x510533_g_scriptId, "#G星移无痕剑 - 凤附体", 10, 1056)
			AddNumText( sceneId, x510533_g_scriptId, "#G转魂灭魄钩 - 凤附体", 10, 1057)
			AddNumText( sceneId, x510533_g_scriptId, "#G雷鸣离火扇 - 凤附体", 10, 1058)
			AddNumText( sceneId, x510533_g_scriptId, "#G碎情雾影环 - 凤附体", 10, 1059)
			AddNumText( sceneId, x510533_g_scriptId, "#G天星耀阳环 - 凤附体", 10, 1060)
			AddNumText( sceneId, x510533_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
       elseif GetNumText() == 1051 then
                     local nStoneId0 = 10555117
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555117,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555119, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

	elseif GetNumText() == 1052 then
                     local nStoneId0 = 10555122
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555122,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555124, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


	elseif GetNumText() == 1053 then
                     local nStoneId0 = 10555127
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555127,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555129, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

	elseif GetNumText() == 1054 then
                     local nStoneId0 = 10555132
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555132,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555134, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


	elseif GetNumText() == 1055 then
                     local nStoneId0 = 10555137
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555137,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555139, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

			
	elseif GetNumText() == 1056 then
                     local nStoneId0 = 10555142
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555142,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555144, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


	elseif GetNumText() == 1057 then
                     local nStoneId0 = 10555147
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555147,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555149, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


			
	elseif GetNumText() == 1058 then
                     local nStoneId0 = 10555152
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555152,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555154, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

			
	elseif GetNumText() == 1059 then
                     local nStoneId0 = 10555157
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555157,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555159, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


	elseif GetNumText() == 1060 then
                     local nStoneId0 = 10555162
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555162,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555164, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

       elseif GetNumText() == 106 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff神兵符#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV9#G）#cFF000070%↑" )
		      AddText( sceneId, "神器熔炼附体需要消耗：" )
		      AddText( sceneId, "#G相对应的9星神器#W1#G把" )
		      AddText( sceneId, "#cff99ff神兵符#W20#cff99ff个" )
		      AddText( sceneId, "#G请先摘除神器上的宝石，以免造成损失！" )
			AddNumText( sceneId, x510533_g_scriptId, "#G赤焰九纹刀 - 蝶附体", 10, 1061)
			AddNumText( sceneId, x510533_g_scriptId, "#G斩忧断愁枪 - 蝶附体", 10, 1062)
			AddNumText( sceneId, x510533_g_scriptId, "#G弈天破邪杖 - 蝶附体", 10, 1063)
			AddNumText( sceneId, x510533_g_scriptId, "#G含光弄影剑 - 蝶附体", 10, 1064)
			AddNumText( sceneId, x510533_g_scriptId, "#G万仞龙渊剑 - 蝶附体", 10, 1065)
			AddNumText( sceneId, x510533_g_scriptId, "#G星移无痕剑 - 蝶附体", 10, 1066)
			AddNumText( sceneId, x510533_g_scriptId, "#G转魂灭魄钩 - 蝶附体", 10, 1067)
			AddNumText( sceneId, x510533_g_scriptId, "#G雷鸣离火扇 - 蝶附体", 10, 1068)
			AddNumText( sceneId, x510533_g_scriptId, "#G碎情雾影环 - 蝶附体", 10, 1069)
			AddNumText( sceneId, x510533_g_scriptId, "#G天星耀阳环 - 蝶附体", 10, 1070)
			AddNumText( sceneId, x510533_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
       elseif GetNumText() == 1061 then
                     local nStoneId0 = 10555117
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555117,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555120, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

	elseif GetNumText() == 1062 then
                     local nStoneId0 = 10555122
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555122,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555125, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


	elseif GetNumText() == 1063 then
                     local nStoneId0 = 10555127
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555127,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555130, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

	elseif GetNumText() == 1064 then
                     local nStoneId0 = 10555132
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555132,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555135, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


	elseif GetNumText() == 1065 then
                     local nStoneId0 = 10555137
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555137,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555140, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

			
	elseif GetNumText() == 1066 then
                     local nStoneId0 = 10555142
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555142,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555145, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


	elseif GetNumText() == 1067 then
                     local nStoneId0 = 10555147
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555147,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555150, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


			
	elseif GetNumText() == 1068 then
                     local nStoneId0 = 10555152
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555152,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555155, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

			
	elseif GetNumText() == 1069 then
                     local nStoneId0 = 10555157
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555157,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555160, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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


	elseif GetNumText() == 1070 then
                     local nStoneId0 = 10555162
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555162,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555165, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

        elseif GetNumText() == 107 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff神兵符#W可以在#Y各大BOSS#W获得!" )
		      --AddText( sceneId, "#c0066ff一段#G（#cFF0000LV1-LV9#G）#cFF000070%↑" )
		      AddText( sceneId, "神器重新熔炼需要消耗：" )
		      AddText( sceneId, "#G相对应的终极神器#W1#G把" )
		      AddText( sceneId, "#cff99ff神兵符#W20#cff99ff个" )
		      AddText( sceneId, "#G请先摘除神器上的宝石，以免造成损失！" )
			AddNumText( sceneId, x510533_g_scriptId, "#G天星耀阳环 - 龙附体", 10, 1071)
			AddNumText( sceneId, x510533_g_scriptId, "#G天星耀阳环 - 凤附体", 10, 1072)
			AddNumText( sceneId, x510533_g_scriptId, "#G天星耀阳环 - 蝶附体", 10, 1073)
			AddNumText( sceneId, x510533_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

       elseif GetNumText() == 1071 then
                     local nStoneId0 = 10555163
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555163,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555163, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

       elseif GetNumText() == 1072 then
                     local nStoneId0 = 10555164
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555164,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555164, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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

       elseif GetNumText() == 1073 then
                     local nStoneId0 = 10555165
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555165,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555165, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G恭喜你，神器熔炼附体成功！"
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
