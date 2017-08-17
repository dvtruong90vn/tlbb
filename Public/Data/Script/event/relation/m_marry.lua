--½á»éÈÎÎñ

--½Å±¾ºÅ
x806003_g_ScriptId		= 806003

x806003_g_eventId_marry = 0;				-- ÎÒÏë½á»éµÄÊÂ¼þID
x806003_g_eventId_selectLevel1 = 1;			-- Ñ¡ÔñÒ»°ã¹æÄ£»éÀñµÄÊÂ¼þID
x806003_g_eventId_selectLevel2 = 2;			-- Ñ¡ÔñÖÐµÈ¹æÄ£»éÀñµÄÊÂ¼þID
x806003_g_eventId_selectLevel3 = 3;			-- Ñ¡ÔñºÀ»ª¹æÄ£»éÀñµÄÊÂ¼þID
x806003_g_eventId_selectLevelCancel = 4;	-- È¡ÏûÑ¡Ôñ»éÀñ¹æÄ£µÄÊÂ¼þID
x806003_g_eventId_selfAcceptLevel1 = 5;		-- ×ÔÒÑÈ·¶¨ÁËÑ¡ÔñÒ»°ã¹æÄ£»éÀñ
x806003_g_eventId_selfAcceptLevel2 = 6;		-- ×ÔÒÑÈ·¶¨ÁËÑ¡ÔñÖÐµÈ¹æÄ£»éÀñ
x806003_g_eventId_selfAcceptLevel3 = 7;		-- ×ÔÒÑÈ·¶¨ÁËÑ¡ÔñºÀ»ª¹æÄ£»éÀñ
x806003_g_eventId_selfCancelLevel = 8;		-- ×ÔÒÑÈ¡ÏûÁËÑ¡Ôñ»éÀñ¹æÄ£
x806003_g_eventId_targetAcceptLevel1 = 9;	-- ¶Ô·½È·¶¨ÁËÑ¡ÔñÒ»°ã¹æÄ£»éÀñ
x806003_g_eventId_targetAcceptLevel2 = 10;	-- ¶Ô·½È·¶¨ÁËÑ¡ÔñÖÐµÈ¹æÄ£»éÀñ
x806003_g_eventId_targetAcceptLevel3 = 11;	-- ¶Ô·½È·¶¨ÁËÑ¡ÔñºÀ»ª¹æÄ£»éÀñ
x806003_g_eventId_targetCancelLevel = 12;	-- ¶Ô·½È¡ÏûÁËÑ¡Ôñ»éÀñ¹æÄ£
x806003_g_eventId_end = 13;					-- ½áÊøÓï

x806003_g_ticketItemId = 30505079;			-- ¸ß¼¶»éÀñÈ¯ID
x806003_g_ticketItemId2 = 30505106;			-- ÖÐ¼¶»éÀñÈ¯ID

