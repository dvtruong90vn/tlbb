x390004_g_ScriptId	= 390004

--**********************************
--事件交互入口
--**********************************
function x390004_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId )=="通天塔地宫" then
		BeginEvent(sceneId)
			AddText(sceneId, "    #Y以下为高级练功地图，150级以下的玩家可选择前往。")
			AddNumText(sceneId, x390004_g_ScriptId,"通天塔地宫", 9, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)

	else
		BeginEvent(sceneId)
			AddText(sceneId, "    #Y以下为终极BOOS地图传送点，实力不够的好好练练再来吧。")
			AddNumText(sceneId, x390004_g_ScriptId,"漠南青原", 9, 1)
			AddNumText(sceneId, x390004_g_ScriptId,"天岐南淮", 9, 2)
			AddNumText(sceneId, x390004_g_ScriptId,"忘川花海", 9, 3)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	end
end

--**********************************
--事件列表选中一项
--**********************************
function x390004_OnEventRequest( sceneId, selfId, targetId, eventId )--574,忘川
	if GetNumText() == 1  then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 30, 79 )
	elseif GetNumText() == 2  then		
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 433, 141 )
	elseif GetNumText() == 3 then		
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 113, 429 )
	elseif GetNumText() == 4 then		
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 581, 256.211, 378.436 )
	end
end

function x390004_LevelGoto( sceneId, selfId, needLevel,nSid,nX,nZ)
	local	lev	= GetLevel( sceneId, selfId )
	if lev>=needLevel then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, nSid, nX, nZ )
	else
		x390004_MsgBox( sceneId, selfId, targetId, "    #Y您的等级不足呢。" )
	end
end

function x390004_MoneyGoto( sceneId, selfId, needMoney,nSid,nX,nZ)
	local reply = CostMoney(sceneId,selfId,needMoney)
	if reply == -1 then
		x390004_MsgBox( sceneId, selfId, targetId, "    #Y您就别忽悠我了，钱不够呢。" )
	else
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, nSid, nX, nZ )
	end
end

--**********************************
--对话窗口信息提示
--**********************************
function x390004_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x390004_Tips( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
