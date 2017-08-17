--Àë»éÈÎÎñ

--½Å±¾ºÅ
x806005_g_ScriptId		= 806005

--Àë»é
x806005_g_Unmarry						= {}
x806005_g_Unmarry["Id"]			= 1001
x806005_g_Unmarry["Name"]		= "Ly hôn"
x806005_g_Unmarry["Skills"]	= { {260,"KÛ nång phu thê c¤p 1"}, {261,"KÛ nång phu thê c¤p 2"}, {262,"KÛ nång phu thê c¤p 3"},
												{263,"KÛ nång phu thê c¤p 4"}, {264,"KÛ nång phu thê c¤p 5"}, {265,"KÛ nång phu thê c¤p 6"},
												{266,"KÛ nång phu thê c¤p 7"}, {267,"KÛ nång phu thê c¤p 8"}, {268,"KÛ nång phu thê c¤p 9"} }

--ÌáÊ¾ÐÅÏ¢
x806005_g_msg_unm					= {}
x806005_g_msg_unm["tem"]	= "  Nªu mu¯n ly hôn, m¶i 2 bên nam næ l§p thành 1 ðµi t¾i tìm ta"
x806005_g_msg_unm["mar"]	= "  Các ngß½i vçn chßa kªt hôn, sao lÕi mu¯n ly hôn?"
x806005_g_msg_unm["gld"]	= "  Nhà trai c¥n mang theo #{_EXCHG55555} m¾i có th¬ ly hôn"
x806005_g_msg_unm["ner"]	= "  Chï c¥n 2 ngß¶i ð«u t¾i bên ta m¾i có th¬ ly hôn"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý ÇëÇóÀë»é
--**********************************
function x806005_OnDefaultEvent( sceneId, selfId, targetId )
	local	tId, male, female	= x806005_CheckAccept( sceneId, selfId, targetId )
	if tId == 0 or male == 0 or female == 0 then
		return 0
	end
	
	--Í¬ÒâÀë»é
	if GetNumText() == 1 then
		x806005_OnAccept( sceneId, male, female )
		x806005_MessageBox( sceneId, tId, targetId, "Ð¯i phß½ng ðã tiªp nh§n yêu c¥u ly hôn cüa ngß½i" )
		
		--¹Ø±Õ½çÃæ		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return 1
	end
	--²»Í¬ÒâÀë»é
	if GetNumText() == 2 then
		x806005_MessageBox( sceneId, tId, targetId, "R¤t tiªc, ð¯i phß½ng không ð°ng ý yêu c¥u ly hôn cüa ngß½i" )
		
		--¹Ø±Õ½çÃæ		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return 1
	end
	
	x806005_OnSubmit( sceneId, selfId, targetId, tId )
	return 1
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806005_OnEnumerate( sceneId, selfId, targetId )
	if LuaFnIsMarried( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x806005_g_ScriptId, x806005_g_Unmarry["Name"] , 6, -1)
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x806005_CheckAccept( sceneId, selfId, targetId )
	--(1)µã»÷Õß×é¶Ó£¬²¢ÇÒ¶ÓÎéÖ»ÓÐ2¸öÈË
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x806005_MessageBox( sceneId, selfId, targetId, x806005_g_msg_unm["tem"] )
		return 0, 0, 0
	end
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x806005_MessageBox( sceneId, selfId, targetId, x806005_g_msg_unm["tem"] )
		return 0, 0, 0
	end
	if LuaFnGetTeamSceneMemberCount( sceneId, selfId ) ~= 1 then
		x806005_MessageBox( sceneId, selfId, targetId, x806005_g_msg_unm["tem"] )
		return 0, 0, 0
	end

	--(2)¶ÓÎéÖÐÊÇ·ñAÊÇBµÄ·ò¾ý£¬BÊÇAµÄÆÞ×Ó
	local	selfSex	= LuaFnGetSex( sceneId, selfId )
	local tId			= LuaFnGetTeamSceneMember( sceneId, selfId, 0 )
	local tSex		= LuaFnGetSex( sceneId, tId )
	if selfSex == tSex then
		x806005_MessageBox( sceneId, selfId, targetId, x806005_g_msg_unm["mar"] )
		return 0, 0, 0
	end
	local	male, female
	if selfSex == 1 then
		male 		= selfId
		female	= tId
	else
		male		= tId
		female	= selfId
	end
	
	--Á©ÈËÊÇ·òÆÞ
	if LuaFnIsSpouses( sceneId, male, female ) == 0 then
		x806005_MessageBox( sceneId,selfId, targetId, x806005_g_msg_unm["mar"] )
		return 0, 0, 0
	end
	
	--½Å±¾ÊÇ·ñ¿ÉÒÔÕý³£Ö´ÐÐ
	if LuaFnIsCanDoScriptLogic( sceneId, male ) ~= 1 then
		return 0, 0, 0
	end
	if LuaFnIsCanDoScriptLogic( sceneId, female ) ~= 1 then
		return 0, 0, 0
	end

	--(3)ÄÐ·½ÉíÉÏÐ¯´ø½ðÇ®ÊÇ·ñ´óÓÚµÈÓÚN=55555
	--hzp 2008-12-10
		local nMoneyJZ = GetMoneyJZ(sceneId, male);
		local nMoneyJB = LuaFnGetMoney(sceneId, male);
		local nMoneySelf = nMoneyJZ + nMoneyJB;
	if nMoneySelf < 55555 then
		x806005_MessageBox( sceneId, selfId, targetId, x806005_g_msg_unm["gld"] )
		return 0, 0, 0
	end
	
	--(4)AºÍB¾àÀëÊÇ·ñ²»´óÓÚ10Ã×
	if IsInDist( sceneId, selfId, tId, 10 ) ~= 1 then
		x806005_MessageBox( sceneId, selfId, targetId, x806005_g_msg_unm["ner"] )
		return 0, 0, 0
	end

	return tId, male, female
