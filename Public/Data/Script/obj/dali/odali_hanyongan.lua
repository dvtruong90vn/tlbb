--´óÀíNPC
--º«ÓÀ°²
--ÆÕÍ¨

x002029_g_shoptableindex_1=8


--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002029_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ğây là ti®m c¥m ğ° l¾n nh¤t Thành ĞÕi Lı. Ngß½i mu¯n gì?")
		--AddNumText(sceneId,g_scriptId,"¹ºÂòÆÕÍ¨²ÄÁÏ",7,0)
		EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x002029_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == 0	then
		DispatchShopItem( sceneId, selfId,targetId, x002029_g_shoptableindex_1 )
	end
end
