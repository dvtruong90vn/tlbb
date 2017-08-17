-- LÕc Dß½ng
--Ç®×¯
--ÎÊÂ·½Å±¾
x500003_g_scriptId = 500003

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500003_g_Signpost = {
	--{ type=2, name="Ti®m c¥m ð°", x=95, y=152, tip="Hà Sinh Tài ", desc="Ông chü ti®m c¥m ð° Hà Sinh Tài (95, 152) trong ti®m c¥m ð° · ðß¶ng l¾n phía Tây. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti«n trang", x=187, y=299, tip="Dß½ng Hy Bình ", desc="VÕn kim ti«n trang lão bän Dß½ng Hy Bình (187,299) · Ti«n Trang trong ðß¶ng l¾n phía Tây, nô bµc cüa ông có th¬ giúp các hÕ c¤t giæ v§t phçm và ngân lßþng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Kim Nguyên Bäo Thß½ng", x=303, y=314, tip="Kim Løc Gia ", desc="Kim Nguyên Bäo Thß½ng Nhân Kim Løc Gia (303,314) · Ðông Th¸. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500003_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500003_g_Signpost do
		AddNumText(sceneId, x500003_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500003_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500003_g_Signpost[GetNumText()]

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
