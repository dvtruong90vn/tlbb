--ÈÈÂôÔª±¦ NPC
--×¢Òâ±¾½Å±¾º¬ÓÐËæÉíÔª±¦Ïà¹Ø¹¦ÄÜ£¬ÇëÒ»¶¨²ÎÕÕÏÖÓÐµÄÀý×Ó½øÐÐÐÞ¸Ä¡£

x181002_g_scriptId 	= 181002
x181002_g_buyrate 	= 0.5

x181002_g_shoptableindex=151 --ÒÑ¾­·ÏÆúÁË£¬ÏÖÔÚÓÃ188ºÍ189
x181002_g_goodact		= 1		--ÈÈÂôÔª±¦ÉÌµê
x181002_g_YuanBaoIntro	= 18	--Ôª±¦½éÉÜ

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x181002_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText = "Ðªn ðây mà xem, thß½ng ph¦m bán chÕy nh¤t, giá rë nh¤t. Khách quan, ngài mau ch÷n vài món ði, bäo ðäm ngài mua v« xong ðêm nay n¢m m½ cûng phäi cß¶i"
		AddText( sceneId, strText )
		AddNumText( sceneId, x181002_g_scriptId, "Mua nhi®t mÕi thß½ng ph¦m", 7, x181002_g_goodact)
		AddNumText( sceneId, x181002_g_scriptId, "Gi¾i thi®u Nguyên Bäo", 11, x181002_g_YuanBaoIntro)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x181002_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == x181002_g_goodact then
	--ÐÂµÄÔª±¦ÉÌµê
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 1)
			UICommand_AddInt( sceneId, 2 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 888902)
	elseif GetNumText() == x181002_g_YuanBaoIntro	then
		BeginEvent( sceneId )
			AddText( sceneId, "#{INTRO_YUANBAO}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--°´ÐèÀ´µ¯³öÉÌµê£¬·ÖÎªËæÉíÉÌµêºÍNPCÉÌµê
--**********************************
function x181002_NewDispatchShopItem(sceneId,selfId,targetId,shopId)
	if targetId >= 0 then
		DispatchShopItem( sceneId, selfId,targetId, shopId )
	else
		DispatchNoNpcShopItem( sceneId, selfId, shopId )
	end
end
