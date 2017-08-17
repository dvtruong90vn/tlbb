--NPC
--¿þÀÜ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x014009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Bù nhìn Tiêu Dao loÕi F-874 ðang tiªn hành xØ lý dæ li®u ðµng tác: #r#r10: Du²i cánh tay bên phäi. #r#r20: Vçy v« phía trái. #r#r30: Vçy v« phía phäi. #r#rQuay lÕi 20, B¡t ð¥u tu¥n hoàn...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
