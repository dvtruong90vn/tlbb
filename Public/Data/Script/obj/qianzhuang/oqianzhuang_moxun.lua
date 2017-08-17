--Ç®×¯NPC
--ÄªÑ°
--ÆÕÍ¨

x181004_g_ScriptId	= 181004



--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x181004_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "Các sän v§t quý hiªm ð«u có · ti®m cüa ta. Khách quan, phäi chång ngài mu¯n lña ch÷n mµt món cho mình?" )
		AddNumText( sceneId, x181004_g_ScriptId, "Ðä TÕo Ð°", 2, 1 )
		AddNumText( sceneId, x181004_g_ScriptId, "Gi¾i thi®u Nguyên Bäo", 11, 2 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x181004_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	key	= GetNumText()
	
	if key == 1 then
	--ÐÂµÄÔª±¦ÉÌµê
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 8)
			UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 888902)
	elseif key == 2 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{INTRO_YUANBAO}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

end

--**********************************
--Õ¹¿ªÉÌµê
--**********************************
function x181004_OnOpenShop( sceneId, selfId, targetId, lstShop )

	BeginEvent( sceneId )
		for i = 1, getn( lstShop ) do
			AddNumText( sceneId, x181004_g_ScriptId, lstShop[i].name, 7, lstShop[i].key )
		end
		AddNumText( sceneId, x181004_g_ScriptId, "Tr· v«", -1, x181004_g_Key["bak"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end