end

--**********************************
--È·±£Ë«·½×ÔÔ¸Àë»é
--**********************************
function x806005_OnSubmit( sceneId, selfId, targetId, tId )
	local	selfName	= LuaFnGetName( sceneId, selfId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ðþi ð¯i phß½ng phúc ðáp..#r  Sau khi ly d¸, ðµ häo hæu cüa c£p vþ ch°ng s¨ ðßþc giäm xu¯ng 10, các kÛ nång phu thê ð«u s¨ b¸ xóa.#rLßu ý, ngß¶i ch°ng phäi chi ra #{_EXCHG55555}" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ngß½i có ð°ng ý ly hôn v¾i "..selfName.." không? Sau khi ly d¸, ðµ häo hæu cüa c£p vþ ch°ng s¨ ðßþc giäm xu¯ng 10, các kÛ nång phu thê ð«u s¨ b¸ xóa.#rLßu ý, ngß¶i ch°ng phäi chi ra #{_EXCHG55555}" )
		AddNumText( sceneId, x806005_g_ScriptId, "Xác nh§n", 6, 1 )		-- 9 + i ÖÆ¶¨¿Í»§¶ËÌØ¶¨toÕ ðµ Í¼±ê (Ñ¡ÏîÍ¼±êÎªÊý×ÖÏî)
		AddNumText( sceneId, x806005_g_ScriptId, "Hüy bö", 8, 2 )		-- 9 + i ÖÆ¶¨¿Í»§¶ËÌØ¶¨toÕ ðµ Í¼±ê (Ñ¡ÏîÍ¼±êÎªÊý×ÖÏî)
	EndEvent( sceneId )
	DispatchEventList( sceneId, tId, targetId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x806005_OnAccept( sceneId, male, female )
	--(1)¿Û³ýÄÐ·½ÉíÉÏ½ðÇ®55555
	--LuaFnCostMoney( sceneId, male, 55555 )
	LuaFnCostMoneyWithPriority(sceneId, male, 55555);	
	
	--(2)°ÑË«·½µÄºÃÓÑ¶È¶¼ÉèÖÃ³ÉN=X£¨10£©£¬XÎªÄÜ¹»¿´µ½¶Ô·½ÔÚÏßµÄ×îµÍÖµ
	LuaFnSetFriendPoint( sceneId, male, female, 10 )
	LuaFnSetFriendPoint( sceneId, female, male, 10 )
	
	--(3)É¾³ý³ÆºÅ
	LuaFnAwardSpouseTitle( sceneId, female, "" )
	DispatchAllTitle( sceneId, female )
	LuaFnAwardSpouseTitle( sceneId, male, "" )
	DispatchAllTitle( sceneId, male )

	--(4)ÁÄÌì´°¿Ú¸øÄÐ·½ÌáÊ¾
	Msg2Player( sceneId, male, "Ngß½i ðã h°i phøc trÕng thái ðµc thân", MSG2PLAYER_PARA )
--Msg2Player( sceneId, male, "ÒÑ¾­¹é»¹ÁË½á»é½äÖ¸¡£", MSG2PLAYER_PARA )
	Msg2Player( sceneId, male, "M¤t ði danh xßng phu thê", MSG2PLAYER_PARA )
	Msg2Player( sceneId, male, "M¤t ði t¤t cä kÛ nång phu thê", MSG2PLAYER_PARA )

	--(5)ÁÄÌì´°¿Ú¸øÅ®·½ÌáÊ¾
	Msg2Player( sceneId, female, "Ngß½i ðã h°i phøc trÕng thái ðµc thân", MSG2PLAYER_PARA )
--Msg2Player( sceneId, female, "ÒÑ¾­¹é»¹ÁË½á»é½äÖ¸¡£", MSG2PLAYER_PARA )
	Msg2Player( sceneId, female, "M¤t ði danh xßng phu thê", MSG2PLAYER_PARA )
	Msg2Player( sceneId, female, "M¤t ði t¤t cä kÛ nång phu thê", MSG2PLAYER_PARA )
	
	--(6)É¾³ý·òÆÞ¼¼ÄÜ
	local skillId
	for _, skillId in x806005_g_Unmarry["Skills"] do
		DelSkill( sceneId, male, skillId[1] )
		DelSkill( sceneId, female, skillId[1] )
	end
	
	NewSkill = { 250, 251, 252, 253, 254, 255, 256, 257, 258, 259 }
	for _, skillId in NewSkill do
		DelSkill( sceneId, male, skillId )
		DelSkill( sceneId, female, skillId )
	end
	
	--É¾³ýÐÎÓ°²»Àë¼¼ÄÜ
	for _, skillId in { 269,270,271,272,273 } do
		DelSkill( sceneId, male, skillId )
		DelSkill( sceneId, female, skillId )
	end
	
	--(7)É¾³ý¶ÔÓ¦½á»éÊ±µÄÈÎÎñ
	CallScriptFunction(250036, "OnAbandon", sceneId, male);
	CallScriptFunction(250037, "OnAbandon", sceneId, male);
	
	CallScriptFunction(250036, "OnAbandon", sceneId, female);
	CallScriptFunction(250037, "OnAbandon", sceneId, female);
	
	--ÖØÎÂ»éÀñ¼ÆÊýÇå0
	SetMissionData( sceneId, male, MD_TW_REEXPERIENCE_WEDDING_TOTAL_COUNT, 0 )
	SetMissionData( sceneId, female, MD_TW_REEXPERIENCE_WEDDING_TOTAL_COUNT, 0 )

	LuaFnUnMarry( sceneId, male, female )
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806005_MessageBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
