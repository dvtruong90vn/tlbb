-- ´óÀí
--ÀÞÌ¨
--ÎÊÂ·½Å±¾
x500048_g_scriptId = 500048

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þ¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500048_g_Signpost = {
	{ type=2, name="Võ Quán Quán Chü", x=174, y=348, tip="Phß½ng Tri®u Dß½ng", desc="Lôi Ðài là n½i h÷c höi võ ngh®, các hÕ có th¬ tìm chü quän Phß½ng Tri®u Dß½ng mu¯n tìm hi¬u g£p ông trên Thßþng Võ ðài. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500048_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500048_g_Signpost do
		AddNumText(sceneId, x500048_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500048_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500048_g_Signpost[GetNumText()]

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
