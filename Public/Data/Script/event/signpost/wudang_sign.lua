--Võ Ðang
--ÎÊÂ·½Å±¾
x500064_g_scriptId = 500064

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500064_g_Signpost = {
	{ type=2, name="Bái kiªn chß·ng môn", x=77, y=85, tip="Chß·ng môn", desc="Chß·ng môn · trong TØ Tiêu ÐÕi Ði®n, ngß½i mu¯n t¾i bái kiªn ông? ¤n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Gia nh§p Võ Ðang", x=77, y=85, tip="Trß½ng Huy«n T¯ ", desc="Chß·ng môn · TØ Tiêu ÐÕi Ði®n, Nªu mu¯n gia nh§p phái ta thì t¾i · ðó. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång chiªn ð¤u phái Võ Ðang", x=82, y=84, tip="H÷c kÛ nång chiªn ð¤u phái Võ Ðang", desc="Du Vi­n S½n · TØ Tiêu ÐÕi Ði®n có th¬ dÕy ngß½i kÛ nång cüa phái Võ Ðang. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cuµc s¯ng phái Võ Ðang", x=44, y=56, tip="H÷c kÛ nång cuµc s¯ng phái Võ Ðang", desc="HÕc Vân ðÕo nhân có th¬ dÕy ngß½i luy®n ðan, qua Thiên ki«u có th¬ tìm ðßþc ông. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c Võ Ðang kÛ nång h² trþ", x=41, y=58, tip="H÷c Võ Ðang kÛ nång h² trþ", desc="Ninh Hß Tän nhân có th¬ dÕy ngß½i ÐÕo Pháp, qua Thiên ki«u có th¬ tìm ðßþc ông. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cßÞi thú phái Võ Ðang", x=102, y=112, tip="H÷c kÛ nång cßÞi thú", desc="Trß½ng Quân Phu · Nham Nghîa Ði®n s¨ dÕy ngß½i bän lînh cßÞi ðiêu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Mua v§t cßÞi", x=101, y=115, tip="Mua v§t cßÞi", desc="Ngß½i có th¬ ðªn Trß½ng Quân Mµ mua thú cßÞi Tiên Ðiêu, ông · Nham Nghîa Ði®n. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nhi®m vø Võ Ðang", x=78, y=92, tip="Nhi®m vø Võ Ðang", desc="Nªu ngß½i mu¯n làm chút gì cho b±n phái, hãy t¾i trß¾c ðÕi ði®n TØ Tiêu tìm Trß½ng Trung Hành. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ngß¶i chuyên ch· cüa phái Võ Ðang", x=101, y=136, tip="Ngß¶i chuyên ch· cüa phái Võ Ðang", desc="MÕc Thái Xung cüa Kiªm Hà Ki«u B¡c có th¬ dçn ngß½i t¾i LÕc Dß½ng, ÐÕi Lý, Tô Châu ho£c các môn phái khác. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Linh Tính Phong", x=58, y=73, tip="Linh Tính Phong", desc="ÐÕi sß huynh Lâm Linh T¯ quän lý vi®c ra vào Linh Tính Phong, ông · giæa Thiên giá và ðÕi ði®n TØ Tiêu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c khinh công phái Võ Ðang", x=65, y=109, tip="Ngß¶i dÕy khinh công Võ Ðang", desc="T¸nh S½ Tän Nhân cüa Tam Thanh Ði®n có th¬ giao cho ngß½i khinh công b±n phái. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500064_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500064_g_Signpost do
		AddNumText(sceneId, x500064_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500064_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500064_g_Signpost[GetNumText()]

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
