-- LÕc Dß½ng
--±¦Ê¯ºÏ³É
--ÎÊÂ·½Å±¾
x500012_g_scriptId = 500012

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500012_g_Signpost = {
	{ type=2, name="Bäo ThÕch Hþp Thành", x=280, y=322, tip="Bành Hoài Ng÷c ", desc="Thþ mÛ ngh® hþp thành Bäo ThÕch Bành Hoài Ng÷c (280,322) · phøc sÑc ðiªm giæa ðß¶ng l¾n phía Nam và Ðông Th¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500012_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500012_g_Signpost do
		AddNumText(sceneId, x500012_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500012_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500012_g_Signpost[GetNumText()]

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
