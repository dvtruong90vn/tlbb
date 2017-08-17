
x400121_g_ScriptId = 400121


x400121_left 	=138.0000
x400121_right	=141.0000

x400121_top  	=259.0000
x400121_bottom=262.0000

--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400121_OnEnterArea( sceneId, selfId,a,b )

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400121_g_ScriptId);
		UICommand_AddString(sceneId, "GotoGumu");
		UICommand_AddString(sceneId, "Yªn Vß½ng C± Mµ là khu vñc không tång sát khí, các hÕ xác nh§n tiªn vào?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
	--CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 159,68,95)
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400121_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400121_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400121_OnLeaveArea( sceneId, selfId )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x400121_GotoGumu( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²éÍæ¼ÒÊÇ²»ÊÇ»¹ÔÚÕâ¸ö·¶Î§ÄÚ
	if sceneId ~= 19   then
		--C¥n · ðúng ði¬m truy«n t¯ng!
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400121_left or
			targetX > x400121_right or
			targetZ < x400121_top  or
			targetZ > x400121_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 159,68,95,21)
		
end
