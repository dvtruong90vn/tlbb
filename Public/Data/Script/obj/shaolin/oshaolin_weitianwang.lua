--ÎÀÐþÍû

--ÈÎÎñºÅ
x009017_g_MissionId = 1060

x009017_g_scriptId=009017

function x009017_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	misIndex = GetMissionIndexByID(sceneId,selfId,x009017_g_MissionId)
	BeginEvent(sceneId)
		AddText(sceneId,"G¥n ðây chï cäm th¤y vi®c gì cûng không thoäi mái.")
		if	IsHaveMission(sceneId,selfId,x009017_g_MissionId) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and  GetMissionParam( sceneId, selfId, misIndex,3) == 3 then
				AddNumText(sceneId,x009017_g_scriptId,"Cho ngß½i Ti¬u Ph§t xá l¸",8,0)
			end
		end
	EndEvent( )
	DispatchEventList(sceneId,selfId,targetId)
end

function x009017_OnEventRequest( sceneId, selfId, targetId, eventId )
	misIndex = GetMissionIndexByID(sceneId,selfId,x009017_g_MissionId)
	if	GetNumText()==0	then
		if	HaveItemInBag (  sceneId, selfId, 30202049)	 > 0  then
			DelItem (  sceneId, selfId, 30202049, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"Cäm tÕ Ti¬u Ph§t xá l¸ cüa các hÕ")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Hoàn t¤t nhi®m vø!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ti¬u Ph§t xá l¸? · ðâu?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
