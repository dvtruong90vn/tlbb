--ÖÜÓÎ
--´åÃñ
--ÆÕÍ¨

x021009_g_scriptId = 021009

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x021009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B¢ng hæu, Ngân Nhai Tuyªt Nguyên quái v§t ngß¶i ngß¶i ð«u có ðßþc hàn bång th¥n lñc, chï có #G bång kháng #W cûng ðü tài cao có th¬ · n½i này hoành hành vô kÜ. TÕi hÕ có th¬ giúp ngß½i tång lên mµt ít bång kháng, nhßng càng nhi«u  bång kháng còn c¥n chính ngß½i ðªn c¯ g¡ng.")
		AddNumText(sceneId, x021009_g_scriptId, "Tång kháng bång",6,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x021009_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 153, 0)
	end
end
