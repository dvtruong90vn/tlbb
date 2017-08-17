-- ´óÀí
--Ñ­»·ÈÎÎñ·¢²¼ÈË
--ÎÊÂ·½Å±¾
x500047_g_scriptId = 500047

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þ¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500047_g_Signpost = {
	{ type=2, name="ÐÕi Lý Tào v§n SÑ", x=119, y=293, tip="ÐÕi Lý Tào v§n SÑ", desc="ÐÕi Lý Tào v§n sÑ Vß½ng Nhßþc Vû · ðß¶ng l¾n phía Tây, ði v« hß¾ng Tây s¨ nhìn th¤y. „n phím TAB m· bän ð°, chính là ch² viªt chæ \"Tào\"", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500047_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500047_g_Signpost do
		AddNumText(sceneId, x500047_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500047_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500047_g_Signpost[GetNumText()]

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
