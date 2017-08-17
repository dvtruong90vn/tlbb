--ÂåÑôNPC
--ÔÆÃìÃì
--ÆÕÍ¨

x000101_g_scriptId = 000101

x000101_g_shoptableindex=17

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000101_g_eventList={800107,311112}  --del 311112  ÕäÊÞ¼¼ÄÜÉý¼¶

x000101_g_miscEventId = 311111;

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000101_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_luoyang_0026}")
		
		AddNumText( sceneId, x000101_g_scriptId, "Gi¾i thi®u liên quan v« trân thú", 11, 10 )
		
		AddNumText(sceneId,x000101_g_scriptId,"Mua ð° dùng cho trân thú",7,0)
		AddNumText(sceneId,x000101_g_scriptId,"Luy®n kÛ nång trân thú",6,1)
		AddNumText(sceneId,x000101_g_scriptId,"Trân Thú hoàn ð°ng",6,2)
		AddNumText(sceneId,x000101_g_scriptId,"Kéo dài trß¶ng th÷",6,3)
		AddNumText(sceneId,x000101_g_scriptId,"Thu¥n dßÞng trân thú",6,4)
		--AddNumText(sceneId,x000101_g_scriptId,"·¢²¼Õ÷ÓÑÐÅÏ¢",6,5)
		--AddNumText(sceneId,x000101_g_scriptId,"Õ÷ÓÑ",6,6)
		--AddNumText(sceneId,x000101_g_scriptId,"²éÑ¯·±Ö³µÄÕäÊÞ",6,7)
		for i, eventId in x000101_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000101_OnEventRequest( sceneId, selfId, targetId, eventId )
   
---------------------------½éÉÜ-------------------------------------------------
	if eventId == x000101_g_scriptId then
		if GetNumText() == 10 then
			BeginEvent(sceneId)	
				AddText(sceneId,"#{function_help_056}#r")
				
				AddNumText(sceneId, x000101_g_scriptId,"Gi¾i thi®u trân thú sinh sän",11,11);
				AddNumText(sceneId, x000101_g_scriptId,"Gi¾i thi®u kÛ nång h÷c t§p cüa trân thú",11,12);			
				AddNumText(sceneId, x000101_g_scriptId,"Gi¾i thi®u thång c¤p kÛ nång trân thú",11,13);
					
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	
		if GetNumText() == 11 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_057}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 12 then
			BeginEvent(sceneId)						
					AddText(sceneId,"#{function_help_058}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 13 then
			BeginEvent(sceneId)						
					AddText(sceneId,"#{JNHC_81015_01}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
---------------------------½éÉÜ-------------------------------------------------		
		if	GetNumText() == 0	then
			DispatchShopItem( sceneId, selfId,targetId, x000101_g_shoptableindex )
		elseif GetNumText() <= 6 then
			local sel = GetNumText();
			CallScriptFunction( x000101_g_miscEventId, "OnEnumerate",sceneId, selfId, targetId, sel)
		elseif GetNumText() == 7 then
			LuaFnGetPetProcreateInfo(sceneId, selfId);
		end
	else
		for i, findId in x000101_g_eventList do
			if findId == eventId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId)
			end
		end
	end
end
