x400933_g_ScriptId = 400933

x400933_left 	=69.0000
x400933_right	=76.0000

x400933_top  	=141.0000
x400933_bottom	=148.0000


--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400933_OnEnterArea( sceneId, selfId,a,b )

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400933_g_ScriptId);
		UICommand_AddString(sceneId, "GotoGaochangmigong");
		UICommand_AddString(sceneId, "Cao Xß½ng Mê Cung là khu vñc không tång sát khí, các hÕ xác nh§n tiªn vào?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 520,100,99)
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400933_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400933_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400933_OnLeaveArea( sceneId, selfId )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x400933_GotoGaochangmigong( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²éÍæ¼ÒÊÇ²»ÊÇ»¹ÔÚÕâ¸ö·¶Î§ÄÚ
	if sceneId ~= 424   then
		--C¥n · ðúng ði¬m truy«n t¯ng!
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400933_left or
			targetX > x400933_right or
			targetZ < x400933_top  or
			targetZ > x400933_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"C¥n · ðúng ði¬m truy«n t¯ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 520,100,99)
		
end
