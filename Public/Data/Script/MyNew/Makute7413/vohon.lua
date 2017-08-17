--Vo Hon
x002199_g_scriptId = 002199


function x002199_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		AddText(sceneId,"Võ h°n có th¬ thång c¤p, có th¬ m· rµng thuµc tính, có th¬ lînh hµi kÛ nång. Ngß½i mu¯n ta giúp gì?")
		AddNumText(sceneId, x002196_g_scriptId, "T¦y lÕi ðµ trß·ng thành", 6, 0)
		AddNumText(sceneId, x002196_g_scriptId, "Thång c¤p hþp thành", 6, 1)
		AddNumText(sceneId, x002196_g_scriptId, "M· rµng khung thuµc tính", 6, 2)
		AddNumText(sceneId, x002196_g_scriptId, "H÷c thuµc tính m· rµng", 6, 3)
		AddNumText(sceneId, x002196_g_scriptId, "Thång c¤p thuµc tính m· rµng", 6, 4)
		AddNumText(sceneId, x002196_g_scriptId, "Lînh hµi kÛ nång võ h°n", 6, 5)
		AddNumText(sceneId, x002196_g_scriptId, "Thång c¤p kÛ nång võ h°n", 6, 6)
		AddNumText(sceneId, x002196_g_scriptId, "T¦y lÕi kÛ nång võ h°n", 6, 7)
		AddNumText(sceneId, x002196_g_scriptId, "Thay ð±i c¥m tinh võ h°n", 6, 8)
		AddNumText(sceneId, x002196_g_scriptId, "Quay lÕi sau", 8, 9)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--**********************************
function x002199_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 0 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Võ h°n có th¬ thay ð±i tï l® trß·ng thành:")
			AddNumText(sceneId, x002196_g_scriptId, "H°i Thiên Tinh ThÕch", 6, 10)
			AddNumText(sceneId, x002196_g_scriptId, "H°i Thiên Th¥n ThÕch", 6, 11)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 1 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,2)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090721  )
	end
	
	if key == 2 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,4)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090721  )
	end
	
	if key == 3 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,5)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090721  )
	end
	
	if key == 4 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,1)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090720  )
	end
	
	if key == 5 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,1)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end

	if key == 6 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Thång c¤p kÛ nång võ h°n:")
			AddNumText(sceneId, x002196_g_scriptId, "KÛ nång thÑ nh¤t", 6, 61)
			AddNumText(sceneId, x002196_g_scriptId, "KÛ nång thÑ hai", 6, 62)
			AddNumText(sceneId, x002196_g_scriptId, "KÛ nång thÑ ba", 6, 63)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if key == 7 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,2)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end
	
	if key == 8 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,3)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end
	
	if key == 9 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	
	if key == 10 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,4)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end
	
	if key == 11 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,5)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end
	
	if key == 61 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,1)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090723  )
	end
	
	if key == 62 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,2)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090723  )
	end
	
	if key == 63 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,3)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090723  )
	end
end



