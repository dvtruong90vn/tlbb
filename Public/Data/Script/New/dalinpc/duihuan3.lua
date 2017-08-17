-- 990004 套装兑换NPC


--脚本号
x990004_g_ScriptId = 990004

--所拥有的事件ID列表
x990004_g_eventList={}

x990004_g_EquipList={	
-- 重楼戒
{n=110,id=10422016},

-- 重楼玉
{n=120,id=10423024},

-- 轮回
{n=130,id=40004431},

-- 特殊道具
{n=410,id=10433411},{n=411,id=10433412},{n=412,id=10433413},{n=413,id=10433414},{n=414,id=10433415},
{n=415,id=10433416},{n=416,id=10433417},{n=417,id=10433418},{n=418,id=10433419},{n=419,id=10433420},

-- 85级秦皇套
{n=510,id=10400075},{n=511,id=10402075},{n=512,id=10404072},{n=513,id=10405071},{n=514,id=10412081},
{n=515,id=10412083},{n=516,id=10413084},{n=517,id=10413086},{n=518,id=10422122},{n=519,id=10422124},
{n=520,id=10423047},{n=521,id=10423049},

--杀神套
{n=610,id=10433421},{n=620,id=10433422},{n=630,id=10433423},{n=640,id=10433424},{n=650,id=10433425},
{n=660,id=10433426},{n=670,id=10433427},{n=680,id=10433428},{n=690,id=10433429},{n=699,id=10433430},

--六界神兵
{n=711,id=10433306},{n=712,id=10433321},{n=713,id=10433336},{n=714,id=10433345},{n=715,id=10433327},
{n=721,id=10433307},{n=722,id=10433322},{n=723,id=10433337},{n=724,id=10433328},{n=725,id=10433346}, 
{n=731,id=10433309},{n=732,id=10433324},{n=733,id=10433339},{n=734,id=10433348},{n=735,id=10433330},
{n=741,id=10433308},{n=742,id=10433323},{n=743,id=10433338},{n=744,id=10433347},{n=745,id=10433329},
{n=751,id=10433305},{n=752,id=10433320},{n=753,id=10433335},{n=754,id=10433344},{n=755,id=10433326},
{n=761,id=10433304},{n=762,id=10433319},{n=763,id=10433334},{n=764,id=10433343},{n=765,id=10433325},

}

x990004_g_StoneList={
-- 重楼之泪
{n=1,id=30505157,num=50,str="重楼之泪"},
-- 重楼之芒
{n=2,id=30505158,num=50,str="重楼之芒"},
-- 玄昊玉
{n=3,id=20310020,num=20,str="玄昊玉"},
-- 玄昊玉
{n=4,id=20310020,num=100,str="玄昊玉"},
-- 秦皇珠
{n=5,id=20310004,num=150,str="秦皇珠"},
-- 灵珠碎片
{n=6,id=30505090,num=50,str="灵珠碎片"},
-- 人魂
{n=7,id=30505085,num=50,str="人魂"},
-- 鬼精
{n=8,id=30505086,num=50,str="鬼精"},
-- 仙缨
{n=9,id=30505087,num=100,str="仙缨"},
-- 妖丹
{n=10,id=30505088,num=50,str="妖丹"},
-- 神魄
{n=11,id=30505089,num=50,str="神魄"},
-- 魔性
{n=12,id=30505091,num=50,str="魔性"},
--狂云套
{n=13,id=10433411,num=5,str="狂云#Y头盔"},
{n=14,id=10433412,num=5,str="狂云#Y战靴"},
{n=15,id=10433413,num=5,str="狂云#Y战手"},
{n=16,id=10433414,num=5,str="狂云#Y战甲"},
{n=17,id=10433415,num=5,str="狂云#Y守护"},
{n=18,id=10433416,num=5,str="狂云#Y之恋"},
{n=19,id=10433417,num=5,str="狂云#Y束带"},
{n=20,id=10433418,num=5,str="狂云#Y之泪"},
{n=21,id=10433419,num=5,str="狂云#Y虎符"},
{n=22,id=10433420,num=5,str="狂云#Y战镯"},
}