--**********************************
--ÈÎÎñÈë¿Úº¯Êý ÇëÇó½á»é
--**********************************
function x806003_OnDefaultEvent(sceneId, selfId, targetId)
	local selectEventId	= GetNumText();

	--ÎÒÏë½á»éµÄÊÂ¼þ
	if x806003_g_eventId_marry == selectEventId then
		local canMarry = x806003_CheckOpenMarryLevelUI(sceneId, selfId, targetId);
		if canMarry == 1 then
			x806003_OpenMarryLevelUI(sceneId, selfId, targetId);
		end
	--Ñ¡Ôñ»éÀñ¹æÄ£µÄÊÂ¼þ
	elseif x806003_g_eventId_selectLevel1 == selectEventId or x806003_g_eventId_selectLevel2 == selectEventId or x806003_g_eventId_selectLevel3 == selectEventId then
	
		local marryLevel = 0;
		--ÖÐµÈ
		if x806003_g_eventId_selectLevel2 == selectEventId then
			marryLevel  = 1;
		--ºÀ»ª
		elseif x806003_g_eventId_selectLevel3 == selectEventId then
			marryLevel  = 2;
		end
	
		x806003_SelfCheckSelectMarryLevel(sceneId, selfId, targetId, marryLevel);
		
	--È¡ÏûÑ¡Ôñ»éÀñ¹æÄ£µÄÊÂ¼þ
	elseif x806003_g_eventId_selectLevelCancel == selectEventId then
		BeginUICommand(sceneId);
		EndUICommand(sceneId);
		DispatchUICommand(sceneId, selfId, 1000);
		
	--×ÔÒÑÈ·ÈÏÁËÑ¡Ôñ
	elseif x806003_g_eventId_selfAcceptLevel1 == selectEventId or x806003_g_eventId_selfAcceptLevel2 == selectEventId or x806003_g_eventId_selfAcceptLevel3 == selectEventId then
	
		local marryLevel = 0;
		--ÖÐµÈ
		if x806003_g_eventId_selfAcceptLevel2 == selectEventId then
			marryLevel  = 1;
		--ºÀ»ª
		elseif x806003_g_eventId_selfAcceptLevel3 == selectEventId then
			marryLevel  = 2;
		end
		
		x806003_OnSelfAcceptSelectMarryLevel(sceneId, selfId, targetId, marryLevel);
	
	--×ÔÒÑÈ¡ÏûÁËÑ¡Ôñ»éÀñ¹æÄ£
	elseif x806003_g_eventId_selfCancelLevel == selectEventId then
		local canMarry = x806003_CheckOpenMarryLevelUI(sceneId, selfId, targetId);
		if canMarry == 1 then
			x806003_OpenMarryLevelUI(sceneId, selfId, targetId);
		end
		
	--¶Ô·½È·ÈÏÁËÑ¡Ôñ
	elseif x806003_g_eventId_targetAcceptLevel1 == selectEventId or x806003_g_eventId_targetAcceptLevel2 == selectEventId or x806003_g_eventId_targetAcceptLevel3 == selectEventId then
	
		local marryLevel = 0;
		--ÖÐµÈ
		if x806003_g_eventId_targetAcceptLevel2 == selectEventId then
			marryLevel  = 1;
		--ºÀ»ª
		elseif x806003_g_eventId_targetAcceptLevel3 == selectEventId then
			marryLevel  = 2;
		end
		
		x806003_OnTargetAcceptSelectMarryLevel(sceneId, selfId, targetId, marryLevel);
	
	--¶Ô·½È¡ÏûÁËÑ¡Ôñ»éÀñ¹æÄ£
	elseif x806003_g_eventId_targetCancelLevel == selectEventId then
	
		x806003_OnTargetCancelSelectMarryLevel(sceneId, selfId, targetId);
	
	--½áÊøÓï
	elseif x806003_g_eventId_end == selectEventId then
		BeginUICommand(sceneId);
		EndUICommand(sceneId);
		DispatchUICommand(sceneId, selfId, 1000);
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806003_OnEnumerate(sceneId, selfId, targetId)
	AddNumText(sceneId, x806003_g_ScriptId, "Ta mu¯n l§p gia th¤t", 10, x806003_g_eventId_marry);
end

--**********************************
--¼ì²âÊÇ·ñÂú×ãÓÚ½á»éµÄÌõ¼þ
--**********************************
function x806003_CheckOpenMarryLevelUI(sceneId, selfId, targetId)
	local ret, maleId, femaleId = x806003_CheckMarry(sceneId, selfId, targetId, 0, 1);
	return ret;
end

--**********************************
-- »éÀñ¹æÄ£µÄÑ¡ÔñÒ³Ãæ
--**********************************
function x806003_OpenMarryLevelUI(sceneId, selfId, targetId)
	BeginEvent(sceneId);
		local moneyLevel0 = x806003_CalcNeedMoney(0);
		local moneyLevel1 = x806003_CalcNeedMoney(1);
		local moneyLevel2 = x806003_CalcNeedMoney(2);
		AddText(sceneId, "#{yuelao_jiehun}#r hôn l­ thông thß¶ng, c¥n bö ti«n #{_MONEY"..moneyLevel0.."}; hôn l­ quy mô b§c trung, c¥n tiêu t¯n #{_MONEY"..moneyLevel1.."}. hôn l­ quy mô hào hoa, c¥n tiêu t¯n #{_MONEY"..moneyLevel2.."}");
		AddNumText(sceneId, x806003_g_ScriptId, "Hôn l­ có quy mô thông thß¶ng", 6, x806003_g_eventId_selectLevel1);
		AddNumText(sceneId, x806003_g_ScriptId, "Hôn l­ quy mô b§c trung", 6, x806003_g_eventId_selectLevel2);
		AddNumText(sceneId, x806003_g_ScriptId, "Hôn l­ quy mô hào hoa", 6, x806003_g_eventId_selectLevel3);
		AddNumText(sceneId, x806003_g_ScriptId, "TÕm th¶i ta không chu¦n b¸ l§p gia th¤t..", 8, x806003_g_eventId_selectLevelCancel);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
