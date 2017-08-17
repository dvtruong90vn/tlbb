-- Tô Châu
--Ñ­»·ÈÎÎñ
--ÎÊÂ·½Å±¾
x500026_g_scriptId = 500026

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500026_g_Signpost = {
	{ type=2, name="Lý Th×a Phong ", x=204, y=256, tip="Lý Th×a Phong ", desc="Ông chü D¸ch trÕm Lý Th×a Phong (204,256) · trên ðß¶ng hß¾ng Ðông Nam Môn Tây Th¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500026_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500026_g_Signpost do
		AddNumText(sceneId, x500026_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500026_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500026_g_Signpost[GetNumText()]

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
