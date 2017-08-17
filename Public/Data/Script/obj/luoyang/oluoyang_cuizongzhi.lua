--ÂåÑôNPC
--´Ş×ÚÖ®
--ÆÕÍ¨

x000055_g_shoptableindex=8

x000055_g_scriptId=000055

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000055_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"M÷i ngß¶i nói tôi u¯ng say r°i dáng vë nhß cây ng÷c trß¾c gió, chÆng biªt ğúng cûng không ğúng.")
		AddNumText(sceneId,x000055_g_scriptId,"Mua th¸t",7,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x000055_OnEventRequest( sceneId, selfId, targetId, eventId )
	DispatchShopItem( sceneId, selfId,targetId, x000055_g_shoptableindex )
end
