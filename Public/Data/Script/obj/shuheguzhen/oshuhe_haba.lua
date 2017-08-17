--NPC
--¹þ°Í
--Åä·½ÉÌÆ·

x001170_g_scriptId = 001170
x001170_g_shoptableindex = 183
x001170_g_MsgInfo = { "#{SHGZ_0612_03}",
											"#{SHGZ_0620_07}",
											"#{SHGZ_0620_08}",
											"#{SHGZ_0620_09}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001170_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local msgidx = random(getn(x001170_g_MsgInfo))
		AddText( sceneId, x001170_g_MsgInfo[msgidx] )	
--**********************************
--NPC¶Ô°×
--**********************************
		AddNumText( sceneId, x001170_g_scriptId, "Ngß½i mu¯n mua gì nào?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001170_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x001170_g_shoptableindex )
	end
end

