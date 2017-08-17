-- 889067 套装兑换NPC


--脚本号
x889067_g_ScriptId = 889067

--所拥有的事件ID列表
x889067_g_eventList={}

x889067_g_EquipList={	
-- 【重楼套装】
{n=110,id=10422149},{n=111,id=10423025},{n=112,id=10420089},

-- 梅花镖
{n=130,id=10433317},{n=140,id=10433318},

-- 冰魄神针
{n=150,id=10433314},{n=160,id=10433315},

-- 武魂
{n=410,id=10433320},{n=411,id=10433321},{n=412,id=10433322},{n=413,id=10433323},{n=414,id=10433425},
{n=415,id=10433426},{n=416,id=10433427},{n=417,id=10433428},{n=418,id=10433429},{n=419,id=10433430},

-- 85级秦皇套
{n=510,id=10400075},{n=511,id=10402075},{n=512,id=10404072},{n=513,id=10405071},{n=514,id=10412081},
{n=515,id=10412083},{n=516,id=10413084},{n=517,id=10413086},{n=518,id=10422122},{n=519,id=10422124},
{n=520,id=10423047},{n=521,id=10423049},

--六界之魂 
{n=610,id=30505085},{n=620,id=30505086},{n=630,id=30505087},{n=640,id=30505088},{n=650,id=30505089},
{n=660,id=30505091},

--六界神兵
{n=711,id=10433306},{n=712,id=10433321},{n=713,id=10433336},{n=714,id=10433345},{n=715,id=10433327},
{n=721,id=10433307},{n=722,id=10433322},{n=723,id=10433337},{n=724,id=10433328},{n=725,id=10433346}, 
{n=731,id=10433309},{n=732,id=10433324},{n=733,id=10433339},{n=734,id=10433348},{n=735,id=10433330},
{n=741,id=10433308},{n=742,id=10433323},{n=743,id=10433338},{n=744,id=10433347},{n=745,id=10433329},
{n=751,id=10433305},{n=752,id=10433320},{n=753,id=10433335},{n=754,id=10433344},{n=755,id=10433326},
{n=761,id=10433304},{n=762,id=10433319},{n=763,id=10433334},{n=764,id=10433343},{n=765,id=10433325},

}

x889067_g_StoneList={
-- 飞蝗石（普）
-- 【真·重楼戒】
{n=1,id=20310101,num=20,str="重楼之泪"},
-- 【真·重楼玉】
{n=2,id=20310102,num=20,str="重楼之芒"},
{n=3,id=20310100,num=20,str="重楼之阳"},
-- 梅花镖（中）
{n=4,id=10433317,num=10,str="梅花镖（中）"},
-- 冰魄神针（普）
{n=5,id=10433313,num=10,str="冰魄神针（普）"},
-- 冰魄神针（中）
{n=6,id=10433314,num=10,str="冰魄神针（中）"},
-- 冰魄神针（高）
{n=7,id=10433315,num=5,str="冰魄神针（高）"},
-- 冰魄神针（高）
{n=8,id=10433315,num=5,str="冰魄神针（高）"},

}

