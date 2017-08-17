--±¦²Ø¶´mµt ÖÁÎå²ãNPC
--Ò¦·ò¡¡Ò¦¹«¡¡Ò¦²®¡¡Ò¦ÖÙ¡¡Ò¦Êå
--Ò©µê

x039001_g_shoptableindex=14
x039001_g_scriptId = 39001


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x039001_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, " Ti®m này chuyên phø trách cung Ñng dßþc ph¦m v§t ph¦m cüa Bäo Tàng Ðµng. M²i t¥ng ð«u có phân ti®m" )
		AddNumText( sceneId, x039001_g_scriptId, "Mua", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x039001_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x039001_g_shoptableindex )
	end
end
