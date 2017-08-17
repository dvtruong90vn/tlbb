-- LÕc Dß½ng
--°ïÅÉ
--ÎÊÂ·½Å±¾
x500008_g_scriptId = 500008

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500008_g_Signpost = {
	{ type=2, name="Bang phái", x=237, y=236, tip="PhÕm Thu¥n Nhân ", desc="Binh bµ Thßþng Thß PhÕm Thu¥n Nhân quän lý sñ vø xây dñng bang phái.", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500008_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500008_g_Signpost do
		AddNumText(sceneId, x500008_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500008_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500008_g_Signpost[GetNumText()]

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
