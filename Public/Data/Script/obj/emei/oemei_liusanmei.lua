--¶ëáÒNPC
--ÁøÈýÃÃ
--ÆÕÍ¨

x015035_g_scriptId = 015035

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x015035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nga My s½n t× xßa ðã có tên t× loài H¥u viên, g¥n ðây Ác Viên gây r¯i ngày mµt quá qu¡t, chúng còn dám ðªn gây chuy®n v¾i b±n phái, ngß½i có b¢ng lòng thØ ði ðánh lui b÷n chúng?")
		AddNumText(sceneId,x015035_g_scriptId,"Ð¦y lùi Ác Viên",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x015035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<21  then	
			BeginEvent( sceneId )
			local strText = "Nh¤t ð¸nh không ðßþc coi thß¶ng b÷n Ác Viên ðó, ta xem, các hÕ hãy ðþi ðÆng c¤p vßþt quá 21 hãy quay lÕi tìm ta"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 145,89,142)
		end
	end
end
