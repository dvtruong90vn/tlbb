--Nga My
--ÎÊÂ·½Å±¾
x500065_g_scriptId = 500065

-- ÎÊÂ·ÀàÐÍ type: 1 Îª¶þc¤p²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500065_g_Signpost = {
	{ type=2, name="Bái kiªn chß·ng môn", x=96, y=73, tip="Chß·ng môn", desc="Chß·ng môn · B¡c di®n Song Ki«u, cÑ ði vào trong s¨ nhìn th¤y bà ¤y. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Gia nh§p Nga My", x=96, y=51, tip="Lý th§p nh¸ nß½ng", desc="Nªu các hÕ mu¯n tr· thành mµt thành viên cüa phái ta, hãy ði bái kiªn Lý Th¤t Nh¸ Nß½ng, bà · trß¾c T¸nh Âm Các. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång chiªn ð¤u phái Nga My", x=98, y=51, tip="H÷c kÛ nång chiªn ð¤u phái Nga My", desc="Chúng ta ð«u h÷c võ ngh® t× Thôi Løc Hoa tÖ tÖ h÷c, TÖ tÖ · trß¾c Thanh Âm Các. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cuµc s¯ng phái Nga My", x=43, y=108, tip="H÷c kÛ nång cuµc s¯ng phái Nga My", desc="Hàn tÖ tÖ biªt sØ døng kÛ nång chª tÕo phù ðµc truy«n cüa phái ta, ngß½i có th¬ t¾i La Phong Thanh Vân ði tìm tÖ tÖ. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång h² trþ phái Nga My", x=39, y=109, tip="H÷c kÛ nång h² trþ phái Nga My", desc="Linh tâm thu§t là kÛ nång h² trþ cüa chª tÕo bùa, Hµ Tam Nß½ng cüa La Phong Thanh Vân s¨ dÕy ngß½i . „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c kÛ nång cßÞi thú phái Nga My", x=141, y=51, tip="H÷c kÛ nång cßÞi thú", desc="Tiêu Tß½ng Thüy cüa Bách Thüy Thu Phong s¨ dÕy ngß½i bän lînh cßÞi. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Mua v§t cßÞi", x=145, y=53, tip="Mua v§t cßÞi", desc="Nªu mu¯n mua 1 con Phøng Hoàng, hãy t¾i Bách Thüy Thu Phong tìm Tiêu Hß½ng Ng÷c. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Nhi®m vø Nga My", x=95, y=86, tip="Nhi®m vø Nga My", desc="Sß huynh Mãnh Long · Song Ki«u ðang tìm ngß¶i giúp ðÞ. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ti«n trÕm phái Nga My", x=86, y=142, tip="Ti«n trÕm phái Nga My", desc="Nghe nói Dß½ng TÑ Nß½ng · Nguy®t Ki«u Nam có th¬ dçn ngß½i t¾i LÕc Dß½ng, ÐÕi Lý, Tô Châu ho£c các môn phái khác. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="Ðào Hoa Tr§n", x=96, y=73, tip="Ðào Hoa Tr§n", desc="Mu¯n vào Ðào Hoa Tr§n phäi t¾i B¡c di®n Song Ki«u tìm chß·ng môn. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
	{ type=2, name="H÷c khinh công phái Nga My", x=105, y=58, tip="Nga My khinh công truy«n thø nhân", desc="H÷c khinh công phái ta t¾i B¡c di®n Song Ki«u tìm Tôn Nh¸ Nß½ng. „n phím TAB, trên bän ð° có ký hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500065_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500065_g_Signpost do
		AddNumText(sceneId, x500065_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500065_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500065_g_Signpost[GetNumText()]

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
