x400926_g_ScriptId = 400926

x400926_left 	=91.0000
x400926_right	=95.0000

x400926_top  	=42.0000
x400926_bottom	=46.0000


--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400926_OnEnterArea( sceneId, selfId )

BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400926_g_ScriptId);
		UICommand_AddString(sceneId, "GotoYexihu");
		UICommand_AddString(sceneId, "DÕ Tây H° là khu vñc không tång sát khí, các hÕ xác nh§n tiªn vào?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 121,84,48)
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400926_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400926_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400926_OnLeaveArea( sceneId, selfId )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x400926_GotoYexihu( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²éÍæ¼ÒÊÇ²»ÊÇ»¹ÔÚÕâ¸ö·¶Î§ÄÚ
	if sceneId ~= 30   then
		--C¥n · ðúng ði¬m truy«n t¯ng!
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400926_left or
			targetX > x400926_right or
			targetZ < x400926_top  or
			targetZ > x400926_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 121,84,48)
		
end
