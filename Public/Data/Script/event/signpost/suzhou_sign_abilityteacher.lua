-- Tô Châu
--Éú»î¼¼ÄÜ
--ÎÊÂ·½Å±¾
x500023_g_scriptId = 500023

-- ÎÊÂ·ÀàĞÍ type: 1 Îª¶şc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500023_g_Signpost = {
		{ type=2, name="ĞÕi sß tr°ng tr÷t", x=125, y=274, tip="Lâm Hòa Tînh ", desc="Ra khöi Tô Châu Ğông Môn ği v« hß¾ng Nam, qua 1 cây c¥u nhö s¨ nhìn th¤y ĞÕi sß tr°ng tr÷t Lâm Hòa Tînh (125,274) . „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß khai thác mö", x=363, y=231, tip="Trß½ng Ti¬u Hà ", desc="ĞÕi sß khai khoáng Trß½ng Ti¬u Hà (363,231) trong ti®m vû khí · Thành Ğông. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß hái thu¯c", x=217, y=200, tip="Vß½ng Th¦m Chi ", desc="ĞÕi sß hái thäo dßşc Vß½ng Th¦m Chi (217,200) · Tây Th¸. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß câu cá", x=335, y=170, tip="Trß½ng Bình ", desc="ĞÕi sß câu cá Trß½ng Bình (335,170) · bªn B¡c Ğông thành. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß công ngh®", x=206, y=224, tip="T¢ng Tam Tïnh ", desc="ĞÕi sß công ngh® T¢ng Tam Tïnh (206,224) · Tây Th¸. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß may vá", x=313, y=164, tip="Dß Hóa Long ", desc="ĞÕi sß may m£c Dß Hóa Long (313,164) · g¥n B¡c Th¸. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß luy®n kim", x=351, y=251, tip="Tiªt Chúc ", desc="Ğúc kiªm ğÕi sß Tiªt Chúc (251,251) · ti®m vû khí thành Ğông. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		{ type=2, name="ĞÕi sß n¤u ån", x=290, y=269, tip="Trí Hóa ", desc="ĞÕi sß n¤u nß¾ng Trí Hóa (290,269) · cØa ti®m thu¯c phía B¡c TrÕng Viên Trß¶ng. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
		--{ type=2, name="ÖØ¹ºÅä·½", x=96, y=127, tip="Ğ¡¸ß", desc="#GÖØ¹ºÅä·½: #WÒòÄ³ÖÖ²»¿É¿ØÔ­ÒòÔì³ÉÍæ¼ÒÒÑÑ§»átoÕ ğµ #G¼Ó¹¤²ÄÁÏÀàÅä·½¡¢ÂøÍ·Åä·½¡¢³õ/ÖĞ/¸ßc¤pÊ³²ÄÀàÅä·½¡¢åë³ßÌìÑÄÅä·½#W¶ªÊ§,¿ÉÒÔµ½#GTô Châu#WtoÕ ğµ #GĞ¡¸ß(96,127)#W¹ºÂòÖØ#G¹ºÅä·½#W,Æä³öÊÛ¼Û¸ñ#GÍ³mµt Îª1Òø#W.", eventId=-1 },
		--{ type=2, name="²ÄÁÏ¼Ó¹¤½éÉÜ", x=-1, y=-1, tip="", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x500023_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500023_g_Signpost do
		AddNumText(sceneId, x500023_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x500023_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500023_g_Signpost[GetNumText()]

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
