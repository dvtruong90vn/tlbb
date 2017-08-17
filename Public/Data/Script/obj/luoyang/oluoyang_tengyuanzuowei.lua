--ÂåÑôNPC
--ÌÙÔ­×ôÎª
--ÆÕÍ¨

--½Å±¾ºÅ
x000029_g_scriptId = 000029

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000029_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"R¤t vui ğßşc g£p các hÕ, ĞÕi T¯ng quä là có mµt ğ¤t nß¾c xinh ğ©p. Ta r¤t thích n½i này, hy v÷ng s¨ còn có c½ hµi quay tr· lÕi.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
