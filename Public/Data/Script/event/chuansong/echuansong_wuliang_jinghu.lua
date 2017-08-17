x400018_g_ScriptId = 400018

x400018_left 	=283.0000
x400018_right	=289.0000

x400018_top  	=74.0000
x400018_bottom	=83.0000


--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400018_OnEnterArea( sceneId, selfId )
	if	GetLevel( sceneId, selfId)<10 then
		BeginEvent(sceneId)
			strText = "Các hÕ chßa ðü c¤p 10, không th¬ tiªn vào."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
        BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400018_g_ScriptId);
		UICommand_AddString(sceneId, "GotoJinghu2");
		UICommand_AddString(sceneId, "Kính H° là khu vñc không tång sát khí, các hÕ xác ð¸nh tiªn vào?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 5,46,278, 10)
	end
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400018_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400018_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400018_OnLeaveArea( sceneId, selfId )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x400018_GotoJinghu2( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²éÍæ¼ÒÊÇ²»ÊÇ»¹ÔÚÕâ¸ö·¶Î§ÄÚ
	if sceneId ~= 6   then
		--Ngß½i không · khu vñc thích hþp!
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i không · khu vñc thích hþp!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400018_left or
			targetX > x400018_right or
			targetZ < x400018_top  or
			targetZ > x400018_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i không · khu vñc thích hþp!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 5,46,278, 10)
		
end
