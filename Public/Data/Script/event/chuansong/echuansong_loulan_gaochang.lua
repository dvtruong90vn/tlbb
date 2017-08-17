--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x400942_g_Transport = 400900

--Íæ¼Ò½øÈëÒ»¸ö area Ê±´¥·¢
function x400942_OnEnterArea( sceneId, selfId )
        if GetLevel( sceneId, selfId ) < 90 then 
		BeginEvent( sceneId )
			AddText( sceneId, "N½i này vô cùng nguy hi¬m, sau khi ğÕt c¤p 90 tr· lên m¾i có th¬ ğªn n½i này! Ngß½i hãy ği tu luy®n thêm ği..." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
	else 
		CallScriptFunction((x400942_g_Transport), "TransferFunc",sceneId, selfId, 424, 27, 37, 90, 1000)
	end
	
end

--Íæ¼ÒÔÚÒ»¸ö area ´ôÁËÒ»¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x400942_OnTimer( sceneId, selfId )
	-- ºÁÃë£¬¿´ÔÚÕâ¸ö area Í£Áô¶à¾ÃÁË
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400942_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--Íæ¼ÒÀë¿ªÒ»¸ö area Ê±´¥·¢
function x400942_OnLeaveArea( sceneId, selfId )
end
