--ÇíÖÝNPC
--ºéÁú
--Ò°Íâ±¦Ê¯··×Ó

x035007_g_scriptId = 035007
x035007_g_shoptableindex = 110

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x035007_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ð¬ bán ðßþc m¤y viên ðá, huynh ð® b÷n ta phäi chÕy ðông chÕy tây su¯t ngày, các hÕ th¤y ðâu d­ dàng gì" )
		AddNumText( sceneId, x035007_g_scriptId, "Xem ðá ngß½i ðem bán trông thª nào", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x035007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		if(GetLevel(sceneId, selfId) < 30 ) then
			BeginEvent( sceneId )
			AddText( sceneId, "#{BSSR_20080131_01}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		DispatchShopItem( sceneId, selfId, targetId, x035007_g_shoptableindex )
	end
end