--**********************************
--事件列表
--**********************************
function x990004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #gFF3E96新手装备合成系统")
		for i, eventId in x990004_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		--AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵说明", 6, 99 )
		--AddNumText( sceneId, x990004_g_ScriptId, "#gFF8C00兑换重楼", 3, 100 )
		--AddNumText( sceneId, x990004_g_ScriptId, "#gFF8C00重楼特效", 3, 200 )
		--AddNumText( sceneId, x990004_g_ScriptId, "#gFF8C00会员套装", 3, 300 )
		AddNumText( sceneId, x990004_g_ScriptId, "狂云套合成杀神套", 1, 600 )
		--AddNumText( sceneId, x990004_g_ScriptId, "炼化六界神兵", 1, 700 )
		--AddNumText( sceneId, x990004_g_ScriptId, "#gFF6A6A领取盟主腰带", 3, 800 )
		AddNumText( sceneId, x990004_g_ScriptId, "离开……", 13, 0 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x990004_OnDefaultEvent( sceneId, selfId,targetId )
	x990004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x990004_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()
	if nNumText == 0  then
		-- 关闭窗口
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	if nNumText == 99 then
		BeginEvent(sceneId)
			AddText(sceneId, "  炼化神兵说明：精魄各大副本，BOSS爆出，神界附加冰咒攻击，鬼界附加火咒攻击，魔界附加雷咒攻击，妖界附加失明技能，仙界附加提升自身攻击并麻痹效果，人界附加石化技能（石化后不可被攻击）！符咒攻击触发几率20%，失明、石化几率2%，请看清作用后选择炼化。神兵炼化只在合区后1小时内开放兑换")		
	end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	if nNumText == 100 or nNumText == 200 or nNumText == 300 or nNumText == 400 or nNumText == 500 or nNumText == 600 or nNumText == 700 or nNumText == 710 or nNumText == 720 or nNumText == 730 or nNumText == 740 or nNumText == 750 or nNumText == 760 then
		BeginEvent(sceneId)
			AddText(sceneId, "  请选择一下你要兑的具体部位")
			if nNumText == 100 then
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96兑换重楼戒", 1, nNumText+10)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96兑换重楼玉", 1, nNumText+20)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96兑换轮回神符", 1, nNumText+30)
			end
			if nNumText == 200 then
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96重楼戒状态", 4, nNumText+10)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96重楼玉状态", 4, nNumText+11)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96飞羽箭状态", 4, nNumText+12)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96爱之吻状态", 4, nNumText+13)
                    AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96真重楼玉状态", 4, nNumText+14)
                    AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96新《重楼戒》状态", 4, nNumText+15)
                    AddNumText(sceneId, x990004_g_ScriptId, "#gFF3E96新《重楼玉》状态", 4, nNumText+16)
			end
			if nNumText == 300 then
   			AddNumText( sceneId, x990004_g_ScriptId, "#gFF3E96兑换特殊道具", 1, 400)
			--AddNumText( sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂套装【85级】", 1, 500)
			end
			if nNumText == 400 then
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y头盔", 1, nNumText+10)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y战靴", 1, nNumText+11)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y战手", 1, nNumText+12)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y战甲", 1, nNumText+13)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y守护", 1, nNumText+14)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y之恋", 1, nNumText+15)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y束带", 1, nNumText+16)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y之泪", 1, nNumText+17)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y虎符", 1, nNumText+18)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换#ccc33cc狂云#Y战镯", 1, nNumText+19)
			end
			if nNumText == 500 then
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·末日【刀斧】", 1, nNumText+10)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·血夜【单短】", 1, nNumText+11)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·纵横【扇】", 1, nNumText+12)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·骊恨【环】", 1, nNumText+13)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·隐【手套】", 1, nNumText+14)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·破【手套】", 1, nNumText+15)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·空【衣服】", 1, nNumText+16)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·殇【衣服】", 1, nNumText+17)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·幻【戒指】", 1, nNumText+18)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·离【戒指】", 1, nNumText+19)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·陌【护符】", 1, nNumText+20)
			AddNumText(sceneId, x990004_g_ScriptId, "#gFF6A6A#G兑换秦魂·残【护符】", 1, nNumText+21)
			end				
			if nNumText == 600 then
   		AddNumText( sceneId, x990004_g_ScriptId, "狂云头盔合成杀神头盔", 1, nNumText+10)
			AddNumText( sceneId, x990004_g_ScriptId, "狂云战靴合成杀神战靴", 1, nNumText+20)
			AddNumText( sceneId, x990004_g_ScriptId, "狂云战手合成杀神战手", 1, nNumText+30)
			AddNumText( sceneId, x990004_g_ScriptId, "狂云战甲合成杀神战甲", 1, nNumText+40)
			AddNumText( sceneId, x990004_g_ScriptId, "狂云守护合成杀神守护", 1, nNumText+50)
			AddNumText( sceneId, x990004_g_ScriptId, "狂云之恋合成杀神之恋", 1, nNumText+60)
      AddNumText( sceneId, x990004_g_ScriptId, "狂云束带合成杀神腰带", 1, nNumText+70)
			AddNumText( sceneId, x990004_g_ScriptId, "狂云之泪合成杀神之泪", 1, nNumText+80)
			AddNumText( sceneId, x990004_g_ScriptId, "狂云虎符合成杀神虎符", 1, nNumText+90)
			AddNumText( sceneId, x990004_g_ScriptId, "狂云战镯合成杀神战镯", 1, nNumText+99)
			end
			if nNumText == 700 then
   			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·人界神兵", 1, 710)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·鬼界神兵", 1, 720)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·妖界神兵", 1, 730)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·仙界神兵", 1, 740)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·神界神兵", 1, 750)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·魔界神兵", 1, 760)
			end	
			if nNumText == 710 then      -- 人界 
   			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·惊邪【土】", 1, nNumText+1)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·太虚【土】", 1, nNumText+2)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·神农【土】", 1, nNumText+3)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·执念【土】", 1, nNumText+4)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·盘古【土】", 1, nNumText+5)
			end	
			if nNumText == 720 then      -- 鬼界 
      		AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·焰影【火】", 1, nNumText+1)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·裂天【火】", 1, nNumText+2)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·疚疯【火】", 1, nNumText+3)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·阴阳【火】", 1, nNumText+4)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·虚无【火】", 1, nNumText+5)
			end	
			if nNumText == 730 then      -- 仙界 
      		AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·玄天【圣】", 1, nNumText+1)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·混元【圣】", 1, nNumText+2)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·紫电【圣】", 1, nNumText+3)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·乾坤【圣】", 1, nNumText+4)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·太极【圣】", 1, nNumText+5)
			end	
			if nNumText == 740 then      -- 妖界 
      		AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·噬魂【风】", 1, nNumText+1)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·凤凰【风】", 1, nNumText+2)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·帝恨【风】", 1, nNumText+3)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·缚神【风】", 1, nNumText+4)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·俱灭【风】", 1, nNumText+5)
			end	
			if nNumText == 750 then      -- 神界 
      		AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·天晶【水】", 1, nNumText+1)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·天诛【水】", 1, nNumText+2)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·日月【水】", 1, nNumText+3)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·神舞【水】", 1, nNumText+4)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·紫绶【水】", 1, nNumText+5)
			end	
			if nNumText == 760 then      -- 魔界 
      		AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·虎魄【雷】", 1, nNumText+1)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·无妄【雷】", 1, nNumText+2)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·破地【雷】", 1, nNumText+3)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·悲怒【雷】", 1, nNumText+4)
			AddNumText( sceneId, x990004_g_ScriptId, "炼化神兵·虚无【雷】", 1, nNumText+5)
			end																			
			AddNumText( sceneId, x990004_g_ScriptId, "离开……", 0, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 210 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10422016) >= 1  then
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
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5953, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 211 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10423024) >= 1  then
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
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5954, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 212 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10433325) >= 1  then
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
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5962, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		

	if nNumText == 213 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10422098) >= 1  then
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
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5963, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 74, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
      
       if nNumText == 214 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10423025) >= 1  then
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
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5965, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

       if nNumText == 215 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10553099) >= 1  then
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
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5067, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		
	
       if nNumText == 216 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10553100) >= 1  then
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
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5068, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		
	if nNumText > 100 and nNumText < 800  then
		BeginEvent(sceneId)
			AddText(sceneId, "  不是白给的，用这个东西来换的哦！！")
			
			local nLevel = 0
			if nNumText == 110 then    -- 兑换重楼戒
				nLevel = 1
			end
			if nNumText == 120 then    -- 兑换重楼玉
				nLevel = 2
			end
			if nNumText == 130 then    -- 兑换轮回神符
				nLevel = 3
			end			
