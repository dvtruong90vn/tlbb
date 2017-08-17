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
x181003_g_lv1zdianshop	= 7			--Ò»Nguyên li®u c¤p 
x181003_g_lv2zdianshop	= 8			--¶þNguyên li®u c¤p 
x181003_g_lv3zdianshop	= 9			--ÈýNguyên li®u c¤p 
x181003_g_lv4zdianshop	= 10		--ËÄNguyên li®u c¤p 
x181003_g_lv5zdianshop	= 11		--ÎåNguyên li®u c¤p 
x181003_g_lv6zdianshop	= 12		--ÁùNguyên li®u c¤p 
x181003_g_lv7zdianshop	= 13		--ÆßNguyên li®u c¤p 
x181003_g_lv8zdianshop	= 14		--°ËNguyên li®u c¤p 
x181003_g_lv9zdianshop	= 15		--¾ÅNguyên li®u c¤p 
x181003_g_lv10zdianshop	= 16		--Ê®Nguyên li®u c¤p 
x181003_g_newprize	= 17		--²é¿´ÖÐ½±
x181003_g_YuanBaoIntro	= 18	--Ôª±¦½éÉÜ

x181003_g_leave			= 20	--Àë¿ª
x181003_g_return		= 21	--·µ»Ø(Ö÷²Ëµ¥)
x181003_g_return1		= 22	--·µ»Ø(Ôª±¦ÉÌµê)
x181003_g_DZYBact		= 23	--´òÔìÍ¼Ôª±¦ÉÌµê

--Ôª±¦ÉÌµê	-modify by xindefeng
x181003_g_YBShop		=
{
	--Ë÷Òý£¨Ë³ÐòµÝÔö 1-N£©£¬name = ÉÌµêÃû³Æ£¬id = ÉÌµêID£¬key = GetNumText£¨Ë³ÐòµÝÔö 101-N£©
	[1]	= { name = "#gff00f0Nhi®t mÕi thß½ng ph¦m", id = 151, key = 101 },
	[2]	= { name = "#c6de4feThiên Long süng v§t quán", id = -1, key = 102 },
	[3]	= { name = "Thiên cung ngñ mã giám", id = 134, key = 103 },	
	[4]	= { name = "#c6de4feThiên Long hình tßþng quán", id = -1, key = 104 },
	[5]	= { name = "Lßu Dß½ng pháo hoa ðiªm", id = 132, key = 105 },
	[6]	= { name = "Xuân thành bách hoa cung", id = 133, key = 106 },	
	[7]	= { name = "Bi¬n Thß¾c linh dßþc ðiªm", id = 136, key = 107 },
	[8]	= { name = "#gff00f0KÏ trân d¸ bäo", id = 137, key = 108 },	
	[9] = { name = "#c6de4feThiên Long bäo thÕch trai", id = -1, key = 109 },	
	[10]	= { name = "Hoàn thi thüy các", id = 146, key = 110 },
	[11]	= { name = "Tam thanh th¥n phù", id = 144, key = 111 }
}

--Ôª±¦ÕäÊÞµê--add by xindefeng
x181003_g_YBPetShops =
{
	[1]	= { name = "Phi Phi trân thú quán", id = 152, key = 112 },
	[2]	= { name = "Phiêu Phiêu trân thú quán", id = 135, key = 113 }
}

--Ôª±¦ÐÎÏóµê--add by xindefeng
x181003_g_YBXingXiangShops =
{
	[1]	= { name = "M­ Lan th¶i trang ðiªm", id = 120, key = 114 },
	[2] = { name = "Nhß Ý biªn thân trai", id = 181, key = 115 },
	[3] = { name = "Thiên Dß½ng phát ngh® quán", id = 145, key = 116 },
	[4] = { name = "Lan Vû mî dung phß¶ng", id = 182, key = 117 }	--add by zchw
}

