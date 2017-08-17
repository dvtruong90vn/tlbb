--µ÷ÕûÁ³ĞÍ
--½Å±¾ºÅ
x805029_g_ScriptId = 805029

--µ÷ÕûÁ³ĞÍUI 21

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x805029_OnEnumerate( sceneId, selfId, targetId )
	-- µ÷ÊÔĞÅÏ¢
	--BeginEvent(sceneId)
	--	AddText(sceneId, "½øÈëµ÷ÕûÁ³ĞÍ½Å±¾");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)	
	
	-- ÎªÊ²Ã´Òª NPC Ãû×Ö£¿
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 928)
	return
end

--**********************************
--µ÷ÕûÁ³ĞÍ
--**********************************
function x805029_FinishAdjust( sceneId, selfId, styleId)

	-- µÃµ½µ÷ÕûÁ³ĞÍËùĞèÎïÆ·µÄid¼°ÆäÊıÁ¿
	local ItemId, ItemCount = GetChangeFaceItemIdAndItemCount(styleId)
		
	-- ·µ»ØÖµ·Ç·¨
	if ItemId < 0 or ItemCount < 0 then
		return
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, ItemId )

	-- ÎïÆ·ÊÇ·ñ¹»ÓÃ»òËø¶¨
	if ItemCount > nItemNum then
		BeginEvent(sceneId)
			AddText(sceneId, "Các hÕ không có Ğ¸nh Nhan Châu ho£c Ğ¸nh Nhan Châu ğã ğßşc c¯ ğ¸nh!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
		-- »ñµÃ¶¨ÑÕÖéÔÚ±³°üÖĞµÄÎ»ÖÃ£¨¶¨ÑÕÖé»áÔÚ¸Ä±äÁ³ĞÍµÄ¹ı³ÌÖĞ±»É¾³ı£¬ËùÒÔĞèÒªÏÈ±£´æËüµÄĞÅÏ¢£©
	local ItemPos = LuaFnGetItemPosByItemDataID(sceneId, selfId, ItemId, 0)
	local szItemTransfer = GetBagItemTransfer(sceneId, selfId, ItemPos)
	
	-- ÎïÆ·¼ì²âÍ¨¹ı£¬ÔÙ¼ì²éÍæ¼Ò½ğÇ®
	local moneyJZ = GetMoneyJZ (sceneId, selfId)
	local money = GetMoney (sceneId, selfId)
	
	-- ÎïÆ·ºÍ½ğÇ®¼ì²â¶¼Í¨¹ı
	if (moneyJZ + money >= 50000)	then	
		-- ÉèÖÃÍæ¼ÒĞÂÁ³ĞÍ£¨»áÔÚÕâ¸ö¹ı³ÌÖĞÏûºÄÎïÆ·ºÍ½ğÇ®£©
		local ret = ChangeHumanFaceModel( sceneId, selfId, styleId )
		if ret == 0  then
			BeginEvent(sceneId)
				AddText(sceneId,"Thay ğ±i ngoÕi hình thành công!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		
		-- ¸Ä±äÁ³ĞÍÊ§°Ü
		elseif ret == 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Hãy lña ch÷n mµt loÕi ngoÕi hình");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 3 then
			BeginEvent(sceneId)
				AddText(sceneId, "Các hÕ không có Ğ¸nh Nhan Châu ho£c Ğ¸nh Nhan Châu ğã ğßşc c¯ ğ¸nh!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 4 then	
			BeginEvent(sceneId)
				AddText(sceneId, "Không ğü Ngân Lßşng");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else
			return
		end

	-- ½ğÇ®²»×ã
	else
		BeginEvent(sceneId)
			AddText(sceneId, "Không ğü Ngân Lßşng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end	
	
	-- ·¢ËÍ¹ã²¥
	local message;	
	local randMessage = random(3);
	local nsex = LuaFnGetSex(sceneId, selfId)
	local str1,str2
	if nsex == 0  then
		str1 = "nàng ¤y"
		str2 = "ğ©p"
	else
		str1 = "huynh ¤y"
		str2 = "xo¡n"
	end
	
	if randMessage == 1 then
		message = format("#HGiang h° tr¥m tr° ngşi khen #W#{_INFOUSR%s}#H gß½ng m£t m¾i trë trung, chính là do sØ døng #W#{_INFOMSG%s}#H mà thành. Th§t khiªn Phan An phäi tÑc chªt, Ğiêu Thuy«n cûng cay cú không ch¸u n±i!", LuaFnGetName(sceneId, selfId), szItemTransfer);
	elseif randMessage == 2 then
		message = format("#HS¡c ğ©p là vàng, #W#{_INFOUSR%s}#H ı thÑc ğßşc s¡c ğ©p cüa mình, " .. str1 .. " ğã sØ døng #W#{_INFOMSG%s}#H thay ğ±i khuôn m£t m¾i, th§t khiªn ngß¶i ta tr¥m tr° ngşi khen!", LuaFnGetName(sceneId, selfId), szItemTransfer);
	else
		message = format("#HChim trên tr¶i hôm nay ğµt nhiên ng×ng bay, con nào con n¤y n¢m im trong t±, cá dß¾i nß¾c im l£ng không ğµng ğ§y. Không biªt có phäi trúng ğµc gì không. , không phäi ğâu, nguyên nhân là do #W#{_INFOUSR%s}#H "..str1.." ğã sØ døng #W#{_INFOMSG%s}#H thay ğ±i gß½ng m£t, khiªn chúng phäi tr¥m tr° ng¡m nghía và th¯t lên mµt chæ \"Ğ©p\"", LuaFnGetName(sceneId, selfId), szItemTransfer);
	end

	BroadMsgByChatPipe(sceneId, selfId, message, 4);
end