--			if nNumText == 610 or nNumText == 611 or nNumText == 612 or nNumText == 613 or nNumText == 614 or nNumText == 615 or nNumText == 616 or nNumText == 617 or nNumText == 618 or nNumText == 619 or nNumText == 620 or nNumText == 621 then    -- 秦武兑换
			if nNumText > 400 then
				nLevel = 4
			end
--			if nNumText == 710 or nNumText == 711 or nNumText == 712 or nNumText == 713 or nNumText == 714 or nNumText == 715 or nNumText == 716 or nNumText == 717 or nNumText == 718 or nNumText == 719 or nNumText == 720 or nNumText == 721 then    -- 秦魂兑换
			if nNumText > 500 then
				nLevel = 5
			end
			if nNumText == 610 then 
				nLevel = 13
                    end
                    if nNumText == 620 then 
				nLevel = 14
			end
                    if nNumText == 630 then 
				nLevel = 15
                    end
                    if nNumText == 640 then 
				nLevel = 16
			end
                    if nNumText == 650 then 
				nLevel = 17
                    end
                    if nNumText == 660 then 
				nLevel = 18
			end
                    if nNumText == 670 then 
				nLevel = 19
                    end
                    if nNumText == 680 then 
				nLevel = 20
			end
                    if nNumText == 690 then 
				nLevel = 21
                    end
                    if nNumText == 699 then 
				nLevel = 22
			end
			if nNumText == 711 or nNumText == 712 or nNumText == 713 or nNumText == 714 or nNumText == 715 then
			    nLevel = 7    -- 人界神兵
			end
			if nNumText == 721 or nNumText == 722 or nNumText == 723 or nNumText == 724 or nNumText == 725 then
			    nLevel = 8    -- 鬼界神兵
			end
			if nNumText == 731 or nNumText == 732 or nNumText == 733 or nNumText == 734 or nNumText == 735 then
			    nLevel = 9    -- 仙界神兵
			end
			if nNumText == 741 or nNumText == 742 or nNumText == 743 or nNumText == 744 or nNumText == 745 then
			    nLevel = 10   -- 妖界神兵
			end
			if nNumText == 751 or nNumText == 752 or nNumText == 753 or nNumText == 754 or nNumText == 755 then
			    nLevel = 11   -- 神界神兵
			end
			if nNumText == 761 or nNumText == 762 or nNumText == 763 or nNumText == 764 or nNumText == 765 then
			    nLevel = 12   -- 魔界神兵
			end
			
			local szStr = "  要获得这些装备，你需要给我“" .. x990004_g_StoneList[nLevel].str
										.. "”“".. tostring(x990004_g_StoneList[nLevel].num) .. "”个  #r  #G注意看装备适合什么门派，不要换错了哦#W"
			AddText(sceneId, szStr)
			
			for i, item in x990004_g_EquipList do
				if item.n == nNumText  then
					AddRadioItemBonus( sceneId, item.id, 4 )
				end
			end
    		EndEvent(sceneId)
   	 	--DispatchMissionDemandInfo(sceneId,selfId,targetId, x990004_g_ScriptId, x210200_g_MissionId)
   		DispatchMissionContinueInfo(sceneId,selfId,targetId, x990004_g_ScriptId, 0)		
	end

	if nNumText == 800 then
		BeginEvent(sceneId)
			local bStoneOk = 0
			if GetItemCount(sceneId, selfId, 10421021) >= 1  then
			bStoneOk = 1
			end
			if  bStoneOk == 1 then
				BeginEvent(sceneId)
					strText = "你已有盟主腰带，不能重复领取。"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			else 
				TryRecieveItem( sceneId, selfId, 10421021, 1 )
				BeginEvent(sceneId)
					strText = "领取盟主腰带。"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)				
			end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)		
	end
			
	for i, findId in x990004_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x990004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x990004_g_eventList do
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
function x990004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x990004_g_eventList do
		if missionScriptId == findId then
			x990004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			x990004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x990004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x990004_g_eventList do
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
function x990004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	--处理提交后的显示情况
	--为了安全，这里要仔细，不能出错
	local nItemIndex = -1
	
	for i, item in x990004_g_EquipList do
		if item.id == selectRadioId  then
			nItemIndex = i
		end
	end
	
	if nItemIndex == -1  then
		return
	end
	
	-- 看完家是不是够材料提交
	local nLevel = 0
	if x990004_g_EquipList[nItemIndex].n == 110 then
		nLevel = 1
	end
	if x990004_g_EquipList[nItemIndex].n == 120 then
		nLevel = 2
	end
	if x990004_g_EquipList[nItemIndex].n == 130 then
		nLevel = 3
	end	
