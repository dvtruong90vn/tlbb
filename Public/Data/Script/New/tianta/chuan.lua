-- 领奖NPC

x100010_g_scriptId = 100010

--**********************************
--事件交互入口
--**********************************
function x100010_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 99 then
			BeginEvent(sceneId)
	   			AddText( sceneId, " 您好！您的等于不足100级！" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		AddText( sceneId, "    #Y闯天塔活动可获得大量宝物，10万赠点票.高级宝石.高级合成.玫瑰花.重楼材料.时装坐骑材料等等!" )	
		   		AddText( sceneId, "  #G注意#Y:#cFF0000闯天塔#Y活动说明：#G每日#cFF000019：00-20：00#G才可以进入此活动场景！。" )
		   		AddNumText( sceneId, x100010_g_ScriptId, "#e0ba4b6参加闯天塔", 6, 30 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--事件列表选中一项
--**********************************
function x100010_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 30 then
      
       local nQuarter = mod(GetQuarterTime(),100);
             if nQuarter < 76 or nQuarter >= 80  then
            BeginEvent(sceneId)
		AddText(sceneId,"现在不是活动时间(19:00-20:00)，无法进入闯天塔活动场景!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end

     CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 544, 255, 384,10 )--传送
    end
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x100010_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x100010_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--消息提示
--**********************************
function x100010_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--对话提示
--**********************************
function x100010_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
