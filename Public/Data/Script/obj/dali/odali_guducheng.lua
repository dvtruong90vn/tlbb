--´óÀíNPC
--¹ÅóÆ³Ï
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002012_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", ğã lâu ngày không th¤y ngß½i. Hoàng thßşng ğang ch¶ ngß½i ğó!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
