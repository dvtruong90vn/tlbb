--µ÷Õû·¢ĞÍ
--½Å±¾ºÅ
x801010_g_ScriptId = 801010

--µ÷Õû·¢ĞÍUI 21

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x801010_OnEnumerate( sceneId, selfId, targetId )
	-- µ÷ÊÔĞÅÏ¢
	--BeginEvent(sceneId)
	--	AddText(sceneId, "½øÈëµ÷Õû·¢ĞÍ½Å±¾");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)		

	-- ÎªÊ²Ã´Òª NPC Ãû×Ö£¿
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 21)
	return

end


--**********************************
--µ÷Õû·¢ĞÍ
--**********************************
function x801010_FinishAdjust( sceneId, selfId, styleId)

	-- ·¢ĞÍÎ´Ñ¡ÖĞ»òÑ¡ÖĞÎŞĞ§
	if styleId < 0 then														
		BeginEvent(sceneId)
			AddText(sceneId, "Thay ğ±i ki¬u tóc thành công");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- µÃµ½µ÷Õû·¢ĞÍËùĞèÎïÆ·µÄid¼°ÆäÊıÁ¿
	local ItemId, ItemCount = GetChangeHairItemIdAndItemCount(styleId)
	
	-- ·µ»ØÖµ·Ç·¨
	if ItemId < 0 or ItemCount < 0 then		
		return
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, ItemId )

	-- ÎïÆ·ÊÇ·ñ¹»ÓÃ»òËø¶¨
	if ItemCount > nItemNum then
		BeginEvent(sceneId)
			AddText(sceneId, "Không có phát hình ğ° ho£c phát hình ğµ ğã khoá!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ÎïÆ·¼ì²âÍ¨¹ı£¬ÔÙ¼ì²éÍæ¼Ò½ğÇ®
	local moneyJZ = GetMoneyJZ (sceneId, selfId)
	local money = GetMoney (sceneId, selfId)
	
	-- ÎïÆ·ºÍ½ğÇ®¼ì²â¶¼Í¨¹ı
	if (moneyJZ + money >= 50000)	then
		-- ÉèÖÃÍæ¼ÒĞÂ·¢ĞÍ£¨»áÔÚÕâ¸ö¹ı³ÌÖĞÏûºÄÎïÆ·ºÍ½ğÇ®£©
		local ret = LuaFnChangeHumanHairModel( sceneId, selfId, styleId )
		if ret == 0 then	
			BeginEvent(sceneId)
				AddText(sceneId, "Thay ğ±i ki¬u tóc thành công.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
		-- ÒÔÏÂÎª²Ù×÷Ê§°ÜÊ±µÄ´íÎóĞÅÏ¢
		elseif ret == 1  then														--ËùÑ¡µÄ·¢ĞÍÓëÍæ¼Òµ±Ç°µÄ·¢ĞÍÒ»ÖÂ
			BeginEvent(sceneId)
				AddText(sceneId, "Hãy lña ch÷n ki¬u tóc phù hşp");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 3 then														--Ã»ÓĞĞèÒªÏûºÄµÄÎïÆ·»ò¸ÃÎïÆ·±»Ëø¶¨
			BeginEvent(sceneId)
				AddText(sceneId, "Không có phát hình ğ° ho£c phát hình ğµ ğã khoá!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 4 then														
			BeginEvent(sceneId)
				AddText(sceneId, "Không ğü ngân lßşng");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else
			return
		end

	-- ½ğÇ®²»×ã
	else
		BeginEvent(sceneId)
			AddText(sceneId, "Không ğü ngân lßşng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ·¢ËÍÒ»ÌõËæ»úµÄ¹ã²¥ÏûÏ¢
	local message;	
	local randMessage = random(3);
		
	if randMessage == 1 then	
		message = format("#{FaXing_00}#{_INFOUSR%s}#{FaXing_01}", LuaFnGetName(sceneId, selfId));
	elseif randMessage == 2 then
		message = format("#{FaXing_02}#{_INFOUSR%s}#{FaXing_03}", LuaFnGetName(sceneId, selfId));
	else
		message = format("#{FaXing_04}#{_INFOUSR%s}#{FaXing_05}", LuaFnGetName(sceneId, selfId));
	end
		
	BroadMsgByChatPipe(sceneId, selfId, message, 4);
	
end
