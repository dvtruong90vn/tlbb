-- ´óÀíÎÊÂ·½Å±¾
x500040_g_scriptId = 500040

-- ÎÊÂ·ÀàĞÍ type: 1 Îª¶ş¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500040_g_Signpost = {
		{ type=1, name="Làm sao gia nh§p môn phái?", eventId=500049, x=0, y=0, tip=" ", desc=" " },		--×¢Òâ,Õâmµt Ìõ²»Ğúngµ÷ÓÃÁímµt cái½Å±¾toÕ ğµ ·½Ê½,¶øĞúngTÕi ±¾ÎÄ¼şÄÚÖ±½ÓÅĞ¶Ï.²»½¨ÒéÊ¹ÓÃ´ËÖÖ·½Ê½
		{ type=1, name="Ngß¶i ğßa tin cØu ğÕi phái", eventId=500041, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Mua các loÕi v§t ph¦m", eventId=500042, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="D¸ch trÕm", eventId=500043, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ti«n trang, Ğß½ng ph¯", eventId=500044, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ta mu¯n rèn luy®n bän lînh", eventId=500045, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="H÷c kÛ nång ğ¶i s¯ng", eventId=500046, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Nhi®m vø và phø bän", eventId=500047, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Lôi ğài", eventId=500048, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Bái sß", eventId=500049, x=0, y=0, tip=" ", desc=" " },
}

--{ type=2, name="¶«Éı¿ÍÕ»", x=100.7, y=124.2, tip="´óÀí¶«Éı¿ÍÕ»", desc="´óÀí×î´óµÄ¿ÍÕ»Ö®Ò»£¬Èı½Ì¾ÅÁ÷¾Û¼¯Ö®µØ¡£" },
--{ type=2, name="±ÏÉı", x=180.0, y=120.0, tip="±ÏÉı¡£È¢ÆŞ°İÊ¦ĞİÆŞÅÑÊ¦µÄºÃÈ¥´¦£¡", desc="±ÏÉı¡«£¬ÊµÏÖÄã±ÏÉúµÄÃÎÏë¡«¡«¡«" },


--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x500040_OnEnumerate( sceneId, selfId, targetId )
--	AddNumText(sceneId, x500040_g_scriptId, "ÕËºÅ°²È«", -1, 1009)   --ÕÊºÅ  to  ÕËºÅ
	for i, signpost in x500040_g_Signpost do
		AddNumText(sceneId, x500040_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x500040_OnDefaultEvent( sceneId, selfId, targetId )

--	if GetNumText() == 1009 then
--		OpenWorldReference(sceneId, selfId,"AccountSafe")
--		return
--	end
	signpost = x500040_g_Signpost[GetNumText()]
	
	if GetNumText()==1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			AddText(sceneId, "Xin t¾i m÷i d¸ch trÕm cüa các thành th¸ (¤n Tab có th¬ m· bän ğ° ra tra tìm kı hi®u chæ #GD¸ch#W) chuy¬n t¾i môn phái mà các hÕ mu¯n bái sß. Sau khi t¾i môn phái hãy ¤n vào #GNgß¶i dçn ğß¶ng cho môn phái #W là có th¬ höi ğßşc v¸ trí bái sß. Ho£c ¤n phím TAB m· bän ğ° tìm kı hi®u chæ #GSß #W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 282, 270, "Thôi Phùng CØu" )
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
