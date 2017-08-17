-- 402247
-- Tháp liên n² 

--½Å±¾ºÅ
x402247_g_scriptId = 402247

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x402247_g_eventList={}

-- Ä¾²ÄID  (ÔÝÊ±ÓÃ±ðtoÕ ðµ ÎïÆ·´úÌæ)
x402247_g_Item = 40004430


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402247_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		--AddText(sceneId, "  Ta là Á¬åóËþ,Çð¹û²»¸øÎÒËµ»°¡£")		    				

		if LuaFnGetCopySceneData_Param(sceneId, 8) >= 10  then
		
			local szName = GetName(sceneId, targetId)
			if szName == "Tháp liên n²"  then
				AddText(sceneId, "  Tháp ðã ðßþc tu sØa")
				local nCount = LuaFnGetCopySceneData_Param(sceneId, 9)
				if nCount < 5  then
					local str = "c¥n ít nh¤t " .. 5-nCount .. " g² ð¬ tu sæa Tháp liên n²"
					AddNumText( sceneId, x402247_g_scriptId, str, 10 ,1 )
				end
				
			elseif szName == "Tháp liên n²"  then
				AddText(sceneId, "  Tháp ðã ðßþc tu sØa")
				local nCount = LuaFnGetCopySceneData_Param(sceneId, 10)
				if nCount < 5  then
					local str = "c¥n ít nh¤t " .. 5-nCount .. " g² ð¬ tu sæa Tháp liên n²"
					AddNumText( sceneId, x402247_g_scriptId, str, 10 ,2 )
				end
				
			elseif szName == "Tháp Tr¸ Li®u"  then
				AddText(sceneId, "  Tu sØa tháp")
				local nCount = LuaFnGetCopySceneData_Param(sceneId, 11)
				if nCount < 10  then
					local str = "c¥n ít nh¤t " .. 10-nCount .. " g² ð¬ tu sæa Tháp Tr¸ Li®u"
					AddNumText( sceneId, x402247_g_scriptId, str, 10 ,3 )
				end
				
			elseif szName == "Tháp Phòng Ngñ"  then
				AddText(sceneId, "  Tu sØa tháp")
				local nCount = LuaFnGetCopySceneData_Param(sceneId, 12)
				if nCount < 5  then
					local str = "c¥n ít nh¤t " .. 5-nCount .. " g² ð¬ tu sæa Tháp Phòng Ngñ"
					AddNumText( sceneId, x402247_g_scriptId, str, 10 ,4 )
				end
				
			end
		end
	
		for i, eventId in x402247_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402247_OnDefaultEvent( sceneId, selfId,targetId )
	x402247_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x402247_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	local nNumText = GetNumText()
	if nNumText == 1  then
		local nCount = LuaFnGetCopySceneData_Param(sceneId, 9)
		nCount = 5 - nCount
		-- ±³°üÖÐ¿ÉÒÔÉ¾³ýtoÕ ðµ ¡°Ä¾²Ä¡±toÕ ðµ ×ÜÊý
		local nItemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x402247_g_Item) 
		if nItemCount > nCount  then
			nItemCount = nCount
		end
		local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x402247_g_Item, nItemCount)
		if bDelOk == 1  then
			LuaFnSetCopySceneData_Param(sceneId, 9, 5-(nCount-nItemCount) )
		end
		
		if LuaFnGetCopySceneData_Param(sceneId, 9) >= 5  then
			
		end
	
	elseif nNumText == 2  then
		local nCount = LuaFnGetCopySceneData_Param(sceneId, 10)
		nCount = 5 - nCount
		-- ±³°üÖÐ¿ÉÒÔÉ¾³ýtoÕ ðµ ¡°Ä¾²Ä¡±toÕ ðµ ×ÜÊý
		local nItemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x402247_g_Item) 
		if nItemCount > nCount  then
			nItemCount = nCount
		end
		local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x402247_g_Item, nItemCount)
		if bDelOk == 1  then
			LuaFnSetCopySceneData_Param(sceneId, 10, 5-(nCount-nItemCount) )
		end

		if LuaFnGetCopySceneData_Param(sceneId, 10) >= 5  then
			
		end
		
	elseif nNumText == 3  then
		local nCount = LuaFnGetCopySceneData_Param(sceneId, 11)
		nCount = 10 - nCount
		-- ±³°üÖÐ¿ÉÒÔÉ¾³ýtoÕ ðµ ¡°Ä¾²Ä¡±toÕ ðµ ×ÜÊý
		local nItemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x402247_g_Item) 
		if nItemCount > nCount  then
			nItemCount = nCount
		end
		local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x402247_g_Item, nItemCount)
		if bDelOk == 1  then
			LuaFnSetCopySceneData_Param(sceneId, 11, 10-(nCount-nItemCount) )
		end

		if LuaFnGetCopySceneData_Param(sceneId, 11) >= 10  then
			
		end
		
	elseif nNumText == 4  then
		local nCount = LuaFnGetCopySceneData_Param(sceneId, 12)
		nCount = 5 - nCount
		-- ±³°üÖÐ¿ÉÒÔÉ¾³ýtoÕ ðµ ¡°Ä¾²Ä¡±toÕ ðµ ×ÜÊý
		local nItemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x402247_g_Item) 
		if nItemCount > nCount  then
			nItemCount = nCount
		end
		local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x402247_g_Item, nItemCount)
		if bDelOk == 1  then
			LuaFnSetCopySceneData_Param(sceneId, 12, 5-(nCount-nItemCount) )
		end

		if LuaFnGetCopySceneData_Param(sceneId, 12) >= 5  then
			
		end
		
	end

	if nNumText==1 or nNumText==2 or nNumText==3 or nNumText==4  then
		
		BeginEvent(sceneId)
			local szName = GetName(sceneId, targetId)
			if szName == "Tháp liên n²"  then
				AddText(sceneId, "  Tháp liên n² ðã tu sØa thành công")
			elseif szName == "Tháp liên n²"  then
				AddText(sceneId, "  Tháp liên n² ðã tu sØa thành công")
			elseif szName == "Tháp Tr¸ Li®u"  then
				AddText(sceneId, "  Tháp Tr¸ Li®u ðã tu sØa thành công")
			elseif szName == "Tháp Phòng Ngñ"  then
				AddText(sceneId, "  Tháp Phòng Ngñ ðã tu sØa thành công")
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	for i, findId in x402247_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402247_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402247_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402247_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x402247_g_eventList do
		if missionScriptId == findId then
			x402247_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x402247_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402247_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x402247_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x402247_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x402247_OnDie( sceneId, selfId, killerId )

end

