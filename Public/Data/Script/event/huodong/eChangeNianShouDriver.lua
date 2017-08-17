
-- ¶mµt »ÎïÆ·
x889051_g_scriptId = 889051

--°ó¶¨toÕ ğµ ËéÆ¬
x889051_g_SuiPian1ID = 30504022
--ÆÕÍ¨toÕ ğµ ËéÆ¬
x889051_g_SuiPian2ID = 30504021
--°ó¶¨toÕ ğµ Æ´Í¼toÕ ğµ ID
x889051_g_FigureID1   = 30504024
--·Ç°ó¶¨toÕ ğµ Æ´Í¼toÕ ğµ ID
x889051_g_FigureID2   = 30504023
--¶mµt »Æ´Í¼C¥n toÕ ğµ ËéÆ¬ÊıÁ¿
x889051_g_FigureCount = 300

--¶mµt »³õc¤pÄêÊŞC¥n toÕ ğµ ËéÆ¬ÊıÁ¿
x889051_g_LowNianShouCount = 49

--¶mµt »ÖĞc¤pÄêÊŞC¥n toÕ ğµ Æ´Í¼ÊıÁ¿
x889051_g_MiddleNianShouCount = 1

--¶mµt »¸ßc¤pÄêÊŞC¥n toÕ ğµ Æ´Í¼ÊıÁ¿
x889051_g_HighNianShouCount = 15

--µÍc¤pÄêÊŞID
x889051_g_LowNianShouID = 10141800
--ÖĞc¤pÄêÊŞID
x889051_g_MiddleNianShouID = 10141801
--¸ßc¤pÄêÊŞID
x889051_g_HighNianShouID = 10141802

x889051_gGongGaoInfo ={
  "#{_INFOUSR%s}#cff99cc thu th§p 49 cái niên thú toái phiªn giao cho #GLÕc Dß½ng Tiêu sß (81,117)#YGiä Uy Tín#cff99cc, mµt cái #{_INFOMSG%s}#cff99cc sinh ra.",
  "#{_INFOUSR%s}#cff99cc hai tay run run ğem 1 cái Niên thú bính ğ° giao cho #GLÕc Dß½ng tiêu sß (81,117) #YGiä Uy Tín#cff99cc, mµt cái #{_INFOMSG%s}#cff99cc t× trên tr¶i giáng xu¯ng.",
  "#{_INFOUSR%s}#cff99cc Ğem 15 cái Niên thú bính ğ° giao cho #GLÕc Dß½ng tiêu sß (81,117)#YGiä Uy Tín#cff99cc, mµt cái #{_INFOMSG%s}#cff99cc thoát phá hß không mà ğªn.",
}


--MisDescEnd

--¶mµt »³õc¤pÄêÊŞ
function x889051_ChangeLowNianShou(sceneId, selfId, targetId)
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian1ID) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian2ID)
	--ÉíÉÏĞúng·ñÓĞÎïÆ·
	if (nCount<=0) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_02}")
		return
	end
	
	--ÊıÁ¿Ğúng·ñ×ã¹»
	if (nCount<x889051_g_LowNianShouCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_03}")
		return
	end
	
	
		--¼ì²â±³°üĞúng·ñÓĞµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId,targetId, "#{NSDH_SP_04}" )
		return
	end
	
	--¿Û³ıÎïÆ·
	-- É¾³ıÎïÆ· ÏÈÉ¾³ı°ó¶¨toÕ ğµ 
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_SuiPian1ID );
	if(BangdingNum >= x889051_g_LowNianShouCount) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, x889051_g_LowNianShouCount)
		if ret1 < 1  then
			return
		end
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, x889051_g_LowNianShouCount)
		if ret1 < 1  then
			return
		end
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, BangdingNum)
		if ret1 < 1  then
			return
		end
		
		--É¾Ã»°ó¶¨toÕ ğµ 
		local Delete = x889051_g_LowNianShouCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, Delete)
		if ret1 < 1  then
			return
		end
		
	end
	
		--¸øÍæ¼ÒÌí¼ÓÎïÆ·
	local bagpos01 = TryRecieveItem( sceneId, selfId, x889051_g_LowNianShouID, QUALITY_MUST_BE_CHANGE )
	LuaFnItemBind( sceneId, selfId, bagpos01 )
	Audit_ChangeNianShouDriver(sceneId,selfId,1)
	x889051_MsgBox( sceneId, selfId, "Ğ±i thành công S½ c¤p niên thú t÷a kÜ" )
	local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos01)
	x889051_ShowSystemNotice(sceneId, selfId, szItemTransfer,1)
	x889051_CloseWindow(sceneId,selfId, targetId)
	
