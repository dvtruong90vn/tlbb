--´óÀíNPC
--É¨ÔºÀÏÉ®
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x009008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Danh tiªng thí chü trên giang h°, lão nÕp ğã s¾m ğßşc nghe. Hôm nay ğßşc g£p, quä nhiên danh b¤t hß truy«n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
