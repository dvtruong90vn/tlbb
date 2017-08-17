--¹ºÂòÇëÌû

--½Å±¾ºÅ
x806017_g_ScriptId = 806017;

x806017_g_invitationDataId_level1  = 30303100;		-- ÆÕÍ¨ÇëÌûID
x806017_g_invitationDataId_level2  = 30303101;		-- ¸ß¼¶ÇëÌûID
x806017_g_invitationDataId_level3  = 30303102;		-- ºÀ»ªÇëÌûID


--EventId½âÊÍ
--1234
--||++--¹ºÂò¸öÊý(1,5,10)
--|+----¹ºÂòµÈ¼¶(0,1,2)
--+-----²Ëµ¥ID(0=Ë¢ÐÂÁÐ±í£¬1=Ñ¡ÔñµÈ¼¶£¬2=Ñ¡Ôñ¸öÊý£¬3=ÊÇ·ñÈ·¶¨)

x806017_g_eventId_update = 0;			--Ë¢ÐÂÁÐ±í
x806017_g_eventId_cancel = 1;			--¹Ø±Õ
x806017_g_eventId_select_level = 1000;	--Ñ¡ÔñµÈ¼¶
x806017_g_eventId_select_count = 2000;	--Ñ¡Ôñ¸öÊý
x806017_g_eventId_select_buy = 3000;	--ÊÇ·ñÈ·¶¨

--x806017_g_eventId_update = 0;				-- ¹ºÂòÇëÌû
--x806017_g_eventId_level_0 = 1000;			-- ÆÕÍ¨ÇëÌû
--x806017_g_eventId_level_1 = 1100;			-- ¸ß¼¶ÇëÌû
--x806017_g_eventId_level_2 = 1200;			-- ºÀ»ªÇëÌû

--x806017_g_eventId_count_0_1 = 2001;		-- ¹ºÂòÒ»ÕÅÆÕÍ¨ÇëÌû
--x806017_g_eventId_count_0_5 = 2005;		-- ¹ºÂòÎåÕÅÆÕÍ¨ÇëÌû
--x806017_g_eventId_count_0_10 = 2010;		-- ¹ºÂòÊ®ÕÅÆÕÍ¨ÇëÌû
					   
--x806017_g_eventId_count_1_1 = 2101;		-- ¹ºÂòÒ»ÕÅ¸ß¼¶ÇëÌû
--x806017_g_eventId_count_1_5 = 2105;		-- ¹ºÂòÎåÕÅ¸ß¼¶ÇëÌû
--x806017_g_eventId_count_1_10 = 2110;		-- ¹ºÂòÊ®ÕÅ¸ß¼¶ÇëÌû
					   
--x806017_g_eventId_count_2_1 = 2201;		-- ¹ºÂòÒ»ÕÅºÀ»ªÇëÌû
--x806017_g_eventId_count_2_5 = 2205;		-- ¹ºÂòÎåÕÅºÀ»ªÇëÌû
--x806017_g_eventId_count_2_10 = 2210;		-- ¹ºÂòÊ®ÕÅºÀ»ªÇëÌû

--x806017_g_eventId_buy_0_1 = 3001;			-- ¹ºÂòÒ»ÕÅÆÕÍ¨ÇëÌû
--x806017_g_eventId_buy_0_5 = 3005;			-- ¹ºÂòÎåÕÅÆÕÍ¨ÇëÌû
--x806017_g_eventId_buy_0_10 = 3010;		-- ¹ºÂòÊ®ÕÅÆÕÍ¨ÇëÌû
					  
--x806017_g_eventId_buy_1_1 = 3101;			-- ¹ºÂòÒ»ÕÅ¸ß¼¶ÇëÌû
--x806017_g_eventId_buy_1_5 = 3105;			-- ¹ºÂòÎåÕÅ¸ß¼¶ÇëÌû
--x806017_g_eventId_buy_1_10 = 3110;		-- ¹ºÂòÊ®ÕÅ¸ß¼¶ÇëÌû
					  
