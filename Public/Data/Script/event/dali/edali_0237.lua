--¡ÀΩ‚æ≈¥Û√≈≈…Ãÿ…´

--Ω≈±æ∫≈
x210237_g_ScriptId	= 210237

--√≈≈…–≈œ¢(√≈≈…√˚≥∆£¨Ãÿ…´√Ë ˆ£¨Ω”“˝»À◊¯±Í£¨Ω”“˝»À√˚≥∆£¨¥´ÀÕ◊¯±Í)
x210237_g_mpInfo		= {}
x210237_g_mpInfo[0]	= { "[ThiÍn Long]", "#{OBJ_dali_0045}", 288, 228, "Ph· Tham",    288, 228 }
x210237_g_mpInfo[1]	= { "[Nga My]", "#{OBJ_dali_0046}", 276, 235, "Lµ Tam NﬂΩng",  276, 235 }
x210237_g_mpInfo[2]	= { "[C·i Bang]", "#{OBJ_dali_0047}", 276, 232, "Gi‰n Ninh",    276, 232 }
x210237_g_mpInfo[3]	= { "[Minh Gi·o]", "#{OBJ_dali_0048}", 288, 238, "Th’ch B‰o",    288, 238 }
x210237_g_mpInfo[4]	= { "[Thi™u L‚m]", "#{OBJ_dali_0049}", 276, 229, "TuÆ D∏ch",    276, 229 }
x210237_g_mpInfo[5]	= { "[ThiÍn SΩn]", "#{OBJ_dali_0050}", 288, 235, "TrÏnh Thanh SﬂΩng",  288, 235 }
x210237_g_mpInfo[6]	= { "[Vı –ang]", "#{OBJ_dali_0051}", 276, 225, "TrﬂΩng Ho’ch",    276, 225 }
x210237_g_mpInfo[7]	= { "[TiÍu Dao]", "#{OBJ_dali_0052}", 288, 225, "–‡m Tÿ V˚",288, 225 }
x210237_g_mpInfo[8]	= { "[Tinh T˙c]", "#{OBJ_dali_0053}", 288, 232, "H‰i Phong Tÿ",  288, 232 }

--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x210237_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	mp
	local	i		= 0
	
	--¡ÀΩ‚√≈≈…Ãÿ…´
	if key == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "Cÿu ’i mÙn ph·i" )
			for i, mp in x210237_g_mpInfo do
				AddNumText( sceneId, x210237_g_ScriptId, mp[1], 11, i+1 )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--—°‘Ò∏˜√≈≈…
	elseif key >= 1 and key <= 9 then
		mp	= x210237_g_mpInfo[key-1]
		BeginEvent( sceneId )
			AddText( sceneId, mp[2] )
			AddNumText( sceneId, x210237_g_ScriptId, "–ﬂa ta i g£p ngﬂ∂i truy´n tØng", 9, -1*key )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--ÀÕŒ“»•º˚¥´ÀÕ»À
	elseif key >= -9 and key <= -1 then
		mp	= x210237_g_mpInfo[-1*key-1]
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, mp[3], mp[4], mp[5] )
		SetPos( sceneId, selfId, mp[6], mp[7] )
		
		--πÿ±’ΩÁ√Ê
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	--∆‰À˚
	else
		return
	end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x210237_OnEnumerate( sceneId, selfId, targetId )
	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		AddNumText( sceneId, x210237_g_ScriptId, "TÏm hi¨u £c trﬂng Cÿu ’i mÙn ph·i", 11, 100 )
	end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x210237_CheckAccept( sceneId, selfId )
	--–Ë“™10º∂≤≈ƒ‹Ω”
	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		return 1
	else
		return 0
	end
end

--**********************************
--Ω” ‹
--**********************************
function x210237_OnAccept( sceneId, selfId )
end

--**********************************
--∑≈∆˙
--**********************************
function x210237_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x210237_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x210237_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--Ã·Ωª
--**********************************
function x210237_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x210237_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x210237_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x210237_OnItemChanged( sceneId, selfId, itemdataId )
end
