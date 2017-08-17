--ËæÉíÔª±¦ NPC
--×¢Òâ±¾½Å±¾º¬ÓÐËæÉíÔª±¦Ïà¹Ø¹¦ÄÜ£¬ÇëÒ»¶¨²ÎÕÕÏÖÓÐµÄÀý×Ó½øÐÐÐÞ¸Ä¡£

x181003_g_scriptId 	= 181003
x181003_g_buyrate 	= 0.5

x181003_g_shoptableindex=120
x181003_g_zengdianshop=121

x181003_g_goodact		= 1		--Ôª±¦ÉÌµê
x181003_g_buyact	 	= 2		--¶Ò»»Ôª±¦
x181003_g_ticketact = 3		--¶Ò»»Ôª±¦Æ±
x181003_g_zdianact	= 4		--ÔùµãÉÌµê
x181003_g_gotodali	= 5		--·µ»ØÂåÑô

x181003_g_normalzdianshop	= 6		--ÆÕÍ¨ÔöµãÉÌµê
x181003_g_lv1zdianshop	= 7			--Ò»¼¶²ÄÁÏ
x181003_g_lv2zdianshop	= 8			--¶þ¼¶²ÄÁÏ
x181003_g_lv3zdianshop	= 9			--Èý¼¶²ÄÁÏ
x181003_g_lv4zdianshop	= 10		--ËÄ¼¶²ÄÁÏ
x181003_g_lv5zdianshop	= 11		--Îå¼¶²ÄÁÏ
x181003_g_lv6zdianshop	= 12		--Áù¼¶²ÄÁÏ
x181003_g_lv7zdianshop	= 13		--Æß¼¶²ÄÁÏ
x181003_g_lv8zdianshop	= 14		--°Ë¼¶²ÄÁÏ
x181003_g_lv9zdianshop	= 15		--¾Å¼¶²ÄÁÏ
x181003_g_lv10zdianshop	= 16		--Ê®¼¶²ÄÁÏ
x181003_g_newprize	= 17		--²é¿´ÖÐ½±
x181003_g_YuanBaoIntro	= 18	--Ôª±¦½éÉÜ

x181003_g_leave			= 20	--Àë¿ª
x181003_g_return		= 21	--·µ»Ø(Ö÷²Ëµ¥)
x181003_g_return1		= 22	--·µ»Ø(Ôª±¦ÉÌµê)
x181003_g_DZYBact		= 23	--´òÔìÍ¼Ôª±¦ÉÌµê

--Ôª±¦ÉÌµê
x181003_g_YBShop		=
{
	--Ë÷Òý£¨Ë³ÐòµÝÔö 1-N£©£¬name = ÉÌµêÃû³Æ£¬id = ÉÌµêID£¬key = GetNumText£¨Ë³ÐòµÝÔö 101-N£©
	[1]	= { name = "Nhi®t MÕi Thß½ng Ðiªm", id = 151, key = 101 },
	[2]	= { name = "Phi Phi Trân Thú Quán", id = 152, key = 102 },
	[3]	= { name = "M­ Lan Th¶i Trang Ðiªm", id = 120, key = 103 },
	[4]	= { name = "Lßu Dß½ng Pháo Hoa Ðiªm", id = 132, key = 104 },
	[5]	= { name = "Xuân Thành Bách Hoa Cung", id = 133, key = 105 },
	[6]	= { name = "Thiên Cung Ngñ Mã Giám", id = 134, key = 106 },
	[7]	= { name = "Bi¬n Thß¾c Linh Dßþc Ðiªm", id = 136, key = 107 },
	[8]	= { name = "#gff00f0KÏ Trân D¸ Bäo", id = 137, key = 108 },
	[9]= { name = "Thiên Dß½ng Phát Ngh® Quán", id = 145, key = 109 },
	[10]	= { name = "Phiêu Phiêu Trân Thú Quán", id = 135, key = 110 },
	[11]	= { name = "Tam Thanh Th¥n Phù", id = 144, key = 111 },
	[12]	= { name = "Hoàn Th¸ Thüy Các", id = 146, key = 112 },
	[13]	= { name = "Phòng Bäo ThÕch ÐÕi Lý", id = 149, key = 113 },
	[14]	= { name = "Phòng Bäo ThÕch Tô Châu", id = 150, key = 114 },
	[15]	= { name = "Phòng Bäo ThÕch LÕc Dß½ng", id = 178, key = 115 },
}

