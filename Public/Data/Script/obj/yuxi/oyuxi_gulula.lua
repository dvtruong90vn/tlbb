--ÓñÏªNPC
--¹ÅÂ³À­
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x027002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Lão già ðó t× trß¾c t¾i nay không bao gi¶ quan tâm ðªn vþ con, mµt lòng chï nghî ðªn con mø La B¯c ðó. #r#r, Ôi, nh¾ lÕi h°i xßa ðàn ông theo ðu±i ta ðu±i ði không hªt, sao ta lÕi ch÷n mµt lão già nhß v§y chÑ!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
