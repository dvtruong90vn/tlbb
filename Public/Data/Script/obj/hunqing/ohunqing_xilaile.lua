--»éÇì¸±±¾NPC
--ÆÕÍ¨

x155000_g_ScriptId = 155000			--½Å±¾ID--add by xindefeng

x155000_g_eventId_cancel = 0;		--ÎÒÃ»Ê²Ã´ÊÂÇé¡­¡­
x155000_g_eventId_leave = 1;		--ÎÒÒªÔÝÊ±³öÈ¥Ò»ÏÂ
x155000_g_eventId_done = 2;			--¿ÉÒÔ¹Ø±ÕÀñÌÃÁË
x155000_g_eventId_redeem = 3;		--ÇëÌû¶Ò»»ÀñÎï

x155000_g_invitationDataId_level1  = 30303100;		-- ÆÕÍ¨ÇëÌûID
x155000_g_invitationDataId_level2  = 30303101;		-- ¸ß¼¶ÇëÌûID
x155000_g_invitationDataId_level3  = 30303102;		-- ºÀ»ªÇëÌûID

x155000_g_gemList = {{id=50101001, rate=24},
					{id=50101002, rate=24},
					{id=50111001, rate=24},
					{id=50111002, rate=24},
					{id=50104002, rate=4}};
					
x155000_g_redeemList = {{id=x155000_g_invitationDataId_level3, gemRate=10, moneyRate=90, money=30000},
						{id=x155000_g_invitationDataId_level2, gemRate=20, moneyRate=80, money=15000},
						{id=x155000_g_invitationDataId_level1, gemRate=10, moneyRate=90, money=10000}}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x155000_OnDefaultEvent(sceneId, selfId, targetId)
	BeginEvent(sceneId);
		local selfGUID = LuaFnGetGUID(sceneId, selfId);
		local marryCharGUID_A, marryCharGUID_B;
		marryCharGUID_A = LuaFnGetCopySceneData_Param(sceneId, 6);
		marryCharGUID_B = LuaFnGetCopySceneData_Param(sceneId, 7);
		local bSelfWedding = 0;
		if selfGUID and marryCharGUID_A and marryCharGUID_B then
			if marryCharGUID_A < 0 then
				marryCharGUID_A = marryCharGUID_A + 4294967296;
			end
			if marryCharGUID_B < 0 then
				marryCharGUID_B = marryCharGUID_B + 4294967296;
			end
			if selfGUID == marryCharGUID_A or selfGUID == marryCharGUID_B then
				bSelfWedding = 1;
			end
		end
		if bSelfWedding == 1 then
			AddText(sceneId,"Thª nào? Hôn l­ ðã cØ hành xong r°i chÑ?");
			AddNumText(sceneId, x155000_g_eventId_done, "#GChúng tôi ð«u b§n cä r°i.", -1, x155000_g_eventId_done);
		else
			AddText(sceneId,"Thª nào? Tham gia hôn l­ cüa bÕn hæu r¤t vui phäi không. Trß¾c khi ði ð×ng quên c¥m thi®p m¶i ðªn nh§t quà t£ng, bö lÞ d¸p này s¨ không ðßþc nh§n lÕi ðâu");
			AddNumText(sceneId, x155000_g_eventId_redeem, "Ð±i thi®p m¶i l¤y quà t£ng", 6, x155000_g_eventId_redeem);
		end
		
		-- Èç¹ûÕýÔÚ¹Ø±ÕÀñÌÃÔò²»ÄÜ¡°ÔÝÊ±³öÈ¥¡±
		local leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4);
		if leaveFlag == 0 then
			AddNumText(sceneId, x155000_g_eventId_leave, "TÕi hÕ mu¯n tÕm ra ngoài mµt lát", 9, x155000_g_eventId_leave);
		end
		
		AddNumText(sceneId, x155000_g_eventId_cancel, "TÕi hÕ không có vi®c gì...", -1, x155000_g_eventId_cancel);
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end


