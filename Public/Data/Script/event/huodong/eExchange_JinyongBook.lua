--»î¶¯¡ª¡ª½ðÓ¹Ç©ÃûÊé
--MisDescBegin
--½Å±¾ºÅ
x808035_g_ScriptId = 808035
x808035_g_ExchangeJinyongBook_Active = 1

--MisDescEnd

--**********************************
--¼ì²âÐúng·ñÓÐ×ã¹»toÕ ðµ ÎïÆ·ÓÃÀ´½»»»
--**********************************
function x808035_CheckEnoughItem( sceneId, selfId )
    local BookID_Zui   = 30505063
	local BookID_Jing  = 30505064
	local BookID_Dian  = 30505065
	local BookID_De    = 30505066
	local BookID_Jin   = 30505067
	local BookID_Yong  = 30505068
	local BookID_Geng  = 30505069
	local BookID_Hong  = 30505070
	local BookID_Da    = 30505071
	local BookID_Jiang = 30505072
	local BookID_Hu    = 30505073
	local JinyongBook = 30505074 
	
    local ItemList = { BookID_Zui, BookID_Jing, BookID_Dian, BookID_De, BookID_Jin, BookID_Yong, BookID_Geng, BookID_Hong, BookID_Da, BookID_De, BookID_Jiang, BookID_Hu }
    for i=1, 12 do
		local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, ItemList[ i ] )
		if ItemCount < 1 then
		    return 0
		end
	end
    
    local ItemCount_de = LuaFnGetAvailableItemCount( sceneId, selfId, BookID_De )
    if ItemCount_de < 2 then    --"toÕ ðµ "±ØÐëÓÐ2±¾ÒÔÉÏ
        return 0
    end
    
    return 1
end

