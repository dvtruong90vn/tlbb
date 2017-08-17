--Vo Hon
x002201_g_scriptId = 002201


function x002201_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		AddText(sceneId,"Thª gian là nhà, ngß½i có mu¯n cùng ta ngao du thiên hÕ hay không?")
		AddNumText(sceneId, x002201_g_scriptId, "Quay v« #GMôn Phái", 13, 1)
		AddNumText(sceneId, x002201_g_scriptId, "Ğªn các #GThành Th¸", 13, 2)
		AddNumText(sceneId, x002201_g_scriptId, "Ğªn n½i #GLuy®n C¤p", 13, 3)
		AddNumText(sceneId, x002201_g_scriptId, "Thäo phÕt #GCß¶ng ĞÕo", 13, 5)
		AddNumText(sceneId, x002201_g_scriptId, "Ta mu¯n · lÕi n½i ğây", 0, 6)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--**********************************
function x002201_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	if key == 1 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Ngß½i mu¯n ğªn môn phái nào?")
			AddNumText(sceneId, x002201_g_scriptId, "Môn Phái - Thiªu Lâm", 13, 10)
			AddNumText(sceneId, x002201_g_scriptId, "Môn Phái - Minh Giáo", 13, 11)
			AddNumText(sceneId, x002201_g_scriptId, "Môn Phái - Cái Bang", 13, 12)
			AddNumText(sceneId, x002201_g_scriptId, "Môn Phái - Võ Ğang", 13, 13)
			AddNumText(sceneId, x002201_g_scriptId, "Môn Phái - Nga My", 13, 14)
			AddNumText(sceneId, x002201_g_scriptId, "Môn Phái - Tinh Túc", 13, 15)
			AddNumText(sceneId, x002201_g_scriptId, "Môn Phái - Thiên Long", 13, 16)
			AddNumText(sceneId, x002201_g_scriptId, "Môn Phái - Thiên S½n", 13, 17)
			AddNumText(sceneId, x002201_g_scriptId, "Môn Phái - Tiêu Dao", 13, 18)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
	end
	
	if key == 2 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Ngß½i mu¯n ğªn thành th¸ nào?")
			AddNumText(sceneId, x002201_g_scriptId, "Thành Th¸ - ĞÕi Lı", 13, 26)
			AddNumText(sceneId, x002201_g_scriptId, "Thành Th¸ - LÕc Dß½ng", 13, 20)
			AddNumText(sceneId, x002201_g_scriptId, "Thành Th¸ - LÕc Dß½ng - CØu Châu Thß½ng Hµi", 13, 21)
			AddNumText(sceneId, x002201_g_scriptId, "Thành Th¸ - Tô Châu", 13, 22)
			AddNumText(sceneId, x002201_g_scriptId, "Thành Th¸ - Tô Châu - Thiªt Tßşng Ph¯", 13, 23)
			AddNumText(sceneId, x002201_g_scriptId, "Thành Th¸ - Lâu Lan", 13, 24)
			AddNumText(sceneId, x002201_g_scriptId, "Thành Th¸ - Thúc Hà C± Tr¤n", 13, 25)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
	end
	
	if key == 3 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Ngß½i mu¯n ğªn n½i nào?")
			AddNumText(sceneId, x002201_g_scriptId, "Yªn Vß½ng C± Mµ", 13, 30)
			AddNumText(sceneId, x002201_g_scriptId, "T¥n Hoàng Ğ¸a Cung", 13, 31)
			AddNumText(sceneId, x002201_g_scriptId, "Cao Xß½ng Mê Cung", 13, 32)
			AddNumText(sceneId, x002201_g_scriptId, "Höa Di®m C¯c", 13, 33)
			AddNumText(sceneId, x002201_g_scriptId, "Tháp Kh¡c LÕp Mã Can", 13, 34)
			AddNumText(sceneId, x002201_g_scriptId, "Côn Lôn S½n", 13, 35)
			AddNumText(sceneId, x002201_g_scriptId, "Hãn Huyªt Lînh", 13, 36)
			AddNumText(sceneId, x002201_g_scriptId, "Tát Mã Nhî Hãn", 13, 37)
			AddNumText(sceneId, x002201_g_scriptId, "Thông Thiên Tháp Ğ¸a Cung", 13, 38)
			AddNumText(sceneId, x002201_g_scriptId, "Thông Thiên Tháp T¥ng 1", 13, 39)
			AddNumText(sceneId, x002201_g_scriptId, "Thông Thiên Tháp T¥ng 2", 13, 40)
			AddNumText(sceneId, x002201_g_scriptId, "Thông Thiên Tháp T¥ng 3", 13, 41)
			AddNumText(sceneId, x002201_g_scriptId, "Ğïnh Thông Thiên Tháp", 13, 42)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
	end
	
	if key == 5 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Ngß½i mu¯n ğªn n½i nào?")
			AddNumText(sceneId, x002201_g_scriptId, "Giäi cÑu #GQuân Thiên Thành", 13, 51)
			AddNumText(sceneId, x002201_g_scriptId, "Giäi cÑu #GLa Phù Thành", 13, 52)
			AddNumText(sceneId, x002201_g_scriptId, "Giäi cÑu #GTri«u Kinh Thành", 13, 53)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
	end
	
	if key >= 10 and key <= 19 then
		local MonPhai = {}
			MonPhai[10] = {9, 96, 127}
			MonPhai[11] = {11, 98, 167}
			MonPhai[12] = {10, 91, 116}
			MonPhai[13] = {12, 103, 140}
			MonPhai[14] = {15, 89, 139}
			MonPhai[15] = {16, 96, 152}
			MonPhai[16] = {13, 96, 120}
			MonPhai[17] = {17, 95, 120}
			MonPhai[18] = {14, 67, 145}
			
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,MonPhai[key][1],MonPhai[key][2],MonPhai[key][3])
	end
	
	if key >= 20 and key <= 29 then
		local ThanhThi = {}
			ThanhThi[20] = {0, 233, 321}
			ThanhThi[21] = {0, 325, 270}
			ThanhThi[22] = {1, 202, 257}
			ThanhThi[23] = {1, 331, 226}
			ThanhThi[24] = {186, 286, 129}
			ThanhThi[25] = {420, 200, 211}
			ThanhThi[26] = {2, 252, 124}
		
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,ThanhThi[key][1],ThanhThi[key][2],ThanhThi[key][3])
	end
	
	if key >= 30 and key <= 42 then
		local MapTrain = {}
			MapTrain[30] = {159, 67, 90}
			MapTrain[31] = {400, 226, 220}
			MapTrain[32] = {520, 100, 100}
			MapTrain[33] = {519, 71, 29}
			MapTrain[34] = {427, 36, 23}
			MapTrain[35] = {541, 110, 20}
			MapTrain[36] = {432, 92, 92}
			MapTrain[37] = {536, 40, 220}
			MapTrain[38] = {544, 255, 375}
			MapTrain[39] = {545, 255, 375}
			MapTrain[40] = {546, 255, 355}
			MapTrain[41] = {547, 260, 300}
			MapTrain[42] = {548, 260, 274}
			
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,MapTrain[key][1],MapTrain[key][2],MapTrain[key][3])
	end

	if key >= 50 and key <= 59 then
		local CuongDao = {}
			CuongDao[51] = {560, 105, 115}
			CuongDao[52] = {561, 95, 150}
			CuongDao[53] = {562, 155, 145}

		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,CuongDao[key][1],CuongDao[key][2],CuongDao[key][3])
	end

	if key == 6 then
		x002201_CloseMe( sceneId, selfId )
	end
end

function x002201_CloseMe( sceneId, selfId )
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
end


