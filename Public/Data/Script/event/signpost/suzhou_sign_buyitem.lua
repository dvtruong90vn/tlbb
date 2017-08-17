-- Tô Châu
--¹ºÂòÎïÆ·
--ÎÊÂ·½Å±¾
x500021_g_scriptId = 500021

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500021_g_Signpost = {
	{ type=2, name="Phøc sÑc ðiªm", x=316, y=170, tip="Tä Quý Cao ", desc="Ông chü phøc sÑc ðiªm Tä Quý Cao (316,170) · g¥n B¡c Th¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti®m trang sÑc", x=311, y=166, tip="Tä Vô Song ", desc="Bà chü ti®m trang sÑc Tä Vô Song (311,166) · g¥n B¡c Th¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="CØa hàng Trân Thú", x=171, y=238, tip="Vân Phi Phi ", desc="Phß¶ng chü trùng ði¬u Vân Phi Phi (171,238) · Trùng ði¬u phß¶ng hß¾ng B¡c ðß¶ng l¾n phía Tây. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti®m thu¯c", x=192, y=252, tip="H° Ph°n ", desc="Ông chü ti®m thu¯c H° Ph°n (192,252) · Nam Môn Tây th¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="TØu ðiªm", x=291, y=266, tip="Bao Thª Vinh ", desc="Ông chü tØu ðiªm Bao Thª Vinh (291,266) · cØa tØu ðiªm phía Nam TrÕng Nguyên trß¶ng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti®m tÕp hóa", x=225, y=271, tip="Tôn TØ Vû ", desc="Ông chü ti®m tÕp hóa Tôn TØ Vû (225,271) · hß¾ng Nam ðß¶ng Phøng Ki«u. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Bäo ThÕch thß½ng nhân", x=194, y=250, tip="PhÕm ÐÕi Thành ", desc="Thß½ng nhân Bäo ThÕch PhÕm ÐÕi Thành (110, 133) · ðß¶ng l¾n phía Ðông Tây Th¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500021_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500021_g_Signpost do
		AddNumText(sceneId, x500021_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500021_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500021_g_Signpost[GetNumText()]

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
