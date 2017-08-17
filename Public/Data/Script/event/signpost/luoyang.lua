-- LÕc Dß½ngÎÊÂ·½Å±¾
x500000_g_scriptId = 500000

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500000_g_Signpost = {
		{ type=1, name="Nh§n kinh nghi®m nhân ðôi?", eventId=500049, x=0, y=0, tip=" ", desc=" " },		--ÎÞµ¥¶À½Å±¾
		{ type=1, name="Làm sao gia nh§p môn phái?", eventId=500049, x=0, y=0, tip=" ", desc=" " },			--ÎÞµ¥¶À½Å±¾
		{ type=1, name="Mua các loÕi v§t ph¦m", eventId=500001, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="D¸ch trÕm", eventId=500002, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ti«n trang, ðß½ng ph¯, nguyên bäo", eventId=500003, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ta mu¯n rèn luy®n bän lînh", eventId=500004, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="H÷c kÛ nång ð¶i s¯ng", eventId=500005, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Nhi®m vø và phø bän", eventId=500006, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ta mu¯n l§p gia th¤t", eventId=500007, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Bang phái", eventId=500008, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Thß½ng hµi", eventId=500009, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="KÜ", eventId=500010, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Lôi ðài", eventId=500011, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Bäo ThÕch Hþp Thành", eventId=500012, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Kªt bái", eventId=500013, x=0, y=0, tip=" ", desc=" " },
}
--{ type=2, name="¶«Éý¿ÍÕ»", x=100.7, y=124.2, tip="LÕc Dß½ng¶«Éý¿ÍÕ»", desc="LÕc Dß½ng×î´ótoÕ ðµ ¿ÍÕ»Ö®mµt ,Èý½Ì¾ÅÁ÷¾Û¼¯Ö®µØ." },

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500000_OnEnumerate( sceneId, selfId, targetId )
--	AddNumText(sceneId, x500000_g_scriptId, "ÕËºÅ°²È«", -1, 1009)   --ÕÊºÅ  to  ÕËºÅ
	for i, signpost in x500000_g_Signpost do
		AddNumText(sceneId, x500000_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500000_OnDefaultEvent( sceneId, selfId, targetId )

--	if GetNumText() == 1009 then
--		OpenWorldReference(sceneId, selfId, "AccountSafe")
--		return
--	end
	signpost = x500000_g_Signpost[GetNumText()]
	if GetNumText()==1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			AddText(sceneId, "Xin t¾i quäng trß¶ng · LÕc Dß½ng [150,91] n½i Lßu Ki®n Minh nh§n g¤p ðôi kinh nghi®m")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 243, 233, "Lßu Ki®n Minh" )
		return
	end
	
	if GetNumText()==2 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			AddText(sceneId, "Xin t¾i m÷i d¸ch trÕm cüa các thành th¸ (¤n Tab có th¬ m· bän ð° ra tra tìm ký hi®u chæ #GD¸ch#W) chuy¬n t¾i môn phái mà các hÕ mu¯n bái sß. Sau khi t¾i môn phái hãy ¤n vào #GNgß¶i dçn ðß¶ng cho môn phái #W là có th¬ höi ðßþc v¸ trí bái sß. Ho£c ¤n phím TAB m· bän ð° tìm ký hi®u chæ #GSß #W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 235, 322, "Ngô ÐÑc Xß½ng" )
		return
	end

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
