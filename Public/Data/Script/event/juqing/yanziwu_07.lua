-- 200017
-- ¥¥Ω®≥ˆ¿¥to’ µ  ¿Ó—”◊⁄ …Ì…œto’ µ Ω≈±æ

x200017_g_ScriptId = 200017
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x200017_OnDefaultEvent( sceneId, selfId, targetId )
	if LuaFnGetCopySceneData_Param(sceneId, 15) == 1  then
		BeginEvent(sceneId)
			AddText( sceneId, "  –ﬂ˛c, n™u VﬂΩng cÙ nﬂΩng khÙng ‚n hßn, ta s® tha cho c·c ngﬂΩi 1 con ﬂ∂ng sØng. ó ‚y ta cÛ thuØc gi‰i Bi TÙ Thanh Phong, mau c•m i, n™u khÙng ta thay ±i ch¸ ˝" )
			if IsHaveMission( sceneId, selfId, 15 ) > 0 then
					AddNumText( sceneId, x200017_g_ScriptId, "–„ o’t ﬂ˛c thuØc gi‰i µc Bi TÙ Thanh Phong", 6 ,-1  )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

function x200017_OnEventRequest( sceneId, selfId, targetId )

	--≈–∂œÕÊº“–˙ng≤ª–˙ng”–C·i n‡y »ŒŒÒ,
	if IsHaveMission( sceneId, selfId, 15 ) > 0 then
		--ø¥ÕÊº“…Ì…œ”–C·i n‡y ŒÔ∆∑¡À√ª”–
		if GetItemCount(sceneId, selfId, 40001005) < 1  then
			-- ∏¯ÕÊº“ŒÔ∆∑
	  	BeginAddItem(sceneId)
				AddItem( sceneId, 40001005, 1 )
			local ret = EndAddItem(sceneId,selfId)
			if ret < 1  then
				BeginEvent(sceneId)
					AddText( sceneId, "Tay n‰i c¸a c·c h’ „ •y", 0 )
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			else
				AddItemListToHuman(sceneId,selfId)
				BeginEvent(sceneId)
					AddText( sceneId, "Huynh „ o’t ﬂ˛c thuØc gi‰i µc Bi TÙ Thanh Phong", 0 )
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
		else
			BeginEvent(sceneId)
				AddText( sceneId, "TrÍn ngﬂ∂i huynh „ cÛ thuØc gi‰i µc Bi TÙ Thanh Phong", 0 )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
	
	-- πÿ±’∂‘ª∞ø
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
	
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x200017_OnEnumerate( sceneId, selfId, targetId )

end

--**********************************
--ºÏ≤‚Ti™p th¯Ãıº˛
--**********************************
function x200017_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ti™p th¯
--**********************************
function x200017_OnAccept( sceneId, selfId, targetId )

end

--**********************************
--∑≈∆˙
--**********************************
function x200017_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x200017_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚–˙ng∑Òø…“‘Ã·Ωª
--**********************************
function x200017_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ã·Ωª
--**********************************
function x200017_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x200017_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x200017_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x200017_OnItemChanged( sceneId, selfId, itemdataId )
end
