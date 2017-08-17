--ËÕË«

--½Å±¾ºÅ
x001059_g_scriptId 				= 001059
x001059_g_shoptableindex	=	35
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001059_OnDefaultEvent( sceneId, selfId,targetId )
	AddText( sceneId, "#{QZG_80919_1}" )
	AddNumText( sceneId, x001059_g_scriptId, "Gi¾i thi®u thß½ng nhân", 11, 1 )
	AddNumText( sceneId, x001059_g_scriptId, "M· cØa hàng", 7, 2 )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001059_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÌØ²úÉÌµê
	if GetNumText() == 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SHANGREN_JIESHAO_02}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		if(LuaFnGetAvailableItemCount(sceneId, selfId, 40002000) == 1 ) then
				DispatchShopItem( sceneId, selfId, targetId, x001059_g_shoptableindex )
		else
			BeginEvent(sceneId)
				AddText( sceneId, "Các hÕ không có ngân phiªu cüa thß½ng nhân, giao d¸ch giæa ta và các hÕ làm sao có th¬ thñc hi®n ðßþc?" )		
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
end