--´òÔìÍ¼ÉÌµê
x181003_g_DZYBShop	=
{
	--Ë÷Òý£¨Ë³ÐòµÝÔö 1-N£©£¬name = ÉÌµêÃû³Æ£¬id = ÉÌµêID£¬key = GetNumText£¨Ë³ÐòµÝÔö 201-N£©
	[1]	= { name = "Ðao Phü - Thß½ng B±ng", id = 156, key = 201 },
	[2]	= { name = "Ð½n Ðoän - Song Ðoän", id = 157, key = 202 },
	[3]	= { name = "Phiªn - Hoàn", id = 158, key = 203 },
	[4]	= { name = "Mão - Y Phøc", id = 159, key = 204 },
	[5]	= { name = "Thü Sáo - Hài TØ", id = 160, key = 205 },
	[6]	= { name = "Hµ Uy¬n - Hµ Kiên", id = 161, key = 206 },
	[7]	= { name = "Yêu Ðái", id = 162, key = 207 },
	[8]= { name = "HÕng Liên", id = 163, key = 208 },
	[9]	= { name = "Gi¾i Chï", id = 164, key = 209 },
	[10]	= { name = "Hµ Phù", id = 165, key = 210 },
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x181003_OnDefaultEvent( sceneId, selfId, targetId )
	if targetId == -1 then
		x181003_OnEventRequest( sceneId, selfId, targetId, nil )
	else
		BeginEvent( sceneId )
			local strText = "Có ti«n thì mu¯n gì chä ðßþc..."
			AddText( sceneId, strText )

			--AddNumText( sceneId, x181003_g_scriptId, "ÎÒÏë³é½±", 2, x181003_g_newprize)
			AddNumText( sceneId, x181003_g_scriptId, "Ta mu¯n mua thß½ng ph¦m", 2, x181003_g_goodact)
			if targetId >= 0 then
				AddNumText( sceneId, x181003_g_scriptId, "Ð±i Nguyên Bäo", 2, x181003_g_buyact)
				AddNumText( sceneId, x181003_g_scriptId, "Ð±i Phiªu Kim Nguyên Bäo", 2, x181003_g_ticketact)
			else
				targetId = -1	--ÎªÁËÄÜÕý³£µ¯³öÑ¡Ïî
			end
--			AddNumText( sceneId, x181003_g_scriptId, "ÔùµãÉÌµê", 2, x181003_g_zdianact)
			if targetId >= 0 then
				--AddNumText( sceneId, x181003_g_scriptId, "·µ»ØÂåÑô", 2, x181003_g_gotodali)
			end
			AddNumText( sceneId, x181003_g_scriptId, "Gi¾i thi®u Ti«n Trang", 11, x181003_g_YuanBaoIntro)
			--AddNumText( sceneId, x181003_g_scriptId, "Àë¿ª¡­¡­", -1, x181003_g_leave)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x181003_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == x181003_g_buyact then
		--ÏÈÑ¯ÎÊ×Ô¼ºµÄÊ£ÓàµãÊý
		CallScriptFunction( PRIZE_SCRIPT_ID, "AskPoint", sceneId, selfId )
		
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, x181003_g_buyrate*1000)
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 2001 )
	elseif GetNumText() == x181003_g_newprize then
		CallScriptFunction( PRIZE_SCRIPT_ID, "AskPrize", sceneId, selfId)
	elseif GetNumText() == x181003_g_return then
		local nID = targetId;
		if nID < 0 then nID = -2 end -- -2ÊÇ²Ëµ¥£¬-1ÊÇÏìÓ¦
		x181003_OnDefaultEvent( sceneId, selfId, nID )
	elseif GetNumText() == x181003_g_goodact or GetNumText() == x181003_g_return1 then
		BeginEvent( sceneId )
			--local strText = "  Çë¸ù¾ÝÐèÇóÑ¡Ôñ²»Í¬µÄÔª±¦ÉÌµê£º"
			--AddText( sceneId, strText )
			AddNumText(sceneId,x181003_g_scriptId, "Ðä TÕo Ð°", 7, x181003_g_DZYBact)
			for i = 1, getn( x181003_g_YBShop ) do
				AddNumText( sceneId, x181003_g_scriptId, x181003_g_YBShop[i].name, 7, x181003_g_YBShop[i].key )
			end
			AddNumText( sceneId, x181003_g_scriptId, "Tr· lÕi", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
--	x181003_NewDispatchShopItem( sceneId, selfId,targetId, x181003_g_shoptableindex )
	elseif GetNumText() == x181003_g_DZYBact then
		BeginEvent( sceneId )
			local strText = "  Çë¸ù¾ÝÐèÇóÑ¡Ôñ²»Í¬µÄ´òÔìÍ¼ÉÌµê£º"
			AddText( sceneId, strText )
			
			for i = 1, getn( x181003_g_DZYBShop ) do
				AddNumText( sceneId, x181003_g_scriptId, x181003_g_DZYBShop[i].name, 7, x181003_g_DZYBShop[i].key )
			end
			AddNumText( sceneId, x181003_g_scriptId, "·µ»ØÉÏÒ»Ò³", -1, x181003_g_return1)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == x181003_g_zdianact then
		BeginEvent( sceneId )
			strText = "  Çë¸ù¾ÝÐèÇóÑ¡Ôñ²»Í¬µÄÔùµãÉÌµê£º"
			AddText( sceneId, strText )
			AddNumText( sceneId, x181003_g_scriptId, "ÆÕÍ¨ÔùµãÉÌÆ·", 7, x181003_g_normalzdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Ò»¼¶²ÄÁÏ ", 7, x181003_g_lv1zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "¶þ¼¶²ÄÁÏ ", 7, x181003_g_lv2zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Èý¼¶²ÄÁÏ ", 7, x181003_g_lv3zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "ËÄ¼¶²ÄÁÏ ", 7, x181003_g_lv4zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Îå¼¶²ÄÁÏ ", 7, x181003_g_lv5zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Áù¼¶²ÄÁÏ ", 7, x181003_g_lv6zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Æß¼¶²ÄÁÏ ", 7, x181003_g_lv7zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "°Ë¼¶²ÄÁÏ ", 7, x181003_g_lv8zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "¾Å¼¶²ÄÁÏ ", 7, x181003_g_lv9zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Ê®¼¶²ÄÁÏ ", 7, x181003_g_lv10zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "·µ»ØÉÏÒ»Ò³", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		--x181003_NewDispatchShopItem( sceneId, selfId,targetId, x181003_g_zengdianshop )
	elseif GetNumText() == x181003_g_gotodali then
		NewWorld(sceneId,selfId,0,200,177)
	elseif GetNumText() == x181003_g_ticketact then
		local nYuanBao = YuanBao(sceneId,selfId,targetId,3,0)
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 2002 )
	elseif GetNumText() == x181003_g_leave then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	elseif GetNumText() == x181003_g_normalzdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 121 )
	elseif GetNumText() == x181003_g_lv1zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 122 )
	elseif GetNumText() == x181003_g_lv2zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 123 )
	elseif GetNumText() == x181003_g_lv3zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 124 )
	elseif GetNumText() == x181003_g_lv4zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 125 )
	elseif GetNumText() == x181003_g_lv5zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 126 )
	elseif GetNumText() == x181003_g_lv6zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 127 )
	elseif GetNumText() == x181003_g_lv7zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 128 )
	elseif GetNumText() == x181003_g_lv8zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 129 )
	elseif GetNumText() == x181003_g_lv9zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 130 )
	elseif GetNumText() == x181003_g_lv10zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 131 )
	elseif GetNumText() == x181003_g_YuanBaoIntro	then
		BeginEvent( sceneId )
			AddText( sceneId, "#{INTRO_YUANBAO}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	else
		--Ôª±¦ÉÌµê
		for i = 1, getn( x181003_g_YBShop ) do
			if GetNumText() == x181003_g_YBShop[i].key then
				x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_YBShop[i].id )
				break
			end
		end
		--´òÔìÍ¼×¨Âô
		for i = 1, getn( x181003_g_DZYBShop ) do
			if GetNumText() == x181003_g_DZYBShop[i].key then
				x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_DZYBShop[i].id )
				break
			end
		end
	end
end

--**********************************
--¿Í»§¶Ë¹ºÂòÔª±¦½Ó¿Ú
--**********************************
function x181003_BuyYuanbao( sceneId, selfId, nYuanBao )
	--¹ºÂòÔª±¦
	if nYuanBao then
		if nYuanBao > 0 and nYuanBao <= 10000 then
			CallScriptFunction( PRIZE_SCRIPT_ID, "AskYuanBao", sceneId, selfId, nYuanBao, nYuanBao*x181003_g_buyrate*1000)
		end
	end
end

--**********************************
--°´ÐèÀ´µ¯³öÉÌµê£¬·ÖÎªËæÉíÉÌµêºÍNPCÉÌµê
--**********************************
function x181003_NewDispatchShopItem(sceneId,selfId,targetId,shopId)
	if targetId >= 0 then
		DispatchShopItem( sceneId, selfId,targetId, shopId )
	else
		DispatchNoNpcShopItem( sceneId, selfId, shopId )
	end
end