--Ôª±¦±¦Ê¯µê--add by xindefeng
x181003_g_YBBaoshiShops =
{
	[1]	= { name = "Phòng bäo thÕch ÐÕi Lý", id = 149, key = 118 },
	[2]	= { name = "Phòng bäo thÕch Tô Châu", id = 150, key = 119 },
	[3]	= { name = "Phòng bäo thÕch LÕc Dß½ng", id = 178, key = 120 },
	[4]	= { name = "#gff00f0Bäo thÕch tinh hoa ðiªm", id = 198, key = 132 }   -- added by houzhifang in 20081107 tt:40793; 120--131±»ÓÃ¹ýÁË
}

--´òÔìÍ¼ÉÌµê
x181003_g_DZYBShop	=
{
	--Ë÷Òý£¨Ë³ÐòµÝÔö 1-N£©£¬name = ÉÌµêÃû³Æ£¬id = ÉÌµêID£¬key = GetNumText£¨Ë³ÐòµÝÔö 201-N£©
	[1]	= { name = "Ðao phü - Thß½ng b±ng", id = 156, key = 201 },
	[2]	= { name = "Ð½n ðoän - Song ðoän", id = 157, key = 202 },
	[3]	= { name = "Phiªn - Hoàn", id = 158, key = 203 },
	[4]	= { name = "Mão - Y phøc", id = 159, key = 204 },
	[5]	= { name = "Thü sáo - Hài", id = 160, key = 205 },
	[6]	= { name = "Hµ uy¬n - Hµ kiên", id = 161, key = 206 },
	[7]	= { name = "Yêu ðái", id = 162, key = 207 },
	[8]= { name = "HÕng liên", id = 163, key = 208 },
	[9]	= { name = "Gi¾i chï", id = 164, key = 209 },
	[10]	= { name = "Hµ phù", id = 165, key = 210 },
}

--ä¯Ñô»¨ÅÚµê
x181003_g_YBHuaPaoShops =
{
	[1]	= { name = "Ðèn ðu¯c rñc rÞ", id = 190, key = 300 },
	[2]	= { name = "V§t ph¦m ngày l­", id = 191, key = 301 },
	[3]	= { name = "Khuynh thành chi tß", id = 192, key = 302 },
}

--ÌÒ±¤ÆæÎïµê
x181003_g_YBQiWuShops =
{
	[1]	= { name = "Lung linh thÕch ð¥u ký", id = 193, key = 303 },
	[2]	= { name = "D¸ thú gia công phß¶ng", id = 194, key = 304 },
	[3]	= { name = "Nam b¡c kÏ hóa ðiªm", id = 195, key = 305 },
	[4]	= { name = "Nguyên bäo kÏ v§t ðiªm", id = 137, key = 306 },
}

