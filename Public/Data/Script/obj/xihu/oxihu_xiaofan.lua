-- ÖÐÇïNPC
-- Ð¡··

x050201_g_scriptId = 050201

x050201_g_shoptableindex = 166	--ÔÝÊ±

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050201_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "V¸ ÐÕi Hi®p này, ðªn ðây mua chén Løc Ð§u Thang ð¬ giäi khát nào! Ti®m Løc Ð§u Thang cüa ta n±i tiªng g¥n xa ðó!" )
		AddNumText( sceneId, x050201_g_scriptId, "Mua Løc Ð§u Thang", 7, 1 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x050201_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		DispatchShopItem( sceneId, selfId, targetId, x050201_g_shoptableindex )
	end
end
