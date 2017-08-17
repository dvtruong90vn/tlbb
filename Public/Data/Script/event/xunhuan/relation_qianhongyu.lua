-- Lînh Ç®ºêÓî³ÆºÅ

-- ½Å±¾ºÅ
x050106_g_scriptId = 050106

-- ³ÆºÅÁÐ±í
x050106_g_TitleList = {
	{
		relation = 1000,
		title = "Ti¬u Phï Nghîa Sî",
		failMsg = "    Mu¯n nh§n ðßþc danh hi®u c¤p 1, giá tr¸ quan h® cüa ta và các hÕ t¯i thi¬u 1000, c¥n phäi hoàn thành thêm vài lßþt Sào huy®t th± phï hãy ðªn tìm ta.",
		succMsg = "    TÕi hÕ vô cùng khâm phøc võ công cüa các hÕ, giang h° ð°n r¢ng các hÕ chính là#R Ti­u Phï Nghîa Sî#W, ta th¤y mà không h± th©n!",
	},
	{
		relation = 2000,
		title = "Phá Phï Hi®p Sî",
		failMsg = "    Mu¯n nh§n ðßþc danh hi®u c¤p 2, giá tr¸ quan h® cüa ta và các hÕ t¯i thi¬u 2000, c¥n phäi hoàn thành thêm vài lßþt Sào huy®t th± phï hãy ðªn tìm ta.",
		succMsg = "    TÕi hÕ vô cùng khâm phøc võ công cüa các hÕ, giang h° ð°n r¢ng các hÕ chính là#R Phá Phï Hi®p Sî#W, ta th¤y mà không h± th©n!",
	},
	{
		relation = 4000,
		title = "Tr¤n Phï Anh Hi®p",
		failMsg = "    Mu¯n nh§n ðßþc danh hi®u c¤p 3, giá tr¸ quan h® cüa ta và các hÕ t¯i thi¬u 4000, c¥n phäi hoàn thành thêm vài lßþt Sào huy®t th± phï hãy ðªn tìm ta.",
		succMsg = "    TÕi hÕ vô cùng khâm phøc võ công cüa các hÕ, giang h° ð°n r¢ng các hÕ chính là#R Tr¤n Phï Anh Hi®p#W, ta th¤y mà không h± th©n!",
	},
	{
		relation = 6500,
		title = "Thiên HÕ Phï Kiªn S¥u",
		failMsg = "    Mu¯n nh§n ðßþc danh hi®u c¤p 4, giá tr¸ quan h® cüa ta và các hÕ t¯i thi¬u 6500, c¥n phäi hoàn thành thêm vài lßþt Sào huy®t th± phï hãy ðªn tìm ta.",
		succMsg = "    TÕi hÕ vô cùng khâm phøc võ công cüa các hÕ, giang h° ð°n r¢ng các hÕ chính là#R Thiên HÕ Phï Kiªn S¥u#W, ta th¤y mà không h± th©n!",
	},
}

--**********************************
-- ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050106_OnDefaultEvent( sceneId, selfId, targetId )
	local opt = GetNumText()
	if opt == 7 then							-- Lînh ³ÆºÅ
		x050106_GetTitleOptions( sceneId, selfId, targetId )
	elseif opt == 8 then						-- Lînh ÐÂtoÕ ðµ ³ÆºÅ
		x050106_GetNewTitle( sceneId, selfId, targetId )
	end
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050106_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x050106_g_scriptId, "Nh§n danh hi®u", 8, 7 )
end

--**********************************
--  ði¬m»÷Lînh ³ÆºÅÑ¡Ïî
--**********************************
function x050106_GetTitleOptions( sceneId, selfId, targetId )
	local str = format( "    A, %s, ta vô cùng khâm phøc các anh hùng ðã hoàn thành nhi®m vø, gi¶ giá tr¸ quan h® cüa ta và các hÕ là %d, khi giá tr¸ quan h® ðÕt ðªn 1000, 2000, 4000, 6500 thì có th¬ ðªn ch² ta ð±i danh hi®u",
		GetName( sceneId, selfId ), GetMissionData( sceneId, selfId, MD_RELATION_QIANHONGYU ) )

	BeginEvent( sceneId )
		AddText( sceneId, str )
		AddNumText( sceneId, x050106_g_scriptId, "Lînh nh§n danh hi®u m¾i", 8, 8 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--  ði¬m»÷Lînh ÐÂ³ÆºÅÑ¡Ïî
--**********************************
function x050106_GetNewTitle( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local str = ""
		local curTitle = GetQHYTitle( sceneId, selfId )
		local relation = GetMissionData( sceneId, selfId, MD_RELATION_QIANHONGYU )
		local loc = 1

		for i = 1, getn( x050106_g_TitleList ) do
			if curTitle == x050106_g_TitleList[i].title then
				loc = i
				break
			end
		end

		if loc == getn( x050106_g_TitleList ) then
			str = "    Gi¶ các hÕ ðã là Thiên Hä Phï Kiªn S¥u cüa giang h°, trên giang b÷n phï nghe danh các hÕ ð«u run sþ, ai cûng kinh hãi. Ðã không còn danh hi®u nào ð¬ di­n tä nång lñc cüa các hÕ næa r°i."
		else
			for i = loc, getn( x050106_g_TitleList ) do
				if relation < x050106_g_TitleList[i].relation then
					str = x050106_g_TitleList[i].failMsg
					break
				elseif x050106_g_TitleList[i].title ~= GetQHYTitle( sceneId, selfId ) then		-- µ±Ç°³ÆºÅ²»Ðúng±¾³ÆºÅ
					SetQHYTitle( sceneId, selfId, x050106_g_TitleList[i].title )
					DispatchAllTitle( sceneId, selfId )
					str = x050106_g_TitleList[i].succMsg
					break
				end
			end
		end

		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
