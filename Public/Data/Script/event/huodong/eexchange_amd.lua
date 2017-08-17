--»î¶¯¡ª¡ª
--AMD
--MisDescBegin
--½Å±¾ºÅ
x808059_g_ScriptId = 808059
x808059_g_ExchangeAMD_Active = 0   --Ä¬ÈÏ¹Ø±Õ

x808059_g_ActiveStartTime = 7154  --7000   --7154
x808059_g_ActiveEndTime = 7192    --7200     --7192

x808059_g_AwardItem1 = 30505104  --½±Æ·1,Ë«ºËËÙÁúÁî
x808059_g_AwardItem2 = 30505105  --½±Æ·2,Ë«ºËËÙÁúµ¤

x808059_g_AMDTextList = { 30505093, 30505094, 30505095, 30505096, 30505097, 30505098, 30505099, 30505100, 30505101, 30505102, 30505103 }

x808059_g_HelpText000 = "#{EXCHANGE_AMD_HELP000}" --"ÎÒÏë¶mµt »AMDË«ºËËÙÁúÁî"
x808059_g_HelpText001 = "#{EXCHANGE_AMD_HELP001}" --"¶mµt »AMDË«ºËËÙÁúÁîC¥n ÎÒ¡¢Îª¡¢Ë«¡¢ºË¡¢¿ñ¡¢AMD¡¢Ìì¡¢Áú¡¢Õù¡¢°Ô¡¢Èü¸÷mµt cái,ÄúÉíÉÏtoÕ ğµ ÎïÆ·²»È«,ÇëºË¶ÔºÃÖ®ºóÔÙÀ´ÕÒÎÒ"
x808059_g_HelpText002 = "#{EXCHANGE_AMD_HELP002}" --"ÎÒÏë¶mµt »AMDË«ºËËÙÁúÁî"
x808059_g_HelpText003 = "#{EXCHANGE_AMD_HELP003}" --"ÎïÆ·À¸¿Õ¼ä²»×ã,ÇëÕûÀíÎïÆ·À¸ºóÔÙÊÔ."

x808059_g_HelpText004 = "#{EXCHANGE_AMD_HELP004}" --"TÕi ³ï±¸AMDThiên LongÕù°ÔÈü»î¶¯ÖĞ,"
x808059_g_HelpText005 = "#{EXCHANGE_AMD_HELP005}" --"´ÕÆëÁËÎÒ¡¢Îª¡¢Ë«¡¢ºË¡¢¿ñ¡¢AMD¡¢Ìì¡¢Áú¡¢Õù¡¢°Ô¡¢Èü¸÷mµt cái,ÊôÊtoÕ ğµ Ñ ği¬m,ÌØÔùËÍ"
x808059_g_HelpText006 = "#{EXCHANGE_AMD_HELP006}" --"mµt ·İ,³ÖÓĞ´ËÎï¼´¿É²Î¼ÓÉÔºótoÕ ğµ ³é½±»î¶¯,Í¬Ê±¸½ËÍ"
x808059_g_HelpText007 = "#{EXCHANGE_AMD_HELP007}" --"2cái,»¹Ã»¶Ò½±toÕ ğµ Íæ¼Ò¸Ï¿ìĞĞ¶¯Ñ½!"

x808059_g_HelpText008 = "#{EXCHANGE_AMD_HELP008}" --"¶Ô²»Æğ,ÏÖTÕi Ã»ÓĞÕıTÕi ¾ÙĞĞtoÕ ğµ »î¶¯."
x808059_g_HelpText009 = "#{EXCHANGE_AMD_HELP009}" --"¹ØÓÚ¶mµt »AMDË«ºËËÙÁúÁî"
x808059_g_HelpText010 = "#{EXCHANGE_AMD_HELP010}" --"¹ØÓÚ¶mµt »AMDË«ºËËÙÁúÁîÏà¹Ø½éÉÜ"

--MisDescEnd

--**********************************
--¼ì²âĞúng·ñÓĞ×ã¹»toÕ ğµ ÎïÆ·ÓÃÀ´½»»»
--**********************************
function x808059_CheckEnoughItem( sceneId, selfId )
    for i=1, 11 do
		local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x808059_g_AMDTextList[ i ] )
		if ItemCount < 1 then
		    return 0
		end
	end
    
    return 1
end

