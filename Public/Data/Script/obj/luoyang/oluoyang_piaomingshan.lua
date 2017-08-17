--ÂåÑôNPC
--ÆÓÃ÷ÉÆ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000046_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " Cô nß½ng"
	else
		PlayerSex = " Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"LÕc Dß½ng có hoa Mçu Ð½n quä th§t danh b¤t hß truy«n, sánh ngang Hoa S½n Trà cüa Cao Ly ta. Nghe nói thành Tô Châu cüa tri«u T¯ng r¤t tß½i ð©p, "..PlayerName..PlayerSex..", ðã t×ng ðªn ðó chßa?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
