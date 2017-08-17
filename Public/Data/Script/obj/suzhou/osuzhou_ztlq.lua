x001085_g_ScriptId = 001085


--**********************************
--事件交互入口
--**********************************
function x001085_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"  #c00ff00请选择你自己佩带的装备的状态！")
		AddNumText( sceneId, x001085_g_ScriptId, "#Y领取:#Y强化·重楼戒〖#W麻痹状态#Y〗",6,1 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end


function x001085_OnEventRequest( sceneId, selfId, targetId, eventId )

if GetNumText() == 1 then
	if GetItemCount(sceneId, selfId, 10422149) < 1 then
		x001085_MsgBox( sceneId, selfId, "对不起，你身上没有佩带：强化·重楼戒。" )	
		return
	end


                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5967, 0)
		x001085_MsgBox( sceneId, selfId, "恭喜您成功领取强化·重楼戒麻痹状态" )
end

end

--**********************************
--消息提示
--**********************************
function x001085_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end