--**********************************
--¶mµt »Thiên Long°Ë²¿
--**********************************
function x808059_ExchangeAMD( sceneId, selfId, targetId )

    x808059_CheckRightTime()
    if 1 ~= x808059_g_ExchangeAMD_Active then	
		return       
    end
    
	local bEnough = x808059_CheckEnoughItem( sceneId, selfId )
	if( 1 ~= bEnough ) then
		BeginEvent(sceneId)
			AddText( sceneId, x808059_g_HelpText001 )
		EndEvent()
		DispatchEventList( sceneId, selfId, targetId )   --ÌáÊ¾¶«Î÷²»×ã
		return
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 2 ) then
		BeginEvent( sceneId )
		    AddText( sceneId, x808059_g_HelpText003 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )   --ÌáÊ¾±³°ü²»×ã
		
		return
	end

	--¿Û³ıÎïÆ·,¼ÙÈç¿Û³ıth¤t bÕi,½«²»»á¸øÓèÎïÆ·
    for i=1, 11 do
		ret = LuaFnDelAvailableItem(sceneId, selfId, x808059_g_AMDTextList[ i ], 1)
		if ret ~= 1 then
			return   --¼ÙÈçÉ¾³ı²Ù×÷ÓĞÈÎºÎmµt cáiÎïÆ·th¤t bÕi,ÔòÖĞ¶Ï²Ù×÷,²»»á¸øÓèÍæ¼ÒÈÎºÎÎïÆ·
		end
	end
	
	BeginAddItem(sceneId)        --¸øÓèÍæ¼ÒÎïÆ·
		AddItem( sceneId, x808059_g_AwardItem1, 1 )
	local Ret = EndAddItem(sceneId,selfId)
	
	if Ret > 0 then
	    AddItemListToHuman(sceneId,selfId)
		local szItemTransfer1 = GetItemTransfer(sceneId,selfId,0)
		local PlayerName = GetName( sceneId, selfId )
		local PlayerInfoName = "#{_INFOUSR"..PlayerName .."}"
		local ItemInfo1 = "#{_INFOMSG".. szItemTransfer1 .."}"
		
		local szItemTransfer2 = ""
		local ItemInfo2 = ""
		
			BeginAddItem(sceneId)        --¸øÓèÍæ¼ÒÎïÆ·
				AddItem( sceneId, x808059_g_AwardItem2, 2 )
			local Ret = EndAddItem(sceneId,selfId)
			
			if Ret > 0 then
			    AddItemListToHuman(sceneId,selfId)
			    szItemTransfer2 = GetItemTransfer(sceneId,selfId,0)
			    ItemInfo2 = "#{_INFOMSG".. szItemTransfer2 .."}"
			end
		
		
		local SysStr = x808059_g_HelpText004..PlayerInfoName..x808059_g_HelpText005..ItemInfo1..x808059_g_HelpText006..ItemInfo2..x808059_g_HelpText007
		BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
	end
	--¹Ø±Õ½çÃæ
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
				
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x808059_OnDefaultEvent( sceneId, selfId, targetId )
    x808059_CheckRightTime()
    if 1 ~= x808059_g_ExchangeAMD_Active then
        return
    end

    local TextNum = GetNumText()

    if TextNum == 1 then
        x808059_ExchangeAMD( sceneId, selfId, targetId )
	end
    
    if TextNum == 2 then
        BeginEvent(sceneId)
            AddText( sceneId, x808059_g_HelpText010 )
        EndEvent()
        DispatchEventList( sceneId, selfId, targetId )
	end
		    
end


--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x808059_CheckRightTime()
    local DayTime = GetDayTime()
 
    if DayTime < x808059_g_ActiveStartTime then
       x808059_g_ExchangeAMD_Active = 0
       return 0    --´ËÇ°·Ç»î¶¯Ê±¼ä
    end
    
    if DayTime > x808059_g_ActiveEndTime then
       x808059_g_ExchangeAMD_Active = 0
       return 0    --´Ëºó»î¶¯ÒÑ¾­½áÊø
    end
    
    x808059_g_ExchangeAMD_Active = 1
    return 1
    
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x808059_OnEnumerate( sceneId, selfId, targetId )
    x808059_CheckRightTime()
    
    if 1 == x808059_g_ExchangeAMD_Active then
		AddNumText(sceneId, x808059_g_ScriptId, x808059_g_HelpText000, 1, 1 )
		--AddNumText(sceneId, x808059_g_ScriptId, x808059_g_HelpText009, 11, 2 )
    end
    
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x808059_CheckAccept( sceneId, selfId )

end

--**********************************
--Tiªp thø
--**********************************
function x808059_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x808059_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌĞø
--**********************************
function x808059_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x808059_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x808059_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x808059_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x808059_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x808059_OnItemChanged( sceneId, selfId, itemdataId )
end