end
--¶mµt »³õc¤pÄêÊŞtoÕ ğµ ÃèÊö
function x889051_ChangeLowNianShouDescript(sceneId, selfId, targetId)
	local str = "#{NSDH_PT_01}"
	--x889051_NotifyFailBox( sceneId, selfId, targetId, str)
	
	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "Xác nh§n", 6, 11 )
		AddNumText( sceneId, x889051_g_scriptId, "HuÖ bö", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--¶mµt »ÖĞc¤pÄêÊŞ
function x889051_ChangeMiddleNianShou(sceneId, selfId, targetId)
	
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID1) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID2)
	--ÉíÉÏĞúng·ñÓĞÎïÆ·
	if (nCount<=0) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_06}")
		return
	end

	--ÊıÁ¿Ğúng·ñ×ã¹»
	if (nCount<x889051_g_MiddleNianShouCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_07}")
		return
	end
	
		--¼ì²â±³°üĞúng·ñÓĞµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId, targetId,"#{NSDH_SP_04}" )
		return
	end
	--¿Û³ıÎïÆ·
	-- É¾³ıÎïÆ· ÏÈÉ¾³ı°ó¶¨toÕ ğµ 
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_FigureID1 );

	if (BangdingNum >= x889051_g_MiddleNianShouCount) then
			
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, x889051_g_MiddleNianShouCount)
		if ret1 < 1  then
			return
		end
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, x889051_g_MiddleNianShouCount)
		if ret1 < 1  then
			return
		end
			
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, BangdingNum)
		if ret1 < 1  then
			return
		end
		--É¾Ã»°ó¶¨toÕ ğµ 
		local Delete = x889051_g_MiddleNianShouCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, Delete)
		if ret1 < 1  then
			return
		end
		
	end
	
		--¸øÍæ¼ÒÌí¼ÓÎïÆ·
	local bagpos01 = TryRecieveItem( sceneId, selfId, x889051_g_MiddleNianShouID, QUALITY_MUST_BE_CHANGE )
	LuaFnItemBind( sceneId, selfId, bagpos01 )
	Audit_ChangeNianShouDriver(sceneId,selfId,2)
	x889051_MsgBox( sceneId, selfId, "Ğ±i thành công Trung c¤p niên thú t÷a kÜ" )
	local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos01)
	x889051_ShowSystemNotice(sceneId, selfId, szItemTransfer,2)
	x889051_CloseWindow(sceneId,selfId, targetId)
end

