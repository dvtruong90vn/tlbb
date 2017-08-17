--åÐÒ£NPC
--¿µ¹ãÁê
--ÆÕÍ¨

x014001_g_scriptId = 014001

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x014001_OnDefaultEvent( sceneId, selfId,targetId )
	x014001_g_MenPai = GetMenPai(sceneId, selfId)
	if x014001_g_MenPai == 8 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{TYJZ_081103_02}")
			AddNumText(sceneId, x014001_g_scriptId, "KÛ nång h÷c t§p",12,0)
			AddNumText(sceneId, x014001_g_scriptId, "Gi¾i thi®u v« tâm pháp",11,10)
			--AddNumText(sceneId, x014001_g_scriptId, "#{JZBZ_081031_02}",11,11)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
			BeginEvent(sceneId)
			AddText(sceneId,"Ta là Khang Quäng Lång, ngß½i có vi®c gì v§y?")
			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x014001_OnEventRequest( sceneId, selfId, targetId, eventId )

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
	
	DispatchXinfaLevelInfo( sceneId, selfId, targetId, 8 );
end
