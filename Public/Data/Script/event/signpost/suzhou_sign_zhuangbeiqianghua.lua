-- Tô Châu
--Ñ­»·ÈÎÎñ
--ÎÊÂ·½Å±¾
x500028_g_scriptId = 500028

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500028_g_Signpost = {
	{ type=2, name="ÐÕi tông sß", x=355, y=234, tip="Âu Dã TØ", desc="Âu Dã TØ (355,234) có th¬ giúp ngß½i cß¶ng hóa trang b¸ và giám ð¸nh tß ch¤t trang b¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500028_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500028_g_Signpost do
		AddNumText(sceneId, x500028_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500028_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500028_g_Signpost[GetNumText()]

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
