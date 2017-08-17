--ÂåÑôNPC
--Áø¸´Éú
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000097_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"Yên tâm, "..PlayerName..PlayerSex..", ta nh¤t ð¸nh s¨ n² lñc tham gia cuµc thi")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
