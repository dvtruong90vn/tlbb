--Ê¯ÁÖ Ö£Ðþ

--½Å±¾ºÅ
x026000_g_scriptId = 026000

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x026000_g_eventList={212103, 212104}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x026000_UpdateEventList( sceneId, selfId,targetId )
	
	BeginEvent(sceneId)
		AddText(sceneId, "$N, ta biªt ngß½i, tên tu±i ngß½i ðã truy«n kh¡p ÐÕi Lý, r¤t vui ðßþc g£p ngß½i · ThÕch Lâm, nhßng hi®n gi¶ ThÕch Lâm là 1 n½i vô cùng nguy hi¬m. Làm gì ngß½i cûng phäi c¦n th§n.")
		--AddNumText(sceneId, x026000_g_scriptId,"ÎÒÏëÈ¥ÑÎºþ", 9, 6)
		for i, eventId in x026000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

		if	IsHaveMission(sceneId,selfId,602) > 0	then
			AddNumText(sceneId, x026000_g_scriptId,"Câu chuy®n tuy®t v÷ng", 6, 1)
			x026000_nDescIndex = 1
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x026000_OnDefaultEvent( sceneId, selfId,targetId )
	x026000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x026000_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	arg	= GetNumText()
	if arg == 6 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 415, 45,34 )
		return
	end
	if eventId == x026000_g_scriptId  then
		BeginEvent(sceneId)
			if x026000_nDescIndex == 1 then
				AddText(sceneId, "#{Lua_Shilin_002}")
				AddNumText(sceneId, x026000_g_scriptId,"Cái gì? B®nh d¸ch khüng khiªp! Thª sau ðó?", 8, 1)
			elseif x026000_nDescIndex == 2 then
				AddText(sceneId, "#{Lua_Shilin_003}")
				AddNumText(sceneId, x026000_g_scriptId,"Xem ra Y¬n sß ðã cÑu Viên Nguy®t Thôn...ta nói v§y không ðúng sao?", 8, 1)
			elseif x026000_nDescIndex == 3 then
				AddText(sceneId, "#{Lua_Shilin_004}")
			end
			x026000_nDescIndex = x026000_nDescIndex +1
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
		if x026000_nDescIndex == 4 then
			-- ¶Áµ½ÕâÀï¾ÍËãÍê³ÉÈÎÎñÁË
			local misIndex=GetMissionIndexByID(sceneId,selfId,602)
			local num0 = GetMissionParam(sceneId,selfId,misIndex,0)
			
			if num0 < 1 then				--Èç¹û²»Âú×ãÈÎÎñÍê³ÉµÃÌõ¼þ
				SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--ÈÎÎñ±äÁ¿µÚÒ»Î»Ôö¼Ó1
				BeginEvent(sceneId)										--ÏÔÊ¾ÌáÊ¾ÐÅÏ¢
					AddText(sceneId, "Ðã nghe xong chuy®n cüa Tr¸nh Huy«n: 1/1");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
		end
	end
		
	if	IsHaveMission(sceneId,selfId,602) <= 0	then
		CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	end
	
	for i, findId in x026000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x026000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x026000_g_eventList do
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
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x026000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x026000_g_eventList do
		if missionScriptId == findId then
			x026000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x026000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x026000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x026000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x026000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x026000_OnDie( sceneId, selfId, killerId )
end
