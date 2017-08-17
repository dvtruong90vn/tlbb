-- ´óÀí
--ÃÅÅÉ´«ËÍÈË
--ÎÊÂ·½Å±¾
x500041_g_scriptId = 500041

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þ¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500041_g_Signpost = {
	{ type=2, name="Thiªu Lâm", x=276, y=229, tip="Tu® D¸ch ", desc="Tång nhân Tu® D¸ch [276,229], ngß¶i dçn ðß¶ng phái Thiªu Lâm, · góc Ðông B¡c Ngû Hoa Ðàn trung tâm ÐÕi Lý, ¤n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Thiên Long", x=288, y=228, tip="Phá Tham ", desc="Tång nhân Phá Tham [288,228], ngß¶i dçn ðß¶ng phái Thiên Long, · góc Ðông B¡c Ngû Hoa Ðàn trung tâm ÐÕi Lý, ¤n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Tiêu Dao", x=288, y=225, tip="Ðàm TØ Vû ", desc="Ðàm TØ Vû [288,225], ngß¶i dçn ðß¶ng phái Tiêu Dao, · góc Ðông B¡c Ngû Hoa Ðàn trung tâm ÐÕi Lý, ¤n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nga My", x=276, y=235, tip="Lµ Tam Nß½ng ", desc="Cô cô Lµ Tam Nß½ng [276,235], ngß¶i dçn ðß¶ng phái Nga My, · góc Ðông B¡c Ngû Hoa Ðàn trung tâm ÐÕi Lý, ¤n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Thiên S½n", x=288, y=235, tip="Trình Thanh Sß½ng ", desc="Trình Thanh Sß½ng [288,235], ngß¶i dçn ðß¶ng phái Thiên S½n, · góc Tây B¡c Ngû Hoa Ðàn trung tâm ÐÕi Lý, cách Nhiªp Chính-ngß¶i gi¾i thi®u bái sß không xa. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Tinh Túc", x=288, y=232, tip="Häi Phong TØ ", desc="Ð® tØ Häi Phong TØ [288,232], ngß¶i dçn ðß¶ng phái Tinh Túc, · góc Tây B¡c Ngû Hoa Ðàn trung tâm ÐÕi Lý, cách Nhiªp Chính-ngß¶i gi¾i thi®u bái sß không xa. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Minh Giáo", x=288, y=238, tip="ThÕch Bäo ", desc="SØ ThÕch Bäo [288,238], ngß¶i dçn ðß¶ng phái Minh Giáo, · góc Tây B¡c Ngû Hoa Ðàn trung tâm ÐÕi Lý, cách Nhiªp Chính-ngß¶i gi¾i thi®u bái sß không xa. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Võ Ðang", x=276, y=225, tip="Trß½ng HoÕch ", desc="Trß½ng HoÕch ðÕo trß·ng [276,225], ngß¶i dçn ðß¶ng phái Võ Ðang, · góc Tây B¡c Ngû Hoa Ðàn trung tâm ÐÕi Lý, cách Nhiªp Chính-ngß¶i gi¾i thi®u bái sß không xa. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Cái Bang", x=276, y=232, tip="Giän Ninh ", desc="Trß·ng lão Giän Ninh [276,232], ngß¶i dçn ðß¶ng phái Cái Bang, · góc Tây B¡c Ngû Hoa Ðàn trung tâm ÐÕi Lý, cách Nhiªp Chính-ngß¶i gi¾i thi®u bái sß không xa. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500041_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500041_g_Signpost do
		AddNumText(sceneId, x500041_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500041_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500041_g_Signpost[GetNumText()]

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
