--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400030_OnEnterArea( sceneId, selfId )
--	if	GetLevel( sceneId, selfId)<20 then
--		BeginEvent(sceneId)
--			strText = "C¥n ðÕt c¤p 20 tr· lên m¾i có th¬ ðªn n½i này!"
--			AddText(sceneId,strText);
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
--	else
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 7,277,168)
--	end
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400030_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400030_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400030_OnLeaveArea( sceneId, selfId )
end
