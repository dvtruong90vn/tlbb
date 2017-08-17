-- Tô Châu
--Ñ­»·ÈÎÎñ
--ÎÊÂ·½Å±¾
x500025_g_scriptId = 500025

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500025_g_Signpost = {
	{ type=2, name="Phß¶ng chü Trùng Ði¬u phß¶ng", x=171, y=238, tip="Vân Phi Phi ", desc="Phß¶ng chü trùng ði¬u Vân Phi Phi (171,238) · Trùng ði¬u phß¶ng hß¾ng B¡c ðß¶ng l¾n phía Tây. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500025_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500025_g_Signpost do
		AddNumText(sceneId, x500025_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500025_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500025_g_Signpost[GetNumText()]

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
