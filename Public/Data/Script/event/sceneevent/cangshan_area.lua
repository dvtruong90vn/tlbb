--Thß½ng S½n ÀÇÑ¨´óÓª Ì½Ë÷ÀàÈÎÎñ
--212127

--½Å±¾ºÅ
x212127_g_scriptId = 212127

--ÈÎÎñºÅ
x212127_g_MissionId = 932

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x212127_OnEnterArea(sceneId, selfId)
	--¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐCái này ÈÎÎñ,
	if( IsHaveMission(sceneId,selfId,x212127_g_MissionId) > 0)  then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x212127_g_MissionId)
		if GetMissionParam(sceneId, selfId, misIndex, 0) < 1  then
			SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
			-- Í¨Öª¿Í»§¶Ë
     	BeginEvent(sceneId)
				local strText = format("Ðã dò thám Lang huy®t ðÕi doanh: 1/1")
				AddText(sceneId, strText)
		  EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x212127_OnLeaveArea(sceneId, selfId)
	
end
