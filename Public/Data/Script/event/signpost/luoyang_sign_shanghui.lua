-- LÕc Dß½ng
--ÉÌ»á
--ÎÊÂ·½Å±¾
x500009_g_scriptId = 500009

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500009_g_Signpost = {
	{ type=2, name="Thß½ng hµi", x=230, y=156, tip="Ki«u Phúc Th¸nh ", desc="T±ng quän CØu Châu thß½ng hµi Ki«u Phúc Th¸nh (230, 156) · hß¾ng Nam ðß¶ng l¾n phía Ðông. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500009_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500009_g_Signpost do
		AddNumText(sceneId, x500009_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500009_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500009_g_Signpost[GetNumText()]

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
