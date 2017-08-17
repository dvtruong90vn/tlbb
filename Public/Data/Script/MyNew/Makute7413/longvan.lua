--Long Van
x002198_g_scriptId = 002198

--**********************************
--Main
--**********************************
function x002198_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		AddText(sceneId, "#GLong Vån sau khi h÷c t§p m· rµng thuµc tính, ð±i m¾i Long Vån s¨ không thay ð±i m· rµng thuµc tính.")
		AddText(sceneId, "#cFF0000Chú ý: Trß¾c khi thång c¤p vui lòng tháo gÞ bäo thÕch")
		AddNumText(sceneId, x002198_g_scriptId, "Tång c¤p trß·ng thành", 6, 1)					
		AddNumText(sceneId, x002198_g_scriptId, "Tång c¤p sao", 6, 2)					
		AddNumText(sceneId, x002198_g_scriptId, "H÷c thuµc tính m· rµng", 6, 3)					
		AddNumText(sceneId, x002198_g_scriptId, "Thång c¤p thuµc tính m· rµng", 6, 4)					
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--**********************************
function x002198_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110725)		
	end
	
	if GetNumText() == 2 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110726)		
	end

	if GetNumText() == 3 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GLong vån có th¬ m· rµng thuµc tính, sau khi m· rµng có th¬ thång c¤p thuµc tính!")
			AddNumText(sceneId, x002198_g_scriptId, "H÷c thuµc tính gia tång gi¾i hÕn máu", 6, 31)
			AddNumText(sceneId, x002198_g_scriptId, "H÷c thuµc tính xuyên kháng", 6, 32)
			AddNumText(sceneId, x002198_g_scriptId, "H÷c thuµc tính công kích", 6, 33)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if GetNumText() == 4 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GLong vån có th¬ m· rµng thuµc tính, sau khi m· rµng có th¬ thång c¤p thuµc tính!")
			AddNumText(sceneId, x002198_g_scriptId, "Thång c¤p thuµc tính gia tång gi¾i hÕn máu", 6, 41)
			AddNumText(sceneId, x002198_g_scriptId, "Thång c¤p thuµc tính xuyên kháng", 6, 42)
			AddNumText(sceneId, x002198_g_scriptId, "Thång c¤p thuµc tính công kích", 6, 43)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText() == 31 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110728)
	end
	
	if GetNumText() == 32 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GLong vån có thë m· rµng các thuµc tính xuyên kháng sau:")
			AddNumText(sceneId, x002198_g_scriptId, "Xuyên kháng bång", 6, 321)
			AddNumText(sceneId, x002198_g_scriptId, "Xuyên kháng höa", 6, 322)
			AddNumText(sceneId, x002198_g_scriptId, "Xuyên kháng huy«n", 6, 323)
			AddNumText(sceneId, x002198_g_scriptId, "Xuyên kháng ðµc", 6, 324)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText() == 33 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GLong vån có thë m· rµng các thuµc tính công kích sau:")
			AddNumText(sceneId, x002198_g_scriptId, "Thuµc tính bång công", 6, 331)
			AddNumText(sceneId, x002198_g_scriptId, "Thuµc tính höa công", 6, 332)
			AddNumText(sceneId, x002198_g_scriptId, "Thuµc tính huy«n công", 6, 333)
			AddNumText(sceneId, x002198_g_scriptId, "Thuµc tính ðµc công", 6, 334)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if GetNumText() == 41 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20111729)
	end

	if GetNumText() == 42 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20112729)
	end

	if GetNumText() == 43 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20113729)
	end

	if GetNumText() == 321 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20111728)
	end
	
	if GetNumText() == 322 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20112728)
	end
	
	if GetNumText() == 323 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20113728)
	end
	
	if GetNumText() == 324 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20114728)
	end
	
	if GetNumText() == 331 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20115728)
	end
	
	if GetNumText() == 332 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20116728)
	end
	
	if GetNumText() == 333 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20117728)
	end
	
	if GetNumText() == 334 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20118728)
	end

end
function x002198_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)

	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002182_NotifyFailTips(sceneId,selfId,"Ngß½i hãy s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø nhé!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002197_NotifyFailTips(sceneId,selfId,"Chúc m×ng ngß½i nh§n thß·ng thành công!")

end