--ÈÈÂôÉÌµê
x181003_g_YBReMaiShops =
{
	[1]	= { name = "V§t ph¦m m¾i", id = 188, key = 307 },
	[2] = { name = "Nhân khí thß½ng ph¦m", id = 189, key = 309 },
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x181003_OnDefaultEvent( sceneId, selfId, targetId )
	if targetId == -1 then
		x181003_OnEventRequest( sceneId, selfId, targetId, nil )
	else
		BeginEvent( sceneId )
--			local strText = "    ÓÐÇ®ÄÜÊ¹¹íÍÆÄ¥£¬ËäÈ»½­ºþµ±ÖÐÒÔÎäÁ¦ÎªÉÏ£¬µ«ÊÇÓÐÁËÔª±¦¿ÉÄÜ»áÊ¹Ô­À´ºÜ¶à±È½ÏÄÑ°ìµÄÊÂÇé±äµÃ¼òµ¥ÆðÀ´£¬ÄúÏë×öÐ©Ê²Ã´ÄØ£¿"
--			AddText( sceneId, strText )
--			AddNumText( sceneId, x181003_g_scriptId, "ÎÒÏë¹ºÂòÉÌÆ·", 2, x181003_g_goodact)
--			if targetId >= 0 then
--				AddNumText( sceneId, x181003_g_scriptId, "ÎÒÏë¶Ò»»Ôª±¦", 2, x181003_g_buyact)
--				if IsShutout( sceneId, selfId, ONOFF_T_YBCASH ) == 0 then
--					AddNumText( sceneId, x181003_g_scriptId, "ÎÒÏë¶Ò»»Ôª±¦Æ±", 2, x181003_g_ticketact)
--				end
--			else
--				targetId = -1	--ÎªÁËÄÜÕý³£µ¯³öÑ¡Ïî
--			end
			for i = 1, getn( x181003_g_YBShop ) do
				AddNumText( sceneId, x181003_g_scriptId, x181003_g_YBShop[i].name, 7, x181003_g_YBShop[i].key )
			end
			AddNumText(sceneId,x181003_g_scriptId, "Ðä tÕo ð°", 7, x181003_g_DZYBact)
			AddNumText( sceneId, x181003_g_scriptId, "Gi¾i thi®u Ti«n Trang", 11, x181003_g_YuanBaoIntro)
			if targetId < 0 then
				targetId = -1
			end
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
--		BeginEvent( sceneId )
--			for i = 1, getn( x181003_g_YBShop ) do
--				AddNumText( sceneId, x181003_g_scriptId, x181003_g_YBShop[i].name, 7, x181003_g_YBShop[i].key )
--			end
--			AddNumText(sceneId,x181003_g_scriptId, "´òÔìÍ¼×¨Âô", 7, x181003_g_DZYBact)
--			AddNumText( sceneId, x181003_g_scriptId, "Tr· v«", -1, x181003_g_return)
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
		local nID = targetId;
		if nID < 0 then nID = -2 end -- -2ÊÇ²Ëµ¥£¬-1ÊÇÏìÓ¦
		x181003_OnDefaultEvent( sceneId, selfId, nID )
	elseif GetNumText() == x181003_g_DZYBact then
		BeginEvent( sceneId )
			local strText = "Hãy lña ch÷n loÕi ðä tÕo ð° tß½ng Ñng."
			AddText( sceneId, strText )
			
			for i = 1, getn( x181003_g_DZYBShop ) do
				AddNumText( sceneId, x181003_g_scriptId, x181003_g_DZYBShop[i].name, 7, x181003_g_DZYBShop[i].key )
			end
			AddNumText( sceneId, x181003_g_scriptId, "Tr· v«", -1, x181003_g_return1)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == x181003_g_zdianact then
		BeginEvent( sceneId )
			strText = "Hãy lña ch÷n mµt loÕi cØa hàng ði¬m t£ng tß½ng Ñng"
			AddText( sceneId, strText )
			AddNumText( sceneId, x181003_g_scriptId, "Ph± thông thß½ng ph¦m", 7, x181003_g_normalzdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 1", 7, x181003_g_lv1zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 2", 7, x181003_g_lv2zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 3", 7, x181003_g_lv3zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 4", 7, x181003_g_lv4zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 5", 7, x181003_g_lv5zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 6", 7, x181003_g_lv6zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 7", 7, x181003_g_lv7zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 8", 7, x181003_g_lv8zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 9", 7, x181003_g_lv9zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguyên li®u c¤p 10", 7, x181003_g_lv10zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Tr· v«", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
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
	elseif GetNumText() == 102 then	--ÌìÁúÕäÊÞµê	--add by xindefeng
		BeginEvent( sceneId )
		for i = 1, getn( x181003_g_YBPetShops ) do
			AddNumText( sceneId, x181003_g_scriptId, x181003_g_YBPetShops[i].name, 7, x181003_g_YBPetShops[i].key )
		end
		AddNumText( sceneId, x181003_g_scriptId, "Tr· v«", -1, x181003_g_return1)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 104 then	--ÌìÁúÐÎÏó¹Ý	--add by xindefeng
		BeginEvent( sceneId )
		for i = 1, getn( x181003_g_YBXingXiangShops ) do
			AddNumText( sceneId, x181003_g_scriptId, x181003_g_YBXingXiangShops[i].name, 7, x181003_g_YBXingXiangShops[i].key )
		end
		AddNumText( sceneId, x181003_g_scriptId, "Tr· v«", -1, x181003_g_return1)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 109 then	--ÌìÁú±¦Ê¯µê--add by xindefeng
		BeginEvent( sceneId )
		for i = 1, getn( x181003_g_YBBaoshiShops ) do
			AddNumText( sceneId, x181003_g_scriptId, x181003_g_YBBaoshiShops[i].name, 7, x181003_g_YBBaoshiShops[i].key )
		end
		AddNumText( sceneId, x181003_g_scriptId, "Tr· v«", -1, x181003_g_return1)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )		
	elseif GetNumText() == 105 then	--ä¯Ñô»¨ÅÚµê
		BeginEvent( sceneId )
		for i = 1, getn( x181003_g_YBHuaPaoShops ) do
			AddNumText( sceneId, x181003_g_scriptId, x181003_g_YBHuaPaoShops[i].name, 7, x181003_g_YBHuaPaoShops[i].key )
		end
		AddNumText( sceneId, x181003_g_scriptId, "Tr· v«", -1, x181003_g_return1)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 108 then	--ÌÒ±¤ÆæÎïµê
		BeginEvent( sceneId )
		for i = 1, getn( x181003_g_YBQiWuShops ) do
			AddNumText( sceneId, x181003_g_scriptId, x181003_g_YBQiWuShops[i].name, 7, x181003_g_YBQiWuShops[i].key )
		end
		AddNumText( sceneId, x181003_g_scriptId, "Tr· v«", -1, x181003_g_return1)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 101 then	--ÈÈÂôÉÌµê
		BeginEvent( sceneId )
		for i = 1, getn( x181003_g_YBReMaiShops ) do
			AddNumText( sceneId, x181003_g_scriptId, x181003_g_YBReMaiShops[i].name, 7, x181003_g_YBReMaiShops[i].key )
		end
		AddNumText( sceneId, x181003_g_scriptId, "Tr· v«", -1, x181003_g_return1)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	else
		--Ôª±¦ÉÌµê
		for i = 1, getn( x181003_g_YBShop ) do
			if (GetNumText() == 102 or GetNumText() == 104 or GetNumText() == 109 or GetNumText() == 105 or GetNumText() == 108 or GetNumText() == 101) then	--ÉÌµêÀàÐÍÑ¡Ïî--add by xindefeng
				break
			end
			if GetNumText() == x181003_g_YBShop[i].key then
				x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_YBShop[i].id )
				break
			end
		end
		--ÌìÁúÕäÊÞµê--add by xindefeng
		for i = 1, getn( x181003_g_YBPetShops ) do
			if GetNumText() == x181003_g_YBPetShops[i].key then
				x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_YBPetShops[i].id )
				break
			end
		end
		--ÌìÁúÐÎÏó¹Ý--add by xindefeng
		for i = 1, getn( x181003_g_YBXingXiangShops ) do
			if GetNumText() == x181003_g_YBXingXiangShops[i].key then
				x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_YBXingXiangShops[i].id )
				break
			end
		end
		--±¦Ê¯ÉÌµê--add by xindefeng
		for i = 1, getn( x181003_g_YBBaoshiShops ) do
			if GetNumText() == x181003_g_YBBaoshiShops[i].key then
				x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_YBBaoshiShops[i].id )
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
		--ä¯Ñô»¨ÅÚµê
		for i = 1, getn( x181003_g_YBHuaPaoShops ) do
			if GetNumText() == x181003_g_YBHuaPaoShops[i].key then
				x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_YBHuaPaoShops[i].id )
				break
			end
		end
		--ÌÒ±¤ÆæÎïµê
		for i = 1, getn( x181003_g_YBQiWuShops ) do
			if GetNumText() == x181003_g_YBQiWuShops[i].key then
				x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_YBQiWuShops[i].id )
				break
			end
		end
		--ÈÈÂôÉÌµê
		for i = 1, getn( x181003_g_YBReMaiShops ) do
			if GetNumText() == x181003_g_YBReMaiShops[i].key then
				x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_YBReMaiShops[i].id )
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
