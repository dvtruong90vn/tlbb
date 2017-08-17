--ÌìÁúNPC
--±¾¹Û
--ÆÕÍ¨

x013003_g_scriptId = 013003

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x013003_OnDefaultEvent( sceneId, selfId,targetId )
	x013003_g_MenPai = GetMenPai(sceneId, selfId)
	if x013003_g_MenPai == 6 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{TYJZ_081103_02}")
			AddNumText(sceneId, x013003_g_scriptId, "KÛ nång h÷c t§p",12,0)
			AddNumText(sceneId, x013003_g_scriptId, "Gi¾i thi®u v« tâm pháp",11,10)
			--AddNumText(sceneId, x013003_g_scriptId, "#{JZBZ_081031_02}",11,11)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
			BeginEvent(sceneId)
			
			AddText(sceneId,"Lão nÕp Bän Quan, thí chü tìm b¥n tång có vi®c gì?")
			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x013003_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_xinfajieshao_001}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	elseif GetNumText() == 11 then
		BeginEvent(sceneId)					
			AddText( sceneId, "#{JZBZ_081031_01}" )							
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	DispatchXinfaLevelInfo( sceneId, selfId, targetId, 6 );
end
