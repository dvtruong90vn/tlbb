-- Tô Châu
--³ÇÃÅ
--ÎÊÂ·½Å±¾
x500022_g_scriptId = 500022

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500022_g_Signpost = {
	{ type=2, name="Tây H°", x=287, y=412, tip="Nam Môn", desc="Nam Môn n¯i li«n Tây H°", eventId=-1 },
	{ type=2, name="Kính H°", x=279, y=44, tip="Tây Môn", desc="Ðông Môn n¯i li«n Kính H°", eventId=-1 },
	{ type=2, name="Thái H°", x=183, y=67, tip="B¡c Môn", desc="B¡c Môn n¯i li«n Thái H°", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500022_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500022_g_Signpost do
		AddNumText(sceneId, x500022_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500022_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500022_g_Signpost[GetNumText()]

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
