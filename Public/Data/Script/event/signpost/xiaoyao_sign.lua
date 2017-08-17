--Tiêu Dao
--ÎÊÂ·½Å±¾
x500069_g_scriptId = 500069

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500069_g_Signpost = {
	{ type=2, name="Bái kiªn chß·ng môn", x=125, y=144, tip="Chß·ng môn", desc="ÐÕi Lý chß·ng môn nhân Tô Tinh Hà · Thính Hß½ng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Gia nh§p phái Tiêu Dao", x=125, y=144, tip="Tô Tinh Hà ", desc="T¾i Thính Hß½ng tìm ÐÕi Lý chß·ng môn Tô Tinh Hà s¨ ðßþc gia nh§p b±n phái. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c phái Tiêu Dao kÛ nång chiªn ð¤u", x=125, y=142, tip="H÷c phái Tiêu Dao kÛ nång chiªn ð¤u", desc="Khang Quäng Lång có th¬ giao cho các hÕ võ công cüa bän phái, ông · Thính Hß½ng. „n phím TAB, trên bän ð° s¨ hi¬n th¸ ði¬m nh¤p nháy bi¬u th¸.", eventId=-1 },
	{ type=2, name="H÷c phái Tiêu Dao kÛ nång cuµc s¯ng phái", x=62, y=68, tip="H÷c phái Tiêu Dao kÛ nång cuµc s¯ng phái", desc="Phùng A Tam cüa ÐÕi Quan có th¬ giao cho ngß½i Kì Môn Ðµn Giáp thu§t. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång h² trþ phái Tiêu Dao", x=53, y=150, tip="H÷c kÛ nång h² trþ phái Tiêu Dao", desc="H÷c kÛ nång h² trþ phái Tiêu Dao c¥n phäi t¾i TÑ Ân tìm ThÕch Thanh Lµ. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cßÞi thú phái Tiêu Dao", x=53, y=56, tip="H÷c kÛ nång cßÞi thú", desc="Ngô Lãnh Quân s¨ dÕy ngß½i kÛ nång cßÞi thú, ông · thß phòng ðó. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Mua v§t cßÞi", x=65, y=55, tip="Mua v§t cßÞi", desc="Viên quän lý hß½u th¥n C¥u Ðµc bán v§t cßÞi, ông · cÕnh thß phòng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nhi®m vø phái Tiêu Dao", x=120, y=153, tip="Nhi®m vø phái Tiêu Dao", desc="Ngß¶i giao nhi®m vø phái Tiêu Dao T¥n Quán · Thính Hß½ng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Tiêu Dao chuy¬n v§n sÑ", x=48, y=124, tip="Tiêu Dao chuy¬n v§n sÑ", desc="LýKh¯i LuÛ · phía Ðông Phøng Hoàng C¥m có th¬ dçn ngß½i t¾i LÕc Dß½ng, ÐÕi Lý, Tô Châu ho£c các môn phái khác. c¦n th§n ánh m¡t ông ¤y. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="C¯c ð¸a", x=62, y=68, tip="C¯c ð¸a", desc="Phùng A Tam cüa ÐÕi Quan có th¬ dçn ð® tØ b±n bang t¾ic¯c ð¸a Tiêu Dao. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c khinh công phái Tiêu Dao", x=54, y=149, tip="Ngß¶i dÕy khinh công Tiêu Dao", desc="H÷c khinh công phái Tiêu Dao phäi t¾i TÑ Ân · ðó tìm ThÕch Cam Lâm. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500069_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500069_g_Signpost do
		AddNumText(sceneId, x500069_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500069_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500069_g_Signpost[GetNumText()]

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
