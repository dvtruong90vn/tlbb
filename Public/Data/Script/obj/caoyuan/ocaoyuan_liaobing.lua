--ÁÉ±ø

--½Å±¾ºÅ
x020008_g_scriptId = 020008

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x020008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Tránh xa ta ra, ngß¶i T¯ng không ðáng ð¬ ta nói chuy®n. #r#rThánh thßþng vÕn tuª! ÐÕi Liêu t¤t th¡ng!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
