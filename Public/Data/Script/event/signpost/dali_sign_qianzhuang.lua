-- ´óÀí
--Ç®×¯
--ÎÊÂ·½Å±¾
x500044_g_scriptId = 500044

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þ¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500044_g_Signpost = {
	{ type=2, name="Ti«n trang", x=333, y=277, tip="Vß½ng Dînh", desc="Ông chü Vß½ng cüa Ti«n Trang · hß¾ng Nam ðß¶ng l¾n phía Ðông cách Ngû Hoa Ðàn không xa, ¤n phím TAB, trên bän ð° có ký hi®u nh¤p nháy. Nô bµc · Ti«n Trang có th¬ giúp các hÕ c¤t giæ v§t phçm và ngân lßþng", eventId=-1 },
	{ type=2, name="Ti®m c¥m ð°", x=180, y=284, tip="Hàn Vînh An", desc="Ông chü Hàn Vînh An cüa ti®m c¥m ð° · hß¾ng Nam ðß¶ng l¾n phía Tây. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500044_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500044_g_Signpost do
		AddNumText(sceneId, x500044_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500044_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500044_g_Signpost[GetNumText()]

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
