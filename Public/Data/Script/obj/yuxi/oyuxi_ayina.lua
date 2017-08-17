--ÓñÏªNPC
--°¢ÒÀÄÈ
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x027006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Không biªt t¾i bao gi¶ m© m¾i tha thÑ cho cha? Nªu hai ngß¶i cùng s¯ng bên nhau nhß trß¾c thì t¯t quá. Ngày nào ta cûng s¨ ğßşc g£p La B¯c Ca Ca r°i, hay biªt m¤y! Không biªt m¤y ngày nay La B¯c Ca Ca b§n gì mà không t¾i ch½i v¾i ta.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
