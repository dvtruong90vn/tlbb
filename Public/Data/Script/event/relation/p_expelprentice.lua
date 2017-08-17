--÷≥ˆ ¶√≈»ŒŒÒ

--Ω≈±æ∫≈
x806009_g_ScriptId	= 806009

--÷≥ˆ ¶√«
x806009_g_ExpelPrentice					= {}
x806009_g_ExpelPrentice["Id"]		= 1006
x806009_g_ExpelPrentice["Name"]	= "Khai tr◊ ∞ Æ"

--Ã· æ–≈œ¢
x806009_g_msg				=
{
	["gld"]= "  –∞ Æ muØn ra khˆi sﬂ mÙn c•n ph‰i nµp #{_EXCHG%d}.",
	["con"]= "  Khai tr◊ ∞ Æ s® b∏ tr◊ #{_EXCHG%d}, cÛ thßt c·c h’ muØn khai tr◊ ngﬂ∂i ∞ Æ: %s",
}

--ø™≥˝ÕΩµ‹£¨ø€≥˝Ω«Æ
x806009_g_Gold			= 25000

--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x806009_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local guid
	local PrenticeName
	local	log	= 0
	local	str

	if key == -1 then
		BeginEvent( sceneId )
		for i=0, 7 do
			guid = LuaFnGetPrenticeGUID( sceneId, selfId, i )
			if guid ~= -1 then
				log	= 1
				PrenticeName	= LuaFnGetFriendName( sceneId, selfId, guid )
				AddNumText( sceneId, x806009_g_ScriptId, ""..PrenticeName.." s® b∏ khai tr◊ ra khˆi sﬂ mÙn!", 6, i )
			end
		end

		if log == 0 then
			AddText( sceneId, "NgﬂΩi khÙng cÛ ∞ Æ" )
		end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if key >= 0 and key <=7 then
		guid	= LuaFnGetPrenticeGUID( sceneId, selfId, key )
		if guid ~= -1 then
			PrenticeName	= LuaFnGetFriendName( sceneId, selfId, guid )
		end
		str	= format( x806009_g_msg["con"], x806009_g_Gold, PrenticeName )
		BeginEvent( sceneId )
			AddText( sceneId, str )
			AddNumText( sceneId, x806009_g_ScriptId, "X·c nhßn", 6, (key+1)*100 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

	if key >= 100 then
		if x806009_CheckAccept( sceneId, selfId, targetId ) > 0 then
			x806009_OnAccept( sceneId, selfId, targetId, floor(key/100)-1 )
		end
	end

end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x806009_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806009_g_ScriptId, x806009_g_ExpelPrentice["Name"], 6, -1 )
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x806009_CheckAccept( sceneId, selfId, targetId )
	--ºÏ≤È ¶∏µ…Ì…œΩ«Æ
	--if LuaFnGetMoney( sceneId, selfId ) < x806009_g_Gold then
	--hzp 2008-12-9
	local nMoneyJZ = GetMoneyJZ(sceneId, selfId);
	local nMoneyJB = LuaFnGetMoney(sceneId, selfId);
	local nMoneySelf = nMoneyJZ + nMoneyJB;
	if nMoneySelf < x806009_g_Gold then
		str	= format( x806009_g_msg["gld"], x806009_g_Gold )
		x806009_MsgBox( sceneId, selfId, targetId, str )
		return 0
	end

	return 1
end

--**********************************
--Ω” ‹
--**********************************
function x806009_OnAccept( sceneId, selfId, targetId, nIndex )
	
	-- [ QUFEI 2007-08-16 16:53 UPDATE BugID 23624 ]
	local PrenticeGUID = LuaFnGetPrenticeGUID( sceneId, selfId, nIndex )
	if PrenticeGUID == -1 then
		BeginEvent( sceneId )
		AddText( sceneId, "NgﬂΩi khÙng cÛ ∞ Æ" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		
	local PrenticeName	= LuaFnGetFriendName( sceneId, selfId, PrenticeGUID )
	local selfName	= LuaFnGetName( sceneId, selfId )

	--ø€≥˝…Ì…œΩ«Æ
	--LuaFnCostMoney( sceneId, selfId, x806009_g_Gold )
	--str	= format( "Ω‚≥˝ ¶ÕΩπÿœµ£¨ø€≥˝#{_MONEY%d}°£", x806009_g_Gold )
	--Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	
	--hzp 2008-12-9
	local nMoneyJZ, nMoneyJB = LuaFnCostMoneyWithPriority( sceneId, selfId, x806009_g_Gold )
	--»Áπ˚÷ªø€≥˝Ω±“
	if nMoneyJZ == 0 then
		str	= format( "Bˆ quan hÆ sﬂ-∞ b∏ ph’t #{_MONEY%d}.", x806009_g_Gold )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	--»Áπ˚÷ªø€≥˝Ωª◊”
	if nMoneyJB == 0 then
		str	= format( "Bˆ quan hÆ sﬂ-∞ b∏ ph’t #{_EXCHG%d}.", x806009_g_Gold )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	--»Áπ˚º»”–Ωª◊””÷”–Ω±“
	if nMoneyJB ~= 0 and nMoneyJZ ~= 0 then
		str	= format( "Bˆ quan hÆ sﬂ-∞ b∏ ph’t #{_EXCHG%d}: #{_MONEY%d}.", nMoneyJZ, nMoneyJB )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	x806009_MsgBox( sceneId, selfId, targetId, "–∞ Æ "..PrenticeName.." b∏ khai tr◊ ra khˆi sﬂ mÙn!" )

	--∑¢∆’Õ®” º˛∏¯ÕΩµ‹
	LuaFnSendSystemMail( sceneId, PrenticeName, "Sﬂ ph¯ c¸a ngﬂΩi, " .. selfName .. " „ khai tr◊ ngﬂΩi ra khˆi sﬂ mÙn r∞i!" )
	--LuaFnSendNormalMail( sceneId, selfId, PrenticeName, "ƒ„µƒ ¶∏∏" .. selfName .. "Œﬁ“‚”⁄ºÃ–¯ΩÃµºƒ„£¨“—”Îƒ„Õ—¿Î¡À ¶ÕΩπÿœµ°£" )
	--∑¢ø…÷¥––” º˛∏¯ÕΩµ‹
	LuaFnSendScriptMail( sceneId, PrenticeName, MAIL_EXPELPRENTICE, 0, 0, 0 )

	--◊Ó÷’«Â¿Ì√≈ªß
	LuaFnExpelPrentice( sceneId, selfId, PrenticeGUID )
end

--**********************************
--∂‘ª∞¥∞ø⁄–≈œ¢Ã· æ
--**********************************
function x806009_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
