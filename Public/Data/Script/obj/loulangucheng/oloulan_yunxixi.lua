--Â¥À¼NPC....
--³æÄñ·»·»Ö÷....

x001111_g_scriptId = 001111
x001111_g_shoptableindex = 27

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001111_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLGC_20080324_01}" )
		AddNumText( sceneId, x001111_g_scriptId, "Ngß½i mu¯n mua gì ?", 7, 0 )
		
		AddNumText(sceneId,x001111_g_scriptId,"Ki¬m tra mÑc tång trß·ng",6,1)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001111_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x001111_g_shoptableindex )
	elseif GetNumText() == 1 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 6 )				--ÕäÊÞ²éÑ¯·ÖÖ§
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 3 )	--µ÷ÓÃÕäÊÞ½çÃæ
	end
end
