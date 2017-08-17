--����NPC
--��·
--�ű���
x009034_g_scriptId = 009034

--��ӵ�е��¼�ID�б�
x009034_g_eventList={500061}	

--**********************************
--�¼��б�
--**********************************
function x009034_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n߽ng "
		else
			PlayerSex = " thi�u hi�p "
		end
		AddText(sceneId,"A Di �� Ph�t, b�n t�ng ��i �� l�u. Xin � b�n t�ng d�n �߶ng cho th� ch�")
		for i, eventId in x009034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x009034_OnDefaultEvent( sceneId, selfId,targetId )
	x009034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x009034_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--���ܴ�NPC������
--**********************************
function x009034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009034_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x009034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x009034_g_eventList do
		if missionScriptId == findId then
			x009034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x009034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x009034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x009034_OnDie( sceneId, selfId, killerId )
end