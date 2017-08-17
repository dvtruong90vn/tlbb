x002200_g_scriptId = 002200

function x002200_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId, "Ta ðßþc tri®u g÷i v« ðây ð¬ giúp các ngß½i thu¥n phøc và nuôi dßÞng trân thú, hãy cho ta biªt yêu c¥u cüa ngß½i?")		
		AddNumText(sceneId, x002200_g_scriptId,"Luy®n kÛ nång trân thú", 6, 1)
		AddNumText(sceneId, x002200_g_scriptId,"Trân thú hoàn ð°ng", 6, 2)
		AddNumText(sceneId, x002200_g_scriptId,"Ki¬m tra mÑc tång trß·ng", 6, 3)
		AddNumText(sceneId, x002200_g_scriptId,"Trân thú sinh sän", 6, 4)
		AddNumText(sceneId, x002200_g_scriptId,"Nh§n trân thú v×a sinh sän", 6, 5)
		AddNumText(sceneId, x002200_g_scriptId,"Dùng cån c¯t ðan nâng cao ngµ tính trân thú", 6, 6)
		AddNumText(sceneId, x002200_g_scriptId,"Thay ð±i tính cách trân thú", 6, 7)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

function x002200_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	if key <= 2 then
		CallScriptFunction( 311111, "OnEnumerate", sceneId, selfId, targetId, key )
	end
	if key == 3 then
		CallScriptFunction( 001050, "OnConfirm", sceneId, selfId, targetId )
	end
	if key == 4 then
		CallScriptFunction( 800101, "OnDefaultEvent", sceneId, selfId, targetId )
	end
	if key == 5 then
		CallScriptFunction( 800102, "OnDefaultEvent", sceneId, selfId, targetId )
	end
	if key == 6 then
		CallScriptFunction( 800106, "OnDefaultEvent", sceneId, selfId, targetId )
	end
	if key == 7 then
		CallScriptFunction( 800108, "OnDefaultEvent", sceneId, selfId, targetId )
	end
end