--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x155000_OnEventRequest(sceneId, selfId, targetId, eventId)
	if eventId == x155000_g_eventId_cancel then
		BeginUICommand(sceneId);
		EndUICommand(sceneId);
		DispatchUICommand(sceneId, selfId, 1000);
	elseif eventId == x155000_g_eventId_leave then
		CallScriptFunction( 401030, "PlayerExit", sceneId, selfId);
	elseif eventId == x155000_g_eventId_done then	--Ôö¼ÓÈ·ÈÏÒ³,·ÀÖ¹Íæ¼Òµã´íÁË--modify by xindefeng		
		BeginEvent( sceneId )
			AddText( sceneId, "Ngß½i xác ð¸nh hôn l­ ðã xong sao? Ngß½i không th¬ quay lÕi l­ ðß¶ng!" )
			AddNumText(sceneId, x155000_g_ScriptId, "Ta xác ð¸nh hôn l­ ðã ch¤m dÑt.", 8, 100 )
			AddNumText(sceneId, x155000_g_ScriptId, "Ta không có chuy®n gì...", 8, 101 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif eventId == x155000_g_eventId_redeem then
		x155000_Redeem(sceneId, selfId, targetId);	
	end
	
	--Ê¹ÓÃNumTextÅÐ¶Ï	--add by xindefeng
	local NumText = GetNumText()	
	if NumText == 100 then	--È·ÈÏ½áÊø,Àë¿ª¸±±¾
		--¹Ø±Õ´°¿Ú
		BeginUICommand( sceneId )			
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
		
		--Àë¿ª¸±±¾
		CallScriptFunction( 401030, "Close", sceneId, selfId)		
	elseif NumText == 101	then	--µã´íÁË,¹Ø±Õ¶Ô»°´°¿Ú
		BeginUICommand( sceneId )			
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	end
			
end

--**********************************
--ÇëÌû¶Ò»»ÀñÎï
--**********************************
function x155000_Redeem(sceneId, selfId, targetId)
	local selfGUID = LuaFnGetGUID(sceneId, selfId);
	local marryCharGUID_A, marryCharGUID_B;
	marryCharGUID_A = LuaFnGetCopySceneData_Param(sceneId, 6);
	marryCharGUID_B = LuaFnGetCopySceneData_Param(sceneId, 7);
	if selfGUID then
		if marryCharGUID_A and marryCharGUID_A < 0 then
			marryCharGUID_A = marryCharGUID_A + 4294967296;
		end
		if marryCharGUID_B and marryCharGUID_B < 0 then
			marryCharGUID_B = marryCharGUID_B + 4294967296;
		end
		
		if marryCharGUID_A and selfGUID == marryCharGUID_A then
			x155000_MessageBox(sceneId, selfId, targetId, "Mau phát thi®p m¶i cho các b¢ng hæu cüa các hÕ ðªn nh§n quà t£ng!");
			return 0;
		end
		
		if marryCharGUID_B and selfGUID == marryCharGUID_B then
			x155000_MessageBox(sceneId, selfId, targetId, "Mau phát thi®p m¶i cho các b¢ng hæu cüa các hÕ ðªn nh§n quà t£ng!");
			return 0;
		end
	end

	local itemIdList = {x155000_g_invitationDataId_level3, x155000_g_invitationDataId_level2, x155000_g_invitationDataId_level1};
	local itemId;
	local itemPos;
	local haveInvitation = 0;
	for _, itemId in itemIdList do
		local i, maxCount;
		maxCount = 100;
		itemPos = 0;
		for i = 0, maxCount - 1 do
			itemPos = LuaFnGetItemPosByItemDataID(sceneId, selfId, itemId, itemPos + 1);
			if itemPos and itemPos > -1 then
				local creatorGUID = GetBagItemParam(sceneId, selfId, itemPos, 0, 2);
				if creatorGUID then
					if creatorGUID == marryCharGUID_A or creatorGUID == marryCharGUID_B then
						haveInvitation = 1;
						break;
					end
				end
			end
		end
		
		if haveInvitation == 1 then
			break;
		end
	end

	if haveInvitation == 1 then
		local itemDataId = GetItemTableIndexByIndex(sceneId, selfId, itemPos);
		if itemDataId then
			local tempRedeemItem;		
			for _, tempRedeemItem in x155000_g_redeemList do
				if tempRedeemItem.id == itemDataId then
					local retGetName, itemCreatorName = LuaFnGetItemCreator(sceneId, selfId, itemPos);
					local eraseItemRet = EraseItem(sceneId, selfId, itemPos);
					if eraseItemRet and eraseItemRet == 1 then
						local totalRate = tempRedeemItem.gemRate + tempRedeemItem.moneyRate;
						local randValue = random(totalRate);
						if randValue < tempRedeemItem.gemRate then
							local totalGemRate = 0;
							local gemItem;
							for _, gemItem in x155000_g_gemList do
								totalGemRate = totalGemRate + gemItem.rate;
							end
							local randGemValue = random(totalGemRate);
							for _, gemItem in x155000_g_gemList do
								if randGemValue < gemItem.rate then
									LuaFnBeginAddItem(sceneId);
									LuaFnAddItem(sceneId, gemItem.id, 1);
									local addItemRet = LuaFnEndAddItem(sceneId, selfId);
									if addItemRet and addItemRet == 1 then
										LuaFnAddItemListToHuman(sceneId, selfId);
										local selfName = LuaFnGetName(sceneId, selfId);
										local gemTransfer = GetItemTransfer(sceneId, selfId, 0);
										local gemName = GetItemName(sceneId, gemItem.id);
										if selfName and itemCreatorName and gemName and gemTransfer then
											BroadMsgByChatPipe(sceneId, selfId, "#W#{_INFOUSR"..selfName.."}#ITÕi #W#{_INFOUSR"..itemCreatorName.."}#I trong Hôn L­, ðã dùng thi®p m¶i ð±i ðßþc 1 viên #W#{_INFOMSG"..gemTransfer.."}#I.", 4);
											x155000_MessageBox(sceneId, selfId, targetId, "Các hÕ ðã ð±i ðßþc 1 viên "..gemName..".");
										end
									end
									break;
								end
								randGemValue = randGemValue - gemItem.rate;
							end
						else
							LuaFnAddMoney(sceneId, selfId, tempRedeemItem.money);
							x155000_MessageBox(sceneId, selfId, targetId, "Các hÕ ðã ð±i ðßþc #{_MONEY"..tempRedeemItem.money.."}.");
						end
						break;
					end
				end
			end
		end
	else
		x155000_MessageBox(sceneId, selfId, targetId, "Xin l²i, các hÕ không có thi®p m¶i cüa cuµc hôn l­ này, vì v§y không th¬ ð±i quà t£ng.");
	end
end


--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x155000_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

