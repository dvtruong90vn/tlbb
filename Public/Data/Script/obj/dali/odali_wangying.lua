--苏州NPC
--金六爷
--普通

x002025_g_scriptId 	= 181000
x002025_g_gotoact	 	= 2
x002025_g_leave			= 20

--**********************************
--事件交互入口
--**********************************
function x002025_OnDefaultEvent( sceneId, selfId,targetId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		if LuaFnGetAvailableItemCount(sceneId, selfId, 39910012) >= 5 then
		BeginEvent( sceneId )
			AddText( sceneId, "   #W拥有5个#G[属性称号凭证]#W的玩家可在此处领取个性称号！状态中有5%几率减少对方抗性80点.直至负值！" )	
			AddNumText( sceneId, x002025_g_scriptId, "领取个性属性称号", 5, 501 )
		    EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
	      else
		   BeginEvent(sceneId)
			AddText(sceneId,"  #cff99cc提示：#W只有拥有#G[属性称号凭证]#W的玩家才能书写属性称号！")		
			--AddNumText( sceneId, x002025_g_scriptId, "离开……", -1, x002025_g_leave)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--事件列表选中一项
--**********************************
function x002025_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 501 then
             	BeginEvent( sceneId )
		AddText( sceneId, "  #Y伟大的英雄(女俠)#W，请选择您喜欢的个性称号，让你看起来与众不同。" )
		AddNumText( sceneId, x002025_g_ScriptId, "领取称号-#e33ff99#K武林至尊·天下第一",7,1500 )
		AddNumText( sceneId, x002025_g_ScriptId, "领取称号-#e33ff99#K傲视群雄·绝代佳人",7,1501 )
		AddNumText( sceneId, x002025_g_ScriptId, "领取称号-#e33ff99#K披麻斩刺·所向无敌",7,1502 )
		AddNumText( sceneId, x002025_g_ScriptId, "领取称号-#e33ff99#K超凡脱俗·世外高人",7,1503 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1500 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K武林至尊·天下第一" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,5)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#e33ff99#K武林至尊·天下第一#G称号。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0成功领取属性称号#e33ff99#K武林至尊·天下第一", 4 )	
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 1501 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K傲视群雄·绝代佳人" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,5)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#e33ff99#K傲视群雄·绝代佳人。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0成功领取属性称号#e33ff99#K傲视群雄·绝代佳人", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1502 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K披麻斩刺·所向无敌" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,5)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#e33ff99#K披麻斩刺·所向无敌#G称号。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0成功领取属性称号#e33ff99#K披麻斩刺·所向无敌", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1503 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K超凡脱俗·世外高人" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,5)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#e33ff99#K超凡脱俗·世外高人。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0成功领取属性称号#e33ff99#K超凡脱俗·世外高人", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1504 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K御龙在天之护花使者" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#e33ff99#K御龙在天之护花使者#G称号。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0成功领取属性称号#e33ff99#K御龙在天之护花使者", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1505 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K御龙在天之鲜花佳丽" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#e33ff99#K御龙在天之鲜花佳丽#G称号。" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0成功领取属性称号#e33ff99#K御龙在天之鲜花佳丽", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1506 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y逍遥三仙之最下贱﹏" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#Y逍遥三仙之最下贱﹏#G称号。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1507 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y逍遥三仙之最淫荡﹏" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#Y逍遥三仙之最淫荡﹏#G称号" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1508 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y逍遥三仙之最猥琐﹏" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#Y逍遥三仙之最猥琐﹏#G称号。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
						
	elseif GetNumText() == 1509 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y 淡若清风 " )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#Y 淡若清风 #G称号。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
						
	elseif GetNumText() == 1510 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y 逍遥无敌 " )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了#Y 逍遥无敌 #G称号。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
						
	end	
end
--**********************************
--对话提示
--**********************************
function x002025_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x002025_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--恢复血和气
--**********************************
function x002025_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	RestoreRage( sceneId, selfId )
end







