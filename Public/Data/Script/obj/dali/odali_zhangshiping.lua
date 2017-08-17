--ÕÅÊÀÆ½

--½Å±¾ºÅ
x002076_g_scriptId 				= 002076
x002076_g_shoptableindex	=	33
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002076_OnDefaultEvent( sceneId, selfId,targetId )
	AddText( sceneId, "#{QZG_80919_1}" )
	AddNumText( sceneId, x002076_g_scriptId, "Gi¾i thi®u Tào V§n", 11, 1 )
	AddNumText( sceneId, x002076_g_scriptId, "M· Thß½ng Ðiªm", 7, 2 )
end


--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002076_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÌØ²úÉÌµê
	if GetNumText() == 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SHANGREN_JIESHAO_02}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		if(LuaFnGetAvailableItemCount(sceneId, selfId, 40002000) == 1 ) then
			DispatchShopItem( sceneId, selfId, targetId, x002076_g_shoptableindex )
		else
			BeginEvent(sceneId)
				AddText( sceneId, "Trong ngß¶i các hÕ không có ngân phiªu, không th¬ m· cØa hàng." )		
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
end
