--°ï»áÏà¹ØUI 30£¬31,103

x600000_g_ScriptId = 600000;
x600000_g_Yinpiao = 40002000

function x600000_OnEnumerate( sceneId, selfId, targetId, sel )
	if( sel == 1 ) then
		GuildCreate(sceneId, selfId, targetId);
	elseif( sel == 2 ) then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ³ÇÊÐÈë¿Ú×é½çÃæ
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 103)
		--ÏÈÈÃ¿Í»§¶Ë¼ÇÂ¼NPCÐÅÏ¢ÔÙÏÔÊ¾´°¿Ú
		CityApply(sceneId, selfId)
		GuildList(sceneId, selfId, targetId);
	elseif( sel == 3 ) then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 30)
	elseif( sel == 4 ) then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 31)
	elseif( sel == 5 )then
		local ret = CheckPlayerCanApplyCity(sceneId, selfId);
		if ret==1 then 
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ³ÇÊÐÈë¿Ú×é½çÃæ
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 101)
			--ÏÈÈÃ¿Í»§¶Ë¼ÇÂ¼NPCÐÅÏ¢ÔÙÏÔÊ¾´°¿Ú
			CityApply(sceneId, selfId)
		elseif ret==-1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Bang hµi ðã có thành th¸!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	elseif( sel == 6 ) then
		--ÊÇ·ñÔÚäîÔË
		local haveImpact = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 113)
		if haveImpact == 1 then
				BeginEvent(sceneId)
					strText = "Xin l²i, các hÕ hi®n gi¶ · trong trÕng thái v§n chuy¬n."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end
		-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
		if GetItemCount(sceneId, selfId, x600000_g_Yinpiao)>=1  then
			BeginEvent( sceneId )
				AddText( sceneId, "Trên ngß¶i các hÕ có ngân phiªu, ðang chÕy tr¯n nþ! Ta không th¬ giúp các hÕ" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		
		CityMoveTo(sceneId, selfId)
	end
	
end
