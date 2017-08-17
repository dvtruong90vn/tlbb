-- LÕc Dß½ng
--Æï³Ë
--ÎÊÂ·½Å±¾
x500010_g_scriptId = 500010

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500010_g_Signpost = {
	{ type=2, name="KÜ", x=229, y=325, tip="Ði«n Kiêu Minh ", desc="TÕi D¸ch TrÕm · giæa Tây Th¸ và ðß¶ng l¾n phía Nam, tìm t¾i Ði«n Kiêu Minh, có th¬ mua v§t cßÞi s½ c¤p", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500010_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500010_g_Signpost do
		AddNumText(sceneId, x500010_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500010_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500010_g_Signpost[GetNumText()]

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
