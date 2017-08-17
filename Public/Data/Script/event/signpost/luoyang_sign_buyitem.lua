-- LÕc Dß½ng
--¹ºÂòÎïÆ·
--ÎÊÂ·½Å±¾
x500001_g_scriptId = 500001

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500001_g_Signpost = {
	{ type=2, name="Ti®m binh khí", x=308, y=294, tip="Vß½ng ÐÑc Quý ", desc="Ông chü ti®m binh khí Vß½ng ÐÑc Quý (308,294) trong ti®m vû khí · Ðông Th¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="TÕp hóa thß½ng nhân", x=348, y=285, tip="Nhuª Phúc Tß¶ng ", desc="Thß½ng nhân tÕp hóa Nhuª Phúc Tß¶ng (348,285) · Ðông Môn Nµi. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Phøc sÑc ðiªm", x=277, y=322, tip="Chân Duy Tß ", desc="Trß·ng qu¥y phøc sÑc ðiªm Chân Duy Tß (277,322) · ðß¶ng l¾n phía Nam. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti®m trang sÑc", x=282, y=314, tip="C± Tác Trân ", desc="Trang sÑc ðiªm chß·ng qu¥y C± Tác Trân (282,314) · phøc sÑc ðiªm ðß¶ng l¾n phía Nam. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti®m thu¯c", x=229, y=302, tip="BÕch Dînh Minh ", desc="ÐÕi ðß½ng gia cüa Tª Sinh Ðß¶ng BÕch Dînh Minh (229,302) · ti®m thu¯c ðß¶ng l¾n phía Nam. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="TØu ðiªm", x=243, y=282, tip="PhÕm Th¯ng ", desc="TØu ðiªm chß·ng qu¥y PhÕm Th¯ng (243,282) · hß¾ng Nam ðß¶ng l¾n phía Tây. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Chu bäo thß½ng nhân", x=159, y=288, tip="Lß½ng Phú Nhân ", desc="Chu bäo thß½ng nhân Lß½ng Phú Nhân (159,288) · ðß¶ng l¾n phía Tây. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500001_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500001_g_Signpost do
		AddNumText(sceneId, x500001_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500001_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500001_g_Signpost[GetNumText()]

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
