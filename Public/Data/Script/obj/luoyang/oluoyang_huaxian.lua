--ÂåÑôNPC
--»¨ÏÉ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000094_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
 	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"Dß½ng li­u thanh thanh giang thuÖ bình #rV¤n lang giang thßþng sß¾ng ca thanh #rÐông biên nh§t xu¤t tây biên vû#r ÐÕo th¸ vô tình khß¾c hæu tình.#r"..PlayerName..PlayerSex..", có thích cuµc s¯ng chï làm uyên ß½ng không làm tiên không?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
