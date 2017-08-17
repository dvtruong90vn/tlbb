--Thiªu Lâm
--ÎÊÂ·½Å±¾
x500061_g_scriptId = 500061

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500061_g_Signpost = {
	{ type=2, name="Bái kiªn phß½ng trßþng", x=38, y=98, tip="Phß½ng trßþng", desc="Ngß½i mu¯n bái kiªn ÐÕi sß Huy«n T×, ông · ÐÕt Ma Vi®n. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Gia nh§p phái Thiªu Lâm", x=89, y=72, tip="Giám tñ Thiªu Lâm Huy«n T¸nh", desc="Mu¯n gia nh§p phái Thiªu Lâm thì tìm ÐÕi sß Huy«n T¸nh, ông · ÐÕi Hùng bäo ði®n môn kh¦u. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång chiªn ð¤u Thiªu Lâm", x=91, y=71, tip="H÷c kÛ nång chiªn ð¤u môn phái", desc="Thiªu Lâm tuy®t kÛ danh xß¾ng thiên hÕ, ÐÕi sß Huy«n NÕn có th¬ dÕy ngß½i, ông · ÐÕi Hùng Bäo Ði®n Môn kh¦u. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cuµc s¯ng Thiªu Lâm", x=128, y=86, tip="H÷c kÛ nång cuµc s¯ng môn phái", desc="ÐÕi sß Huy«n Ðµ có th¬ dÕy ngß½i kÛ nång khai sáng ðµc nh¤t phái Thiªu Lâm, ông · Long Thø Viên. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång h² trþ Thiªu Lâm", x=135, y=90, tip="H÷c kÛ nång h² trþ môn phái", desc="ÐÕi sß Huy«n Minh có th¬ dÕy ngß½i kÛ nång Ph§t Pháp, ông · Long Thø Viên. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cßÞi thú Thiªu Lâm", x=57, y=88, tip="H÷c kÛ nång cßÞi thú", desc="ÐÕi sß Huy«n Di®t có th¬ dÕy ngß½i bän lînh cßÞi h±, ông · phía Nam Chung l¥u. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Mua v§t cßÞi", x=60, y=82, tip="Mua v§t cßÞi", desc="Ngß½i có th¬ mua h± · ch² ÐÕi sß Huy«n Sinh, ông · phía Nam Chung l¥u. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nhi®m vø phái Thiªu Lâm", x=96, y=89, tip="Nhi®m vø môn phái", desc="Nªu các hÕ mu¯n tìm vi®c ð¬ làm thì tìm Hu® Phß½ng sß huynh, anh ta · phía nam ÐÕi Hùng Bäo Ði®n. „n phím TAB, trên bän ð° s¨ hi¬n th¸ ði¬m nh¤p nháy bi¬u th¸.", eventId=-1 },
	{ type=2, name="Thiªu Lâm chuy¬n v§n sÑ", x=932, y=131, tip="Ngß¶i chuyên ch· cüa môn phái", desc="Sß huynh Tu® Luân trong S½n Môn có th¬ dçn ngß½i t¾i LÕc Dß½ng, ÐÕi Lý, Tô Châu và các môn phái khác. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Tháp Lâm", x=61, y=62, tip="Ngß¶i bäo v® Tháp Lâm", desc="Mu¯n thØ chiªn Tháp Lâm thì t¾i Chung L¥u tìm ÐÕi sß Huy«n Tr×ng. „n phím TAB, trên bän ð° có Ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c khinh công Thiªu Lâm", x=38, y=102, tip="Ngß¶i dÕy khinh công Thiªu Lâm", desc="H÷c khinh công t¾i ÐÕt Ma Vi®n tìm Thái Vân muµi muµi. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500061_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500061_g_Signpost do
		AddNumText(sceneId, x500061_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500061_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500061_g_Signpost[GetNumText()]

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
