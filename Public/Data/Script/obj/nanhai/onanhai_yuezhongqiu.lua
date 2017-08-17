--ƒœ∫£NPC
--‘¿÷Ÿ«Ô
--∆’Õ®

--Ω≈±æ∫≈
x034003_g_ScriptId = 34003

--**********************************
-- ¬º˛Ωªª•»Îø⁄
--**********************************
function x034003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Th∂i trﬂæc, Ng’c ngﬂ bang c˚ng r§t tØt, chÔ cÛ h‡nh µng hΩi kiÍu cÂng m‡ thÙi, chﬂa t◊ng l‡m viÆc gÏ qu· x§u. Nhﬂng d•n d•n, ch∆ng bi™t t◊ ‚u, b˜n nhÛc Û b°t •u suØt ng‡y g‚y h˜a, l‡m sai cÚn khÙng ch∏u nhßn, Ùi... thßt l‡ nghiÆp chﬂæng...")
		
		-- »Áπ˚ÕÊº“…Ì…œ”–°∞≥§∞◊°™°™°™°™ÃÏ—ƒ∫£Ω«°±£¨’‚∏ˆ»ŒŒÒ£¨ø…“‘‘⁄’‚¿ÔªÒµ√µ¿æﬂ
		if IsHaveMission(sceneId,selfId,568) > 0 then
			-- ≈–∂®ÕÊº“…Ì…œ «≤ª «”–ŒÔ∆∑¡À 
			local itemCount
			itemCount = GetItemCount( sceneId, selfId, 40001039 )
			if itemCount < 1   then
				AddNumText(sceneId,x034003_g_ScriptId,"–ﬂ˛c mµt mi™ng vˆ c‚y giØng l’",7,666);
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
-- ¬º˛¡–±Ì—°÷–“ªœÓ
--**********************************
function x034003_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if	GetNumText()==666	then
		local itemCount
		itemCount = GetItemCount( sceneId, selfId, 40001039 )
		if itemCount < 1   then
			BeginAddItem( sceneId )
				AddItem( sceneId, 40001039, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then 
				--Ã· æ≤ªƒ‹Ω”»ŒŒÒ¡À
				Msg2Player(  sceneId, selfId,"#YH‡nh trang nhiÆm v¯#W c¸a c·c h’ „ •y.", MSG2PLAYER_PARA )
			else
				AddItemListToHuman(sceneId,selfId)
			end
		end
	end
end


