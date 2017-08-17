--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400939_OnEnterArea( sceneId, selfId )
	BeginEvent(sceneId)
		AddText(sceneId,"Cänh này chßa ðßþc m·!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400939_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400939_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400939_OnLeaveArea( sceneId, selfId )
end
