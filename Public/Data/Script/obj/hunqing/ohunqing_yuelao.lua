--»éÇì¸±±¾NPC
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x155001_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"Nªu các hÕ có ý trung nhân, có th¬ cùng ðªn tìm ta, ta có th¬ giúp các hÕ chü trì hôn sñ.");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

