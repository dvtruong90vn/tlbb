--¡ÀΩ‚æ≈¥Û√≈≈…Ãÿ…´

--Ω≈±æ∫≈
x800115_g_ScriptId	= 800115



--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x800115_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	mp
	local	i		= 0
	
    if key == 1 then
	    --PrintStr( " =1 ")
	   local Level = GetLevel( sceneId, selfId )
	   local Energy = GetHumanEnergy( sceneId, selfId )
	   
	   if( Level < 20 ) then
            BeginEvent( sceneId )
		        AddText(sceneId,"C§p µ c¸a ngﬂΩi khÙng ¸ c§p 20, khÙng th¨ quy™t §u.")
				AddNumText( sceneId, x800115_g_ScriptId, "Ta bi™t r∞i...", -1, 2 )
			
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )	
        elseif Energy < 100 then
            BeginEvent( sceneId )
		        AddText(sceneId,"Tinh lÒc c¸a ngﬂΩi khÙng ¸ 100, khÙng th¨ quy™t §u.")
				AddNumText( sceneId, x800115_g_ScriptId, "Ta bi™t r∞i...", -1, 2 )
			
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )	
        else
        	OpenDuelDataInputWnd( sceneId, selfId, targetId, 123 )
        end
        

	elseif  key == 2 then
	    --PrintStr( " =2 ")
		--πÿ±’ΩÁ√Ê
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
			    
	else
		return
	end
	
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x800115_OnEnumerate( sceneId, selfId, targetId )
	--if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		--AddNumText( sceneId, x800115_g_ScriptId, "Œ““™Ã·≥ˆæˆ∂∑", -1, 100 )
	--end
	
	--local Level = GetLevel( sceneId, selfId )
	--if( Level >= 20 ) then
                BeginEvent( sceneId )
		AddText(sceneId,"Giang h∞ hi¨m ·c vÙ c˘ng! N™u nhﬂ c·c h’ l‡ ngﬂ∂i tÿ t™, c·c h’ cÛ th¨ lÒa ch˜n phﬂΩng th—c chi™n §u mµt c·ch quang minh chÌnh ’i. Sau khi Øi phﬂΩng ∞ng ˝ quy™t §u s® ™n lÙi ‡i. T’i lÙi ‡i, n™u tÿ vong c˚ng s® b∏ tr◊ng ph’t!")
		AddNumText( sceneId, x800115_g_ScriptId, "Ta muØn quy™t §u", 6, 1 )
		AddNumText( sceneId, x800115_g_ScriptId, "Ta c•n suy nghÓ thÍm...", 8, 2 )
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	--else
          --      BeginEvent( sceneId )
	--	AddText(sceneId,"  ƒ˙µƒµ»º∂≤ª◊„20º∂£¨Œﬁ∑®Ã·≥ˆæˆ∂∑“™«Û")
	--	AddNumText( sceneId, x800115_g_ScriptId, "Ta bi™t r∞i...", -1, 2 )
			
	--	EndEvent( sceneId )
	--	DispatchEventList( sceneId, selfId, targetId )	
	--end
	
	
		
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x800115_CheckAccept( sceneId, selfId )
	--–Ë“™10º∂≤≈ƒ‹Ω”
	--if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
	--	return 1
	--else
	--	return 0
	--end
end

--**********************************
--Ω” ‹
--**********************************
function x800115_OnAccept( sceneId, selfId )
end

--**********************************
--∑≈∆˙
--**********************************
function x800115_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x800115_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x800115_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--Ã·Ωª
--**********************************
function x800115_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x800115_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x800115_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x800115_OnItemChanged( sceneId, selfId, itemdataId )
end
