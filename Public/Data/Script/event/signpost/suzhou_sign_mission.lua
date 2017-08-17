-- Tô Châu
--Ñ­»·ÈÎÎñ
--ÎÊÂ·½Å±¾
x500024_g_scriptId = 500024

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500024_g_Signpost = {
	{ type=2, name="Tô Châu Tào v§n sÑ", x=331, y=169, tip="Løc SÛ Tranh", desc="Tô Châu Tào v§n SÑ Løc SÛ Tranh (331,169) · bên cÕnh bªn phía Ðông B¡c thành Tô Châu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="ThuÖ lao", x=342, y=311, tip="Hô Diên Báo ", desc="Hô Diên Báo (342,311) · trß¾c phü nha Thành Ðông Nam, tìm t¾i ông có th¬ Nh§n nhi®m vø bình phän loÕn thuÖ trÕi. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nhi®m vø tr× hung", x=224, y=226, tip="Ngô Gi¾i ", desc="T±ng b± ð¥u Tô Châu Ngô Gi¾i (224,226) · ðß¶ng Phøng Ki«u, ông ðang tìm ngß¶i giúp ông tr×ng tr¸ hung ð°, có khä nång l¤y ðßþc bän ð° Bäo ThÕch. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ván c¶", x=267, y=243, tip="Trß½ng D¸ch Qu¯c", desc="KÏ cuµc hoÕt ðµng sÑ Trß½ng D¸ch Qu¯c (267,243) · TrÕng Nguyên Trß¶ng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Hoa S½n lu§n kiªm", x=294, y=234, tip="Tô Kiªm Lînh ", desc="Lu§n kiªm sÑ Hoa S½n Tô Kiªm Lînh (294,234) · TrÕng Nguyên Trß¶ng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Liên hoàn phó bän", x=134, y=260, tip="Tiên Hoành Vû ", desc="Hi®u úy Tô Châu Tiên Hoành Vû (134,263) · ngoài Ðông Môn thành Tô Châu, có th¬ tìm ông lãnh nhi®m vø phø bän liên hoàn. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500024_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500024_g_Signpost do
		AddNumText(sceneId, x500024_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500024_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500024_g_Signpost[GetNumText()]

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
