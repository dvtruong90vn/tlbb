-- 升级NPC

x940005_g_scriptId = 940005
--奖励标记
x940005_g_flag = {
    [80]	= MF_LINGQUYUANBAO80,
    [90]	= MF_LINGQUYUANBAO90,
    [100]	= MF_LINGQUYUANBAO100,
    [110]	= MF_LINGQUYUANBAO110,
    [120]	= MF_LINGQUYUANBAO120,
	}
x940005_g_Title		={}
x940005_g_Title[1] = "初级师傅"

--**********************************
--事件交互入口
--**********************************
function x940005_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText ="#ccc33cc$N#Y玩家欢迎你！这里是龙纹升级服务"
		AddText( sceneId, strText )
			 AddNumText( sceneId, x940005_g_scriptId, "点击进入升级程序", 5, 5551)  	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function	x940005_OnEventRequest(sceneId, selfId, targetId, eventId)		
	if GetNumText()==	5551	then
		BeginEvent(sceneld)
			AddText(sceneld,strText)
		              AddNumText( sceneId,x940005_g_scriptld,	"#Y龙纹升级", 10, 5552)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹火抗", 10, 5553)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹玄抗", 10, 5554)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹毒抗", 10, 5555)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹体力", 10, 5556)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹减冰抗", 10, 5557)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹减火抗", 10, 5558)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹减玄抗", 10, 5559)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹减毒抗", 10, 5560)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹减冰攻", 10, 5561)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹减火攻", 10, 5562)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹减玄攻", 10, 5563)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y暗器雕纹减毒攻", 10, 5564)
              EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )


	elseif GetNumText() == 5552 then
--	local nStoneId = 30505817
--	local nStoneId = 30304007
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10155006)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 30304007)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,30505817,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,30505816,1)--删除物品
			TryRecieveItem( sceneId,selfId,10430316,1)--给予物品
                        AddText( sceneId, "恭喜你龙纹升级成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end


		elseif GetNumText() == 5553 then
--	local nStoneId = 10553137
--	local nStoneId = 30503901
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10553137)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 30503901)>=1 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,30503901,1)--删除物品
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4047, 0)
			TryRecieveItem( sceneId,selfId,30503900,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5554 then
--	local nStoneId = 10434303
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434303)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=20 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434303,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,20)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434304,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5555 then
--	local nStoneId = 10434304
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434304)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=25 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434304,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,10)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434305,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5556 then
--	local nStoneId = 10434305
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434305)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=30 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434305,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,30)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434306,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5557 then
--	local nStoneId = 10434306
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434306)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=40 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434306,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,40)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434307,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5558 then
--	local nStoneId = 10434308
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434308)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=10 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434308,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,10)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434309,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5559 then
--	local nStoneId = 10434309
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434309)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=15 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434309,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,15)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434310,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5560 then
--	local nStoneId = 10434310
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434310)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=20 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434310,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,20)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434311,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5561 then
--	local nStoneId = 10434311
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434311)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=25 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434311,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,25)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434312,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5562 then
--	local nStoneId = 10434312
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434312)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=30 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434312,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,30)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434313,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

				elseif GetNumText() == 5563 then
--	local nStoneId = 10434313
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434313)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=35 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434313,1)--删除物品
			LuaFnDelAvailableItem(sceneId,selfId,20103072,35)--删除物品
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434314,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "雕纹材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

end
--**********************************	
--对话提示	
--**********************************	
function	x940005_TalkMsg( sceneId, selfId, targetId, str)	
	BeginEvent(sceneId)	
		AddText(sceneId, str)	
	EndEvent(sceneId)	
	DispatchEventList(sceneId,selfId,targetId) 		
	end
		
end
	
	