-- ×ÔÒÑÈ·ÈÏÑ¡ÔñµÄÒ³Ãæ
--**********************************
function x806003_SelfCheckSelectMarryLevel(sceneId, selfId, targetId, marryLevel)
	
	LuaFnSetHumanMarryInfo(sceneId, selfId, -1, 0);

	BeginEvent(sceneId);
		if marryLevel == 2 then
			AddText(sceneId, "Các hÕ ðã ch÷n "..x806003_GetMarryLevelName(marryLevel)..", ð°ng th¶i các hÕ s¨ phäi trä #Y"..GetItemName(sceneId, x806003_g_ticketItemId).."#W ho£c #{_MONEY"..x806003_CalcNeedMoney(marryLevel).."}. #r#rCác ngß½i ðã quyªt ð¸nh l§p gia th¤t chßa, và cuµc s¯ng tiªp t¾i s¨ b¤t di b¤t d¸ch?");
		else
			AddText(sceneId, "Các hÕ ðã ch÷n "..x806003_GetMarryLevelName(marryLevel)..", ð°ng th¶i các hÕ s¨ phäi trä #Y"..GetItemName(sceneId, x806003_g_ticketItemId).."#W ho£c #Y"..GetItemName(sceneId, x806003_g_ticketItemId2).."#W ho£c #{_MONEY"..x806003_CalcNeedMoney(marryLevel).."}. #r#rCác ngß½i ðã quyªt ð¸nh l§p gia th¤t chßa, và cuµc s¯ng tiªp t¾i s¨ b¤t di b¤t d¸ch?");
		end
		local tempAcceptEventID = x806003_g_eventId_selfAcceptLevel1;
		if marryLevel == 1 then
			tempAcceptEventID = x806003_g_eventId_selfAcceptLevel2;
		elseif marryLevel == 2 then
			tempAcceptEventID = x806003_g_eventId_selfAcceptLevel3;
		end		
		AddNumText(sceneId, x806003_g_ScriptId, "Xác nh§n", 6, tempAcceptEventID);
		AddNumText(sceneId, x806003_g_ScriptId, "Hüy bö", 8, x806003_g_eventId_selfCancelLevel);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
	
end

--**********************************
-- ×ÔÒÑÒÑ¾­È·ÈÏÁËÄãµÄÑ¡ÔñµÄÊÂ¼þ
--**********************************
function x806003_OnSelfAcceptSelectMarryLevel(sceneId, selfId, targetId, marryLevel)

	local marryTargetId = x806003_GetMarryTargetId(sceneId, selfId, 1, targetId);
	
	if marryTargetId ~= -1 then
	
		marryTargetGUID = LuaFnGetGUID(sceneId, marryTargetId);
		LuaFnSetHumanMarryInfo(sceneId, selfId, marryTargetGUID, 1);
		
		x806003_TargetCheckSelectMarryLevel(sceneId, selfId, targetId, marryLevel);
		
		x806003_MessageBox(sceneId, selfId, targetId, "Ðþi ð¯i phß½ng xác nh§n...");
		
	end
end

