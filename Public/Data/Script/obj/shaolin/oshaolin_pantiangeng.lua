--ÅËÐþ¸û

--ÈÎÎñºÅ
x009015_g_MissionId = 1060

x009015_g_scriptId=009015

function x009015_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	misIndex = GetMissionIndexByID(sceneId,selfId,x009015_g_MissionId)
	BeginEvent(sceneId)
		AddText(sceneId,"G¥n ðây luôn cäm th¤y khí lñc không ðü.")
		if	IsHaveMission(sceneId,selfId,x009015_g_MissionId) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and  GetMissionParam( sceneId, selfId, misIndex,3) == 1 then
				AddNumText(sceneId,x009015_g_scriptId,"Cho ngß½i ÐÕi Lñc xá l¸",8,0)
			end
		end
	EndEvent( )
	DispatchEventList(sceneId,selfId,targetId)
end

function x009015_OnEventRequest( sceneId, selfId, targetId, eventId )
	misIndex = GetMissionIndexByID(sceneId,selfId,x009015_g_MissionId)
	if	GetNumText()==0	then
		if	HaveItemInBag (  sceneId, selfId, 30202001)	 > 0  then
			DelItem (  sceneId, selfId, 30202001, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"Cäm tÕ ÐÕi Lñc xá l¸ cüa các hÕ")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Hoàn t¤t nhi®m vø!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"ÐÕi Lñc xá l¸? · ðâu?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
