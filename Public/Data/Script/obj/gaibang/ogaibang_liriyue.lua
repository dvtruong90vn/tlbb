--Ø¤°ïNPC
--ÀîÈÕÔ½
--ÆÕÍ¨

--½Å±¾ºÅ
x010011_g_scriptId			= 010011

x010011_g_shoptableindex= 49

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x010011_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "T¾i xem ði, ch² tôi có yên ng°i loÕi häo hÕng.")
		AddNumText( sceneId, x010011_g_scriptId, "Mua v§t cßÞi", 7, 100 )
		AddNumText( sceneId, x010011_g_scriptId, "Gi¾i thi®u kÜ thu§t", 11, 101 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x010011_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		DispatchShopItem( sceneId, selfId, targetId, x010011_g_shoptableindex )
	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_012}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
end
