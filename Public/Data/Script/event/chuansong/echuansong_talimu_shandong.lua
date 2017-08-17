x400938_g_ScriptId = 400938

x400938_left 	=100.0000
x400938_right	=106.0000

x400938_top  	=211.0000
x400938_bottom	=217.0000

--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400938_OnEnterArea( sceneId, selfId,a,b )

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400938_g_ScriptId);
		UICommand_AddString(sceneId, "GotoTKLMG");
		UICommand_AddString(sceneId, "Tháp Kh¡c LÕp Mã là khu vñc không gia tång sát khí, các hÕ xác nh§n tiªn vào?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
		
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400938_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400938_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400938_OnLeaveArea( sceneId, selfId )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x400938_GotoTKLMG( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²éÍæ¼ÒÊÇ²»ÊÇ»¹ÔÚÕâ¸ö·¶Î§ÄÚ
	if sceneId ~= 425   then
		--C¥n · ðúng ði¬m truy«n t¯ng!
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400938_left or
			targetX > x400938_right or
			targetZ < x400938_top  or
			targetZ > x400938_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 427,38,24)
		
end
