--苏州NPC
--金六爷
--普通

x889079_g_scriptId 	= 181000
x889079_g_gotoact	 	= 2
x889079_g_leave			= 20

--**********************************
--事件交互入口
--**********************************
function x889079_OnDefaultEvent( sceneId, selfId,targetId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		if LuaFnGetAvailableItemCount(sceneId, selfId, 30505107) >= 200 then
		BeginEvent( sceneId )
			AddText( sceneId, "   #cFF0000拥有200个#B[喇叭]#cFF0000的玩家可在此处领取个性荣耀称号!" )	
			AddNumText( sceneId, x889079_g_scriptId, "领取个性荣耀称号", 5, 501 )
		    EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
	      else
		   BeginEvent(sceneId)
			AddText(sceneId,"  #cFF0000注意：#W只有拥有200个#G[喇叭]#W的英雄才有资格语我对话,你好像资格不够吧！。")		
			AddNumText( sceneId, x889079_g_scriptId, "离开……", -1, x889079_g_leave)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--事件列表选中一项
--**********************************
function x889079_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 501 then
             	BeginEvent( sceneId )
		AddText( sceneId, "  #Y伟大的英雄(女俠)#W，请选择您喜欢的个性称号，让你看起来与众不同。" )
		AddNumText( sceneId, x889079_g_ScriptId, "称号 - 江湖小生·初出茅庐",7,1500 )
		AddNumText( sceneId, x889079_g_ScriptId, "称号 - 初入江湖·崭露头角",7,1501 )
		AddNumText( sceneId, x889079_g_ScriptId, "称号 - 青年才俊·锋芒毕露",7,1502 )
		AddNumText( sceneId, x889079_g_ScriptId, "称号 - 后起之秀·惊世奇才",7,1503 )
		AddNumText( sceneId, x999000_g_ScriptId, "称号 - 独步江湖·惊世武尊",7,1504 )
		AddNumText( sceneId, x999000_g_ScriptId, "称号 - 骁勇绝人·超凡武宗",7,1505 )
		AddNumText( sceneId, x999000_g_ScriptId, "称号 - 天下第一·无双武圣",7,1506 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 50 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#g0099FF江湖小生·初出茅庐" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,50)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#g0099FF江湖小生·初出茅庐#G称号。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0练成葵花宝典,打败GM,成功领取属性称号#g0099FF江湖小生·初出茅庐", 4 )	
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
												
	elseif GetNumText() == 1501 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#gf123ff初入江湖·崭露头角" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,80)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#gf123ff初入江湖·崭露头角。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0成为猎命一员,支持国产私服,成功领取猎命江湖专有属性称号#gf123ff初入江湖·崭露头角", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
											
	elseif GetNumText() == 1502 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#gf2f3cc青年才俊·锋芒毕露" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,110)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#gf2f3cc青年才俊·锋芒毕露#G称号。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0学习雷锋,扶老奶奶过马路,成功领取猎命江湖专有属性称号#gf2f3cc青年才俊·锋芒毕露", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1503 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#g12f1ff后起之秀·惊世奇才" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,140)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#g12f1ff后起之秀·惊世奇才。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0夺回钓鱼岛,获得国家奖励,成功领取猎命江湖专有属性称号#g12f1ff后起之秀·惊世奇才", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
												
	elseif GetNumText() == 1504 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#gf13f9f独步江湖·惊世武尊" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,170)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#gf13f9f#u独步江湖·惊世武尊#G称号。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0打败乔峰,学成灭绝十三刀,成功领取猎命江湖专有属性称号#gf13f9f独步江湖·惊世武尊", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
												
	elseif GetNumText() == 1505 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#gf19fcc骁勇绝人·超凡武宗" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,190)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#gf19fcc骁勇绝人·超凡武宗#G称号。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0学惊世武学,突破瓶颈,成功领取猎命江湖专有属性称号#gf19fcc骁勇绝人·超凡武宗", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1506 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#eaf0cce天下第一·无双武圣" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,200)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#b#eaf0cce天下第一·无双武圣#G称号。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0突破极限,干死GM全家,成功领取猎命江湖专有属性称号#b#eaf0cce天下第一·无双武圣", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
												
	end		
end
--**********************************
--对话提示
--**********************************
function x900027_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x900027_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--恢复血和气
--**********************************
function x900027_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	RestoreRage( sceneId, selfId )
end