--¶mµt »ÖĞc¤pÄêÊŞtoÕ ğµ ÃèÊö
function x889051_ChangeMiddleNianShouDescript(sceneId, selfId, targetId)
	local str = "#{NSDH_PT_05}"
	--x889051_NotifyFailBox( sceneId, selfId, targetId, str)

	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "Xác nh§n", 6, 12 )
		AddNumText( sceneId, x889051_g_scriptId, "HuÖ bö", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--¶mµt »¸ßc¤pÄêÊŞ
function x889051_ChangeHighNianShou(sceneId, selfId, targetId, targetId)
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID1) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID2)
	--ÉíÉÏĞúng·ñÓĞÎïÆ·
	if (nCount<=0) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_10}")
		return
	end
	
	--ÊıÁ¿Ğúng·ñ×ã¹»
	if (nCount<x889051_g_HighNianShouCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_11}")
		return
	end
	
		--¼ì²â±³°üĞúng·ñÓĞµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId,targetId, "#{NSDH_SP_04}" )
		return
	end
	
	--¿Û³ıÎïÆ·
	-- É¾³ıÎïÆ· ÏÈÉ¾³ı°ó¶¨toÕ ğµ 
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_FigureID1 )
	if(BangdingNum >= x889051_g_HighNianShouCount) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, x889051_g_HighNianShouCount)
		if ret1 < 1  then
			return
		end
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, x889051_g_HighNianShouCount)
		if ret1 < 1  then
			return
		end
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, BangdingNum)
		if ret1 < 1  then
			return
		end
		
		--É¾Ã»°ó¶¨toÕ ğµ 
		local Delete = x889051_g_HighNianShouCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, Delete)
		if ret1 < 1  then
			return
		end
		
	end
	
		--¸øÍæ¼ÒÌí¼ÓÎïÆ·
	local bagpos01 = TryRecieveItem( sceneId, selfId, x889051_g_HighNianShouID, QUALITY_MUST_BE_CHANGE )
	LuaFnItemBind( sceneId, selfId, bagpos01 )
	Audit_ChangeNianShouDriver(sceneId,selfId,3)
	x889051_MsgBox( sceneId, selfId, "Ğ±i thành công Cao c¤p niên thú t÷a kÜ" )
	local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos01)
	x889051_ShowSystemNotice(sceneId, selfId, szItemTransfer,3)
	x889051_CloseWindow(sceneId,selfId, targetId)
end

--¶mµt »¸ßc¤pÄêÊŞtoÕ ğµ ÃèÊö
function x889051_ChangeHighNianShouDescript(sceneId, selfId,targetId)
	local str = "#{NSDH_PT_09}"
	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "Xác nh§n", 6, 13 )
		AddNumText( sceneId, x889051_g_scriptId, "HuÖ bö", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--×éºÏÄêÊŞÆ´Í¼
function x889051_CompositeFigure(sceneId, selfId, targetId)
	--LuaFnItemBind( sceneId, selfId, bagpos01 )
	
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian1ID) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian2ID)
	--ÉíÉÏĞúng·ñÓĞÎïÆ·
	
	if (nCount<=0) then
		
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_SP_02}" )
		return
	end
	
	--ÊıÁ¿Ğúng·ñ×ã¹»
	if (nCount<x889051_g_FigureCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_SP_03}" )
		return
	end
	--¼ì²â±³°üĞúng·ñÓĞµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId,targetId, "#{NSDH_SP_04}" )
		return
	end
	local IsBind = 0
	
	--¿Û³ıÎïÆ·
	-- É¾³ıÎïÆ· ÏÈÉ¾³ı°ó¶¨toÕ ğµ 
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_SuiPian1ID );
	if(BangdingNum >= x889051_g_FigureCount) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, x889051_g_FigureCount)
		if ret1 < 1  then
			return
		end
		IsBind = 1
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, x889051_g_FigureCount)
		if ret1 < 1  then
			return
		end
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, BangdingNum)
		if ret1 < 1  then
			return
		end
		
		--É¾Ã»°ó¶¨toÕ ğµ 
		local Delete = x889051_g_FigureCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, Delete)
		if ret1 < 1  then
			return
		end
		
		IsBind = 1
	end
	
	--¸øÍæ¼ÒÌí¼ÓÎïÆ·
	BeginAddItem(sceneId)
		--ÓĞ°ó¶¨toÕ ğµ ¸ø°ó¶¨ÎïÆ·,Ã»ÓĞ°ó¶¨toÕ ğµ ¸øÆÕÍ¨Æ´Í¼
		if IsBind == 1 then
			AddItem( sceneId, x889051_g_FigureID1, 1 )
		else
			AddItem( sceneId, x889051_g_FigureID2, 1 )
		end
	local ret = EndAddItem(sceneId,selfId)
	if (ret<1) then
		return
	end
	AddItemListToHuman(sceneId,selfId)
	AuditCompositeFigure(sceneId,selfId)
	x889051_MsgBox( sceneId, selfId, "T± hşp niên thú bính ğ° thành công" )
	x889051_CloseWindow(sceneId,selfId, targetId)
