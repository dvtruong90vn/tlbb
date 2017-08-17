--ÂåÑôNPC
--½ð×ó»À
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000028_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " Cô nß½ng"
	else
		PlayerSex = " Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"Ai nói qu¯c l­ c¯ng tiªn cüa Cao Ly Qu¯c chúng ta b¸ m¤t? Nói láo, không h« có chuy®n ðó. "..PlayerName..PlayerSex..", nªu còn nghe có ngß¶i nói b§y, hãy d¡t h¡n v« ðây g£p ta, ta phäi höi xem con m¡t nào cüa h¡n ðã nhìn th¤y qu¯c l­ b¸ m¤t")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
