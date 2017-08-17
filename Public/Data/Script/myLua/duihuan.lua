-- 兑换NPC

x900005_g_scriptId = 900005
--奖励标记
x900005_g_flag = {
    [80]	= MF_LINGQUYUANBAO80,
    [90]	= MF_LINGQUYUANBAO90,
    [100]	= MF_LINGQUYUANBAO100,
    [110]	= MF_LINGQUYUANBAO110,
    [120]	= MF_LINGQUYUANBAO120,
	}
x900005_g_Title		={}
x900005_g_Title[1] = "初级师傅"

--**********************************
--事件交互入口
--**********************************
function x900005_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText ="#ccc33cc$N#Y玩家欢迎你！这里是兑换服务"
		AddText( sceneId, strText )
			 AddNumText( sceneId, x900005_g_scriptId, "点击进入兑换程序", 5, 5551)  	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function	x900005_OnEventRequest(sceneId, selfId, targetId, eventId)		
	if GetNumText()==	5551	then
		BeginEvent(sceneld)
			AddText(sceneld,strText)
		              AddNumText( sceneId,x900005_g_scriptld,	"#Y绝云焱龙", 10, 5552)
				AddNumText( sceneId,x900005_g_scriptld,	"#Y霸世羽龙", 10, 5553)
				AddNumText( sceneId,x900005_g_scriptld,	"#Y青翼战龙", 10, 5554)
				AddNumText( sceneId,x900005_g_scriptld,	"#Y仙侣情缘", 10, 5555)
				AddNumText( sceneId,x900005_g_scriptld,	"#Y雪羽霜衣", 10, 5556)
				AddNumText( sceneId,x900005_g_scriptld,	"#Y黯淡雕灵", 10, 5557)
				AddNumText( sceneId,x900005_g_scriptld,	"#Y清风怡江", 10, 5558)
				AddNumText( sceneId,x900005_g_scriptld,	"#Y春风余雪", 10, 5559)
				AddNumText( sceneId,x900005_g_scriptld,	"#Y疏狂暗香", 10, 5560)
				--AddNumText( sceneId,x900005_g_scriptld,	"#Y暗器兑换减冰攻", 10, 5561)
				--AddNumText( sceneId,x900005_g_scriptld,	"#Y暗器兑换减火攻", 10, 5562)
				--AddNumText( sceneId,x900005_g_scriptld,	"#Y暗器兑换减玄攻", 10, 5563)
				--AddNumText( sceneId,x900005_g_scriptld,	"#Y暗器兑换减毒攻", 10, 5564)
              EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )


	elseif GetNumText() == 5552 then
--	local nStoneId = 20310100
	if LuaFnGetAvailableItemCount(sceneId, selfId, 20310100)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,20310100,100)--删除物品
			TryRecieveItem( sceneId,selfId,10149002,1)--给予物品
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end


		elseif GetNumText() == 5553 then
--	local nStoneId = 20310100
	if LuaFnGetAvailableItemCount(sceneId, selfId, 20310100)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,20310100,100)--删除物品
			TryRecieveItem( sceneId,selfId,10149041,1)--给予物品
                        AddText( sceneId, "恭喜你雕纹成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5554 then
--	local nStoneId = 20310100
	if LuaFnGetAvailableItemCount(sceneId, selfId, 20310100)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,20310100,100)--删除物品
			TryRecieveItem( sceneId,selfId,10149042,1)--给予物品
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5555 then
--	local nStoneId = 20310103
	if LuaFnGetAvailableItemCount(sceneId, selfId, 20310103)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,20310103,100)--删除物品
			TryRecieveItem( sceneId,selfId,10124501,1)--给予物品
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5556 then
--	local nStoneId = 20310103
	if LuaFnGetAvailableItemCount(sceneId, selfId, 20310103)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,20310103,100)--删除物品
			TryRecieveItem( sceneId,selfId,10124511,1)--给予物品
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end


			elseif GetNumText() == 5557 then
--	local nStoneId = 20310103
	if LuaFnGetAvailableItemCount(sceneId, selfId, 20310103)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,20310103,100)--删除物品
			TryRecieveItem( sceneId,selfId,10124521,1)--给予物品
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5558 then
--	local nStoneId = 20310103
	if LuaFnGetAvailableItemCount(sceneId, selfId, 20310103)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,20310103,100)--删除物品
			TryRecieveItem( sceneId,selfId,10124531,1)--给予物品
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5559 then
--	local nStoneId = 20310103
	if LuaFnGetAvailableItemCount(sceneId, selfId, 20310103)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,20310103,100)--删除物品
			TryRecieveItem( sceneId,selfId,10124541,1)--给予物品
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end
			elseif GetNumText() == 5560 then
--	local nStoneId = 20310103
	if LuaFnGetAvailableItemCount(sceneId, selfId, 20310103)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,20310103,100)--删除物品
			TryRecieveItem( sceneId,selfId,10124551,1)--给予物品
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
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
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
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
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
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
                        AddText( sceneId, "恭喜你兑换成功" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "兑换材料不全你搞什么飞机，小心扁你个小子" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

end
--**********************************	
--对话提示	
--**********************************	
function	x900005_TalkMsg( sceneId, selfId, targetId, str)	
	BeginEvent(sceneId)	
		AddText(sceneId, str)	
	EndEvent(sceneId)	
	DispatchEventList(sceneId,selfId,targetId) 		
	end
		
end
	
	


