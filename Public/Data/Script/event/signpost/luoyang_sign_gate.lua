-- LÕc Dß½ng
--³ÇÃÅ
--ÎÊÂ·½Å±¾
x500004_g_scriptId = 500004

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500004_g_Signpost = {
	{ type=2, name="Tung S½n", x=256, y=465, tip="Nam Môn", desc="Nam Môn n¯i li«n Tung S½n, góp ý ngß¶i ch½i t× c¤p 15-20 thÆng tiªn", eventId=-1 },
	{ type=2, name="NhÕn Nam", x=460, y=259, tip="Ðông Môn", desc="Ðông Môn n¯i li«n NhÕn Nam, góp ý ngß¶i ch½i t× c¤p 30~36 thÆng tiªn", eventId=-1 },
	{ type=2, name="Ðôn Hoàng", x=40, y=250, tip="Tây Môn", desc="Tây Môn n¯i li«n Ðôn Hoàng, góp ý ngß¶i ch½i t× c¤p 9~16 thÆng tiªn", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500004_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500004_g_Signpost do
		AddNumText(sceneId, x500004_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500004_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500004_g_Signpost[GetNumText()]

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
