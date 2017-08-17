--ÂåÑôNPC
--ïÚÍ·
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000072_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"B±n tiêu cøc l¤y chæ tín làm tr÷ng, ğßşc cä h¡c bÕch lßŞng ğÕo n¬ nang, m¾i liên tøc mß¶i nåm không m¤t mát l¥n nào. "..PlayerName..PlayerSex..", có gì c¥n các hÕ cÑ m· l¶i, lên núi xu¯ng bi¬n Cái Nh¤t Minh tôi ğ«u sÇn sàng.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