--**********************************
--事件列表
--**********************************
function x889067_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #gFF3E96本服开放官方最新三环，楼兰藏宝洞副本")
		for i, eventId in x889067_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

		AddNumText( sceneId, x889067_g_ScriptId, "#gFF3E96兑换【真重楼套装】", 3, 100 )
		--AddNumText( sceneId, x889067_g_ScriptId, "#gFF3E96兑换武魂", 3, 400 )
		--AddNumText( sceneId, x889067_g_ScriptId, "#gFF3E96领取【武魂技能状态】", 3, 300 )
		AddNumText( sceneId, x889067_g_ScriptId, "离开……", 9, 0 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x889067_OnDefaultEvent( sceneId, selfId,targetId )
	x889067_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x889067_OnEventRequest( sceneId, selfId, targetId, eventId )
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
			AddText(sceneId, "  炼化神兵说明：精魄各大副本，BOSS爆出，神界附加冰咒攻击，鬼界附加火咒攻击，魔界附加雷咒攻击，妖界附加失明状态，仙界附加提升自身攻击并麻痹效果，人界附加石化状态（石化后不可被攻击）！符咒攻击触发几率20%，失明、石化几率2%，请看清作用后选择炼化。神兵炼化只在合区后1小时内开放兑换")		
	end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	if nNumText == 100 or nNumText == 200 or nNumText == 300 or nNumText == 400 or nNumText == 500 or nNumText == 600 or nNumText == 700 or nNumText == 710 or nNumText == 720 or nNumText == 730 or nNumText == 740 or nNumText == 750 or nNumText == 760 then
		BeginEvent(sceneId)
			AddText(sceneId, "  请选择一下你要兑换的物品。")
			if nNumText == 100 then
			AddNumText(sceneId, x889067_g_ScriptId, "兑换#G【真·重楼戒】", 1, nNumText+10)
			AddNumText(sceneId, x889067_g_ScriptId, "兑换#G【真·重楼玉】", 1, nNumText+11)
			AddNumText(sceneId, x889067_g_ScriptId, "兑换#G【真·重楼链】", 1, nNumText+12)
			--AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换梅花镖（高）", 1, nNumText+40)
			--AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换冰魄神针（中）", 1, nNumText+50)
			--AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换冰魄神针（高）", 1, nNumText+60)
			end
			if nNumText == 200 then
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96领取飞蝗石状态（昏睡）", 1, nNumText+10)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96领取梅花镖状态（失明）", 1, nNumText+11)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96领取冰魄神针状态（恐惧）", 1, nNumText+12)
			end
			if nNumText == 300 then
   			--AddNumText( sceneId, x889067_g_ScriptId, "#gFF3E96领取暗器状态", 1, 200)
			AddNumText( sceneId, x889067_g_ScriptId, "#gFF3E96领取武魂状态", 1, 500)
			--AddNumText( sceneId, x889067_g_ScriptId, "#gFF3E96领取武魂技能", 1, 600)
			end
			if nNumText == 400 then
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换5级御瑶盘·冰", 1, nNumText+10)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换5级御瑶盘·火", 1, nNumText+11)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换5级御瑶盘·玄", 1, nNumText+12)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换5级御瑶盘·毒", 1, nNumText+13)
			--AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换《神话》守护", 1, nNumText+14)
			--AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换《神话》之恋", 1, nNumText+15)
			--AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换《神话》束带", 1, nNumText+16)
			--AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换《神话》之泪", 1, nNumText+17)
			--AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换《神话》虎符", 1, nNumText+18)
			--AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96兑换《神话》流云镯", 1, nNumText+19)
			end
			if nNumText == 500 then
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96领取5级御瑶盘·冰状态", 1, nNumText+10)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96领取5级御瑶盘·火状态", 1, nNumText+11)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96领取5级御瑶盘·玄状态", 1, nNumText+12)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96领取5级御瑶盘·毒状态", 1, nNumText+13)

			end				
			if nNumText == 600 then
   			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96学习剧毒瘟疫[毒]技能", 1, nNumText+10)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96学习天火燎原[火]技能", 1, nNumText+11)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96学习冰封万里[冰]技能", 1, nNumText+12)
			AddNumText(sceneId, x889067_g_ScriptId, "#gFF3E96学习狂雷天降[玄]技能", 1, nNumText+13)
			end
			if nNumText == 700 then
   			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·人界神兵", 1, 710)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·鬼界神兵", 1, 720)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·妖界神兵", 1, 730)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·仙界神兵", 1, 740)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·神界神兵", 1, 750)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·魔界神兵", 1, 760)
			end	
			if nNumText == 710 then      -- 人界 
   			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·惊邪【土】", 1, nNumText+1)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·太虚【土】", 1, nNumText+2)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·神农【土】", 1, nNumText+3)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·执念【土】", 1, nNumText+4)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·盘古【土】", 1, nNumText+5)
			end	
			if nNumText == 720 then      -- 鬼界 
      		AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·焰影【火】", 1, nNumText+1)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·裂天【火】", 1, nNumText+2)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·疚疯【火】", 1, nNumText+3)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·阴阳【火】", 1, nNumText+4)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·虚无【火】", 1, nNumText+5)
			end	
			if nNumText == 730 then      -- 仙界 
      		AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·玄天【圣】", 1, nNumText+1)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·混元【圣】", 1, nNumText+2)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·紫电【圣】", 1, nNumText+3)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·乾坤【圣】", 1, nNumText+4)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·太极【圣】", 1, nNumText+5)
			end	
			if nNumText == 740 then      -- 妖界 
      		AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·噬魂【风】", 1, nNumText+1)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·凤凰【风】", 1, nNumText+2)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·帝恨【风】", 1, nNumText+3)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·缚神【风】", 1, nNumText+4)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·俱灭【风】", 1, nNumText+5)
			end	
			if nNumText == 750 then      -- 神界 
      		AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·天晶【水】", 1, nNumText+1)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·天诛【水】", 1, nNumText+2)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·日月【水】", 1, nNumText+3)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·神舞【水】", 1, nNumText+4)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·紫绶【水】", 1, nNumText+5)
			end	
			if nNumText == 760 then      -- 魔界 
      		AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·虎魄【雷】", 1, nNumText+1)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·无妄【雷】", 1, nNumText+2)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·破地【雷】", 1, nNumText+3)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·悲怒【雷】", 1, nNumText+4)
			AddNumText( sceneId, x889067_g_ScriptId, "炼化神兵·虚无【雷】", 1, nNumText+5)
			end																			
			AddNumText( sceneId, x889067_g_ScriptId, "离开……", 0, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 210 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10433312) >= 1  then
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
			--AddSkill( sceneId, selfId, 1600 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5974, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 211 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10433318) >= 1  then
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
			--AddSkill( sceneId, selfId, 1620 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5975, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 212 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10433315) >= 1  then
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
			--AddSkill( sceneId, selfId, 27 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5976, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		

	if nNumText == 510 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10156122) >= 1  then
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
			--AddSkill( sceneId, selfId, 27 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 14276, 0 )
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end	
	
	if nNumText == 511 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10156123) >= 1  then
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
			--AddSkill( sceneId, selfId, 27 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 14276, 0 )
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 512 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10156124) >= 1  then
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
			--AddSkill( sceneId, selfId, 27 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 14276, 0 )
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 513 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10156125) >= 1  then
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
			--AddSkill( sceneId, selfId, 27 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 14276, 0 )
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if nNumText == 610 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10433320) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "你没有此道具，不能学习此技能。"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			AddSkill( sceneId, selfId, 1618 )
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5988, 0 )
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end	
	
	if nNumText == 611 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10433321) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "你没有此道具，不能学习此技能。"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			AddSkill( sceneId, selfId, 1606 )
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5986, 0 )
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 612 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10433322) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "你没有此道具，不能学习此技能。"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			AddSkill( sceneId, selfId, 1599 )
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5985, 0 )
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 613 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10433323) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "你没有此道具，不能学习此技能。"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			AddSkill( sceneId, selfId, 1611 )
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5987, 0 )
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end				
				
	if nNumText > 100 and nNumText < 800  then
		BeginEvent(sceneId)
			AddText(sceneId, "  不是白给的，用这个东西来换的哦！！")
			
			local nLevel = 0
			if nNumText == 110 then    -- 兑换飞蝗石
				nLevel = 1
			end
			if nNumText == 111 then    -- 兑换飞蝗石
				nLevel = 2
			end
			if nNumText == 112 then    -- 兑换梅花镖
				nLevel = 3
			end	
			if nNumText == 410 or nNumText == 411 or nNumText == 412 or nNumText == 413 then
				nLevel = 7
			end	
						
			if nNumText > 400 then
				nLevel = 8
			end
			
			local szStr = "  要获得这些装备，你需要给我“" .. x889067_g_StoneList[nLevel].str
										.. "”“".. tostring(x889067_g_StoneList[nLevel].num) .. "”个  #r  #G注意看装备适合什么门派，不要换错了哦#W"
			AddText(sceneId, szStr)
			
			for i, item in x889067_g_EquipList do
				if item.n == nNumText  then
					AddRadioItemBonus( sceneId, item.id, 4 )
				end
			end
    		EndEvent(sceneId)
   	 	--DispatchMissionDemandInfo(sceneId,selfId,targetId, x889067_g_ScriptId, x210200_g_MissionId)
   		DispatchMissionContinueInfo(sceneId,selfId,targetId, x889067_g_ScriptId, 0)		
	end

	if nNumText == 800 then
		BeginEvent(sceneId)
			local bStoneOk = 0
			if GetItemCount(sceneId, selfId, 10421021) >= 1  then
			bStoneOk = 1
			end
			if  bStoneOk == 1 then
				BeginEvent(sceneId)
					strText = "你已有此道具，不能重复领取。"
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
			
	for i, findId in x889067_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x889067_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x889067_g_eventList do
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
function x889067_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x889067_g_eventList do
		if missionScriptId == findId then
			x889067_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			x889067_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x889067_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x889067_g_eventList do
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
function x889067_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	--处理提交后的显示情况
	--为了安全，这里要仔细，不能出错
	local nItemIndex = -1
	
	for i, item in x889067_g_EquipList do
		if item.id == selectRadioId  then
			nItemIndex = i
		end
	end
	
	if nItemIndex == -1  then
		return
	end
	
	-- 看完家是不是够材料提交
	local nLevel = 0
	if x889067_g_EquipList[nItemIndex].n > 110 then
		nLevel = 1
	end
	if x889067_g_EquipList[nItemIndex].n > 111 then
		nLevel = 2
	end
	if x889067_g_EquipList[nItemIndex].n > 112 then
		nLevel = 3
	end	
		
	local bStoneOk = 0
	if GetItemCount(sceneId, selfId, x889067_g_StoneList[nLevel].id) >= x889067_g_StoneList[nLevel].num  then
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
	if LuaFnGetAvailableItemCount(sceneId, selfId, x889067_g_StoneList[nLevel].id) < x889067_g_StoneList[nLevel].num   then
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
	local nItemBagIndexStone = GetBagPosByItemSn(sceneId, selfId, x889067_g_StoneList[nLevel].id)
	local szTransferStone = GetBagItemTransfer(sceneId,selfId, nItemBagIndexStone)
	
	-- 删除相关的石头
	local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x889067_g_StoneList[nLevel].id, x889067_g_StoneList[nLevel].num)
	
	if bDelOk < 1  then
		BeginEvent(sceneId)
			strText = "扣出物品失败。"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	else
		--给完家东西，完成
		-- AddItemListToHuman(sceneId,selfId)
		--
		local nBagIndex = TryRecieveItem( sceneId, selfId, x889067_g_EquipList[nItemIndex].id, 1 );
		
		BeginEvent(sceneId)
			strText = "兑换成功。"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local message;	
		local randMessage = random(3);
		local sItemName = GetItemName(sceneId, x889067_g_EquipList[nItemIndex].id)
		
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, nBagIndex)
		
		if randMessage == 1 then
		   	message = format("#W#{_INFOUSR%s}#W#{WLS_08}#Y%d#W#{WLS_09}#{_INFOMSG%s}#{WLS_10}#{_INFOMSG%s}#{WLS_11}", LuaFnGetName(sceneId, selfId), x889067_g_StoneList[nLevel].num, szTransferStone, szTransferEquip);
		elseif randMessage == 2 then
			message = format("#W#{_INFOUSR%s}#W#{WLS_03}#Y%d#W#{WLS_04}#{_INFOMSG%s}#{WLS_05}#{_INFOMSG%s}#{WLS_06}#{_INFOMSG%s}#{WLS_07}", LuaFnGetName(sceneId, selfId), x889067_g_StoneList[nLevel].num, szTransferStone, szTransferStone, szTransferEquip);
		else
			message = format("#W#{WLS_00}#Y%d#cffffcc颗#W#{_INFOMSG%s}#cffffcc由衷的赞道：“#W#{_INFOUSR%s}#{WLS_01}#{_INFOMSG%s}#{WLS_02}", x889067_g_StoneList[nLevel].num, szTransferStone, LuaFnGetName(sceneId, selfId), szTransferEquip);
		end
		
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		return
	end

	for i, findId in x889067_g_eventList do
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
function x889067_OnDie( sceneId, selfId, killerId )
end