--**********************************
-- ¶Ô·½È·ÈÏÑ¡ÔñµÄÒ³Ãæ
--**********************************
function x806003_TargetCheckSelectMarryLevel(sceneId, selfId, targetId, marryLevel)

	local marryTargetId = x806003_GetMarryTargetId(sceneId, selfId, 1, targetId);
	
	if marryTargetId ~= -1 then
	
		LuaFnSetHumanMarryInfo(sceneId, marryTargetId, -1, 0);
		
		BeginEvent(sceneId);
			if marryLevel == 2 then
				AddText(sceneId, "Ð¯i phß½ng ðã ch÷n "..x806003_GetMarryLevelName(marryLevel)..", ð°ng th¶i ð¯i phß½ng s¨ phäi trä #Y"..GetItemName(sceneId, x806003_g_ticketItemId).."#W ho£c #{_MONEY"..x806003_CalcNeedMoney(marryLevel).."}. #r#rCác ngß½i ðã quyªt ð¸nh l§p gia th¤t chßa, và cuµc s¯ng tiªp t¾i s¨ b¤t di b¤t d¸ch?");
			else
				AddText(sceneId, "Ð¯i phß½ng ðã ch÷n "..x806003_GetMarryLevelName(marryLevel)..", ð°ng th¶i ð¯i phß½ng s¨ phäi trä #Y"..GetItemName(sceneId, x806003_g_ticketItemId).."#W ho£c #Y"..GetItemName(sceneId, x806003_g_ticketItemId2).."#W ho£c #{_MONEY"..x806003_CalcNeedMoney(marryLevel).."}. #r#rCác ngß½i ðã quyªt ð¸nh l§p gia th¤t chßa, và cuµc s¯ng tiªp t¾i s¨ b¤t di b¤t d¸ch?");
			end
			local tempAcceptEventID = x806003_g_eventId_targetAcceptLevel1;
			if marryLevel == 1 then
				tempAcceptEventID = x806003_g_eventId_targetAcceptLevel2;
			elseif marryLevel == 2 then
				tempAcceptEventID = x806003_g_eventId_targetAcceptLevel3;
			end
			AddNumText(sceneId, x806003_g_ScriptId, "Xác nh§n", 6, tempAcceptEventID);
			AddNumText(sceneId, x806003_g_ScriptId, "Hüy bö", 8, x806003_g_eventId_targetCancelLevel);
		EndEvent(sceneId);
		DispatchEventList(sceneId, marryTargetId, targetId);
	end
end

--**********************************
-- ¶Ô·½ÒÑ¾­È·ÈÏÁËÄãµÄÑ¡ÔñµÄÊÂ¼þ
--**********************************
function x806003_OnTargetAcceptSelectMarryLevel(sceneId, selfId, targetId, marryLevel)

	local marryTargetId = x806003_GetMarryTargetId(sceneId, selfId, 1, targetId);
	
	if marryTargetId ~= -1 then
	
		--´ËÊ±µÄself=¶Ô·½
		marryTargetGUID = LuaFnGetGUID(sceneId, marryTargetId);
		LuaFnSetHumanMarryInfo(sceneId, selfId, marryTargetGUID, 1);

		local checkRet, maleId, femaleId = x806003_CheckMarry(sceneId, marryTargetId, targetId, marryLevel, 0);
		if checkRet == 1 then
			x806003_DoMarry(sceneId, marryTargetId, targetId, marryLevel, maleId, femaleId);
		end
		
	end
end

--**********************************
-- ¶Ô·½ÒÑ¾­È¡ÏûÁËÄãµÄÑ¡ÔñµÄÊÂ¼þ
--**********************************
function x806003_OnTargetCancelSelectMarryLevel(sceneId, selfId, targetId, marryLevel)

	--¹Ø±Õ×ÔÒÑµÄ´°¿Ú
	BeginUICommand(sceneId);
	EndUICommand(sceneId);
	DispatchUICommand(sceneId, selfId, 1000);
	
	--ÌáÊ¾ÐÅÏ¢¸ø¶Ô·½
	local marryTargetId = x806003_GetMarryTargetId(sceneId, selfId, 0, targetId);
	
	if marryTargetId ~= -1 then
	
		x806003_MessageBox(sceneId, marryTargetId, targetId, "Ð¯i phß½ng ðã t× ch¯i yêu c¥u...");
		
	end
end

