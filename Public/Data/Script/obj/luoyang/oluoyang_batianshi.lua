--ÂåÑôNPC
--°ÍÌìÊ¯
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000019_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"Khéo th§t"..PlayerName..PlayerSex..", thª nào lÕi g£p nhau · ðây. ÐÕi Lý m²i l¥n tham gia cuµc thi túc c¥u, ð«u chï là phø Thái tØ ð÷c sách mà thôi")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
