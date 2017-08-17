--ÂåÑôNPC
--×ÚÔÞ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000026_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"ÐÕi T¯ng ðã gi§t quán quân trong l¥n ÐÕi hµi túc c¥u trß¾c, l¥n này nên ðªn lßþt Th± Ph°n chúng ta giành giäi r°i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
