--ËÕÖÝNPC
--Ö£ÌìÊÙ
--Ò»°ã

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001048_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	  local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " Cô nß½ng"
		else
			PlayerSex = " Thiªu hi®p"
		end
		AddText(sceneId,""..PlayerName..PlayerSex..", có phäi là ð¸nh so bì, h÷c höi võ ngh®? V§y xin m¶i lên võ ðài.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
