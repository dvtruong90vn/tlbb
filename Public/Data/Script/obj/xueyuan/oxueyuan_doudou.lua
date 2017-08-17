--NPC
--¶¹¶¹
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x021203_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"Ngß½i là t¾i tìm ta  sao? Bác LÕp cùng viên bình nói ta không phäi chim cánh cøt...... Ta là Ð§u Ð§u....")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