--x806017_g_eventId_buy_2_1 = 3201;			-- ¹ºÂòÒ»ÕÅºÀ»ªÇëÌû
--x806017_g_eventId_buy_2_5 = 3205;			-- ¹ºÂòÎåÕÅºÀ»ªÇëÌû
--x806017_g_eventId_buy_2_10 = 3210;		-- ¹ºÂòÊ®ÕÅºÀ»ªÇëÌû

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x806017_OnDefaultEvent(sceneId, selfId, targetId)
	local selectEventId = GetNumText();

	if selectEventId then
		if selectEventId > x806017_g_eventId_select_buy - 1 then
			local level = floor((selectEventId - x806017_g_eventId_select_buy)/100);
			local count = mod(selectEventId, 100);
			x806017_OnBuy(sceneId, selfId, targetId, level, count);
			
		elseif selectEventId > x806017_g_eventId_select_count - 1 then
			local level = floor((selectEventId - x806017_g_eventId_select_count)/100);
			local count = mod(selectEventId, 100);
			x806017_OnSelectCount(sceneId, selfId, targetId, level, count);
			
		elseif selectEventId > x806017_g_eventId_select_level - 1 then
			local level = floor((selectEventId - x806017_g_eventId_select_level)/100);
			x806017_OnSelectLevel(sceneId, selfId, targetId, level);
			
		elseif selectEventId == x806017_g_eventId_update then
			x806017_OnUpdate(sceneId, selfId, targetId);
		else
			BeginUICommand(sceneId);
			EndUICommand(sceneId);
			DispatchUICommand(sceneId, selfId, 1000);
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806017_OnEnumerate(sceneId, selfId, targetId)
	--local isMarried = LuaFnIsMarried(sceneId, selfId);
	--if isMarried and isMarried == 0 then
		AddNumText(sceneId, x806017_g_ScriptId, "Mua thi®p m¶i", 7, x806017_g_eventId_update);
	--end
end

--**********************************
--Ë¢ÐÂ¹ºÂòÇëÌûµÄµÈ¼¶ÁÐ±íµÄÊÂ¼þ
--**********************************
function x806017_OnUpdate(sceneId, selfId, targetId)
	BeginEvent(sceneId);
		AddText(sceneId, "Thi®p m¶i có th¶i hÕn 1 tháng. Nªu chßa chu¦n b¸ t¯t hôn l­, không nên mua thi®p trß¾c. anh chï c¥n giao phó giao d¸ch thi®p m¶i cho bÕn hæu mình. BÕn cüa các hÕ có th¬ s¨ sØ døng v§t ph¦m tham gia hôn l­ cüa các hÕ");
		AddNumText(sceneId, x806017_g_ScriptId, "Mua "..x806017_GetItemLevelNameByLevel(sceneId, selfId, 0).." Thïnh Thi®p", 7, 0 * 100 + x806017_g_eventId_select_level);
		AddNumText(sceneId, x806017_g_ScriptId, "Mua "..x806017_GetItemLevelNameByLevel(sceneId, selfId, 1).." Thïnh Thi®p", 7, 1 * 100 + x806017_g_eventId_select_level);
		AddNumText(sceneId, x806017_g_ScriptId, "Mua "..x806017_GetItemLevelNameByLevel(sceneId, selfId, 2).." Thïnh Thi®p", 7, 2 * 100 + x806017_g_eventId_select_level);
		AddNumText(sceneId, x806017_g_ScriptId, "R¶i ði...", 8, x806017_g_eventId_cancel);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--Ñ¡ÔñÇëÌûµÄµÈ¼¶µÄÊÂ¼þ
--**********************************
function x806017_OnSelectLevel(sceneId, selfId, targetId, itemLevel)
	BeginEvent(sceneId);
		AddText(sceneId, "Hãy ch÷n s¯ lßþng các hÕ mu¯n mua: ");
		AddNumText(sceneId, x806017_g_ScriptId, "1 t¤m", 6, itemLevel * 100 + x806017_g_eventId_select_count + 1);
		AddNumText(sceneId, x806017_g_ScriptId, "5 t¤m", 6, itemLevel * 100 + x806017_g_eventId_select_count + 5);
		AddNumText(sceneId, x806017_g_ScriptId, "10 t¤m", 6, itemLevel * 100 + x806017_g_eventId_select_count + 10);
		AddNumText(sceneId, x806017_g_ScriptId, "Quay lÕi...", 8, 0);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--Ñ¡ÔñÇëÌûµÄÊýÁ¿µÄÊÂ¼þ
