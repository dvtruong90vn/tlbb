--洛阳NPC
--燕青
--普通

--脚本号
x892022_g_ScriptId = 892022

--所拥有的事件ID列表
x892022_g_eventList={}

x892022_g_strGongGaoInfo = {
  "#{_INFOUSR%s}#H经过一番努力，终于收集全了合成武魂装备需要的物品。#Y李沧海#W特赠送给其一个#{_INFOMSG%s}！", 
  "#{_INFOUSR%s} #cff99cc为#Y李沧海#cff99cc找齐了#Y灵魂装备精华#cff99cc，灵魂装备使者献上#{_INFOMSG%s}作为感谢！", 
  "#{_INFOUSR%s}#H在#Y李沧海处进行#R武魂装备#I的升级中，一路过关斩将，不愧是功夫不负有心人,特赠与#{_INFOMSG%s}！",
  "#{_INFOUSR%s}#H经过不懈努力收集齐了#R武魂装备升级#I的所有物品，获得#W#{_INFOMSG%s}#H，真是令人羡慕啊！", 
}

--**********************************
--事件列表
--**********************************
function x892022_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "姑娘"
	else
		PlayerSex = "少侠"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"师兄曾与我相约退隐江湖，隐居无量山中。岂料丁春秋毒害师兄将他退下悬崖，如今不知生死...")
		AddText(sceneId,"您好"..PlayerSex.."，你如何持有御瑶盘？是不是师兄还活着？请告知小女子，我将协助你历练御瑶盘之法。")
		for i, eventId in x892022_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892022_g_ScriptId,"历练武魂进阶等级",6,7)
		AddNumText(sceneId,x892022_g_ScriptId,"学习进阶扩展技能",6,8)
		AddNumText(sceneId,x892022_g_ScriptId,"武魂扩展技能升级",6,9)
		AddNumText(sceneId,x892022_g_ScriptId,"武魂说明",8,888)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x892022_OnDefaultEvent( sceneId, selfId,targetId )
	x892022_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x892022_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892022_g_eventList do
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
			AddNumText(sceneId,x892022_g_ScriptId,"武魂来由",6,666)
			AddNumText(sceneId,x892022_g_ScriptId,"怎样获得武魂",6,667)
			AddNumText(sceneId,x892022_g_ScriptId,"武魂怎样升级",6,668)
			AddNumText(sceneId,x892022_g_ScriptId,"怎样获得武魂相关道具",6,669)
			AddNumText(sceneId,x892022_g_ScriptId,"武魂扩展属性介绍",6,670)
			AddNumText(sceneId,x892022_g_ScriptId,"武魂属相介绍",6,671)
			AddNumText(sceneId,x892022_g_ScriptId,"属相相克效果",6,672)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 666 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_12}")
			AddText(sceneId,"#{WH_NPC_10}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 667 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_12}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 668 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_11}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 669 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_13}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 670 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_14}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 671 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_15}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 672 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_16}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 7 then  --提升武魂等级
		BeginEvent(sceneId)
			AddText(sceneId,"武魂等级需达到3级，才可以历练进阶武魂等级。配合使用魂冰珠和润魂石可将御瑶盘突破至4级，历练成功后，武魂将开辟出#G第二、第三扩展属性#W和#G扩展技能#W，而且扩展属性和扩展技能的效果将随武魂等级提高而提高。")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"历练 御瑶盘·冰",6,12)
			AddNumText(sceneId,x892022_g_ScriptId,"历练 御瑶盘·火",6,13)
			AddNumText(sceneId,x892022_g_ScriptId,"历练 御瑶盘·玄",6,14)
			AddNumText(sceneId,x892022_g_ScriptId,"历练 御瑶盘·毒",6,15)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --领悟技能
		BeginEvent(sceneId)
			AddText(sceneId,"武魂等级为 4 时，可通过相应武魂扩展技能书学习第二扩展技能")
			AddText(sceneId,"武魂等级为 5 时，可通过相应武魂扩展技能书学习第三扩展技能，使用相应技能书升级第二扩展技能")
			AddText(sceneId,"武魂进阶扩展技能随武魂等级的提高而提高。")

			AddNumText(sceneId,x892022_g_ScriptId,"学习武魂（4级）扩展技能",6,16)
			AddNumText(sceneId,x892022_g_ScriptId,"学习武魂（5级）扩展技能",6,17)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --武魂扩展属性
		BeginEvent(sceneId)
			AddText(sceneId,"武魂等级为 4 时，可通过相应武魂扩展技能书学习第二扩展技能")
			AddText(sceneId,"武魂等级为 5 时，可通过相应武魂扩展技能书学习第三扩展技能，使用相应技能书升级第二扩展技能")
			AddText(sceneId,"武魂进阶扩展技能随武魂等级的提高而提高。")
			AddNumText(sceneId,x892022_g_ScriptId,"攻击类技能升级",6,19)
			AddNumText(sceneId,x892022_g_ScriptId,"守护类技能升级",6,20)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 10 then  --重洗暗器技能
		BeginEvent(sceneId)
			AddText(sceneId,"武魂等级需达到3级，才可以历练进阶武魂等级。配合使用魂冰珠和润魂石可将御瑶盘突破至4级，历练成功后，武魂将开辟出#G第二、第三扩展属性#W和#G扩展技能#W，而且扩展属性和扩展技能的效果将随武魂等级提高而提高。")
			AddNumText(sceneId,x892022_g_ScriptId,"获取 武魂（4级）扩展属性",6,21)
			AddNumText(sceneId,x892022_g_ScriptId,"获取 武魂（5级）扩展属性",6,22)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 11 then  --重置暗器
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_84}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --提升 冰 等级
		BeginEvent(sceneId)
			AddText(sceneId,"历练武魂进阶等级，需要配合使用#G3个#W对应等级的#G魂冰珠#W和#Y润魂石。")
			AddText(sceneId,"提升至（4级）需#G3个魂冰珠（4级）#W和#Y润魂石·御。")
			AddText(sceneId,"提升至（5级）需#G3个魂冰珠（5级）#W和#Y润魂石·破。")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"提升至 御瑶盘·冰（4级）",6,23)
			AddNumText(sceneId,x892022_g_ScriptId,"提升至 御瑶盘·冰（5级）",6,24)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 13 then                   --提升 火 等级
		BeginEvent(sceneId)
			AddText(sceneId,"历练武魂进阶等级，需要配合使用#G3个#W对应等级的#G魂冰珠#W和#Y润魂石。")
			AddText(sceneId,"提升至（4级）需#G3个魂冰珠（4级）#W和#Y润魂石·御。")
			AddText(sceneId,"提升至（5级）需#G3个魂冰珠（5级）#W和#Y润魂石·破。")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"提升至 御瑶盘·火（4级）",6,25)
			AddNumText(sceneId,x892022_g_ScriptId,"提升至 御瑶盘·火（5级）",6,26)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 14 then
		BeginEvent(sceneId)
			AddText(sceneId,"历练武魂进阶等级，需要配合使用#G3个#W对应等级的#G魂冰珠#W和#Y润魂石。")
			AddText(sceneId,"提升至（4级）需#G3个魂冰珠（4级）#W和#Y润魂石·御。")
			AddText(sceneId,"提升至（5级）需#G3个魂冰珠（5级）#W和#Y润魂石·破。")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"提升至 御瑶盘·玄（4级）",6,27)
			AddNumText(sceneId,x892022_g_ScriptId,"提升至 御瑶盘·玄（5级）",6,28)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 15 then
		BeginEvent(sceneId)
			AddText(sceneId,"历练武魂进阶等级，需要配合使用#G3个#W对应等级的#G魂冰珠#W和#Y润魂石。")
			AddText(sceneId,"提升至（4级）需#G3个魂冰珠（4级）#W和#Y润魂石·御。")
			AddText(sceneId,"提升至（5级）需#G3个魂冰珠（5级）#W和#Y润魂石·破。")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"提升至 御瑶盘·毒（4级）",6,29)
			AddNumText(sceneId,x892022_g_ScriptId,"提升至 御瑶盘·毒（5级）",6,30)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 16 then
		BeginEvent(sceneId)
			AddText(sceneId,"武魂等级为 4 时，可通过相应武魂扩展技能书学习第二扩展技能")
			AddText(sceneId,"武魂等级为 5 时，可通过相应武魂扩展技能书学习第三扩展技能，使用相应技能书升级第二扩展技能")
			AddText(sceneId,"武魂进阶扩展技能随武魂等级的提高而提高。")

			AddNumText(sceneId,x892022_g_ScriptId,"学习 御·盾甲（1级）",6,31)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 17 then
		BeginEvent(sceneId)
			AddText(sceneId,"武魂等级为 4 时，可通过相应武魂扩展技能书学习第二扩展技能")
			AddText(sceneId,"武魂等级为 5 时，可通过相应武魂扩展技能书学习第三扩展技能，使用相应技能书升级第二扩展技能")
			AddText(sceneId,"武魂进阶扩展技能随武魂等级的提高而提高。")

			AddNumText(sceneId,x892022_g_ScriptId,"学习 虚·迟缓（1级）",6,32)
			AddNumText(sceneId,x892022_g_ScriptId,"学习 虚·绵力（1级）",6,33)
			AddNumText(sceneId,x892022_g_ScriptId,"学习 虚·破甲（1级）",6,34)
			AddNumText(sceneId,x892022_g_ScriptId,"学习 虚·化气（1级）",6,35)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 18 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_8}")
			AddNumText(sceneId,x892022_g_ScriptId,"领悟 暴·淬冰",6,43)
			AddNumText(sceneId,x892022_g_ScriptId,"领悟 暴·凛火",6,44)
			AddNumText(sceneId,x892022_g_ScriptId,"领悟 暴·冲玄",6,45)
			AddNumText(sceneId,x892022_g_ScriptId,"领悟 暴·剧毒",6,46)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 19 then
		BeginEvent(sceneId)

			AddText(sceneId,"请选择要升级的武魂技能，要对应相同的武魂属性哦！")
			AddText(sceneId,"武魂等级为 4 时，可通过相应武魂扩展技能书学习第二扩展技能")
			AddText(sceneId,"武魂等级为 5 时，可通过相应武魂扩展技能书学习第三扩展技能，使用相应技能书升级第二扩展技能")
			AddText(sceneId,"武魂进阶扩展技能随武魂等级的提高而提高。")

			AddNumText(sceneId,x892022_g_ScriptId,"升级 落·凝霜（4级）",6,36)
			AddNumText(sceneId,x892022_g_ScriptId,"升级 落·业火（4级）",6,37)
			AddNumText(sceneId,x892022_g_ScriptId,"升级 落·骤雷（4级）",6,38)
			AddNumText(sceneId,x892022_g_ScriptId,"升级 落·噬骨（4级）",6,39)
			AddNumText(sceneId,x892022_g_ScriptId,"升级 灭·凛霜（5级）",6,40)
			AddNumText(sceneId,x892022_g_ScriptId,"升级 灭·地火（5级）",6,41)
			AddNumText(sceneId,x892022_g_ScriptId,"升级 灭·天雷（5级）",6,42)
			AddNumText(sceneId,x892022_g_ScriptId,"升级 灭·鸩毒（5级）",6,43)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 20 then
		BeginEvent(sceneId)

			AddText(sceneId,"武魂等级为 4 时，可通过相应武魂扩展技能书学习第二扩展技能")
			AddText(sceneId,"武魂等级为 5 时，可通过相应武魂扩展技能书学习第三扩展技能，使用相应技能书升级第二扩展技能")
			AddText(sceneId,"武魂进阶扩展技能随武魂等级的提高而提高。")
			AddNumText(sceneId,x892022_g_ScriptId,"升级 御·猬甲（2级）",6,44)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent(sceneId)

			AddText(sceneId,"武魂等级需达到3级，才可以历练进阶武魂等级。配合使用魂冰珠和润魂石可将御瑶盘突破至4级，历练成功后，武魂将开辟出#G第二、第三扩展属性#W和#G扩展技能#W，而且扩展属性和扩展技能的效果将随武魂等级提高而提高。")
			AddNumText(sceneId,x892022_g_ScriptId,"武魂4级（冰属相）扩展属性",6,45)
			AddNumText(sceneId,x892022_g_ScriptId,"武魂4级（火属相）扩展属性",6,46)
			AddNumText(sceneId,x892022_g_ScriptId,"武魂4级（玄属相）扩展属性",6,47)
			AddNumText(sceneId,x892022_g_ScriptId,"武魂4级（毒属相）扩展属性",6,48)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent(sceneId)

			AddText(sceneId,"武魂等级需达到3级，才可以历练进阶武魂等级。配合使用魂冰珠和润魂石可将御瑶盘突破至4级，历练成功后，武魂将开辟出#G第二、第三扩展属性#W和#G扩展技能#W，而且扩展属性和扩展技能的效果将随武魂等级提高而提高。")
			AddNumText(sceneId,x892022_g_ScriptId,"武魂5级（冰属相）扩展属性",6,49)
			AddNumText(sceneId,x892022_g_ScriptId,"武魂5级（火属相）扩展属性",6,50)
			AddNumText(sceneId,x892022_g_ScriptId,"武魂5级（玄属相）扩展属性",6,51)
			AddNumText(sceneId,x892022_g_ScriptId,"武魂5级（毒属相）扩展属性",6,52)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 23 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156114)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156114,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156118, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂、魂冰珠和润魂石·御是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 24 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156118)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156118,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156122, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂、魂冰珠和润魂石·破是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 25 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156115)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156115,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156119, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂、魂冰珠和润魂石·御是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 26 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156119)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156119,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156123, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂、魂冰珠和润魂石·破是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 27 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156116)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156116,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156120, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂、魂冰珠和润魂石·御是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 28 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156120)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156120,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156124, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂、魂冰珠和润魂石·破是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 29 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156117)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156117,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156121, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂、魂冰珠和润魂石·御是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 30 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156121)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156121,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156125, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G恭喜你，武魂升级成功！"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G请检查您包裹的武魂、魂冰珠和润魂石·破是否齐全，要材料想对应放在包裹内才可以升级哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 31 then
		c0 = GetItemCount(sceneId, selfId, 10156118)
		c1 = GetItemCount(sceneId, selfId, 10156119)
		c2 = GetItemCount(sceneId, selfId, 10156120)
		c3 = GetItemCount(sceneId, selfId, 10156121)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910029)
		      if  c4 < 1  then
		          strNotice = "#Y您没有携带武魂技能书，不能学习，请检查包裹！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1720) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1720)
			LuaFnDelAvailableItem(sceneId,selfId,39910029,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有4级或4级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 32 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910030)
		      if  c4 < 1  then
		          strNotice = "#Y您没有携带武魂技能书，不能学习，请检查包裹！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1722) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1722)
			LuaFnDelAvailableItem(sceneId,selfId,39910030,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有5级或5级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 33 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910031)
		      if  c4 < 1  then
		          strNotice = "#Y您没有携带武魂技能书，不能学习，请检查包裹！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1723) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1723)
			LuaFnDelAvailableItem(sceneId,selfId,39910031,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有5级或5级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 34 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910032)
		      if  c4 < 1  then
		          strNotice = "#Y您没有携带武魂技能书，不能学习，请检查包裹！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1724) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1724)
			LuaFnDelAvailableItem(sceneId,selfId,39910032,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有5级或5级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 35 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910033)
		      if  c4 < 1  then
		          strNotice = "#Y您没有携带武魂技能书，不能学习，请检查包裹！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1725) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1725)
			LuaFnDelAvailableItem(sceneId,selfId,39910033,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有5级或5级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 36 then
		c0 = GetItemCount(sceneId, selfId, 10156118)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910041)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1712) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1708) > 0  then
			   DelSkill(sceneId, selfId, 1708)
		      end
			AddSkill(  sceneId, selfId, 1712)
			LuaFnDelAvailableItem(sceneId,selfId,39910041,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有4级或4级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 37 then
		c0 = GetItemCount(sceneId, selfId, 10156119)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910042)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1713) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1709) > 0  then
			   DelSkill(sceneId, selfId, 1709)
		      end
			AddSkill(  sceneId, selfId, 1713)
			LuaFnDelAvailableItem(sceneId,selfId,39910042,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有4级或4级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 38 then
		c0 = GetItemCount(sceneId, selfId, 10156120)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910043)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1714) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1710) > 0  then
			   DelSkill(sceneId, selfId, 1710)
		      end
			AddSkill(  sceneId, selfId, 1714)
			LuaFnDelAvailableItem(sceneId,selfId,39910043,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有4级或4级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 39 then
		c0 = GetItemCount(sceneId, selfId, 10156121)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910044)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1715) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1711) > 0  then
			   DelSkill(sceneId, selfId, 1711)
		      end
			AddSkill(  sceneId, selfId, 1715)
			LuaFnDelAvailableItem(sceneId,selfId,39910044,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有4级或4级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 40 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910045)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1716) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1712) > 0  then
			   DelSkill(sceneId, selfId, 1712)
		      end
			AddSkill(  sceneId, selfId, 1716)
			LuaFnDelAvailableItem(sceneId,selfId,39910045,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有5级或5级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 41 then
		c0 = GetItemCount(sceneId, selfId, 10156123)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910046)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1717) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1713) > 0  then
			   DelSkill(sceneId, selfId, 1713)
		      end
			AddSkill(  sceneId, selfId, 1717)
			LuaFnDelAvailableItem(sceneId,selfId,39910046,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有5级或5级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 42 then
		c0 = GetItemCount(sceneId, selfId, 10156124)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910047)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1718) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1714) > 0  then
			   DelSkill(sceneId, selfId, 1714)
		      end
			AddSkill(  sceneId, selfId, 1718)
			LuaFnDelAvailableItem(sceneId,selfId,39910047,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有5级或5级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 43 then
		c0 = GetItemCount(sceneId, selfId, 10156125)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910048)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1719) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1715) > 0  then
			   DelSkill(sceneId, selfId, 1715)
		      end
			AddSkill(  sceneId, selfId, 1719)
			LuaFnDelAvailableItem(sceneId,selfId,39910048,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂和技能书，只有5级或5级以上的武魂才能领悟此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 44 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910040)
		      if  c4 < 1  then
		          strNotice = "#Y您没有携带武魂技能书，不能学习，请检查包裹！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1721) > 0  then
		          strNotice = "#Y您已经学习过此技能，请不要重复学习！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1720) <= 0  then
		          strNotice = "#Y您必须先学习 御·盾甲 ，才能升级此技能！！"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1720) > 0  then
			   DelSkill(sceneId, selfId, 1720)
		      end
			AddSkill(  sceneId, selfId, 1721)
			LuaFnDelAvailableItem(sceneId,selfId,39910040,1)--删除物品
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂技能领悟成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有5级或5级以上的武魂才能升级此技能哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 45 then
		c0 = GetItemCount(sceneId, selfId, 10156118)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25032, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 46 then
		c0 = GetItemCount(sceneId, selfId, 10156119)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25033, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 47 then
		c0 = GetItemCount(sceneId, selfId, 10156120)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25034, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 48 then
		c0 = GetItemCount(sceneId, selfId, 10156121)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25035, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 49 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25040, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 50 then
		c0 = GetItemCount(sceneId, selfId, 10156123)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25041, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 51 then
		c0 = GetItemCount(sceneId, selfId, 10156124)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25042, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 52 then
		c0 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25043, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G恭喜你，武魂扩展属性领取成功！"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "请检查您包裹是否携带有对应的武魂，只有携带对应的武魂才能领取武魂扩展属性哦！！"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x892022_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892022_g_eventList do
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
function x892022_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x892022_g_eventList do
		if missionScriptId == findId then
			x892022_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x892022_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892022_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x892022_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892022_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x892022_OnDie( sceneId, selfId, killerId )
