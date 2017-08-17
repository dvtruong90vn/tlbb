-- ÂåÑô
--°ÝÊ¦Óë½á°Ý
--ÎÊÂ·½Å±¾
x500049_g_scriptId = 500049

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þ¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500049_g_Signpost = {
	{ type=2, name="Bái sß", x=262, y=228, tip="Nhiªp Chính", desc="Ngß¶i gi¾i thi®u bái sß · Ngû Hoa Ðàn, ¤n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500049_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500049_g_Signpost do
		AddNumText(sceneId, x500049_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500049_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500049_g_Signpost[GetNumText()]

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