--**********************************
function x806017_OnSelectCount(sceneId, selfId, targetId, itemLevel, itemCount)
	if itemLevel and itemCount then
		BeginEvent(sceneId);
			local szText = format("Mua %d t¤m %s thi®p m¶i, t±ng cµng phäi t¯n #{_MONEY%d}, hãy xác nh§n có mua không?", itemCount, x806017_GetItemLevelNameByLevel(sceneId, selfId, itemLevel), itemCount * x806017_GetItemPriceByLevel(sceneId, selfId, itemLevel) );
			AddText(sceneId, szText);
			AddNumText(sceneId, x806017_g_ScriptId, "Xác nh§n", 6, itemLevel * 100 + x806017_g_eventId_select_buy + itemCount);
			AddNumText(sceneId, x806017_g_ScriptId, "HuÖ bö", 8, itemLevel * 100 + x806017_g_eventId_select_level);
		EndEvent(sceneId);
		DispatchEventList(sceneId, selfId, targetId);
	end
end

--**********************************
--Ñ¡ÔñÇëÌûµÄµÈ¼¶
--**********************************
function x806017_OnBuy(sceneId, selfId, targetId, itemLevel, itemCount)
	if itemLevel and itemCount and itemCount > 0 then
		--¼ì²âÓÐÃ»ÓÐÄÇÃ´¶àÇ®
		local itemPrice = x806017_GetItemPriceByLevel(sceneId, selfId, itemLevel);
		local money = LuaFnGetMoney(sceneId, selfId);
		local moneyJZ = GetMoneyJZ(sceneId, selfId);
		local needMoney = itemPrice * itemCount;
		if money and needMoney and moneyJZ and (money + moneyJZ) < needMoney then
		  x806017_MessageBox(sceneId, selfId, targetId, "Th§t xin l²i, ngân lßþng cüa các hÕ không ðü!", 1);
			return 0;
		end
		
		--¼ì²âÓÐÃ»ÓÐ±³°ü¿Õ¼ä
		local selfProSpace = LuaFnGetPropertyBagSpace(sceneId, selfId);
		if selfProSpace and selfProSpace > itemCount - 1 then
		else
			x806017_MessageBox(sceneId, selfId, targetId, "Th§t xin l²i, tay näi cüa các hÕ không ðü ch± tr¯ng!", 1);
			return 0;
		end
		
		--¿ÛÇ®
		LuaFnCostMoneyWithPriority(sceneId, selfId, needMoney);
		
		--¼ÓÎïÆ·
		local selfName = LuaFnGetName(sceneId, selfId);
		local selfGUID = LuaFnGetGUID(sceneId, selfId);
		local itemId = x806017_GetItemDataByLevel(sceneId, selfId, itemLevel);
		local i;
		for i = 0, itemCount - 1 do
			pos	= TryRecieveItem(sceneId, selfId, itemId, 1);
			if pos and pos ~= -1 then
				LuaFnSetItemCreator(sceneId, selfId, pos, selfName);
				SetBagItemParam(sceneId, selfId, pos, 0, 2, selfGUID);
			end
		end
	end
	x806017_OnSelectLevel(sceneId, selfId, targetId, itemLevel);
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806017_MessageBox(sceneId, selfId, targetId, msg, showReturn)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
		if showReturn and showReturn == 1 then
			AddNumText(sceneId, x806017_g_ScriptId, "Quay lÕi...", 8, x806017_g_eventId_update);
		end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--È¡ÎïÆ·µÄÃû³Æ
--**********************************
function x806017_GetItemLevelNameByLevel(sceneId, selfId, level)
	if level == 2 then
		return "Hào Hoa";
	elseif level == 1 then
		return "Cao C¤p";
	else
		return "Ph± Thông";
	end
	return "";
end

--**********************************
--È¡ÎïÆ·µÄID
--**********************************
function x806017_GetItemDataByLevel(sceneId, selfId, level)
	local itemId = -1;
	if level == 2 then
		itemId = x806017_g_invitationDataId_level3;
	elseif level == 1 then
		itemId = x806017_g_invitationDataId_level2;
	else
		itemId = x806017_g_invitationDataId_level1;
	end
	return itemId;
end

--**********************************
--È¡ÎïÆ·µÄ¼Û¸ñ
--**********************************
function x806017_GetItemPriceByLevel(sceneId, selfId, level)
	local itemId = x806017_GetItemDataByLevel(sceneId, selfId, level);
	local price = LuaFnGetItemPrice(sceneId, itemId);
	return price;
end
