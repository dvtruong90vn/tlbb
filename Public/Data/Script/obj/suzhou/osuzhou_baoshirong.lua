-- ËÕÖÝNPC
-- °üÊÀÈÙ
-- Ò»°ã

-- ½Å±¾ºÅ
x001037_g_scriptId = 001037

x001037_g_shoptableindex = 25

x001037_g_ControlScript = 050009
x001037_g_ExchangeList = { id = 40004304, name = "Hß½ng li®u loÕi ngon", cost = 30 }
x001037_g_yiexihuFlag = 1;

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001037_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#{BSR_80919_1}" )
		AddNumText( sceneId, x001037_g_scriptId, "Ngß½i mu¯n mua gì nào?", 7, 0 )
		--if x001037_g_yiexihuFlag == 1 then
		--	AddNumText( sceneId, x001037_g_scriptId, "È¥Ò¹Î÷ºþ", 6, 3 )
			AddNumText( sceneId, x001037_g_scriptId, "Gi¾i thi®u b¡t ðom ðóm", 11, 14 )
			AddNumText( sceneId, x001037_g_scriptId, "Gi¾i thi®u hoÕt ðµng Tuyªt c¥u, Løc Ð§u Thang, nß¾c Dßa H¤u", 11, 15 )
		--end

		if CallScriptFunction( x001037_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
			--AddNumText( sceneId, x001037_g_scriptId, "»»È¡Ê³²Ä", 6, 1 )
			--AddNumText( sceneId, x001037_g_scriptId, "Ê³²ÄÓÐÊ²Ã´ÓÃ", 11, 2 )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001037_OnEventRequest( sceneId, selfId, targetId, eventId )
	if eventId == x001037_g_scriptId then
		local selectItem = GetNumText();
		if selectItem == 0 then
			DispatchShopItem( sceneId, selfId, targetId, x001037_g_shoptableindex )
		end
		
		if x001037_g_yiexihuFlag == 1 then
			if selectItem == 3 then
				--CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 121, 40, 52);
			elseif selectItem == 14 then
				BeginEvent(sceneId)
					AddText( sceneId, "#{function_help_091}" )
				EndEvent(sceneId)
				DispatchEventList( sceneId, selfId, targetId )
			elseif selectItem == 15 then
				BeginEvent(sceneId)
					AddText( sceneId, "#{function_help_092}" )
				EndEvent(sceneId)
				DispatchEventList( sceneId, selfId, targetId )
			end
		end
	end

	if CallScriptFunction( x001037_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
		if GetNumText() == 1 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x001037_g_ExchangeList.cost then
				x001037_NotifyFailBox( sceneId, selfId, targetId, "C¥n phäi ð±i 1 ph¥n " .. x001037_g_ExchangeList.name ..
				", c¥n tích ði¬m " .. x001037_g_ExchangeList.cost .. " Ði¬m, hi®n gi¶ ngß½i chï có " .. score .. " Ði¬m, hình nhß không ðü." )
				return
			end

			BeginEvent( sceneId )
				AddText( sceneId, "Ði¬m tích lûy trung thu cüa ngß½i hi®n " .. score .. " Ði¬m, ð±i l¤y mµt ph¥n" ..
					x001037_g_ExchangeList.name .. ", c¥n tích ði¬m " .. x001037_g_ExchangeList.cost .. " Ði¬m, ngß½i xác ð¸nh ð±i không?" )

				AddNumText( sceneId, x001037_g_scriptId, "Xác ð¸nh mu¯n ð±i", -1, 3 )
				AddNumText( sceneId, x001037_g_scriptId, "Ta chï ði qua", -1, 4 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		elseif GetNumText() == 2 then
			x001037_NotifyFailBox( sceneId, selfId, targetId, "Khß½ng Lý · LÕc Dß½ng [127," ..
				"154], Bao Thª Vinh · Tô Châu [190,168], Ð² TØ Ð¢ng · ÐÕi Lý [109,170] ð¬ ð±i" ..
				"Sau khi ðã có 3 loÕi nguyên li®u ð° ån khác nhau, hãy tìm NhÕc Thß¶ng Viên · Tô Châu [193,148] ðßa t¾i Tây H° ð±i l¤y Bánh Trung thu" ..
				"V§t ph¦m ð£c bi®t" )
			return
		elseif GetNumText() == 3 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x001037_g_ExchangeList.cost then
				return
			end

			if LuaFnTryRecieveItem( sceneId, selfId, x001037_g_ExchangeList.id, QUALITY_MUST_BE_CHANGE ) < 0 then
				x001037_NotifyFailBox( sceneId, selfId, targetId, "Không gian trong tay näi ðã ð¥y" )
			end

			score = score - x001037_g_ExchangeList.cost
			SetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE, score )
			x001037_NotifyFailBox( sceneId, selfId, targetId, "Ði¬m tích lûy dß th×a: " .. score .. "." )
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
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001037_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
