--Cái Bang
--ÎÊÂ·½Å±¾
x500063_g_scriptId = 500063

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500063_g_Signpost = {
	{ type=2, name="Gia nh§p Cái Bang", x=91, y=98, tip="Tr¥n Cô NhÕn ", desc="Ngß½i mu¯n gia nh§p Thiên hÕ ð® nh¤t ðÕi bang không? Hãy tìm Tr¥n Cô NhÕn trß·ng lão · Tø Nghîa Ðß¶ng Môn. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c Cái Bang kÛ nång chiªn ð¤u", x=94, y=99, tip="H÷c Cái Bang kÛ nång chiªn ð¤u", desc="H« Tam KÏ trß·ng lão có th¬ dÕy ngß½i kÛ nång cüa b±n bang, ông · c±ng Tø Nghîa Ðß¶ng Môn. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cuµc s¯ng phái Cái Bang", x=114, y=91, tip="H÷c kÛ nång cuµc s¯ng phái Cái Bang", desc="Trß·ng lão Ngô Trß¶ng Phong · c±ng Trung Li®t Ðß¶ng Môn có th¬ dÕy ngß½i kÛ nång làm rßþu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång h² trþ phái Cái Bang", x=131, y=83, tip="H÷c kÛ nång h² trþ phái Cái Bang", desc="Hãy t¾i Ðào Viên, Ðà Chü · ðó, ngß½i höi xem ông có ch¸u dÕy ngß½i Liên Hoa LÕc không. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cßÞi thú phái Cái Bang", x=38, y=89, tip="H÷c kÛ nång cßÞi thú", desc="Tß¾ng Quang Ðình · Tß Tß½ng Phòng có th¬ dÕy ngß½i cách cßÞi sói. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Mua v§t cßÞi", x=54, y=86, tip="Mua v§t cßÞi", desc="Mua v§t cßÞi tìm Lý Nh§t Vi®t · Tây Sß½ng Phòng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nhi®m vø Cái Bang", x=92, y=70, tip="Nhi®m vø Cái Bang", desc="H°ng Thông · phía sau Tø Nghîa Ðß¶ng, Ông ðang tìm ngß¶i giúp ðÞ. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Cái Bang chuy¬n v§n sÑ", x=93, y=118, tip="Cái Bang chuy¬n v§n sÑ", desc="Trß½ng Toàn Tß¶ng · ngoài Tø Nghîa Ðß¶ng có th¬ dçn ngß½i t¾i LÕc Dß½ng, ÐÕi Lý, Tô Châu ho£c các môn phái khác. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H¥m rßþu", x=41, y=144, tip="H¥m rßþu", desc="H¥m rßþu có ngß¶i t¾i phá, t¾i Ti¬u Ðào Viên tìm Ph§t „n dçn ngß½i t¾i ðu±i chúng ði. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c khinh công phái Cái Bang", x=112, y=90, tip="Ngß¶i dÕy khinh công Cái Bang", desc="Ngô Tuyªt Ki«u · ngoài Trung Li®t Ðß¶ng Môn có th¬ dÕy ngß½i khinh công cüa b±n bang. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500063_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500063_g_Signpost do
		AddNumText(sceneId, x500063_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500063_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500063_g_Signpost[GetNumText()]

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
