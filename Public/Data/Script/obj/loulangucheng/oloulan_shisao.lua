--NPC
--Ê¯É©
--Åä·½ÉÌÆ·

x001157_g_scriptId = 001157
x001157_g_shoptableindex = 184

x001157_g_SegmentID = 30505706
x001157_g_JewelryID = 30501173
x001157_g_FractionSegmentID = 30501172

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001157_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta ðây chu du thiên hÕ nØa ð¶i ngß¶i m¾i thu th§p ðßþc nhæng kh¯i phß½ng này ð¤y...!!" )
--**********************************
--NPC¶Ô°×
--**********************************
		AddNumText( sceneId, x001157_g_scriptId, "Mua kh¯i phß½ng", 7, 0 )
		--AddNumText( sceneId, x001157_g_scriptId, "#{SJHC_081106_01}", 6, 1 )--´òËéÉñ½Ú
		AddNumText( sceneId, x001157_g_scriptId, "#{SJHC_081106_02}", 6, 2 )--ºÏ³ÉÉñ½Ú
		AddNumText( sceneId, x001157_g_scriptId, "Hþp thành Hàn Ng÷c Tinh Tuý", 6, 14 )
		--AddNumText( sceneId, x001157_g_scriptId, "#{SJHC_081106_03}", 11, 16 )--´òËéÉñ½Ú°ïÖú
		--AddNumText( sceneId, x001157_g_scriptId, "#{SJHC_081106_04}", 11, 17 )--ºÏ³ÉÉñ½Ú°ïÖú
		AddNumText( sceneId, x001157_g_scriptId, "Gi¾i thi®u v« hþp thành Hàn Ng÷c", 11, 15 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001157_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x001157_g_shoptableindex )
	end
	
	--´òËéÉñ½Ú½çÃæ
	--if GetNumText() == 1 then
		--BeginEvent(sceneId)						
			--AddText(sceneId,"#{SJHC_081106_05}")
			--AddNumText(sceneId, x001157_g_scriptId, "È·¶¨", 8, 3 )
			--AddNumText(sceneId, x001157_g_scriptId, "È¡Ïû", 8, 4 )
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
		--return
	--end
	
	--ºÏ³ÉÉñ½Ú½çÃæ
	if GetNumText() == 2 then
		BeginEvent(sceneId)						
			AddText(sceneId,"#{SJHC_081106_09}")
			AddNumText(sceneId, x001157_g_scriptId, "Xác nh§n", 8, 5 )
			AddNumText(sceneId, x001157_g_scriptId, "HuÖ bö", 8, 4 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	--´òËéÉñ½ÚÈ·¶¨
--	if GetNumText() == 3 then
		--x001157_FractionSegment( sceneId, selfId, targetId )
		--return
	--end
	
	--È¡Ïû
	if GetNumText() == 4 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
	
	--ºÏ³ÉÉñ½ÚÈ·¶¨
	if GetNumText() == 5 then
		x001157_ComposeSegment( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 15 then
		BeginEvent(sceneId)						
			AddText(sceneId,"#{HY_20080602_001}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end	
	
	if GetNumText() == 14 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 86021935 )
		return
	end
	
	--´òËéÉñ½Ú°ïÖú
	--if GetNumText() == 16 then
	--	x001157_NotifyFailBox( sceneId, selfId, targetId, "#{SJHC_081106_15}" )
	--	return
	--end	
	
	--ºÏ³ÉÉñ½Ú°ïÖú
	--if GetNumText() == 17 then
		--x001157_NotifyFailBox( sceneId, selfId, targetId, "#{SJHC_081106_16}" )
	--	return
	--end	
	
end

--**********************************
--´òËéÉñ½Ú
--**********************************
function x001157_FractionSegment( sceneId, selfId, targetId )
	
	--ÊÇ·ñÓÐÉñ½Ú
	if LuaFnGetAvailableItemCount( sceneId, selfId, x001157_g_SegmentID ) <= 0 then
		x001157_NotifyFailBox( sceneId, selfId, targetId, "#{SJHC_081106_06}" )
		return
	end
	
	--ÊÇ·ñÓÐÌìçáÖé
	if LuaFnGetAvailableItemCount( sceneId, selfId, x001157_g_JewelryID ) <= 0 then
		x001157_NotifyFailBox( sceneId, selfId, targetId, "#{SJHC_081106_07}" )
		return
	end
	
	--ÉíÉÏµÀ¾ßÀ¸ÊýÁ¿
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x001157_NotifyFailBox( sceneId, selfId, targetId, "    #{STZDY_20080513_23}" )
		x001157_NotifyFailTips( sceneId, selfId, "#{STZDY_20080513_23}" )
		return
	end
	
	--ÕÒÒ»¸öÉñ½ÚµÄÎïÆ·Á´½Ó£¬¿É²Î¿¼city0_building5.lua 606~613
	local SegmentInfo = ""
	local JewelryInfo = ""
	local MaxEquipIndex = LuaFnGetMaterialStartBagPos(sceneId, selfId)
	for i = 0, MaxEquipIndex - 1 do
		if LuaFnGetItemTableIndexByIndex( sceneId, selfId, i ) == x001157_g_SegmentID then
			SegmentInfo = GetBagItemTransfer( sceneId, selfId, i )
			break
		end
	end
	--ÕÒÒ»¸öÌìçáÖéµÄÎïÆ·Á´½Ó
	for i = 0, MaxEquipIndex - 1 do
		if LuaFnGetItemTableIndexByIndex( sceneId, selfId, i ) == x001157_g_JewelryID then
			JewelryInfo = GetBagItemTransfer( sceneId, selfId, i )
			break
		end
	end
	
	--¿Û³ýÎïÆ·
	if LuaFnDelAvailableItem( sceneId, selfId, x001157_g_SegmentID, 1 ) ~= 1 or
		LuaFnDelAvailableItem( sceneId, selfId, x001157_g_JewelryID, 1 ) ~= 1 then
		x001157_NotifyFailBox( sceneId, selfId, targetId, "    Kh¤u tr× v§t ph¦m th¤t bÕi" )
		return
	end
	
	--¸øÎïÆ·
	local FractionSegmentIndex = TryRecieveItem( sceneId, selfId, x001157_g_FractionSegmentID, QUALITY_MUST_BE_CHANGE )
	if FractionSegmentIndex == -1 then
		x001157_NotifyFailBox( sceneId, selfId, targetId, "    #{STZDY_20080513_23}" )
		return
	end
	local FractionSegmentInfo = GetBagItemTransfer( sceneId, selfId, FractionSegmentIndex )
	AuditSegment(sceneId, selfId, 1)
	
	x001157_NotifyFailBox( sceneId, selfId, targetId, "#{SJHC_081106_08}" )
	
	local message = format("#{_INFOUSR%s}#{DSSJ_1}#{_INFOMSG%s}#{DSSJ_2}#{_INFOMSG%s}#{DSSJ_3}#{_INFOMSG%s}#{DSSJ_4}",LuaFnGetName(sceneId, selfId),JewelryInfo,SegmentInfo,FractionSegmentInfo)
	BroadMsgByChatPipe(sceneId, selfId, message, 4);
	
end

--**********************************
--ºÏ³ÉÉñ½Ú
--**********************************
function x001157_ComposeSegment( sceneId, selfId, targetId )
	
	--ÊÇ·ñÓÐÉñ½ÚËéÆ¬
	if LuaFnGetAvailableItemCount( sceneId, selfId, x001157_g_FractionSegmentID ) < 5 then
		x001157_NotifyFailBox( sceneId, selfId, targetId, "#{SJHC_081106_10}" )
		return
	end
	
	--ÉíÉÏµÀ¾ßÀ¸ÊýÁ¿
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x001157_NotifyFailBox( sceneId, selfId, targetId, "    #{STZDY_20080513_23}" )
		x001157_NotifyFailTips( sceneId, selfId, "#{STZDY_20080513_23}" )
		return
	end
	
	--ÕÒÒ»¸öËéÆ¬µÄÎïÆ·Á´½Ó£¬¿É²Î¿¼city0_building5.lua 606~613
	local FractionSegmentInfo = ""
	local MaxEquipIndex = LuaFnGetMaterialStartBagPos(sceneId, selfId)
	for i = 0, MaxEquipIndex - 1 do
		if LuaFnGetItemTableIndexByIndex( sceneId, selfId, i ) == x001157_g_FractionSegmentID then
			FractionSegmentInfo = GetBagItemTransfer( sceneId, selfId, i )
			break
		end
	end
	
	--¿Û³ýÎïÆ·
	if LuaFnDelAvailableItem( sceneId, selfId, x001157_g_FractionSegmentID, 5 ) ~= 1 then
		x001157_NotifyFailBox( sceneId, selfId, targetId, "    Kh¤u tr× v§t ph¦m th¤t bÕi" )
		return
	end
	
	--¸øÎïÆ·
	local BagIndex = TryRecieveItem( sceneId, selfId, x001157_g_SegmentID, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		x001157_NotifyFailBox( sceneId, selfId, targetId, "    #{STZDY_20080513_23}" )
		return
	end
	local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
	AuditSegment(sceneId, selfId, 2)
	
	x001157_NotifyFailBox( sceneId, selfId, targetId, "#{SJHC_081106_11}" )
	
	local message = format("#{_INFOUSR%s}#{SJHC_081106_12}#{_INFOMSG%s}#{SJHC_081106_13}#{_INFOMSG%s}#{SJHC_081106_14}",LuaFnGetName(sceneId, selfId),FractionSegmentInfo,ItemInfo)
	BroadMsgByChatPipe(sceneId, selfId, message, 4);
	
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001157_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x001157_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
