--µ÷Õû·¢É«
--½Å±¾ºÅ
x801011_g_ScriptId = 801011

--µ÷Õû·¢É«UI 22

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x801011_OnEnumerate( sceneId, selfId, targetId )
	-- µ÷ÊÔÐÅÏ¢
	--BeginEvent(sceneId)
	--	AddText(sceneId, "½øÈëµ÷Õû·¢É«½Å±¾");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)	

	-- ÎªÊ²Ã´Òª NPC Ãû×Ö£¿
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 22)
	return

end


--**********************************
--µ÷Õû·¢É«
--**********************************
function x801011_FinishAdjust( sceneId, selfId, ColorValue)
	-- È¾·¢¼Á
	item = {20307001, 20307002} -- zchw

	-- ¼ì²é¿ÉÓÃµÀ¾ß
	itemCount = LuaFnGetAvailableItemCount ( sceneId, selfId, item[1] ); -- zchw
	itemCount2 = LuaFnGetAvailableItemCount ( sceneId, selfId, item[2] ); 
	if (itemCount < 1) and (itemCount2 < 1) then
		BeginEvent(sceneId)
			AddText(sceneId,"Không có ðü thu¯c nhuµm tóc");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ¼ì²é½ðÇ®
	local money = GetMoney(sceneId, selfId);
	local moneyJZ = GetMoneyJZ(sceneId, selfId);
	
	if (money + moneyJZ) >= 50000 then
		-- ¿Û³ý½»×ÓºÍ½ðÇ®	
		local costMoneyJZ, costMoney = LuaFnCostMoneyWithPriority (sceneId, selfId, 50000)
		
		-- Èç¹ûÈë¿Ú²ÎÊý´íÎó
		if costMoneyJZ == -1 then
			return
		end
		
		-- ½»×ÓºÍ½ðÇ®ÊýÄ¿×ã¶î¿Û³ý
		if (costMoneyJZ + costMoney == 50000) then		
			-- ÏûºÄÎïÆ·
			if (itemCount2 >= 1) then
				ret = DelItem( sceneId, selfId, item[2], 1 ); -- zchw ÓÅÏÈÉ¾³ý°ó¶¨µÄÈ¾·¢¼Á
			else
				ret = DelItem( sceneId, selfId, item[1], 1 );
			end

			-- ÉèÖÃÐÂ·¢É«
			SetHumanHairColor( sceneId, selfId, ColorValue )
			BeginEvent(sceneId)
				AddText(sceneId,"Nhuµm tóc thành công!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- ·¢ËÍ¹ã²¥
			local message;	
			local randMessage = random(3);	
			if randMessage == 1 then		
	   		message = format("#W#{_INFOUSR%s}#{FaSe_00}", LuaFnGetName(sceneId, selfId));
			elseif randMessage == 2 then
				message = format("#{FaSe_01}#W#{_INFOUSR%s}#{FaSe_02}", LuaFnGetName(sceneId, selfId));
			else
				message = format("#{FaSe_03}#W#{_INFOUSR%s}#{FaSe_04}", LuaFnGetName(sceneId, selfId));
			end
	
			BroadMsgByChatPipe(sceneId, selfId, message, 4);

		-- ½»×ÓºÍ½ðÇ®µÄÊýÄ¿²»×ã 50000
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Không ðü ngân lßþng!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)			
			return		
		end
	-- Ç®Êý²»¹»£¬Ö±½Ó·µ»Ø
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Không ðü ngân lßþng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)			
		return	
	end
	
end
