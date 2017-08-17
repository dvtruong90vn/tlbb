-- Tô ChâuÎÊÂ·½Å±¾
x500020_g_scriptId = 500020

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500020_g_Signpost = {
	{ type=1, name="Làm sao gia nh§p môn phái?", eventId=500049, x=0, y=0, tip=" ", desc=" " },
		{ type=2, name="Nh§n kinh nghi®m nhân ðôi?", x=250, y=172, tip="Tr¥m Tr×ng", desc="Ngß½i có th¬ · ch² Tr¥m Tr×ng (250,172) lãnh g¤p ðôi kinh nghi®m, ông · g¥n B¡c Môn Tô Châu. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
		{ type=1, name="Mua các loÕi v§t ph¦m", eventId=500021, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ta mu¯n rèn luy®n bän lînh", eventId=500022, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="H÷c kÛ nång s¯ng môn phái", eventId=500023, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Nhi®m vø và phø bän", eventId=500024, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="Thú", eventId=500025, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="D¸ch trÕm", eventId=500026, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="Ti«n trang", eventId=500027, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="Trang b¸ cß¶ng hóa và giám ð¸nh", eventId=500028, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="T¾i tr× sát khí", eventId=500029, x=0, y=0, tip=" ", desc=" " },
}
--{ type=2, name="¶«Éý¿ÍÕ»", x=100.7, y=124.2, tip="Tô Châu¶«Éý¿ÍÕ»", desc="Tô Châu×î´ótoÕ ðµ ¿ÍÕ»Ö®mµt ,Èý½Ì¾ÅÁ÷¾Û¼¯Ö®µØ." },

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500020_OnEnumerate( sceneId, selfId, targetId )
--	AddNumText(sceneId, x500020_g_scriptId, "ÕËºÅ°²È«", -1, 1009)   --ÕÊºÅ  to  ÕËºÅ
	for i, signpost in x500020_g_Signpost do
		AddNumText(sceneId, x500020_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500020_OnDefaultEvent( sceneId, selfId, targetId )

--	if GetNumText() == 1009 then
--		OpenWorldReference(sceneId, selfId, "AccountSafe")
--		return
--	end
	signpost = x500020_g_Signpost[GetNumText()]

	if GetNumText()==1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			AddText(sceneId, "Xin t¾i m÷i d¸ch trÕm cüa các thành th¸ (¤n Tab có th¬ m· bän ð° ra tra tìm ký hi®u chæ #GD¸ch#W) chuy¬n t¾i môn phái mà các hÕ mu¯n bái sß. Sau khi t¾i môn phái hãy ¤n vào #GNgß¶i dçn ðß¶ng cho môn phái #W là có th¬ höi ðßþc v¸ trí bái sß. Ho£c ¤n phím TAB m· bän ð° tìm ký hi®u chæ #GSß #W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 204, 256, "Lý Th×a Phong" )
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