end


--×éºÏÄêÊŞÆ´Í¼
function x889051_CompositeFigureDescript(sceneId, selfId, targetId)
	local str = "#{NSDH_SP_01}"
	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "Xác nh§n", 6, 14 )
		AddNumText( sceneId, x889051_g_scriptId, "HuÖ bö", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x889051_CloseWindow(sceneId,selfId, targetId)
	BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x889051_OnDefaultEvent( sceneId, selfId, targetId )

	local nNum = GetNumText()

	--¶mµt »³õc¤p×øÆïtoÕ ğµ ¶Ô»°
	if (nNum == 1 ) then
		x889051_ChangeLowNianShouDescript(sceneId, selfId, targetId)
	--¶mµt »ÖĞc¤p×øÆïtoÕ ğµ ¶Ô»°
	elseif nNum == 2 then
		x889051_ChangeMiddleNianShouDescript(sceneId, selfId, targetId)
	--¶mµt »¸ßc¤p×øÆïtoÕ ğµ ¶Ô»°
	elseif nNum == 3 then
		x889051_ChangeHighNianShouDescript(sceneId, selfId, targetId)
	--×éºÏÄêÊŞÆ½Í¼toÕ ğµ ¶Ô»°
	elseif nNum == 4 then
		x889051_CompositeFigureDescript(sceneId, selfId, targetId)
	--¶mµt »³õc¤p×øÆï
	elseif nNum == 11 then
		x889051_ChangeLowNianShou(sceneId, selfId, targetId)
	--¶mµt »ÖĞc¤p×øÆï
	elseif nNum == 12 then
		x889051_ChangeMiddleNianShou(sceneId, selfId, targetId)
	--¶mµt »¸ßc¤p×øÆï
	elseif nNum == 13 then
		x889051_ChangeHighNianShou(sceneId, selfId, targetId)
	--×éºÏÆ´Í¼
	elseif nNum == 14 then
		x889051_CompositeFigure(sceneId, selfId, targetId)
	elseif nNum == 21 then
		x889051_CloseWindow(sceneId, selfId, targetId)
	elseif nNum == 5 then
			local str = "#{NSDH_SM_01}"
			x889051_NotifyFailBox( sceneId, selfId, targetId, str )
	end 
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x889051_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x889051_g_scriptId, "Ğ±i s½ c¤p niên thú t÷a kÜ", 6, 1 )
	AddNumText( sceneId, x889051_g_scriptId, "Ğ±i trung c¤p niên thú t÷a kÜ", 6, 2 )
	AddNumText( sceneId, x889051_g_scriptId, "Ğ±i cao c¤p niên thú t÷a kÜ", 6, 3 )
	AddNumText( sceneId, x889051_g_scriptId, "T± hşp niên thú bính ğ°",     6, 4 )
	AddNumText( sceneId, x889051_g_scriptId, "Gi¾i thi®u hoÕt ğµng ğ±i niên thú t÷a kÜ", 11, 5 )
	
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x889051_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x889051_OnAccept( sceneId, selfId )

end

--**********************************
--·ÅÆú
--**********************************
function x889051_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌĞø
--**********************************
function x889051_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x889051_CheckSubmit( sceneId, selfId )
end

--**********************************
--ËÍ³ö³èÎïµ°toÕ ğµ ¹«¸æ
--**********************************
function x889051_ShowSystemNotice( sceneId, selfId, strItemInfo,iIndex )
	
	local PlayerName = GetName(sceneId,selfId)
	local str
	str = format( x889051_gGongGaoInfo[iIndex], PlayerName, strItemInfo)
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end

--**********************************
-- ¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x889051_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ĞÑÄ¿ĞÅÏ¢ÌáÊ¾
--**********************************
function x889051_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x889051_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x889051_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x889051_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x889051_OnItemChanged( sceneId, selfId, itemdataId )
end


