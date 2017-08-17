-- L�c D߽ng
--ѭ�������븱��
--��·�ű�
x500006_g_scriptId = 500006

-- ��·���� type: 1 Ϊ��c�p�˵�, 2 Ϊֱ����·
x500006_g_Signpost = {
	{ type=2, name="L�c D߽ng T�o v�n s�", x=326, y=318, tip="Tri�u Minh Th�nh", desc="L�c D߽ng T�o v�n S� Tri�u Minh Th�nh (326,318). �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Tr�n Long K� Cu�c", x=366, y=228, tip="V߽ng T�ch T�n ", desc="T�m t�i K� Th�nh V߽ng T�ch T�n � v߽ng ph� n�i ph�a ��ng B�c th�nh L�c D߽ng (366,228) . �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500006_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500006_g_Signpost do
		AddNumText(sceneId, x500006_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500006_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500006_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			CallScriptFunction( signpost.eventId, "OnEnumerate", sceneId, selfId, targetId )
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	elseif signpost.type == 2 then
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, signpost.x, signpost.y, signpost.tip )

		BeginEvent(sceneId)
			AddText(sceneId, signpost.desc)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	end

end