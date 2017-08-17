--NPC
--
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x018112_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"Này Ma Nhai Ðµng chính là n½i T¥n gia trÕi phï tø t§p, nªu công lñc không ðü, t¯t nh¤t tìm vài ð°ng bÕn tiªn vào có vë an toàn.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
