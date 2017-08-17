--Ã÷½ÌNPC
--Ê¯¸Õ
--ÆÕÍ¨

x011035_g_scriptId = 011035

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x011035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Quan binh lÕi ðªn vây ðánh Quang Minh ðïnh, th§t r¡c r¯i, có ði«u b÷n ðªn chï là vô danh ti¬u t¯t, các hÕ có mu¯n ra luy®n chút quy«n cß¾c chång?")
		AddNumText(sceneId,x011035_g_scriptId,"Ði ch£n phá bao vây",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x011035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<31  then	
			BeginEvent( sceneId )
			local strText = "Dù là vô danh ti¬u t¯t, cûng không ðßþc khinh thß¶ng, các hÕ còn chßa ðÕt c¤p 31, vì sñ an toàn cüa các hÕ, ta xem cÑ luy®n t§p thêm r°i hÇng quay lÕi"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 141,97,157)
		end
	end
end
