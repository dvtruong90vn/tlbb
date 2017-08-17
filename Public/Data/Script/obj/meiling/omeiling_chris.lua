--Ã·ÁëNPC
--¿ËÀïË¹µÙ°²
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x033011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B¢ng hæu yêu quı! Mau t¾i giúp ta!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x033011_OnDie( sceneId, selfId, killerId )
end
