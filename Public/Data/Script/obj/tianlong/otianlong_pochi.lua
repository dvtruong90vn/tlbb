--ÌìÁúNPC
--ÆÆ³Õ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x013006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ti¬u tång pháp hi®u là Phá Si, xu¤t gia · Niêm Hoa Tñ, ti¬u tång ðªn Thiên Long tñ ð¬ tr÷ nh¶.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
