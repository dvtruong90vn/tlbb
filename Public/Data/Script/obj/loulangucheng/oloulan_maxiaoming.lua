--Â¥À¼NPC
--ÂíæçÃù
--ÆÕÍ¨

x001158_g_ScriptId	= 001158

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x001158_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Trong Tây Vñc, BÕch LÕc Ğà là loÕi thú cßŞi hiªm có. Trß¾c ğây chü có quı t¯c m¾i có th¬ cßŞi nhßng loÕi thú cßŞi sang tr÷ng này. Nhßng gi¶ ğây lÕi khác, ngß¶i Tây vÑc này xem BÕch LÕc Ğà là loÕi thú cßŞi tßşng trßng cho sñ tài phú....#r TÕi hÕ ğây hi®n có bán: " )
		AddNumText( sceneId, x001158_g_ScriptId, "Mua v§t cßŞi", 7, 1 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x001158_OnEventRequest( sceneId, selfId, targetId )
	local	key	= GetNumText()
	if key == 1 then
		DispatchShopItem( sceneId, selfId, targetId, 185 )
	end
end

--**********************************
--¶Ô»°¿òÌáÊ¾
--**********************************
function x001158_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
