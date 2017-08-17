--ÂåÑôNPC
--ÒµÁË
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000096_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " Cô nß½ng"
	else
		PlayerSex = " Thiªu hi®p"
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,""..PlayerName..PlayerSex..", chiªn sñ NhÕn Môn Quan ra sao r°i? Ta th¤y r¤t nhi«u dân chúng t¸ nÕn qua thành...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
