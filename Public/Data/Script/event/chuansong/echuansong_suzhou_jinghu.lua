x400003_g_ScriptId = 400003

x400003_left 	=65.0000
x400003_right	=67.0000

x400003_top  	=266.0000
x400003_bottom	=272.0000


--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400003_OnEnterArea( sceneId, selfId )

        BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400003_g_ScriptId);
		UICommand_AddString(sceneId, "GotoJinghu");
		UICommand_AddString(sceneId, "Kính H° là khu vñc không tång sát khí, các hÕ xác nh§n tiªn vào?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)

	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 5,277,46)
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400003_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400003_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400003_OnLeaveArea( sceneId, selfId )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x400003_GotoJinghu( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²éÍæ¼ÒÊÇ²»ÊÇ»¹ÔÚÕâ¸ö·¶Î§ÄÚ
	if sceneId ~= 1   then
		--C¥n · ðúng ði¬m truy«n t¯ng!
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i không · khu vñc thích hþp!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400003_left or
			targetX > x400003_right or
			targetZ < x400003_top  or
			targetZ > x400003_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i không · khu vñc thích hþp!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 5,277,46)
		
end
