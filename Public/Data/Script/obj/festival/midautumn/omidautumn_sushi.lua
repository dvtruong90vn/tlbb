-- ÖÐÇïNPC
-- ËÕéø

x050002_g_scriptId = 050002

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x050002_g_eventList = { }

x050002_g_ItemList = { 40004303, 40004304, 40004305 }
x050002_g_MoonCakes = { 30103026, 30103027, 30103028, 30103029, 30103030, 30103031, 30103032, 30103033, 30103034, 30103035, 30103036, 30103037, }
x050002_g_MoonCakeName = { "Bánh Trung Thu Nhân Ð§u Sa", "Bánh Trung Thu Nhân Mai Quª", "Bánh Trung Thu Nhân Täo Nê", "Bánh Trung Thu Nhân Ngû Nhân", "Bánh Trung Thu Nhân Bách Quä", "Bánh Trung Thu Nhân Thßþng T¯", "Bánh Trung Thu Nhân Höa Thoái", "Bánh Trung Thu Nhân Tinh MÛ Tùng TØ", "Bánh Trung Thu Nhân Tinh MÛ Phøc Linh", "Bánh Trung Thu Nhân Tinh MÛ Hoàng Tinh", "Bánh Trung Thu Nhân Tinh MÛ Tuyªt Liên", "Bánh Trung Thu Nhân Tinh MÛ Phong M§t", }
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x050002_UpdateEventList( sceneId, selfId, targetId )
	local i, eventId
	for i, eventId in x050002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
	end

	AddNumText( sceneId, x050002_g_scriptId, "Ð±i l¤y nhæng món ngon cüa Trung thu", -1, 1 )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050002_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    Trång thanh nào m¤y ðµ, nâng rßþu höi tr¶i xanh. #rChÆng biªt cung khuyªt trên kia, ðêm nay là nåm nào. #rTa mu¯n cßÞi gió bay v«, lÕi sþ quÏnh lâu ng÷c vû n½i cao quá lÕnh. #rMúa lên cho bóng tö, có nhß ch¯n nhân gian. #rQua gác son, nghé l¥u tía, soi không ngü. #rKhông nên có h§n. #rNgß¶i có bu°n vui tan hþp, trång có m¶ tö khuyªt ð¥y, chuy®n t× xßa ðã v§y. #rChï mong ngß¶i b«n lâu, ngàn d£m cùng quyªn luyªn"
		AddText( sceneId, "Thüy ði®u ca ð¥u" )
		AddText( sceneId, strText )
		x050002_UpdateEventList( sceneId, selfId, targetId )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x050002_OnEventRequest( sceneId, selfId, targetId, eventId )
	local i, findId
	for i, findId in x050002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if GetNumText() == 1 then
		local idx, itemId
		for idx, itemId in x050002_g_ItemList do
			if LuaFnGetAvailableItemCount( sceneId, selfId, itemId ) < 1 then
				x050002_NotifyFailBox( sceneId, selfId, targetId, "    Ðang ð±i" ..
					"Món ån mùa thu, c¥n bµt tinh chª, hß½ng li®u loÕi t¯t, ðß¶ng thßþng hÕng m²i thÑ mµt cái," ..
					"Có th¬ ðªn LÕc Dß½ng Giang Lý [127,154], Tô Châu Bao Thª Vinh [190,168]," ..
					"L¤y · ch² Ð² TØ Ð¢ng [109,170] · ÐÕi Lý" )
				return
			end
		end

		local moonCakeId = random( getn(x050002_g_MoonCakes) )
		if LuaFnTryRecieveItem( sceneId, selfId, x050002_g_MoonCakes[moonCakeId], QUALITY_MUST_BE_CHANGE ) < 0 then
			return
		end

		for idx, itemId in x050002_g_ItemList do
			LuaFnDelAvailableItem( sceneId, selfId, itemId, 1 )
		end

		x050002_NotifyFailBox( sceneId, selfId, targetId, "    T¯t quá t¯t quá, Trung thu ð©p" ..
			"Th¥n, dâng vua món bánh này, bánh có hình trång sáng Trung thu, trµm nghî hay g÷i tên là bánh trung thu" )

		local strText = "Các hÕ ðÕt ðßþc" .. x050002_g_MoonCakeName[moonCakeId]

		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		x050002_NotifyFailTips( sceneId, selfId, strText )

		-- µ±Íæ¼Ò ðÕt ðßþcTinhÃÀtoÕ ðµ ÔÂ±ý,»áTÕi ÊÀ½ç·¢H® th¯ngÏûÏ¢¡£
		strText = GetName( sceneId, selfId ) .. "Khi ð±i l¤y bánh trung thu, may m¡n ðÕt ðßþc" ..
					x050002_g_MoonCakeName[moonCakeId] .. "."
		BroadMsgByChatPipe( sceneId, selfId, strText, 4 )
		return
	end
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x050002_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÐÑÄ¿ÐÅÏ¢ÌáÊ¾
--**********************************
function x050002_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