--**********************************
-- ÅÐ¶ÏÊÇ·ñ¿ÉÒÔ½á»é
--**********************************
function x806003_CheckMarry(sceneId, selfId, targetId, marryLevel, isCheckOpenMarryLevelUI)
	local szMsg = "Nªu mu¯n l§p gia th¤t, 2 bên nhà trai và nhà gái cùng h÷p thành mµt nhóm r°i t¾i tìm ta"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end
	
	szMsg = "Nhóm cüa ðµi kªt hôn nh¤t thiªt phäi do hai bên nhà trai-gái hþp thành, không ðßþc có thành viên ngoài"
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end

	szMsg = "Chï có 2 ngß¶i ð«u ðªn bên ta m¾i có th¬ kªt hôn"
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end

	szMsg = "Hai bên b¡t buµc phäi khác gi¾i tính m¾i có th¬ kªt hôn"
	local maleId = -1;
	local femaleId = -1;
	local marryTargetId = -1;
	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		local sexType = LuaFnGetSex(sceneId, memId);
		if sexType == 1 then
			maleId = memId;
		else
			femaleId = memId;
		end
		if memId ~= selfId then
			marryTargetId = memId;
		end
	end
	
	if maleId == -1 or femaleId == -1 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end

	szMsg = "Khi l§p gia th¤t, bên nam phäi ðÕt 35 c¤p, bên næ phäi ðÕt 20 c¤p"
	if LuaFnGetLevel(sceneId, maleId) < 35 or LuaFnGetLevel(sceneId, femaleId) < 20 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end

	szMsg = "Hai bên ð«u phäi chßa kªt hôn m¾i có th¬ kªt hôn"
	if LuaFnIsMarried(sceneId, maleId) > 0 or LuaFnIsMarried(sceneId, femaleId) > 0 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end

	szMsg = "Nªu mu¯n l§p gia th¤t, ðµ hæu häo cüa hai bên c¥n ðÕt t¾i 1000"
	if LuaFnIsFriend(sceneId, maleId, femaleId) ~= 1 or LuaFnIsFriend(sceneId, femaleId, maleId) ~= 1 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end

	if LuaFnGetFriendPoint(sceneId, maleId, femaleId) < 1000 or LuaFnGetFriendPoint(sceneId, femaleId, maleId) < 1000 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end

	szMsg = "Các ngß½i là sß ð°, làm sao có th¬ l§p gia th¤t ðßþc?"
	if LuaFnIsMaster(sceneId, maleId, femaleId) == 1 or LuaFnIsMaster(sceneId, femaleId, maleId) == 1 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end

	szMsg = "Hai bên ðã kªt hôn, không th¬ kªt hôn ðßþc næa"
	if LuaFnIsBrother(sceneId, maleId, femaleId) == 1 or LuaFnIsBrother(sceneId, femaleId, maleId) == 1 then
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0, -1, -1;
	end
	
	if isCheckOpenMarryLevelUI and isCheckOpenMarryLevelUI == 1 then
		return 1, -1, -1;
	end
	
	local ticketItemPos = -1;
	local selectTicketItemId = -1;
	if marryLevel == 2 then
		ticketItemPos = GetBagPosByItemSn(sceneId, selfId, x806003_g_ticketItemId);
		selectTicketItemId = x806003_g_ticketItemId;
	else
		ticketItemPos = GetBagPosByItemSn(sceneId, selfId, x806003_g_ticketItemId2);
		selectTicketItemId = x806003_g_ticketItemId2;
		if not ticketItemPos or ticketItemPos < 0 then
			ticketItemPos = GetBagPosByItemSn(sceneId, selfId, x806003_g_ticketItemId);
			selectTicketItemId = x806003_g_ticketItemId;
		end
	end
	if ticketItemPos and ticketItemPos > -1 then
		local checkRet = LuaFnIsItemAvailable(sceneId, selfId, ticketItemPos);
		if not checkRet or checkRet ~= 1 then
			x806003_MessageBox(sceneId, selfId, targetId, "#Y"..GetItemName(sceneId, selectTicketItemId).."#W cüa các hÕ c¯ ð¸nh r°i, không th¬ giao cho ta ðßþc.");
			x806003_MessageBox(sceneId, marryTargetId, targetId, "#Y "..GetItemName(sceneId, selectTicketItemId).."#W cüa ð¯i phß½ng c¯ ð¸nh r°i, không th¬ giao cho ta ðßþc.");
			return 0, -1, -1;
		end
	else
	--hzp 2008-12-9
		local nMoneyJZ = GetMoneyJZ(sceneId, selfId);
		local nMoneyJB = LuaFnGetMoney(sceneId, selfId);
		local nMoneySelf = nMoneyJZ + nMoneyJB;
		local needMoney = x806003_CalcNeedMoney(marryLevel);
		if nMoneyJZ and nMoneyJB and nMoneySelf and needMoney and nMoneySelf >= needMoney then
		else
			szMsg = "Xin l²i, ngân lßþng trên ngß¶i các hÕ không ðü"
			x806003_MessageBox(sceneId, selfId, targetId, szMsg);
			szMsg = "Xin l²i, ngân lßþng trên ngß¶i ð¯i phß½ng không ðü"
			x806003_MessageBox(sceneId, marryTargetId, targetId, szMsg);
			return 0, -1, -1;
		end
	end
	
	szMsg = "Không gian trong tay näi ðã ð¥y, không th¬ ð£t thêm nhçn cß¾i. Xin ki¬m tra tay näi 2 bên"
	local maleProSpace = LuaFnGetPropertyBagSpace(sceneId, maleId);
	local femaleProSpace = LuaFnGetPropertyBagSpace(sceneId, femaleId);
	if maleProSpace < 1 or femaleProSpace < 1 then
		x806003_MessageBox(sceneId, maleId, targetId, szMsg);
		x806003_MessageBox(sceneId, femaleId, targetId, szMsg);
		return 0, -1, -1;
	end
	
	local selfTaskCount = GetMissionCount(sceneId, selfId);
	if selfTaskCount >= 20 then
		szMsg = "Nhi®m vø ghi chép ðã ð¥y, không th¬ nh§n nhi®m vø m¾i"
		x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		szMsg = "Nhi®m vø ghi chép cüa ð¯i phß½ng ðã ð¥y, không th¬ nh§n nhi®m vø m¾i"
		x806003_MessageBox(sceneId, marryTargetId, targetId, szMsg);
		return 0, -1, -1;
	end
	
	szMsg = "Hai bên vçn chßa hoàn toàn ð°ng ý kªt hôn"
	local maleGUID = LuaFnGetGUID(sceneId, maleId);
	local femaleGUID = LuaFnGetGUID(sceneId, femaleId);
	local maleIsAccept, maleTargetGUID = LuaFnGetHumanMarryInfo(sceneId, maleId);
	if maleIsAccept and maleIsAccept == 1 and maleTargetGUID and maleTargetGUID == femaleGUID then
	else
		x806003_MessageBox(sceneId, maleId, targetId, szMsg);
		return 0, -1, -1;
	end
	
	local femaleIsAccept, femaleTargetGUID = LuaFnGetHumanMarryInfo(sceneId, femaleId);
	if femaleIsAccept and femaleIsAccept == 1 and femaleTargetGUID and femaleTargetGUID == maleGUID then
	else
		x806003_MessageBox(sceneId, femaleId, targetId, szMsg);
		return 0, -1, -1;
	end

	return 1, maleId, femaleId;