end




--**********************************
--判断是否能够学习
--nSkillIndex参数可能值为：40，70，90，分别学习对应级别的技能
--**********************************
function x892022_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--判断是否已经学会了对应技能
	if  (HaveSkill(sceneId, selfId, x892022_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--判断玩家身上是否有足够的钱
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892022_g_DarkSkillName[nSkillIndex].needmoney) then    --10金
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--玩家找NPC学习暗器使用技能
--nSkillIndex参数可能值为：40，70，90，分别学习对应级别的技能
--**********************************
function x892022_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--判断是否已经学会了对应技能
	if  (HaveSkill(sceneId, selfId, x892022_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--判断玩家身上是否有足够的钱
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892022_g_DarkSkillName[nSkillIndex].needmoney) then    --10金
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--上面判断都通过，可以扣钱给技能了
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892022_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892022_g_DarkSkillName[nSkillIndex].id)
	x892022_ShowNotice(sceneId, selfId, targetId, x892022_g_DarkSkillTips[nSkillIndex]);
	x892022_NotifyTips( sceneId, selfId, x892022_g_DarkSkillTips[nSkillIndex] )
	
	x892022_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --让技能按钮闪烁
	
end


--**********************************
-- 屏幕中间信息提示
--**********************************
function x892022_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--玩家是否满足暗器瓶颈条件
--返回值：0或者1，1为满足，0
--**********************************
function x892022_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--判断玩家身上是否装备有暗器
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--判断玩家身上暗器是否达到瓶颈
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--判断玩家等级是否和暗器等级相等或者没有暗器等级高
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--判断玩家身上是否有足够的钱
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892022_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --以防万一，并没什么用
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10金
			strNotice = "#{FBSJ_081209_25}";
			x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892022_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--判断玩家身上是否装备有暗器
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--判断玩家身上暗器是否达到瓶颈
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--判断玩家等级是否和暗器等级相等或者没有暗器等级高
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--判断玩家身上是否有足够的钱
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892022_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --以防万一，并没什么用
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10金
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--上面判断都通过，可以扣钱突破了
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--突破瓶颈，让暗器升级
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892022_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--突破成功，记录统计日志
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892022_ShowNotice(sceneId, selfId, targetId, "突破失败");
	end
	
	return
end

function x892022_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892022_StudySkillImpact(sceneId, playerId)
	--显示学习到新技能的特效 目前使用升级特效
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end

function x892022_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
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