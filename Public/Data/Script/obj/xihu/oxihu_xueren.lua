-- ÖÐÇïNPC
-- Ñ©ÈË

x050200_g_scriptId = 050200

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050200_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta ........ Ta là mµt Ngß¶i Tuyªt!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
