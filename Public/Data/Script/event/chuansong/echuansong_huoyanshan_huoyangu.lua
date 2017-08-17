x400932_g_ScriptId = 400932

x400932_left 	=25.0000
x400932_right	=31.0000

x400932_top =100.0000
x400932_bottom	=106.0000

--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400932_OnEnterArea( sceneId, selfId,a,b )

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400932_g_ScriptId);
		UICommand_AddString(sceneId, "GotoHuoyangu");
		UICommand_AddString(sceneId, "Höa Di®m C¯c là khu vñc không tång sát khí, các hÕ xác nh§n tiªn vào?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 519,71,29)
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400932_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400932_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400932_OnLeaveArea( sceneId, selfId )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x400932_GotoHuoyangu( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²éÍæ¼ÒÊÇ²»ÊÇ»¹ÔÚÕâ¸ö·¶Î§ÄÚ
	if sceneId ~= 423   then
		--C¥n · ðúng ði¬m truy«n t¯ng!
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400932_left or
			targetX > x400932_right or
			targetZ < x400932_top  or
			targetZ > x400932_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 519,71,29)
		
end
