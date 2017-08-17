--Thiên Long
--ÎÊÂ·½Å±¾
x500066_g_scriptId = 500066

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500066_g_Signpost = {
	{ type=2, name="Bái kiªn phß½ng trßþng", x=96, y=66, tip="Phß½ng trßþng", desc="Ngß½i mu¯n bái kiªn ÐÕi sß B±n Nhân, ông ðang · ÐÕi Hùng Bäo Ði®n. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Gia nh§p Thiên Long phái", x=96, y=66, tip="Bän Nhân ", desc="Mu¯n gia nh§p Thiên Long phái phäi tìm Bän Nhân ðÕi sß, ông ta · ÐÕi Hùng Bäo Ði®n. „n phím TAB, trên bän ð° s¨ hi¬n th¸ ði¬m nh¤p nháy bi¬u th¸.", eventId=-1 },
	{ type=2, name="H÷c kÛ nång chiªn ð¤u cüa Thiên Long phái", x=97, y=67, tip="H÷c kÛ nång chiªn ð¤u cüa Thiên Long phái", desc="B±n quan cüa Môn kh¦u ÐÕi Hùng Bäo Ði®n s¨ dÕy ngß½i võ công b±n phái. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång sinh s¯ng cüa Thiên Long phái", x=35, y=86, tip="H÷c kÛ nång sinh s¯ng cüa Thiên Long phái", desc="B±n Tß¾ng ðÕi sß · Không S½n Ðàn Phòng có th¬ dÕy ngß½i kÛ nång tr¸ sâu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång b± trþ cüa Thiên Long phái", x=64, y=151, tip="H÷c kÛ nång b± trþ cüa Thiên Long phái", desc="B±n Tham · Thiên T¥m Ðài có th¬ dÕy ngß½i kÛ nång bách quyªt kinh mÕch. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cßÞi thú cüa Thiên Long phái", x=148, y=92, tip="H÷c kÛ nång cßÞi thú", desc="Mu¯n h÷c cßÞi ngña thì tìm Dß½ng Thanh Ngßu, ông · Thiên Mã CÑu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Mua v§t cßÞi", x=146, y=95, tip="Mua v§t cßÞi", desc="Mu¯n mua 1 con ngña ð©p phäi không? Hãy t¾i Thiên Mã CÑu tìm Dß½ng Bách Ngßu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nhi®m vø cüa Thiên Long phái", x=95, y=88, tip="Nhi®m vø cüa Thiên Long phái", desc="ÐÕi sß Bän Phàm ðang c¥n ð® tØ b±n bang giúp ðÞ, ông phía Nam ÐÕi Hùng Bäo ði®n. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ngß¶i truy«n tin cüa Thiên Long phái", x=99, y=120, tip="Ngß¶i truy«n tin cüa Thiên Long phái", desc="Phá Sân · S½n Môn NgoÕi có th¬ dçn ngß½i t¾i LÕc Dß½ng, ÐÕi Lý, Tô Châu ho£c các môn phái khác. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Chân tháp", x=35, y=86, tip="Chân tháp", desc="Ð® tØ b±n bang m¾i ðßþc phép vào c¯c ð¸a, tìm B±n Tß¾ng ðÕi sß · Không S½n Ðàn Phòng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c khinh công cüa Thiên Long phái", x=35, y=86, tip="Ngß¶i dÕy khinh công Thiên Long", desc="Th¸nh Nhß Lan · Di®u Hß½ng Bi®t Vi®n có th¬ dÕy ngß½i khinh công b±n phái. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500066_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500066_g_Signpost do
		AddNumText(sceneId, x500066_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500066_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500066_g_Signpost[GetNumText()]

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
