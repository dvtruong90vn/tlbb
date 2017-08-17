--ÑãÄÏNPC
--´åÃñ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x018006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ði theo ðÕi soái Chüng Thª Hoành, có th¬ l§p công l§p nghi®p; ði theo giám quân Mã Th×a Sänh, có th¬ thång quan phát tài. Nhßng hai vi®c này cÑ có cäm giác là r¤t mâu thuçn.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