--**********************************
--¶mµt »Thiên Long°Ë²¿
--**********************************
function x808035_ExchangeTLBB( sceneId, selfId, targetId )
    local BookID_Zui   = 30505063
	local BookID_Jing  = 30505064
	local BookID_Dian  = 30505065
	local BookID_De    = 30505066
	local BookID_Jin   = 30505067
	local BookID_Yong  = 30505068
	local BookID_Geng  = 30505069
	local BookID_Hong  = 30505070
	local BookID_Da    = 30505071
	local BookID_Jiang = 30505072
	local BookID_Hu    = 30505073
	local JinyongBook = 30505074 
	
	local ItemList = { BookID_Zui, BookID_Jing, BookID_Dian, BookID_De, BookID_Jin, BookID_Yong, BookID_Geng, BookID_Hong, BookID_Da, BookID_De, BookID_Jiang, BookID_Hu }
	
    if 1 ~= x808035_g_ExchangeJinyongBook_Active then
        local strNotActive ="#{EXCHANGETLBB_TEX00}"
		BeginEvent( sceneId )
			AddText( sceneId, strNotActive )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return       
    end
    
	local bEnough = x808035_CheckEnoughItem( sceneId, selfId )
	if( 1 ~= bEnough ) then
	    local strTex01 = "#{EXCHANGETLBB_TEX01}"
		BeginEvent(sceneId)
			AddText( sceneId, strTex01 )
		EndEvent()
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		BeginEvent( sceneId )
		    local strTex02 = "#{EXCHANGETLBB_TEX02}"
		    AddText( sceneId, strTex02 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end

	--¿Û³ýÎïÆ·,¼ÙÈç¿Û³ýth¤t bÕi,½«²»»á¸øÓèÎïÆ·<Thiên Long°Ë²¿>
    for i=1, 12 do
		ret = LuaFnDelAvailableItem(sceneId, selfId, ItemList[ i ], 1)
		if ret ~= 1 then
			return   --¼ÙÈçÉ¾³ý²Ù×÷ÓÐÈÎºÎmµt cáiÎïÆ·th¤t bÕi,ÔòÖÐ¶Ï²Ù×÷,²»»á¸øÓèÍæ¼ÒÈÎºÎÎïÆ·
		end
	end
	
	BeginAddItem(sceneId)        --¸øÓèÍæ¼Ò<Thiên Long°Ë²¿>
		AddItem( sceneId, JinyongBook, 1 )
	local Ret = EndAddItem(sceneId,selfId)
	
	if Ret > 0 then
	    AddItemListToHuman(sceneId,selfId)
		local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
		local PlayerName = GetName( sceneId, selfId )
		local PlayerInfoName = "#{_INFOUSR"..PlayerName .."}"
		local ItemInfo = "#{_INFOMSG".. szItemTransfer .."}"
		
		local strTex03 = "#{EXCHANGETLBB_TEX03}"
		local strTex04 = "#{EXCHANGETLBB_TEX04}"
		local strTex05 = "#{EXCHANGETLBB_TEX05}"
		local SysStr = strTex03..PlayerInfoName..strTex04..ItemInfo..strTex05
		BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
	end
	--¹Ø±Õ½çÃæ
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
				
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808035_OnDefaultEvent( sceneId, selfId, targetId )

    local TextNum = GetNumText()
    --if TextNum == 1 then
    --    if( 1 ~= x808035_g_ExchangeJinyongBook_Active ) then
	--		BeginEvent(sceneId)
	--		    local strTex00 ="#{EXCHANGETLBB_TEX00}"
	--		    AddText( sceneId, strTex00 )
	--			--AddText( sceneId,"  ¶Ô²»Æð,ÏÖTÕi Ã»ÓÐÕýTÕi ¾ÙÐÐtoÕ ðµ »î¶¯.")
	--		EndEvent()
	--		DispatchEventList( sceneId, selfId, targetId )
    --  else
    --       BeginEvent(sceneId)
    --            local strTex06 = "#{EXCHANGETLBB_TEX06}"
    --            local strTex07 = "#{EXCHANGETLBB_TEX07}"
    --            AddText( sceneId, strTex06 )
    --            local strTitle = strTex07
    --            AddNumText(sceneId, x808035_g_ScriptId, strTitle, 1, 2 )
    --        EndEvent()
    --        DispatchEventList( sceneId, selfId, targetId )
    --    end
        
    --end
    
    if TextNum == 2 then
        x808035_ExchangeTLBB( sceneId, selfId, targetId )
	end
    
    --if TextNum == 1 then
    --    local strContex = "#{EXCHANGEXFMJ_HELP_001}"
    --    BeginEvent(sceneId)
    --        AddText( sceneId, strContex )
    --    EndEvent()
    --    DispatchEventList( sceneId, selfId, targetId )
	--end
    
    if TextNum == 3 then
        local strContex = "#{EXCHANGEXFMJ_HELP_002}"
        BeginEvent(sceneId)
            AddText( sceneId, strContex )
        EndEvent()
        DispatchEventList( sceneId, selfId, targetId )
	end
		    
end


--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808035_CheckRightTime()
    local DayTime = GetDayTime()
    
    if DayTime < 7107 then      --07Äê107Ìì(4ÔÂ18ºÅ)
       return 0    --´ËÇ°·Ç»î¶¯Ê±¼ä
    end
    
    --if DayTime > 7114 then      --07Äê114Ìì(4ÔÂ25ºÅ)
    --if DayTime >= 7128 then      --07Äê114Ìì(5ÔÂ9ºÅ)
    if DayTime >= 7136 then      --07Äê136Ìì(5ÔÂ16ºÅÍíÉÏ24 ði¬m)
       return 0    --´Ëºó»î¶¯ÒÑ¾­½áÊø
    end
    
    return 1
    
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808035_OnEnumerate( sceneId, selfId, targetId )
    --local strTitle = "#{EXCHANGETLBB_TEX06}"
    --AddNumText(sceneId, x808035_g_ScriptId, strTitle, 1, 1 )
    
    local RightTime = x808035_CheckRightTime()
    if 1 == RightTime then    
    
		if 1 == x808035_g_ExchangeJinyongBook_Active then
			local strTitle = "#{EXCHANGETLBB_TEX07}"
			AddNumText(sceneId, x808035_g_ScriptId, strTitle, 1, 2 )
			AddNumText(sceneId, x808035_g_ScriptId, "V« trao ð±i trong \"Thiên Long Bát Bµ\"", 11, 3 )
			
		end
    
    end
    
    --AddNumText(sceneId, x808035_g_ScriptId, "¹ØÓÚ¶mµt »Bí T¸ch,Yªu Quyªt", 11, 1 )
    
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x808035_CheckAccept( sceneId, selfId )

end

--**********************************
--Tiªp thø
--**********************************
function x808035_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x808035_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x808035_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x808035_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x808035_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x808035_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x808035_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x808035_OnItemChanged( sceneId, selfId, itemdataId )
end
