-- ´óÀí
--Éú»î¼¼ÄÜ´óÊ¦
--ÎÊÂ·½Å±¾
x500046_g_scriptId = 500046

-- ÎÊÂ·ÀàĞÍ type: 1 Îª¶ş¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500046_g_Signpost = {
	{ type=2, name="ĞÕi sß tr°ng tr÷t", x=431, y=289, tip="Công Tôn ĞÕi Thúc", desc="Mu¯n h÷c làm ruµng xin t¾i ruµng cüa Công Tôn ĞÕi Thúc g¥n Ğông Môn Nµi, ông ta · ğó. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="ĞÕi sß khai thác mö", x=214, y=117, tip="Ğ±ng Hoa Thiªt", desc="Mu¯n h÷c khai khoáng xin tìm Ğ±ng Hoa Thiªt, ông · phía sau ti®m binh khí, ¤n TAB chính là ch² viªt chæ \"Thiªt\" trên bän ğ°", eventId=-1 },
	{ type=2, name="ĞÕi sß hái thu¯c", x=219, y=224, tip="Lßu Kı Nô", desc="ĞÕi sß làm thu¯c Lßu Kı Nô · ti®m dßşc n¢m trên ğß¶ng l¾n phía Tây. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ngß phu", x=225, y=251, tip="Møc TØ Lång", desc="Ngß phu Møc TØ Lång · hß¾ng Nam ğß¶ng l¾n phía Tây, cÕnh tØu ğiªm. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="ĞÕi sß công ngh®", x=343, y=284, tip="L² Minh Nguy®t", desc="ĞÕi sß công ngh® L² Minh Nguy®t · phía sau Thß½ng Ph¯ . „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="ĞÕi sß may vá", x=381, y=294, tip="Hoàng Lång Ba", desc="ĞÕi sß may vá Hoàng Lång Ba · hß¾ng Nam ğß¶ng l¾n phía Ğông. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="ĞÕi sß luy®n kim", x=351, y=186, tip="Quá Tam Chùy", desc="ĞÕi sß lò rèn Quá Tam Chùy · phía sau ti®m binh khí. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="ĞÕi sß n¤u ån", x=235, y=251, tip="Ğ² TØ Phi", desc="ĞÕi sß n¤u nß¾ng Ğ² TØ Phi · hß¾ng Nam ğß¶ng l¾n phía Tây. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="ĞÕi sß chª duşc", x=219, y=218, tip="Phó Ğß½ng Quy", desc="ĞÕi sß chª dßşc Phó Ğß½ng Quy · hß¾ng B¡c ğß¶ng l¾n phía Tây. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
	--{ type=2, name="ÖØ¹ºÅä·½", x=141, y=133, tip="Ğ¡¸ß", desc="#GÖØ¹ºÅä·½£º#WÒòÄ³ÖÖ²»¿É¿ØÔ­ÒòÔì³ÉÍæ¼ÒÒÑÑ§»áµÄ#G¼Ó¹¤²ÄÁÏÀàÅä·½¡¢ÂøÍ·Åä·½¡¢³õ/ÖĞ/¸ß¼¶Ê³²ÄÀàÅä·½¡¢åë³ßÌìÑÄÅä·½#W¶ªÊ§£¬¿ÉÒÔµ½#GËÕÖİ#WµÄ#GĞ¡¸ß£¨96£¬127£©#W¹ºÂòÖØ#G¹ºÅä·½#W£¬Æä³öÊÛ¼Û¸ñ#GÍ³Ò»Îª1Òø#W¡£", eventId=-1 },
	--{ type=2, name="²ÄÁÏ¼Ó¹¤½éÉÜ", x=-1, y=-1, tip="", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x500046_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500046_g_Signpost do
		AddNumText(sceneId, x500046_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x500046_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500046_g_Signpost[GetNumText()]

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
