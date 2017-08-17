--»éÇì¸±±¾NPC
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x155003_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"Anh hùng chßa có ý trung nhân sao? Nªu chßa có, ð¬ ta gi¾i thi®u 1 ngß¶i nhé?");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

