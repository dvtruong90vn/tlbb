--À’÷›NPC
--Ê‰’æ....

x001028_g_ScriptId	= 001028

--√≈≈…–≈œ¢(√≈≈…√˚≥∆£¨SceneID£¨PosX£¨PosY£¨√≈≈…ID)
x001028_g_mpInfo		= {}
x001028_g_mpInfo[0]	= { "Tinh T˙c", 16,  96, 152, MP_XINGSU }
x001028_g_mpInfo[1]	= { "TiÍu Dao", 14,  67, 145, MP_XIAOYAO }
x001028_g_mpInfo[2]	= { "Thi™u L‚m",  9,  96, 127, MP_SHAOLIN }
x001028_g_mpInfo[3]	= { "ThiÍn SΩn", 17,  95, 120, MP_TIANSHAN }
x001028_g_mpInfo[4]	= { "ThiÍn Long", 13,  96, 120, MP_DALI }
x001028_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x001028_g_mpInfo[6]	= { "Vı –ang", 12, 103, 140, MP_WUDANG }
x001028_g_mpInfo[7]	= { "Minh Gi·o", 11,  98, 167, MP_MINGJIAO }
x001028_g_mpInfo[8]	= { "C·i Bang", 10,  91, 116, MP_GAIBANG }
--x001028_g_mpInfo[9]	= { "Mµ Dung", 435,  91, 116, MP_MURONG }--‘§¡Ù

x001028_g_Yinpiao = 40002000 

x001028_g_Impact_NotTransportList = { 5929, 5944 } -- Ω˚÷π¥´ÀÕµƒImpact
x001028_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- Ω˚÷π¥´ÀÕµƒImpactÃ· æ–≈œ¢

--**********************************
-- ¬º˛Ωªª•»Îø⁄
--**********************************
function x001028_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- ºÏ≤‚ÕÊº“…Ì…œ «≤ª «”–°∞“¯∆±°±’‚∏ˆ∂´Œ˜£¨”–æÕ≤ªƒ‹ π”√’‚¿Ôµƒπ¶ƒ‹
	if GetItemCount(sceneId, selfId, x001028_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Xin th— l≤i trÍn ngﬂ∂i c·c h’ ang giÊ ng‚n phi™u ta khÙng th¨ gi˙p ﬂ˛c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )

		AddText( sceneId, "#{loulan_yizhan_20080329}")
		 
		AddNumText( sceneId, x001028_g_ScriptId, "Quay v´ mÙn ph·i", 9, 1000 )
		AddNumText( sceneId, x001028_g_ScriptId, "Th‡nh Th∏ - L’c DﬂΩng", 9, 1001 )
		AddNumText( sceneId, x001028_g_ScriptId, "Th‡nh Th∏ - L’c DﬂΩng Cÿu Ch‚u ThﬂΩng Hµi", 9, 1002 )
		AddNumText( sceneId, x001028_g_ScriptId, "Th‡nh Th∏ - –’i L˝", 9, 1003 )
		AddNumText( sceneId, x001028_g_ScriptId, "Th‡nh Th∏ - L‚u Lan", 9, 1005 )
		AddNumText( sceneId, x001028_g_ScriptId, "Th‡nh Th∏ - Th˙c H‡ C± Tr§n", 9, 1016 )
		AddNumText( sceneId, x001028_g_ScriptId, "Th‡nh Th∏ - #GPhﬂ˛ng Minh Tr§n", 9, 1017 )
		 
		AddNumText( sceneId, x001028_g_ScriptId, "–i cÿu ’i mÙn ph·i", 9, 1011 )
		
		--for i, mp in x001028_g_mpInfo do
			--AddNumText( sceneId, x001028_g_ScriptId, "√≈≈… - "..mp[1], 9, i )
		--end

	
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
-- ¬º˛¡–±Ì—°÷–“ªœÓ
--**********************************
function x001028_OnEventRequest( sceneId, selfId, targetId, eventId )

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
				x001028_MsgBox( sceneId, selfId, targetId, "Trong µi ng˚ c¸a c·c h’ cÛ ngﬂ∂i ang l‡m nhiÆm v¯ vßn chuy¨n, thﬂΩng nh‚n ta khÙng th¨ cung c§p d∏ch v¯ cho c·c h’ ﬂ˛c." )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x001028_MsgBox( sceneId, selfId, targetId, "Xin th— l≤i! C·c h’ ang mang trong mÏnh nhiÆm v¯ vßn chuy¨n, thﬂΩng nh‚n ta khÙng th¨ cung c§p d∏ch v¯ cho c·c h’." )
		return
	end

	--ºÏ≤‚Impact◊¥Ã¨◊§¡Ù–ßπ˚
	for i, ImpactId in x001028_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x001028_MsgBox( sceneId, selfId, targetId, x001028_g_TalkInfo_NotTransportList[i] )			
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
			x001028_MsgBox( sceneId, selfId, targetId, "NgﬂΩi vÁn chﬂa gia nhßp mÙn ph·i." )
		elseif id == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) > 0 then --Add by SÛi
			CallScriptFunction((400900),"TransferFunc",sceneId,selfId,435,91,116)
		else
			mp	= x001028_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end

	--L’c DﬂΩng....
	if arg == 1001 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 233, 321 )
		return
	end

	--L’c DﬂΩngæ≈÷›....
	if arg == 1002 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 325, 270 )
		return
	end

	--¥Û¿Ì....
	if arg == 1003 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 252, 124 )
		return
	end

	--À’÷›Ã˙Ω≥....
	if arg == 1004 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 331, 226 )
		return
	end

	--¬•¿º....
	if arg == 1005 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 286, 129 )
		return
	end

	--∑Ô√˘’Ú....
	if arg == 1017 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 158, 120 )
		return
	end

	if arg == 1011 then		
		BeginEvent( sceneId )
			for i, mp in x001028_g_mpInfo do
				AddNumText( sceneId, x001028_g_ScriptId, "MÙn ph·i - "..mp[1], 9, i )
			end
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	if arg == 1016 then		-- ¯∫”π≈’Ú
			-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x001028_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th˙c H‡ C± Tr§n l‡ nΩi khÙng tÂng s·t khÌ, ph‰i c¶n thßn. C·c h’ x·c nhßn ti™n v‡o?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	--√≈≈…....
	for i, mp in x001028_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

end
--  add by zchw
function x001028_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--∏˘æ›√≈≈…IDªÒ»°√≈≈…–≈œ¢
--**********************************
function x001028_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x001028_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--∂‘ª∞¥∞ø⁄–≈œ¢Ã· æ
--**********************************
function x001028_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
