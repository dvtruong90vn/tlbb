-- ´óÀí
--¹ºÂòÎïÆ·
--ÎÊÂ·½Å±¾
x500042_g_scriptId = 500042

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þ¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500042_g_Signpost = {
	{ type=2, name="Ti®m binh khí", x=341, y=221, tip="B° Lß½ng ", desc="Ti®m binh khí · hß¾ng B¡c ðß¶ng l¾n phía Ðông. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti®m trang sÑc", x=376, y=270, tip="Hoàng Công ÐÕo ", desc="Phøc sÑc ðiªm · Lµ Nam ðß¶ng l¾n phía Ðông. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti¬u nh¸ ti®m trang sÑc", x=386, y=282, tip="Ti¬u Sai ", desc="Ti®m trang sÑc · Lµ Nam ðß¶ng l¾n phía Ðông. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti®m trân thú", x=400, y=218, tip="Vân Phiêu Phiêu ", desc="Ti®m trân thú · Lµ B¡c ðß¶ng l¾n phía Ðông, hß¾ng Ðông B¡c cüa D¸ch trÕm. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti®m thu¯c", x=227, y=220, tip="Lô Tam Th¤t ", desc="Ti®m thu¯c · Lµ B¡c ðß¶ng l¾n phía Tây. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="TØu ðiªm", x=230, y=251, tip="Ð² TØ Ð¢ng ", desc="TØu ðiªm · Lµ Nam ðß¶ng l¾n phía Tây, · ðó có th¬ mua ðßþc các loÕi thñc ph¦m ð¬ h°i phøc. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti®m tÕp hóa", x=145, y=226, tip="Cao Thång Tß¶ng ", desc="Ti®m tÕp hóa · ðß¶ng l¾n phía Tây, cÕnh ruµng, ði v« hß¾ng B¡c. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500042_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500042_g_Signpost do
		AddNumText(sceneId, x500042_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500042_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500042_g_Signpost[GetNumText()]

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
