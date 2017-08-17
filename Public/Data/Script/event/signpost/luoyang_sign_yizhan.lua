-- LÕc Dß½ng
--æäÕ¾
--ÎÊÂ·½Å±¾
x500002_g_scriptId = 500002

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500002_g_Signpost = {
	{ type=2, name="D¸ch trÕm", x=235, y=322, tip="Ngô ÐÑc Xß½ng ", desc="Ông chü D¸ch trÕm Ngô ÐÑc Xß½ng (235,322) · D¸ch trÕm giæa ðß¶ng l¾n phía Nam và Tây Th¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="CØu Châu Thß½ng Hµi truy«n t¯ng", x=326, y=269, tip="Uông HÕn", desc="CØu Châu thß½ng hµi v§n Uông HÕn (326,269) · ðß¶ng l¾n phía Ðông. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500002_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500002_g_Signpost do
		AddNumText(sceneId, x500002_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500002_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500002_g_Signpost[GetNumText()]

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
