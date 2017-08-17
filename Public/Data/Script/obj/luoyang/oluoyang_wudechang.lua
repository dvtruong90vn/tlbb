--¬Â—ÙNPC
--Ê‰’æ....

x000082_g_ScriptId	= 000082

--√≈≈…–≈œ¢(√≈≈…√˚≥∆£¨SceneID£¨PosX£¨PosY£¨√≈≈…ID)
x000082_g_mpInfo		= {}
x000082_g_mpInfo[0]	= { "Tinh T˙c", 16,  96, 152, MP_XINGSU }
x000082_g_mpInfo[1]	= { "TiÍu Dao", 14,  67, 145, MP_XIAOYAO }
x000082_g_mpInfo[2]	= { "Thi™u L‚m",  9,  96, 127, MP_SHAOLIN }
x000082_g_mpInfo[3]	= { "ThiÍn SΩn", 17,  95, 120, MP_TIANSHAN }
x000082_g_mpInfo[4]	= { "ThiÍn Long", 13,  96, 120, MP_DALI }
x000082_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x000082_g_mpInfo[6]	= { "Vı –ang", 12, 103, 140, MP_WUDANG }
x000082_g_mpInfo[7]	= { "Minh Gi·o", 11,  98, 167, MP_MINGJIAO }
x000082_g_mpInfo[8]	= { "C·i Bang", 10,  91, 116, MP_GAIBANG }
--x000082_g_mpInfo[9]	= { "Mµ Dung", 435,  91, 116, MP_MURONG }--‘§¡Ù

x000082_g_Yinpiao = 40002000 

x000082_g_Impact_NotTransportList = { 5929, 5944 } -- Ω˚÷π¥´ÀÕµƒImpact
x000082_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- Ω˚÷π¥´ÀÕµƒImpactÃ· æ–≈œ¢

--**********************************
-- ¬º˛Ωªª•»Îø⁄
--**********************************
function x000082_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- ºÏ≤‚ÕÊº“…Ì…œ «≤ª «”–°∞“¯∆±°±’‚∏ˆ∂´Œ˜£¨”–æÕ≤ªƒ‹ π”√’‚¿Ôµƒπ¶ƒ‹
	if GetItemCount(sceneId, selfId, x000082_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "NgﬂΩi trÍn ngﬂ∂i cÛ ng‚n phi™u, ta khÙng th¨ gi˙p gÏ ﬂ˛c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )

		AddText( sceneId, "#{loulan_yizhan_20080329}")
		 
		AddNumText( sceneId, x000082_g_ScriptId, "Quay v´ mÙn ph·i", 9, 1000 )
		AddNumText( sceneId, x002026_g_ScriptId, "Th‡nh th∏ - L‚u Lan", 9, 1001 )
		AddNumText( sceneId, x000082_g_ScriptId, "Th‡nh th∏ - TÙ Ch‚u", 9, 1003 )
		AddNumText( sceneId, x000082_g_ScriptId, "Th‡nh th∏ - TÙ Ch‚u Thi™t Tﬂ∂ng PhØ", 9, 1004 )
		AddNumText( sceneId, x000082_g_ScriptId, "Th‡nh th∏ - –’i L˝", 9, 1005 )
		AddNumText( sceneId, x000082_g_ScriptId, "Th‡nh th∏ - Th˙c H‡ C± Tr•n", 9, 1016 )
		AddNumText( sceneId, x000082_g_ScriptId, "Th‡nh th∏ - #GPhﬂ˛ng Minh Tr§n", 9, 1017 )
		 
		AddNumText( sceneId, x000082_g_ScriptId, "–i cÿu ’i mÙn ph·i", 9, 1011 )
		
		--for i, mp in x000082_g_mpInfo do
			--AddNumText( sceneId, x000082_g_ScriptId, "√≈≈… - "..mp[1], 9, i )
		--end

	
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
-- ¬º˛¡–±Ì—°÷–“ªœÓ
--**********************************
function x000082_OnEventRequest( sceneId, selfId, targetId, eventId )

	--‰Ó‘ÀΩ˚÷π¥´ÀÕ....
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x000082_MsgBox( sceneId, selfId, targetId, "Trong µi ng˚ cÛ ngﬂ∂i ang trong tr’ng th·i T‡o vßn ho£c ThﬂΩng nh‚n, khÙng th¨ d∏ch chuy¨n." )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x000082_MsgBox( sceneId, selfId, targetId, "NgﬂΩi ang trong tr’ng th·i T‡o vßn, khÙng th¨ truy´n tØng." )
		return
	end

	--ºÏ≤‚Impact◊¥Ã¨◊§¡Ù–ßπ˚
	for i, ImpactId in x000082_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x000082_MsgBox( sceneId, selfId, targetId, x000082_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end

	
	--∑µªÿ√≈≈…....
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--∑µªÿ√≈≈…
		if id < 0 or (id == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) <= 0) then --Add by SÛi
			x000082_MsgBox( sceneId, selfId, targetId, "NgﬂΩi vÁn chﬂa gia nhßp mÙn ph·i." )
		elseif id == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) > 0 then --Add by SÛi
			CallScriptFunction((400900),"TransferFunc",sceneId,selfId,435,91,116)
		else
			mp	= x000082_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end

	--¬•¿º....
	if arg == 1001 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 286, 129 )
		return
	end

	--¬Â—Ùæ≈÷›....
	if arg == 1002 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 325, 270 )
		return
	end

	--À’÷›....
	if arg == 1003 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 202,257 )
		return
	end

	--À’÷›Ã˙Ω≥....
	if arg == 1004 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 331, 226 )
		return
	end

	--¥Û¿Ì....
	if arg == 1005 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 252, 124 )
		return
	end

	--∑Ô√˘’Ú....
	if arg == 1017 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 158, 120 )
		return
	end

	if arg == 1011 then		
		BeginEvent( sceneId )
			for i, mp in x000082_g_mpInfo do
				AddNumText( sceneId, x000082_g_ScriptId, "MÙn ph·i - "..mp[1], 9, i )
			end
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	if arg == 1016 then		-- ¯∫”π≈’Ú
			-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x000082_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th˙c H‡ C± Tr•n l‡ nΩi khÙng tÂng s·t khÌ, ph‰i c¶n thßn. NgﬂΩi x·c nhßn ti™n v‡o ?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	--√≈≈…....
	for i, mp in x000082_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

end
--  add by zchw
function x000082_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--∏˘æ›√≈≈…IDªÒ»°√≈≈…–≈œ¢
--**********************************
function x000082_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x000082_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--∂‘ª∞¥∞ø⁄–≈œ¢Ã· æ
--**********************************
function x000082_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
