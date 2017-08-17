--´óÀíNPC
--ñÒÍòÀï
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002011_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"Cùng nhau tu luy®n mµt loÕi tuy®t thª võ công, chÆng nh¨ chúng ta cùng tr· thành Hoàng Gia Hµ V® sao? "..PlayerName..PlayerSex..", ngß½i có th¬ bái nh§p th§p ğÕi môn phái. Ngû Hoa Ğàn có r¤t nhi«u Th§p ğÕi môn phái chï dçn nhân, ngß½i có th¬ ğªn ğó h÷c höi thêm.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
