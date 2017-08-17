--洛阳NPC
--燕青
--普通

--脚本号
x892000_g_ScriptId = 892000

--所拥有的事件ID列表
x892000_g_eventList={}

x892000_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于收集全了合成武魂装备需要的物品。#Y无崖子#W特赠送给其一个#{_INFOMSG%s}！", 
  "#e0ba4b6#u#{_INFOUSR%s} #cff99cc为#Y无崖子#cff99cc找齐了#Y灵魂装备精华#cff99cc，灵魂装备使者献上#{_INFOMSG%s}作为感谢！", 
  "#effc9d8#cf30768#b#{_INFOUSR%s}#H在#Y无崖子处进行#R武魂装备#I的升级中，一路过关斩将，不愧是功夫不负有心人,特赠与#{_INFOMSG%s}！",
  "#e0e8de5#Y#u#{_INFOUSR%s}#H经过不懈努力收集齐了#R武魂装备升级#I的所有物品，获得#W#{_INFOMSG%s}#H，真是令人羡慕啊！", 
}

--**********************************
--事件列表
--**********************************
function x892000_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "姑娘"
	else
		PlayerSex = "少侠"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"您好"..PlayerSex.."，#{WH_NPC_1}")
		for i, eventId in x892000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892000_g_ScriptId,"提升武魂等级",6,7)
		AddNumText(sceneId,x892000_g_ScriptId,"武魂领悟技能",6,8)
		AddNumText(sceneId,x892000_g_ScriptId,"武魂说明",8,888)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x892000_OnDefaultEvent( sceneId, selfId,targetId )
	x892000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x892000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	local NumText = GetNumText();
	if NumText == 6 then  --取消了
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)

	elseif NumText == 888 then  --说明
		BeginEvent(sceneId)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂来由",6,666)
			AddNumText(sceneId,x892000_g_ScriptId,"怎样获得武魂",6,667)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂怎样升级",6,668)
			AddNumText(sceneId,x892000_g_ScriptId,"怎样获得武魂相关道具",6,669)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂扩展属性介绍",6,670)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂属相介绍",6,671)
			AddNumText(sceneId,x892000_g_ScriptId,"属相相克效果",6,672)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 666 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_12}")
			AddText(sceneId,"#{WH_NPC_10}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 667 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_12}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 668 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_11}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 669 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_13}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 670 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_14}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 671 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_15}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 672 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_16}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 7 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_2}")
			AddText(sceneId,"当武魂等级#G大于3#W时，可在李沧海处进行更高阶的武魂操作。")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892000_g_ScriptId,"提升 御瑶盘·冰 等级",6,12)
			AddNumText(sceneId,x892000_g_ScriptId,"提升 御瑶盘·火 等级",6,13)
			AddNumText(sceneId,x892000_g_ScriptId,"提升 御瑶盘·玄 等级",6,14)
			AddNumText(sceneId,x892000_g_ScriptId,"提升 御瑶盘·毒 等级",6,15)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --领悟技能
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_20}")
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 武魂（1级） 技能",6,16)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 武魂（2级） 技能",6,17)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 武魂（3级） 技能",6,18)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --武魂扩展属性
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_31}")
			AddNumText(sceneId,x892000_g_ScriptId,"获取 武魂（0级） 扩展属性",6,19)
			AddNumText(sceneId,x892000_g_ScriptId,"获取 武魂（1级） 扩展属性",6,20)
			AddNumText(sceneId,x892000_g_ScriptId,"获取 武魂（2级） 扩展属性",6,21)
			AddNumText(sceneId,x892000_g_ScriptId,"获取 武魂（3级） 扩展属性",6,22)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 10 then  --重洗暗器技能
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 6 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)

	elseif NumText == 11 then  --重置暗器
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_84}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --提升 冰 等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_3}")
			AddText(sceneId,"#{WH_NPC_4}")
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·冰（1级）",6,23)
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·冰（2级）",6,24)
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·冰（3级）",6,25)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 13 then                   --提升 火 等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_5}")
			AddText(sceneId,"#{WH_NPC_4}")
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·火（1级）",6,26)
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·火（2级）",6,27)
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·火（3级）",6,28)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 130 then
		x892000_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_6}")
			AddText(sceneId,"#{WH_NPC_4}")
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·玄（1级）",6,29)
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·玄（2级）",6,30)
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·玄（3级）",6,31)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 15 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_7}")
			AddText(sceneId,"#{WH_NPC_4}")
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·毒（1级）",6,32)
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·毒（2级）",6,33)
			AddNumText(sceneId,x892000_g_ScriptId,"提升至 御瑶盘·毒（3级）",6,34)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 16 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_8}")
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 击·寒冰",6,35)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 击·炽焰",6,36)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 击·苍玄",6,37)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 击·创毒",6,38)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 17 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_8}")
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 破·凝冰",6,39)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 破·烈炎",6,40)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 破·落玄",6,41)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 破·嗜毒",6,42)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 18 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_8}")
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 暴·淬冰",6,43)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 暴·凛火",6,44)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 暴·冲玄",6,45)
			AddNumText(sceneId,x892000_g_ScriptId,"领悟 暴·剧毒",6,46)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 19 then
		BeginEvent(sceneId)

			AddText(sceneId,"请选择要获取的扩展属性，要对应相同的武魂属性哦！")
			AddNumText(sceneId,x892000_g_ScriptId,"武魂0级（冰属相）扩展属性",6,47)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂0级（火属相）扩展属性",6,48)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂0级（玄属相）扩展属性",6,49)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂0级（毒属相）扩展属性",6,50)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 20 then
		BeginEvent(sceneId)

			AddText(sceneId,"请选择要获取的扩展属性，要对应相同的武魂属性哦！")
			AddNumText(sceneId,x892000_g_ScriptId,"武魂1级（冰属相）扩展属性",6,51)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂1级（火属相）扩展属性",6,52)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂1级（玄属相）扩展属性",6,53)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂1级（毒属相）扩展属性",6,54)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent(sceneId)

			AddText(sceneId,"请选择要获取的扩展属性，要对应相同的武魂属性哦！")
			AddNumText(sceneId,x892000_g_ScriptId,"武魂2级（冰属相）扩展属性",6,55)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂2级（火属相）扩展属性",6,56)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂2级（玄属相）扩展属性",6,57)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂2级（毒属相）扩展属性",6,58)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent(sceneId)

			AddText(sceneId,"请选择要获取的扩展属性，要对应相同的武魂属性哦！")
			AddNumText(sceneId,x892000_g_ScriptId,"武魂3级（冰属相）扩展属性",6,59)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂3级（火属相）扩展属性",6,60)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂3级（玄属相）扩展属性",6,61)
			AddNumText(sceneId,x892000_g_ScriptId,"武魂3级（毒属相）扩展属性",6,62)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 23 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156102)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156102,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156106, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 24 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156106)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156106,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156110, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 25 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156110)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156110,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156114, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 26 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156103)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156103,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156107, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 27 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156107)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156107,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156111, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 28 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156111)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156111,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156115, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 29 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156104)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156104,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156108, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 30 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156108)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156108,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156112, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 31 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156112)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156112,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156116, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 32 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156105)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156105,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156109, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 33 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156109)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156109,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156113, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 34 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156113)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156113,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156117, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂和魂冰珠是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 35 then
		c0 = GetItemCount(sceneId, selfId, 10156106)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910017)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1700) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1700)
			LuaFnDelAvailableItem(sceneId,selfId,39910017,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 36 then
		c0 = GetItemCount(sceneId, selfId, 10156107)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910018)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1701) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1701)
			LuaFnDelAvailableItem(sceneId,selfId,39910018,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 37 then
		c0 = GetItemCount(sceneId, selfId, 10156108)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910019)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1702) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1702)
			LuaFnDelAvailableItem(sceneId,selfId,39910019,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 38 then
		c0 = GetItemCount(sceneId, selfId, 10156109)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910020)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1703) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1703)
			LuaFnDelAvailableItem(sceneId,selfId,39910020,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 39 then
		c0 = GetItemCount(sceneId, selfId, 10156110)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910021)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1704) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1700) > 0  then
			   DelSkill(sceneId, selfId, 1700)
		      end
			AddSkill(  sceneId, selfId, 1704)
			LuaFnDelAvailableItem(sceneId,selfId,39910021,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 40 then
		c0 = GetItemCount(sceneId, selfId, 10156111)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910022)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1705) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1701) > 0  then
			   DelSkill(sceneId, selfId, 1701)
		      end
			AddSkill(  sceneId, selfId, 1705)
			LuaFnDelAvailableItem(sceneId,selfId,39910022,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 41 then
		c0 = GetItemCount(sceneId, selfId, 10156112)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910023)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1706) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   DelSkill(sceneId, selfId, 1702)
		      end
			AddSkill(  sceneId, selfId, 1706)
			LuaFnDelAvailableItem(sceneId,selfId,39910023,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 42 then
		c0 = GetItemCount(sceneId, selfId, 10156113)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910024)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1707) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1703) > 0  then
			   DelSkill(sceneId, selfId, 1703)
		      end
			AddSkill(  sceneId, selfId, 1707)
			LuaFnDelAvailableItem(sceneId,selfId,39910024,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 43 then
		c0 = GetItemCount(sceneId, selfId, 10156114)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910025)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1708) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1704) > 0  then
			   DelSkill(sceneId, selfId, 1704)
		      end
			AddSkill(  sceneId, selfId, 1708)
			LuaFnDelAvailableItem(sceneId,selfId,39910025,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 44 then
		c0 = GetItemCount(sceneId, selfId, 10156115)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910026)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1709) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1705) > 0  then
			   DelSkill(sceneId, selfId, 1705)
		      end
			AddSkill(  sceneId, selfId, 1709)
			LuaFnDelAvailableItem(sceneId,selfId,39910026,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 45 then
		c0 = GetItemCount(sceneId, selfId, 10156116)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910027)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1710) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1706) > 0  then
			   DelSkill(sceneId, selfId, 1706)
		      end
			AddSkill(  sceneId, selfId, 1710)
			LuaFnDelAvailableItem(sceneId,selfId,39910027,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 46 then
		c0 = GetItemCount(sceneId, selfId, 10156117)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910028)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1711) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1707) > 0  then
			   DelSkill(sceneId, selfId, 1707)
		      end
			AddSkill(  sceneId, selfId, 1711)
			LuaFnDelAvailableItem(sceneId,selfId,39910028,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有1级或1级以上的武魂才能领悟技能哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 47 then
		c0 = GetItemCount(sceneId, selfId, 10156102)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25000, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 48 then
		c0 = GetItemCount(sceneId, selfId, 10156103)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25001, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 49 then
		c0 = GetItemCount(sceneId, selfId, 10156104)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25002, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 50 then
		c0 = GetItemCount(sceneId, selfId, 10156105)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25003, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 51 then
		c0 = GetItemCount(sceneId, selfId, 10156106)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25008, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 52 then
		c0 = GetItemCount(sceneId, selfId, 10156107)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25009, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 53 then
		c0 = GetItemCount(sceneId, selfId, 10156108)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25010, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 54 then
		c0 = GetItemCount(sceneId, selfId, 10156109)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25011, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 55 then
		c0 = GetItemCount(sceneId, selfId, 10156110)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25016, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 56 then
		c0 = GetItemCount(sceneId, selfId, 10156111)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25017, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 57 then
		c0 = GetItemCount(sceneId, selfId, 10156112)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25018, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 58 then
		c0 = GetItemCount(sceneId, selfId, 10156113)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25019, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 59 then
		c0 = GetItemCount(sceneId, selfId, 10156114)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25024, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 60 then
		c0 = GetItemCount(sceneId, selfId, 10156115)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25025, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 61 then
		c0 = GetItemCount(sceneId, selfId, 10156116)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25026, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 62 then
		c0 = GetItemCount(sceneId, selfId, 10156117)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25027, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x892000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x892000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			x892000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x892000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x892000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x892000_OnDie( sceneId, selfId, killerId )
end




--**********************************
--判断是否能够学习
--nSkillIndex参数可能值为：40，70，90，分别学习对应级别的技能
--**********************************
function x892000_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
	if (nSkillIndex ~= 40 and nSkillIndex ~= 70 and nSkillIndex ~= 90) then
		return 0;
	end
	
	--判断玩家等级是否够了
	local strNotice = "";
	local nLevel = GetLevel(sceneId, selfId);
	if ( nLevel < nSkillIndex) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_24}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_27}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_29}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--判断是否已经学会了对应技能
	if  (HaveSkill(sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--判断玩家身上是否有足够的钱
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892000_g_DarkSkillName[nSkillIndex].needmoney) then    --10金
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--玩家找NPC学习暗器使用技能
--nSkillIndex参数可能值为：40，70，90，分别学习对应级别的技能
--**********************************
function x892000_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
	if (nSkillIndex ~= 40 and nSkillIndex ~= 70 and nSkillIndex ~= 90) then
		return
	end
	
	--判断玩家等级是否够了
	local strNotice = "";
	local nLevel = GetLevel(sceneId, selfId);
	if ( nLevel < nSkillIndex) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_24}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_27}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_29}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--判断是否已经学会了对应技能
	if  (HaveSkill(sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--判断玩家身上是否有足够的钱
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892000_g_DarkSkillName[nSkillIndex].needmoney) then    --10金
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--上面判断都通过，可以扣钱给技能了
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].id)
	x892000_ShowNotice(sceneId, selfId, targetId, x892000_g_DarkSkillTips[nSkillIndex]);
	x892000_NotifyTips( sceneId, selfId, x892000_g_DarkSkillTips[nSkillIndex] )
	
	x892000_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --让技能按钮闪烁
	
end


--**********************************
-- 屏幕中间信息提示
--**********************************
function x892000_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--玩家是否满足暗器瓶颈条件
--返回值：0或者1，1为满足，0
--**********************************
function x892000_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--判断玩家身上是否装备有暗器
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--判断玩家身上暗器是否达到瓶颈
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--判断玩家等级是否和暗器等级相等或者没有暗器等级高
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--判断玩家身上是否有足够的钱
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892000_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --以防万一，并没什么用
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10金
			strNotice = "#{FBSJ_081209_25}";
			x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892000_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--判断玩家身上是否装备有暗器
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--判断玩家身上暗器是否达到瓶颈
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--判断玩家等级是否和暗器等级相等或者没有暗器等级高
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--判断玩家身上是否有足够的钱
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892000_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --以防万一，并没什么用
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10金
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--上面判断都通过，可以扣钱突破了
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--突破瓶颈，让暗器升级
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892000_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--突破成功，记录统计日志
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892000_ShowNotice(sceneId, selfId, targetId, "突破失败");
	end
	
	return
end

function x892000_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892000_StudySkillImpact(sceneId, playerId)
	--显示学习到新技能的特效 目前使用升级特效
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end

function x892000_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
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