--Ê¦¹±ÉÌµê
x229012_g_scriptId = 229012


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x229012_OnDefaultEvent( sceneId, selfId,targetId )

	local NumText = GetNumText();
	if(NumText == 1) then
		BeginEvent(sceneId)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 2", 7, 3)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 3", 7, 4)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 4", 7, 5)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 5", 7, 6)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 6", 7, 7)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 7", 7, 8)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif(NumText == 2) then
		BeginEvent(sceneId)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 2", 7, 3)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 3", 7, 4)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 4", 7, 5)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 5", 7, 6)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 6", 7, 7)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 7", 7, 8)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 8", 7, 9)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 9", 7, 10)
			AddNumText(sceneId,x229012_g_scriptId, "Ph¯i phß½ng #GC¤p 10", 7, 11)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif(NumText>=3 and NumText<=11) then
			x229012_OpenShopNumText(sceneId, selfId, targetId, NumText )
	end

	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x229012_OnEnumerate( sceneId, selfId, targetId )

	local lev = GetLevel(sceneId, selfId)
	if(lev>=40 and lev<70) then
		AddNumText(sceneId,x229012_g_scriptId, "Mua ph¯i phß½ng", 7, 1)
	elseif(lev>=70) then
		AddNumText(sceneId,x229012_g_scriptId, "Mua ph¯i phß½ng", 7, 2)
	end

end

function x229012_OpenShopNumText( sceneId, selfId, targetId, shopNumText )

	if(shopNumText == 3) then
		DispatchShopItem( sceneId, selfId,targetId, 169 )
	elseif(shopNumText == 4) then
		DispatchShopItem( sceneId, selfId,targetId, 170 )
	elseif(shopNumText == 5) then
		DispatchShopItem( sceneId, selfId,targetId, 171 )
	elseif(shopNumText == 6) then
		DispatchShopItem( sceneId, selfId,targetId, 172 )
	elseif(shopNumText == 7) then
		DispatchShopItem( sceneId, selfId,targetId, 173 )
	elseif(shopNumText == 8) then
		DispatchShopItem( sceneId, selfId,targetId, 174 )
	elseif(shopNumText == 9) then	
		DispatchShopItem( sceneId, selfId,targetId, 175 )
	elseif(shopNumText == 10) then
		DispatchShopItem( sceneId, selfId,targetId, 176 )
	elseif(shopNumText == 11) then
		DispatchShopItem( sceneId, selfId,targetId, 177 )
	end
end
