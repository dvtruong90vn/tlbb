--ÉÌÈËµÄNpc
--ÆÕÍ¨

--½Å±¾ºÅ
x125003_g_scriptId = 125003

--ÉÌµê±àºÅ
x125003_g_ShopTabId_1	= 143
x125003_g_ShopTabId_2	= 27

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x125003_g_eventList={}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************

function x125003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Các hÕ g÷i chút gì không? — ðây tôi có r¤t nhi«u ð° ån u¯ng. Giá cä cûng ngang v¾i thành LÕc Dß½ng ð¤y!")
		AddNumText(sceneId,x125003_g_scriptId,"Mua thu¯c và thÑc ån",7,0)
		AddNumText(sceneId,x125003_g_scriptId,"Mua ð° ån cho trân thú",7,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x125003_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	
	if key == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x125003_g_ShopTabId_1 )
	end
	if key == 1 then
		DispatchShopItem( sceneId, selfId, targetId, x125003_g_ShopTabId_2 )
	end
end

