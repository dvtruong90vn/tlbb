-- 领奖NPC

x892104_g_scriptId = 892104

--**********************************
--事件交互入口
--**********************************
function x892104_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 82 then
			BeginEvent(sceneId)
	   			AddText( sceneId, " 您好！您的等于不足85级！" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		--AddText( sceneId, "    #Y荣耀圣地，专为英雄设计，此地会出现全服第一怪-荣耀之神，谁是英雄？为了帮会而奋斗!" )	
		   		AddText( sceneId, "  本地图专为帮战设计，里面专有荣耀之神守护，此BOSS及其强悍，哪个帮消灭了守护神，获得荣耀令牌视为获胜帮会！！#G注意#Y:#cFF0000帮战地图：#G开启时间为#cFF0000[19：45]。" )
		   		AddNumText( sceneId, x892104_g_ScriptId, "#e0ba4b6传送帮战地图", 6, 30 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--事件列表选中一项
--**********************************
function x892104_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 30 then
      
       local nQuarter = mod(GetQuarterTime(),100);
             if nQuarter < 79 or nQuarter >= 80  then
            BeginEvent(sceneId)
		AddText(sceneId,"帮战地图开启时间为(19:45），暂时无法传送!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end

     CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 414, 80, 120,10 )--传送
    end
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x892104_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x892104_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--消息提示
--**********************************
function x892104_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--对话提示
--**********************************
function x892104_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
