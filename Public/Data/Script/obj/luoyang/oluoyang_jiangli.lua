-- ÂåÑôNPC		¾ÆµêÀÏ°å
-- ½­Àð
-- ÆÕÍ¨

-- ½Å±¾ºÅ
x000102_g_scriptId = 000102
-- ÉÌµêºÅ
x000102_g_ShopTabId = 15 
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000102_g_eventList = { }

x000102_g_ControlScript = 050009
x000102_g_ExchangeList = { id = 40004303, name = "Bµt mÏ loÕi ngon", cost = 20 }

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000102_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "ThÑ bay trên tr¶i, chÕy dß¾i ð¤t, b½i trong nß¾c, mu¯n ån thÑ nào · Danh Trân lâu này ð«u có cä" )
		AddNumText(sceneId,x000102_g_scriptId,"Mua thñc ph¦m",7,1111)
		if CallScriptFunction( x000102_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
			--AddNumText( sceneId, x000102_g_scriptId, "»»È¡Ê³²Ä", 6, 1 )
			--AddNumText( sceneId, x000102_g_scriptId, "Ê³²ÄÓÐÊ²Ã´ÓÃ", 11, 2 )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000102_OnDefaultEvent( sceneId, selfId, targetId )
	x000102_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000102_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1111 then
		DispatchShopItem( sceneId, selfId, targetId, x000102_g_ShopTabId);
	end
	local i, findId
	for i, findId in x000102_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if CallScriptFunction( x000102_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
		if GetNumText() == 1 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x000102_g_ExchangeList.cost then
				x000102_NotifyFailBox( sceneId, selfId, targetId, "C¥n phäi ð±i 1 ph¥n" .. x000102_g_ExchangeList.name ..
				", c¥n tích ði¬m " .. x000102_g_ExchangeList.cost .. " Ði¬m, hi®n gi¶ ngß½i chï có " .. score .. " Ði¬m, hình nhß không ðü" )
				return
			end

			BeginEvent( sceneId )
				AddText( sceneId, "Ði¬m tích lûy trung thu cüa ngß½i hi®n " .. score .. " Ði¬m, ð±i l¤y mµt ph¥n " ..
					x000102_g_ExchangeList.name .. ", c¥n tích ði¬m " .. x000102_g_ExchangeList.cost .. " Ði¬m, ngß½i xác ð¸nh ð±i không?" )

				AddNumText( sceneId, x000102_g_scriptId, "È·¶¨Òª»»", -1, 3 )
				AddNumText( sceneId, x000102_g_scriptId, "ÎÒÖ»ÊÇÂ·¹ý", -1, 4 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		elseif GetNumText() == 2 then
			x000102_NotifyFailBox( sceneId, selfId, targetId, "    Khß½ng Lý · LÕc Dß½ng [127," ..
				"154], Bao Thª Vinh · Tô Châu [190,168], Ð² TØ Ð¢ng · ÐÕi Lý [109,170] ð¬ ð±i" ..
				"Sau khi ðã có 3 loÕi nguyên li®u ð° ån khác nhau, hãy tìm NhÕc Thß¶ng Viên · Tô Châu [193,148] ðßa t¾i Tây H° ð±i l¤y Bánh Trung thu" ..
				"V§t ph¦m ð£c bi®t" )
			return
		elseif GetNumText() == 3 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x000102_g_ExchangeList.cost then
				return
			end

			if LuaFnTryRecieveItem( sceneId, selfId, x000102_g_ExchangeList.id, QUALITY_MUST_BE_CHANGE ) < 0 then
				x000102_NotifyFailBox( sceneId, selfId, targetId, "Không gian trong tay näi ðã ð¥y" )
			end

			score = score - x000102_g_ExchangeList.cost
			SetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE, score )
			x000102_NotifyFailBox( sceneId, selfId, targetId, "Ði¬m tích lûy dß th×a: " .. score .. "." )
			return
		elseif GetNumText() == 4 then
			BeginUICommand( sceneId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000102_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x000102_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x000102_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	local i, findId
	for i, findId in x000102_g_eventList do
		if missionScriptId == findId then
			x000102_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000102_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x000102_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000102_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000102_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000102_OnDie( sceneId, selfId, killerId )
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000102_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
