--ÉÙÁÖNPC
--ÐþÖ¤
--ÆÕÍ¨

x009035_g_scriptId = 009035

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x009035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Không biªt tÕi sao, mµc nhân trong Mµc Nhân HÕng nh¤t th¶i không ði«u khi¬n ðßþc, hi®n chÕy kh¡p chùa, xem thí chü hình dong lß½ng thi®n, cho thí chü c½ hµi rèn luy®n, thí chü có mu¯n không?")
		AddNumText(sceneId,x009035_g_scriptId,"Luy®n t§p ðánh mµc nhân",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x009035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<41  then	
			BeginEvent( sceneId )
			local strText = "Mµc nhân cüa b±n tñ tuy d­ ðánh, nhßng ðÆng c¤p thí chü chßa t¾i 41, e Ñng phó không n±i, theo ý lão tång ðþi 1 th¶i gian næa hÇng t¾i"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 139,95,141)
		end
	end
end