end

--**********************************
-- ´¦Àí½á»é
--**********************************
function x806003_DoMarry(sceneId, selfId, targetId, marryLevel, maleId, femaleId)
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		return 0;
	end

	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		return 0;
	end

	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		return 0;
	end

	local maleId = -1;
	local femaleId = -1;
	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		local sexType = LuaFnGetSex(sceneId, memId);
		if sexType == 1 then
			maleId = memId;
		else
			femaleId = memId;
		end
	end

	if maleId == -1 or femaleId == -1 then
		return 0;
	end

	--¿ÛÇ®
	local ticketItemPos = -1;
	local selectTicketItemId = -1;
	if marryLevel == 2 then
		ticketItemPos = GetBagPosByItemSn(sceneId, selfId, x806003_g_ticketItemId);
		selectTicketItemId = x806003_g_ticketItemId;
	else
		ticketItemPos = GetBagPosByItemSn(sceneId, selfId, x806003_g_ticketItemId2);
		selectTicketItemId = x806003_g_ticketItemId2;
		if not ticketItemPos or ticketItemPos < 0 then
			ticketItemPos = GetBagPosByItemSn(sceneId, selfId, x806003_g_ticketItemId);
			selectTicketItemId = x806003_g_ticketItemId;
		end
	end
	if ticketItemPos and ticketItemPos > -1 then
		local checkRet = LuaFnIsItemAvailable(sceneId, selfId, ticketItemPos);
		if not checkRet or checkRet ~= 1 then
			return 0;
		end
		
		local eraseItemRet = EraseItem(sceneId, selfId, ticketItemPos);
		if not eraseItemRet or eraseItemRet ~= 1 then
			return 0;
		end
	else
		--local money = LuaFnGetMoney(sceneId, selfId);
		--local needMoney = x806003_CalcNeedMoney(marryLevel);
		--if money and needMoney and money >= needMoney then
		--hzp 2008-12-9
		local nMoneyJZ = GetMoneyJZ(sceneId, selfId);
		local nMoneyJB = LuaFnGetMoney(sceneId, selfId);
		local nMoneySelf = nMoneyJZ + nMoneyJB;
		local needMoney = x806003_CalcNeedMoney(marryLevel);
		if nMoneyJZ and nMoneyJB and nMoneySelf and needMoney and nMoneySelf >= needMoney then
		else
			return 0;
		end

		--LuaFnCostMoney(sceneId, selfId, needMoney);	
		LuaFnCostMoneyWithPriority(sceneId, selfId, needMoney);	
	end

	--Ôö¼Ó³ÆºÅ
	local maleName = LuaFnGetName(sceneId, maleId);
	local femaleName = LuaFnGetName(sceneId, femaleId);

	LuaFnAwardSpouseTitle(sceneId, femaleId, maleName .. " Nß½ng TØ");
	DispatchAllTitle(sceneId, femaleId);

	LuaFnAwardSpouseTitle(sceneId, maleId, femaleName .. " Phu Quân");
	DispatchAllTitle(sceneId, maleId);

	--·¢½äÖ¸
	local pos;
	local ringItemId = x806003_GetRingByMarryLevel(marryLevel);
	pos	= TryRecieveItem(sceneId, maleId, ringItemId, 1);
	if pos and pos ~= -1 then
		LuaFnSetItemCreator(sceneId, maleId, pos, femaleName);
	end

	pos	= TryRecieveItem(sceneId, femaleId, ringItemId, 1);
	if pos and pos ~= -1 then
		LuaFnSetItemCreator(sceneId, femaleId, pos, maleName);
	end
	
	--ÖØÎÂ»éÀñ¼ÆÊýÇå0
	SetMissionData( sceneId, maleId, MD_TW_REEXPERIENCE_WEDDING_TOTAL_COUNT, 0 )
	SetMissionData( sceneId, femaleId, MD_TW_REEXPERIENCE_WEDDING_TOTAL_COUNT, 0 )
	
	--ÕýÊ½½á»é
	LuaFnMarry(sceneId, maleId, femaleId, marryLevel);
	
	--¼ÓÈëÐÂÈÎÎñ
	CallScriptFunction( 250036, "OnAccept", sceneId, selfId, marryLevel);

	--ÁÄÌì´°¿Ú¸øÄÐ·½ÌáÊ¾
	--Msg2Player(sceneId, maleId, "¹§Ï²ÄãºÍ"..femaleName.."½áÎª·òÆÞ£¡", MSG2PLAYER_PARA);
	Msg2Player(sceneId, maleId, "Các hÕ ðÕt thêm danh xßng \'"..femaleName.."Phu quân cüa \'", MSG2PLAYER_PARA);

	--ÁÄÌì´°¿Ú¸øÅ®·½ÌáÊ¾
	--Msg2Player(sceneId, femaleId, "¹§Ï²ÄãºÍ"..maleName.."½áÎª·òÆÞ£¡", MSG2PLAYER_PARA);
	Msg2Player(sceneId, femaleId, "Các hÕ ðÕt thêm danh xßng \'"..maleName.."Nß½ng tØ cüa \'", MSG2PLAYER_PARA);
	
	local ringItemName = GetItemName(sceneId, ringItemId);
	if ringItemName then
		Msg2Player(sceneId, maleId, "Các hÕ ðã ðÕt ðßþc "..ringItemName..".", MSG2PLAYER_PARA );
		Msg2Player(sceneId, femaleId, "Các hÕ ðã ðÕt ðßþc "..ringItemName..".", MSG2PLAYER_PARA);
		end
	
	--ÊÀ½ç¹«¸æ
	local strChatMessage = "#cffffcc Xin chúc m×ng#W#{_INFOUSR"..maleName.."}#cffffcc và #W#{_INFOUSR"..femaleName.."} #cffffccvînh kªt ð°ng tâm, nguy®n chúc cho 2 ngß¶i ð¥u bÕc rång long, vînh kªt ð°ng tâm, hÕnh phúc su¯t ð¶i #W";
	BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;SCA:"..strChatMessage, 4);
	
	--·Ö±ð·¢EMAIL¸øÄÐÅ®Ë«·½ÉÏÃæµÄËùÓÐºÃÓÑ
	local maleGuid = LuaFnGetGUID(sceneId, maleId);
	local femaleGuid = LuaFnGetGUID(sceneId, femaleId);
	LuaFnSendMailToAllFriend( sceneId, maleId, "B¢ng hæu yêu quý cüa ta, ta ðã cùng " .. femaleName .. " hï kªt lß½ng duyên, hãy chúc phúc cho chúng ta!", 1, femaleGuid )
	LuaFnSendMailToAllFriend( sceneId, femaleId, "B¢ng hæu yêu quý cüa ta, ta ðã cùng " .. maleName .. " hï kªt lß½ng duyên, hãy chúc phúc cho chúng ta!", 1, maleGuid )

	--½áÊøÓï
	local endMsg = "Chúc m×ng các ngß¶i hï kªt liên lý, m¶i xu¯ng g£p Hï Lai LÕc (177, 94) tÕi LÕc Dß½ng ð¬ s¡p xªp ki®u hoa rß¾c dâu. Nhßng Hï Lai LÕc phø trách toàn bµ vi®c hï cüa LÕc Dß½ng, ngày nào cûng b§n t¯i m¡t t¯i mûi. Vì v§y trong vòng 1 canh gi¶, nªu các ngß½i không t¾i g£p ngay, quá gi¶ s¨ không có cách khác";
	BeginEvent(sceneId);
		AddText(sceneId, endMsg);
		AddNumText(sceneId, x806003_g_ScriptId, "Ða tÕ..", 8, x806003_g_eventId_end);
	EndEvent(sceneId);
	DispatchEventList(sceneId, maleId, targetId);
	
	BeginEvent(sceneId);
		AddText(sceneId, endMsg);
		AddNumText(sceneId, x806003_g_ScriptId, "Ða tÕ..", 8, x806003_g_eventId_end);
	EndEvent(sceneId);
	DispatchEventList(sceneId, femaleId, targetId);
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806003_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--¼ÆËã»éÀñ¶ÔÓ¦µÄÇ®Êý
--**********************************
function x806003_CalcNeedMoney(marryLevel)
	if marryLevel == 1 then
		return 5203344;
	elseif marryLevel == 2 then
		return 13145200;
	else
		return 520520;
	end
