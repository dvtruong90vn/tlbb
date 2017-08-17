--·½ÐþÀÍ

--ÈÎÎñºÅ
x009016_g_MissionId = 1060

x009016_g_scriptId=009016

function x009016_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	misIndex = GetMissionIndexByID(sceneId,selfId,x009016_g_MissionId)
	BeginEvent(sceneId)
		AddText(sceneId,"G¥n ðây toàn cäm th¤y xß½ng c¯t löng lëo.")
		if	IsHaveMission(sceneId,selfId,x009016_g_MissionId) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and  GetMissionParam( sceneId, selfId, misIndex,3) == 2 then
				AddNumText(sceneId,x009016_g_scriptId,"Cho ngß½i Tráng C¯t xá l¸",8,0)
			end
		end
	EndEvent( )
	DispatchEventList(sceneId,selfId,targetId)
end

function x009016_OnEventRequest( sceneId, selfId, targetId, eventId )
	misIndex = GetMissionIndexByID(sceneId,selfId,x009016_g_MissionId)
	if	GetNumText()==0	then
		if	HaveItemInBag (  sceneId, selfId, 30202022)	 > 0  then
			DelItem (  sceneId, selfId, 30202022, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"Cäm tÕ Tráng C¯t xá l¸ cüa các hÕ")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Hoàn t¤t nhi®m vø!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Tráng C¯t xá l¸? — ðâu?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
