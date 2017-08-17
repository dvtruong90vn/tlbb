--ËÕÖÝNPC
--ÕÅñç
--Ò»°ã

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	  local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " Cô nß½ng"
		else
			PlayerSex = " Thiªu hi®p"
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex..", các hÕ cûng t¾i dñ thi? Ðþi khi thi xong, tÕi hÕ mu¯n ðªn bái kiªn sß phø "..PlayerSex.." không biªt có phäi cùng ði v« phía trß¾c?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
