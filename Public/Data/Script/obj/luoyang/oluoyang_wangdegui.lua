--ÂåÑôNPC
--ÍõµÂ¹ó
--ÆÕÍ¨

--½Å±¾ºÅ
x000050_g_ScriptId			= 000050

--ÎäÆ÷µê
x000050_g_shoptableindex= 11

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000050_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
	AddText( sceneId, "T¾i xem ði, binh khí cüa ta · ðây ð«u là loÕi t¯t nh¤t thành LÕc Dß½ng" )
	AddNumText( sceneId, x000050_g_ScriptId, "Mua binh khí", 7, 100 )
	AddNumText( sceneId, x000050_g_ScriptId, "Giám ð¸nh ch¤t lßþng", 6, 101 )
	AddNumText( sceneId, x000050_g_ScriptId, "Giám ð¸nh tß ch¤t trang b¸ lÕi t× ð¥u", 6, 102 )
	AddNumText( sceneId, x000050_g_ScriptId, "Giám ð¸nh ch¤t lßþng trang b¸", 11, 105 )
	AddNumText( sceneId, x000050_g_ScriptId, "Gi¾i thi®u v« giám ð¸nh tß ch¤t trang b¸ lÕi t× ð¥u", 11, 106 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000050_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 105 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_081}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 106 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_097}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	key	= GetNumText()
	if key == 100 then
		DispatchShopItem( sceneId, selfId, targetId, x000050_g_shoptableindex )
	elseif key == 101 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1001 )
	elseif key == 102 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112233 )
	end
end
