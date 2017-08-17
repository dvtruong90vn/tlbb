--ÂåÑôNPC
--ÑîÊ±
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000040_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " Cô nß½ng"
	else
		PlayerSex = " Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", các hÕ cûng ğªn bái kiªn sß phø à? Ta và sß huynh ğªn ğây thåm sß phø, không g£p ğßşc sß phø b÷n ta s¨ không ği ğâu cä")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
