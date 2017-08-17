--Ç¿ÖÆÀë»éÈÎÎñ

--½Å±¾ºÅ
x806004_g_ScriptId		= 806004

--Ç¿ÖÆÀë»é
x806004_g_Repudiate						= {}
x806004_g_Repudiate["Id"]			= 1002
x806004_g_Repudiate["Name"]		= "CßŞng chª Ly hôn"
x806004_g_Repudiate["Skills"]	= { {260,"KÛ nång phu thê c¤p 1"}, {261,"KÛ nång phu thê c¤p 2"}, {262,"KÛ nång phu thê c¤p 3"},
													{263,"KÛ nång phu thê c¤p 4"}, {264,"KÛ nång phu thê c¤p 5"}, {265,"KÛ nång phu thê c¤p 6"},
													{266,"KÛ nång phu thê c¤p 7"}, {267,"KÛ nång phu thê c¤p 8"}, {268,"KÛ nång phu thê c¤p 9"} }

--ÌáÊ¾ĞÅÏ¢
x806004_g_msg_rep					= {}
x806004_g_msg_rep["mar"]	= "  Ngß½i chßa kªt hôn, ğã mu¯n ly hôn?"
x806004_g_msg_rep["gld"]	= "  C¥n mang #{_EXCHG200000} m¾i có th¬ ly hôn"

--**********************************
--ÈÎÎñÈë¿Úº¯Êı ÇëÇóÀë»é
--**********************************
function x806004_OnDefaultEvent( sceneId, selfId, targetId )
	if x806004_CheckAccept( sceneId, selfId, targetId ) == 0 then
		return 0
	end
	
	--Í¬ÒâÀë»é
	if GetNumText() == 1 then
		x806004_OnAccept( sceneId, selfId )
		
		--¹Ø±Õ½çÃæ		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return 1
	end
	--²»Í¬ÒâÀë»é
	if GetNumText() == 2 then
		--¹Ø±Õ½çÃæ		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return 1
	end
	
	x806004_OnSubmit( sceneId, selfId, targetId )
	return 1
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x806004_OnEnumerate( sceneId, selfId, targetId )
	if LuaFnIsMarried( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x806004_g_ScriptId, x806004_g_Repudiate["Name"] , 6, -1 )
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x806004_CheckAccept( sceneId, selfId, targetId )
	--(1)ÒÑ»é
	if LuaFnIsMarried( sceneId, selfId ) == 0 then
		x806004_MessageBox( sceneId, selfId, targetId, x806004_g_msg_rep["mar"] )
		return 0
	end
	
	--(2)Àë»éµÄÈËÉíÉÏĞ¯´ø½ğÇ®´óÓÚµÈÓÚN=200000
	--if LuaFnGetMoney( sceneId, selfId ) < 200000 then
	--hzp 2008-12-10
		local nMoneyJZ = GetMoneyJZ(sceneId, selfId);
		local nMoneyJB = LuaFnGetMoney(sceneId, selfId);
		local nMoneySelf = nMoneyJZ + nMoneyJB;
	if nMoneySelf < 200000 then
		x806004_MessageBox( sceneId, selfId, targetId, x806004_g_msg_rep["gld"] )
		return 0
	end

	return 1
end

--**********************************
--È·±£Ë«·½×ÔÔ¸Àë»é
--**********************************
function x806004_OnSubmit( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ngß½i hãy xác nh§n ly hôn không?" )
		AddNumText( sceneId, x806004_g_ScriptId, "Xác nh§n", 6, 1 )		-- 9 + i ÖÆ¶¨¿Í»§¶ËÌØ¶¨toÕ ğµ Í¼±ê (Ñ¡ÏîÍ¼±êÎªÊı×ÖÏî)
		AddNumText( sceneId, x806004_g_ScriptId, "Hüy bö", 8, 2 )		-- 9 + i ÖÆ¶¨¿Í»§¶ËÌØ¶¨toÕ ğµ Í¼±ê (Ñ¡ÏîÍ¼±êÎªÊı×ÖÏî)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x806004_OnAccept( sceneId, selfId )
	--ĞèÒª¶ş¼¶ÃÜÂë
	if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) == 1 then
		if LuaFnIsPasswordUnlocked( sceneId, selfId, 1 ) == 0 then
			return
		end
	end
	
	--(1)¿Û³ıÉêÇëÈËÉíÉÏ½ğÇ®200000
	--LuaFnCostMoney( sceneId, selfId, 200000 )
	LuaFnCostMoneyWithPriority(sceneId, selfId, 200000);	
	--(2)ºÃÓÑ¶ÈÉèÖÃ³ÉN=X£¨10£©£¬XÎªÄÜ¹»¿´µ½¶Ô·½ÔÚÏßµÄ×îµÍÖµ
	local SpouseGUID = LuaFnGetSpouseGUID( sceneId, selfId )
	LuaFnSetFriendPointByGUID( sceneId, selfId, SpouseGUID, 10 )

	--(3)É¾³ı³ÆºÅ
	LuaFnAwardSpouseTitle( sceneId, selfId, "" )
	DispatchAllTitle( sceneId, selfId )

	--(4)É¾³ı·òÆŞ¼¼ÄÜ
	local skillId
	for _, skillId in x806004_g_Repudiate["Skills"] do
		DelSkill( sceneId, selfId, skillId[1] )
	end
	
	NewSkill = { 250, 251, 252, 253, 254, 255, 256, 257, 258, 259 }
	for _, skillId in NewSkill do
		DelSkill( sceneId, selfId, skillId )
	end
	
	--É¾³ıĞÎÓ°²»Àë¼¼ÄÜ
	for _, skillId in { 269,270,271,272,273 } do
		DelSkill( sceneId, selfId, skillId )
	end
	
	local SpouseName	= LuaFnGetFriendName( sceneId, selfId, SpouseGUID )
	local selfName		= LuaFnGetName( sceneId, selfId )

	--·¢ÆÕÍ¨ÓÊ¼ş¸øÅäÅ¼Í¨ÖªÀë»é
	LuaFnSendSystemMail( sceneId, SpouseName, selfName .. " ğã ly hôn v¾i các hÕ, thôi ğành tùy vào duyên s¯ v§y..." )
	--LuaFnSendNormalMail( sceneId, selfId, SpouseName, selfName .. "ÒÑÑ¡ÔñÁËÓëÄãÇ¿ÖÆÀë»éÁË£¬°¦£¬ËæÔµ°É¡£ÓÉÓÚ»éÒöÆÆÁÑ£¬ÄãËùÑ§·òÆŞ¼¼ÄÜÒÑÈ«²¿Çå¿Õ¡£" )
	
	--É¾³ı¶ÔÓ¦½á»éÊ±µÄÈÎÎñ
	CallScriptFunction(250036, "OnAbandon", sceneId, selfId);
	CallScriptFunction(250037, "OnAbandon", sceneId, selfId);

	--·¢¿ÉÖ´ĞĞÓÊ¼ş¸øÅäÅ¼À´Ö´ĞĞÀë»é
	LuaFnSendScriptMail( sceneId, SpouseName, MAIL_REPUDIATE, LuaFnGetGUID( sceneId, selfId ), 0, 0 )

	LuaFnDivorce( sceneId, selfId )
end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x806004_MessageBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
