--ÓñÏªNPC
--´åÃñ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x027007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Bà C± L² LÕp ðúng là th¥n y, dùng thu¯c cüa bà ¤y, b®nh gì cûng khöi...tuy luôn có nhæng tác døng phø kÏ lÕ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
