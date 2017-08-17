--ËþÀïÄ¾NPC
--À¼µÂ
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x044507_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"Thành th¸ Lâu Lan có vài viên ng÷c trai trong xa mÕc, nhßng ngày ngày cát tång d¥n vùi l¡m không biªt n½i nào...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