--	if x990004_g_EquipList[nItemIndex].n == 610 or x990004_g_EquipList[nItemIndex].n == 611 or x990004_g_EquipList[nItemIndex].n == 612 or x990004_g_EquipList[nItemIndex].n == 613 or x990004_g_EquipList[nItemIndex].n == 614 or x990004_g_EquipList[nItemIndex].n == 615 or x990004_g_EquipList[nItemIndex].n == 616 or x990004_g_EquipList[nItemIndex].n == 617 or x990004_g_EquipList[nItemIndex].n == 618 or x990004_g_EquipList[nItemIndex].n == 619 or x990004_g_EquipList[nItemIndex].n == 620 or x990004_g_EquipList[nItemIndex].n == 621 then
	if x990004_g_EquipList[nItemIndex].n > 400 then	
		nLevel = 4
	end
--	if x990004_g_EquipList[nItemIndex].n == 710 or x990004_g_EquipList[nItemIndex].n == 711 or x990004_g_EquipList[nItemIndex].n == 712 or x990004_g_EquipList[nItemIndex].n == 713 or x990004_g_EquipList[nItemIndex].n == 714 or x990004_g_EquipList[nItemIndex].n == 715 or x990004_g_EquipList[nItemIndex].n == 716 or x990004_g_EquipList[nItemIndex].n == 717 or x990004_g_EquipList[nItemIndex].n == 718 or x990004_g_EquipList[nItemIndex].n == 719 or x990004_g_EquipList[nItemIndex].n == 720 or x990004_g_EquipList[nItemIndex].n == 721 then
	if x990004_g_EquipList[nItemIndex].n > 500 then
		nLevel = 5
	end
	if x990004_g_EquipList[nItemIndex].n == 610 then 
		nLevel = 13
       end
       if x990004_g_EquipList[nItemIndex].n == 620 then 
		nLevel = 14
	end
       if x990004_g_EquipList[nItemIndex].n == 630 then 
		nLevel = 15
       end
       if x990004_g_EquipList[nItemIndex].n == 640 then 
		nLevel = 16
	end
       if x990004_g_EquipList[nItemIndex].n == 650 then 
		nLevel = 17
       end
       if x990004_g_EquipList[nItemIndex].n == 660 then 
		nLevel = 18
	end
       if x990004_g_EquipList[nItemIndex].n == 670 then 
		nLevel = 19
       end
       if x990004_g_EquipList[nItemIndex].n == 680 then 
		nLevel = 20
       end
       if x990004_g_EquipList[nItemIndex].n == 690 then 
		nLevel = 21
       end
       if x990004_g_EquipList[nItemIndex].n == 699 then 
		nLevel = 22
	end
 	if x990004_g_EquipList[nItemIndex].n == 711 or x990004_g_EquipList[nItemIndex].n == 712 or x990004_g_EquipList[nItemIndex].n == 713 or x990004_g_EquipList[nItemIndex].n == 714 or x990004_g_EquipList[nItemIndex].n == 715 then
		nLevel = 7
	end
 	if x990004_g_EquipList[nItemIndex].n == 721 or x990004_g_EquipList[nItemIndex].n == 722 or x990004_g_EquipList[nItemIndex].n == 723 or x990004_g_EquipList[nItemIndex].n == 724 or x990004_g_EquipList[nItemIndex].n == 725 then
		nLevel = 8
	end
 	if x990004_g_EquipList[nItemIndex].n == 731 or x990004_g_EquipList[nItemIndex].n == 732 or x990004_g_EquipList[nItemIndex].n == 733 or x990004_g_EquipList[nItemIndex].n == 734 or x990004_g_EquipList[nItemIndex].n == 735 then
		nLevel = 9
	end
 	if x990004_g_EquipList[nItemIndex].n == 741 or x990004_g_EquipList[nItemIndex].n == 742 or x990004_g_EquipList[nItemIndex].n == 743 or x990004_g_EquipList[nItemIndex].n == 744 or x990004_g_EquipList[nItemIndex].n == 745 then
		nLevel = 10
	end
 	if x990004_g_EquipList[nItemIndex].n == 751 or x990004_g_EquipList[nItemIndex].n == 752 or x990004_g_EquipList[nItemIndex].n == 753 or x990004_g_EquipList[nItemIndex].n == 754 or x990004_g_EquipList[nItemIndex].n == 755 then
		nLevel = 11
	end
 	if x990004_g_EquipList[nItemIndex].n == 761 or x990004_g_EquipList[nItemIndex].n == 762 or x990004_g_EquipList[nItemIndex].n == 763 or x990004_g_EquipList[nItemIndex].n == 764 or x990004_g_EquipList[nItemIndex].n == 765 then
		nLevel = 12
	end
		
	local bStoneOk = 0
	if GetItemCount(sceneId, selfId, x990004_g_StoneList[nLevel].id) >= x990004_g_StoneList[nLevel].num  then
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
	if LuaFnGetAvailableItemCount(sceneId, selfId, x990004_g_StoneList[nLevel].id) < x990004_g_StoneList[nLevel].num   then
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
	local nItemBagIndexStone = GetBagPosByItemSn(sceneId, selfId, x990004_g_StoneList[nLevel].id)
	local szTransferStone = GetBagItemTransfer(sceneId,selfId, nItemBagIndexStone)
	
	-- 删除相关的石头
	local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x990004_g_StoneList[nLevel].id, x990004_g_StoneList[nLevel].num)
	
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
		local nBagIndex = TryRecieveItem( sceneId, selfId, x990004_g_EquipList[nItemIndex].id, 1 );
		
		BeginEvent(sceneId)
			strText = "兑换成功。"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local message;	
		local randMessage = random(3);
		local sItemName = GetItemName(sceneId, x990004_g_EquipList[nItemIndex].id)
		
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, nBagIndex)
		
		if randMessage == 1 then
		   	message = format("#W#{_INFOUSR%s}#W#{WLS_08}#Y%d#W#{WLS_09}#{_INFOMSG%s}#{WLS_10}#{_INFOMSG%s}#{WLS_11}", LuaFnGetName(sceneId, selfId), x990004_g_StoneList[nLevel].num, szTransferStone, szTransferEquip);
		elseif randMessage == 2 then
			message = format("#W#{_INFOUSR%s}#W#{WLS_03}#Y%d#W#{WLS_04}#{_INFOMSG%s}#{WLS_05}#{_INFOMSG%s}#{WLS_06}#{_INFOMSG%s}#{WLS_07}", LuaFnGetName(sceneId, selfId), x990004_g_StoneList[nLevel].num, szTransferStone, szTransferStone, szTransferEquip);
		else
			message = format("#W#{WLS_00}#Y%d#cffffcc颗#W#{_INFOMSG%s}#cffffcc由衷的赞道：“#W#{_INFOUSR%s}#{WLS_01}#{_INFOMSG%s}#{WLS_02}", x990004_g_StoneList[nLevel].num, szTransferStone, LuaFnGetName(sceneId, selfId), szTransferEquip);
		end
		
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		return
	end

	for i, findId in x990004_g_eventList do
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
function x990004_OnDie( sceneId, selfId, killerId )
end
