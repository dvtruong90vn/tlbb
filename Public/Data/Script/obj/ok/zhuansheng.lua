-- 金币转经验脚本
x000151_g_scriptId = 000151

x000151_g_zhuansheng = 1

--**********************************
--事件交互入口
--**********************************
function x000151_OnDefaultEvent( sceneId, selfId, targetId )
local	nam	= LuaFnGetName( sceneId, selfId )
local   lev = GetLevel(sceneId,selfId)
BeginEvent( sceneId )
		strText = "亲爱的"..nam.."朋友您好!您太厉害了,都149级了耶,我可以帮您转生哦！每转身一次可获得30万增点！最高领取不可以超过100万"
		AddText( sceneId, strText )
		AddNumText( sceneId, x000151_g_scriptId, "#gff0c0c -= [点击进行转生] =-", 11,1 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--转生 
--**********************************
function x000151_zhuansheng (sceneId, selfId, targetId)
	local	nam	= LuaFnGetName( sceneId, selfId )  
       local	lev	= GetLevel( sceneId, selfId )
	if lev < 149 then
		BeginEvent( sceneId )
		AddText( sceneId, "等级不足#G149#W级，请#G149#W级后再来找我。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end

        SetLevel( sceneId, selfId, 30)


AddText(sceneId,"恭喜您成功转生！")
str = "#cffffcc恭喜玩家<#c00ff00"..nam.."#cffffcc>顺利转生！这家伙太牛逼了！"
                      BroadMsgByChatPipe(sceneId, selfId, str, 4)
ZengDian(sceneId,selfId,targetId,1,300000)
           
                      
			
		EndEvent( sceneId )

	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--事件列表选中一项
--**********************************
function x000151_OnEventRequest( sceneId, selfId, targetId, eventId )
		
	
		x000151_zhuansheng(sceneId, selfId, targetId)	
	
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x000151_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--消息提示
--**********************************
function x000151_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--对话提示
--**********************************
function x000151_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
