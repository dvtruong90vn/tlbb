-- LÕc Dß½ng
--pk¹ÜÀíÔ±
--ÎÊÂ·½Å±¾
x500011_g_scriptId = 500011

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500011_g_Signpost = {
	{ type=2, name="Võ trß¶ng LÕc Dß½ng", x=364, y=185, tip="Võ trß¶ng LÕc Dß½ng", desc="Mu¯n h÷c höi võ ngh® hãy t¾i võ trß¶ng LÕc Dß½ng. Hãy ¤n phím phäi ð¬ tìm ð¯i thü, lña ch÷n thØ chiªn", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500011_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500011_g_Signpost do
		AddNumText(sceneId, x500011_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500011_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500011_g_Signpost[GetNumText()]

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
