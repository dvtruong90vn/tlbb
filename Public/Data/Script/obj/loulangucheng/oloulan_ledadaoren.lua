--NPC
--
--��ͨ

--**********************************
--�¼��������
--**********************************
function x001139_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC�Ի�
--**********************************
		AddText(sceneId,"  #{LLGC_20080321_10}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end