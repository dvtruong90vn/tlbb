-- Tô Châu
--Ñ­»·ÈÎÎñ
--ÎÊÂ·½Å±¾
x500027_g_scriptId = 500027

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500027_g_Signpost = {
	{ type=2, name="Vân Th¸ Ti«n Trang lão bän", x=190, y=274, tip="Vß½ng Phu Nhân ", desc="Bà chü ti«n trang Vß½ng Phu nhân (190,274) · ti«n trang hß¾ng nam ðß¶ng l¾n phía Tây, nô bµc cüa bà có th¬ giúp ngß½i c¤t giæ v§t ph¦m và ngân lßþng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500027_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500027_g_Signpost do
		AddNumText(sceneId, x500027_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500027_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500027_g_Signpost[GetNumText()]

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
