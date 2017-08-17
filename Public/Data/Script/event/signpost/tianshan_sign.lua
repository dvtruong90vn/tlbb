--Thiên S½n
--ÎÊÂ·½Å±¾
x500068_g_scriptId = 500068

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500068_g_Signpost = {
	{ type=2, name="Bái kiªn chß·ng môn", x=91, y=44, tip="Chß·ng môn", desc="Chß·ng môn ði v¡ng, Mai kiªm tÕm thay thª nhæng sñ vø trong ngày. Cô · Linh ThÑu Cung. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Gia nh§p phái Thiên S½n", x=91, y=44, tip="Mai Kiªm ", desc="Chß·ng môn ði v¡ng, Mai kiªm tÕm thay thª nhæng sñ vø trong ngày, mu¯n vào phái Thiên S½n phäi ði tìm Cô ta. Cô · Linh ThÑu Cung. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c phái Thiên S½n kÛ nång chiªn ð¤u", x=88, y=44, tip="H÷c phái Thiên S½n kÛ nång chiªn ð¤u", desc="Lan Kiªm · Linh ThÑu Cung có th¬ dÕy ngß½i võ công b±n phái. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c phái Thiên S½n kÛ nång cuµc s¯ng phái", x=119, y=67, tip="H÷c phái Thiên S½n kÛ nång cuµc s¯ng phái", desc="Dß Bà · phía B¡c Toái Bång Hµ s¨ dÕy ð® tØ Huy«n bång thu§t cüa b±n bang. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c phái Thiên S½n kÛ nång h² trþ", x=123, y=67, tip="H÷c phái Thiên S½n kÛ nång h² trþ", desc="ThÕch T¦u · phía B¡c Toái Bång Hµ s¨ dÕy ð® tØ Thái Bång Thu§t cüa b±n bang. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c phái Thiên S½n kÛ nång cßÞi thú", x=45, y=69, tip="H÷c kÛ nång cßÞi thú", desc="Lô Vû Ðình · Linh Tuy«n B¡c Di®n có th¬ dÕy ngß½i bän lînh cßÞi ðiêu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Mua v§t cßÞi", x=39, y=71, tip="Mua v§t cßÞi", desc="Ði®p Phi H°ng cüa Linh Tuy«n B¡c Di®n có th¬ bán cho ngß½i v§t cßÞi cüa b±n phái: Ðiêu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nhi®m vø phái Thiên S½n", x=95, y=60, tip="Nhi®m vø phái Thiên S½n", desc="Phù Mçn Nghi ðang tìm ð® tØ b±n bang giúp ðÞ, ông · dß¾i Huy«n Næ ðiêu tßþng phía Nam Linh ThÑu Cung. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Thiên S½n chuy¬n v§n sÑ", x=90, y=120, tip="Thiên S½n chuy¬n v§n sÑ", desc="Ngß¶i chuyên ch· cüa phái Thiên S½n Ô Lão Nhân có th¬ dçn ngß½i t¾i LÕc Dß½ng, ÐÕi Lý, Tô Châu ho£c các môn phái khác. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Chiªt Mai Phong", x=101, y=44, tip="Chiªt Mai Phong", desc="Cúc Kiªm là ngß¶i bäo v® Chiªt Mai Phong, Cô · Linh ThÑu Cung. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c khinh công phái Thiên S½n", x=98, y=44, tip="Ngß¶i dÕy khinh công Thiên S½n", desc="H÷c khinh công phái Thiên S½n phäi tìm Trúc Kiªm, Cô · Linh ThÑu Cung. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500068_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500068_g_Signpost do
		AddNumText(sceneId, x500068_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500068_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500068_g_Signpost[GetNumText()]

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