end

--**********************************
--µÃ»éÀñµÈ¼¶¶ÔÓ¦µÄÃû³Æ
--**********************************
function x806003_GetMarryLevelName(marryLevel)
	if marryLevel == 1 then
		return "Hôn l­ b§c trung ";
	elseif marryLevel == 2 then
		return "Hôn l­ sang tr÷ng ";
	else
		return "Hôn l­ thông thß¶ng ";
	end
end

--**********************************
--µÃ»éÀñµÈ¼¶¶ÔÓ¦µÄ½äÖ¸µÄID
--**********************************
function x806003_GetRingByMarryLevel(marryLevel)
	if marryLevel == 1 then
		return 10422097;
	elseif marryLevel == 2 then
		return 10422098;
	else
		return 10422096;
	end
end

--**********************************
--µÃ¶Ô·½µÄobjId
--**********************************
function x806003_GetMarryTargetId(sceneId, selfId, showMessage, targetId)

	local marryTargetId = -1;
	
	local szMsg = "Nªu mu¯n l§p gia th¤t, 2 bên nhà trai và nhà gái cùng h÷p thành mµt nhóm r°i t¾i tìm ta"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		if showMessage and showMessage == 1 then
			x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		end
		return -1;
	end
	
	szMsg = "Nhóm cüa ðµi kªt hôn nh¤t thiªt phäi do hai bên nhà trai-gái hþp thành, không ðßþc có thành viên ngoài"
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		if showMessage and showMessage == 1 then
			x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		end
		return -1;
	end

	szMsg = "Chï có 2 ngß¶i ð«u ðªn bên ta m¾i có th¬ kªt hôn"
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		if showMessage and showMessage == 1 then
			x806003_MessageBox(sceneId, selfId, targetId, szMsg);
		end
		return -1;
	end

	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		if memId ~= selfId then
			marryTargetId = memId;
		end
	end
	
	return marryTargetId;
	
end
