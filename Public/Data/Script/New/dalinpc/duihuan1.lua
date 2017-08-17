--洛阳NPC
--抽奖
--普通
x990002_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于收集了足够的润魂石，突然乌云密布天空一声巨响#{_INFOMSG%s}领悟技能成功！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于收集了足够的润魂石，突然乌云密布天空一声巨响#{_INFOMSG%s}领悟技能成功！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于收集了足够的润魂石，突然乌云密布天空一声巨响#{_INFOMSG%s}领悟技能成功！", 
  "#e6f00c7#b#{_INFOUSR%s}#H经过一番努力，终于收集了足够的润魂石，突然乌云密布天空一声巨响#{_INFOMSG%s}领悟技能成功！", 
}
--**********************************
--事件交互入口
--**********************************
function x990002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#b#gfffc3c武魂升级平台,愿您炼出高等武魂！" )
		AddText( sceneId, "#G（#cFF0000使用本平台功能每次必须交纳20个润魂石#G）" )
		AddNumText( sceneId, x990002_g_ScriptId, "#G（#cFF0000领悟技能#G）", 10, 101 )
              AddNumText( sceneId, x990002_g_ScriptId, "#G（#cFF0000领悟护体#G）", 10, 102 )
		AddNumText( sceneId, x990002_g_ScriptId, "#G（#cFF0000领悟减抗#G）", 10, 103 )
		AddNumText( sceneId, x990002_g_ScriptId, "#G（#cFF0000评估属性#G）", 10, 104 )
              AddNumText( sceneId, x990002_g_ScriptId, "#G（#cFF0000技能重领#G）", 10, 105 )
		AddNumText( sceneId, x990002_g_ScriptId, "下次再来", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件列表选中一项
--**********************************
function x990002_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "领悟技能需要消耗：" )
		      AddText( sceneId, "#G相对应的80级武魂#W1#G件" )
		      AddText( sceneId, "#cff99ff润魂石#W20#cff99ff个" )
		      AddText( sceneId, "#G你确定要升级吗？" )
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[毒]#G", 10, 1011)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[火]#G", 10, 1012)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[冰]#G", 10, 1013)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[玄]#G", 10, 1014)
			AddNumText( sceneId, x990002_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId0 = 10156001
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156001,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156006, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                   AddSkill( sceneId, selfId, 1613 )
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1012 then
	       	local nStoneId0 = 10156002
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156002,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156007, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					AddSkill( sceneId, selfId, 1601 )
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1013 then
	       	local nStoneId0 = 10156003
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156003,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156008, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					AddSkill( sceneId, selfId, 1595 )
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1014 then
	       	local nStoneId0 = 10156004
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156004,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156009, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					AddSkill( sceneId, selfId, 1607 )
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "领悟护体需要消耗：" )
		      AddText( sceneId, "#G相对应的102级武魂#W1#G件" )
		      AddText( sceneId, "#cff99ff润魂石#W20#cff99ff个" )
		      AddText( sceneId, "#G你确定要升级吗？" )
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[毒]#G", 10, 1021)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[火]#G", 10, 1022)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[冰]#G", 10, 1023)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[玄]#G", 10, 1024)
			AddNumText( sceneId, x990002_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
	       	local nStoneId0 = 10156006
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156006,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156010, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1613 )
                                  AddSkill( sceneId, selfId, 277 )
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1022 then
	       	local nStoneId0 = 10156007
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156007,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156011, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1601 )
                                  AddSkill( sceneId, selfId, 277 )
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1023 then
	       	local nStoneId0 = 10156008
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156008,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156012, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1595 )
                                  AddSkill( sceneId, selfId, 277 )
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1024 then
	       	local nStoneId0 = 10156009
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156009,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156013, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1607 )
                                  AddSkill( sceneId, selfId, 277 )
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

  elseif GetNumText() == 103 then
		BeginEvent( sceneId )
		      AddText( sceneId, "领悟减抗需要消耗：" )
		      AddText( sceneId, "#G相对应的112级武魂#W1#G件" )
		      AddText( sceneId, "#cff99ff润魂石#W20#cff99ff个" )
		      AddText( sceneId, "#G你确定要升级吗？" )
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[毒]#G", 10, 1031)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[火]#G", 10, 1032)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[冰]#G", 10, 1033)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[玄]#G", 10, 1034)
			AddNumText( sceneId, x990002_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1031 then
	       	local nStoneId0 = 10156010
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156010,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156014, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1613 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5988, 0 )	
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1032 then
	       	local nStoneId0 = 10156011
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156011,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156015, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1601 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5986, 0 )	
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1033 then
	       	local nStoneId0 = 10156012
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156012,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156016, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1595 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5985, 0 )	
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1034 then
	       	local nStoneId0 = 10156013
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156013,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156017, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1607 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5987, 0 )	
					strText = "#G恭喜你，武魂领悟技能成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 104 then
		BeginEvent( sceneId )
		      AddText( sceneId, "重新评估需要消耗：" )
		      AddText( sceneId, "#G相对应的120级武魂#W1#G件" )
		      AddText( sceneId, "#cff99ff润魂石#W20#cff99ff个" )
		      AddText( sceneId, "#G你确定要升级吗？" )
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[毒]#G", 10, 1041)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[火]#G", 10, 1042)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[冰]#G", 10, 1043)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[玄]#G", 10, 1044)
			AddNumText( sceneId, x990002_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1041 then
	       	local nStoneId0 = 10156014
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156014,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156014, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1613 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5988, 0 )	
					strText = "#G恭喜你，重新评估武魂成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1042 then
	       	local nStoneId0 = 10156015
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156015,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156015, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1601 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5986, 0 )	
					strText = "#G恭喜你，重新评估武魂成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1043 then
	       	local nStoneId0 = 10156016
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156016,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156016, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1595 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5985, 0 )	
					strText = "#G恭喜你，重新评估武魂成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1044 then
	       	local nStoneId0 = 10156017
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156017,1)--删除物品
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--删除物品
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156017, 1)--给予物品
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1607 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5987, 0 )	
					strText = "#G恭喜你，重新评估武魂成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G你的材料不够，请去收集足够的润魂石再来把！！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 105 then
		BeginEvent( sceneId )
		      AddText( sceneId, "技能重领需要消耗：" )
		      AddText( sceneId, "#G相对应的120级武魂#W1#G件" )
		      AddText( sceneId, "#G请选者你要重领技能的武魂" )
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[毒]#G", 10, 1051)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[火]#G", 10, 1052)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[冰]#G", 10, 1053)
			AddNumText( sceneId, x990002_g_scriptId, "#御窑盘[玄]#G", 10, 1054)
			AddNumText( sceneId, x990002_g_scriptId, "取消", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1051 then
	       	local nStoneId0 = 10156014
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1 then
				BeginEvent( sceneId ) 
                                  AddSkill( sceneId, selfId, 1613 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5988, 0 )	
					strText = "#G恭喜你，技能重新成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G这个武魂你是没有的哦！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1052 then
	       	local nStoneId0 = 10156015
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1 then
				BeginEvent( sceneId ) 
                                  AddSkill( sceneId, selfId, 1601 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5986, 0 )	
					strText = "#G恭喜你，技能重新成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G这个武魂你是没有的哦！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1053 then
	       	local nStoneId0 = 10156016
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1 then
				BeginEvent( sceneId ) 
                                  AddSkill( sceneId, selfId, 1595 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5985, 0 )	
					strText = "#G恭喜你，技能重新成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G这个武魂你是没有的哦！"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1054 then
	       	local nStoneId0 = 10156017
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1 then
				BeginEvent( sceneId ) 
                                  AddSkill( sceneId, selfId, 1607 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5987, 0 )	
					strText = "#G恭喜你，技能重新成功！"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G这个武魂你是没有的哦！"
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
function x990002_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x990002_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x990002_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x990002_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x990002_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x990002_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x990002_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
