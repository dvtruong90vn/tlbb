--Minh Giáo
--ÎÊÂ·½Å±¾
x500062_g_scriptId = 500062

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500062_g_Signpost = {
	{ type=2, name="Bái kiªn giáo chü", x=98, y=52, tip="Giáo chü", desc="Xin không nên làm phi«n ông, Nªu ngß½i thñc sñ mu¯n g£p ông thì t¾i Minh Tôn Ðàn. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Gia nh§p Minh Giáo", x=108, y=56, tip="Gia nh§p Minh Giáo", desc="Nªu ngß½i mu¯n gia nh§p giáo phái ta. Xin t¾i Minh Tôn Ðàn ði tìm Læ Sß Tß½ng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång chiªn ð¤u phái Minh Giáo", x=109, y=59, tip="H÷c kÛ nång chiªn ð¤u phái Minh Giáo", desc="H÷c kÛ nång chiªn ð¤u phái Minh Giáo. Xin t¾i Minh Tôn Ðàn ði tìm Bàng VÕn Xuân. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cuµc s¯ng phái Minh Giáo", x=87, y=61, tip="H÷c kÛ nång cuµc s¯ng phái Minh Giáo", desc="C×u ðÕo nhân · Minh Tôn Ðàn có th¬ dÕy ngß½i thánh höa thu§t ðµc nh¤t cüa Minh Giáo. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång h² trþ phái Minh Giáo", x=87, y=58, tip="H÷c kÛ nång h² trþ phái Minh Giáo", desc="Phß½ng Thiên Ð¸nh · Minh Tôn Ðàn có th¬ dÕy ngß½i Thái Höa thu§t ðµc nh¤t cüa Minh Giáo. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cßÞi thú phái Minh Giáo", x=66, y=118, tip="H÷c kÛ nång cßÞi thú", desc="L® Thiên Hñu · phía b¡c Thøy Kim Kì có th¬ dÕy ngß½i cßÞi sß tØ. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Mua v§t cßÞi", x=64, y=115, tip="Mua v§t cßÞi", desc="Ngß½i có th¬ tìm Ð£ng Nguyên Giác · phía B¡c Thøy Kim Kì, höi mua sß tØ ch² ông mua. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nhi®m vø Minh Giáo", x=98, y=105, tip="Nhi®m vø Minh Giáo", desc="Lâm Nham Chính · Thánh Höa Ðài tìm ngß¶i giúp ðÞ làm 1 s¯ sñ vø cüa giáo nµi. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ngß¶i chuyên ch· phái Minh Giáo", x=102, y=167, tip="Ngß¶i chuyên ch· phái Minh Giáo", desc="T¯ng truy«n sØ Th¤t Ph§t cüa Minh Giáo · ÐÕi Môn Kh¦u có th¬ dçn ngß½i t¾i LÕc Dß½ng, ÐÕi Lý, Tô Châu ho£c các môn phái khác. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Quang Minh ðµng", x=89, y=56, tip="Quang Minh ðµng", desc="Quang Minh Tä sØ Phß½ng LÕp · Minh Tôn Ðàn có th¬ dçn ngß½i t¾i thØ chiªn Quang Minh ðµng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c khinh công phái Minh Giáo", x=133, y=137, tip="Ngß¶i truy«n dÕy khinh công phái Minh Giáo", desc="Mu¯n h÷c khinh công phäi tìm Phß½ng Bách Hoa phía B¡c Cñu Møc Kì. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500062_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500062_g_Signpost do
		AddNumText(sceneId, x500062_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500062_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500062_g_Signpost[GetNumText()]

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
