--ÐÇËÞNPC
--Ììè¯×Ó
--ÆÕÍ¨

x016035_g_scriptId = 016035

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Hôm trß¾c thß½ng long xu¤t hi®n trên tr¶i, Th¥n Mµc Vß½ng Ðïnh cüa sß phø phát ra tiªng kêu vù vù, dø ðßþc vô s¯ nh®n l¾n ðªn ðây chính là th¶i c½ ð¬ tu luy®n, các hÕ có mu¯n ði xem không?")
		AddNumText(sceneId,x016035_g_scriptId,"Ðánh Nh®n tu luy®n",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x016035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<51  then	
			BeginEvent( sceneId )
			local strText = "Ngß¶i trong giang h° bß¾c vào tu luy®n, ph¥n l¾n ð«u t× c¤p 51 tr· lên, th¤y võ công cüa ngß½i cûng t¥m thß¶ng, ta không dçn ngß½i ði ðâu"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 146,91,144)
		end
	end
end
