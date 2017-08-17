--½Å±¾ºÅ
x830001_g_scriptId = 830001

x830001_ShiZhuang = {10124067, 10124068, 10124069, 10124070, 10124071, 10124072, 10124087, 10124094, 10124098, 10124099, 10124100,
10124101, 10124102, 10124103, 10124130, 10124131, 10124132, 10124133, 10124138, 10124139, 10124140,
10124152, 10124164, 10124165, 10124166, 10124169, 10124201, 10124210, 10124211, 10124318, 10124340,
10124341, 10124357, 10124379, 10124394, 10124395, 10124396, 10124397, 10124398, 10124399, 10124406,
10124456, 10124468, 10124481, 10124521 ,10124531, 10124558, 10124583, 10124606, 10141838, 10141839}


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x830001_OnDressPaint( sceneId, selfId, pos)
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, pos)
	local EquipPoint = GetItemEquipPoint( nItemId )
	if EquipPoint ~= 16 then
		x830001_NotifyTip( sceneId, selfId, "Chï có th¶i trang m¯t m¾i có th¬ nhßþm màu." )
		return
	end
	
	local check = 0
	for i = 1, 100 do
		if nItemId == x830001_ShiZhuang[i] then
			check = 1
		end
	end
	
	if nItemId >= 10224001 and nItemId <= 10224900 then
		check = 1
	end
	
	if check == 0 then
		x830001_NotifyTip( sceneId, selfId, "Th¶i trang này không th¬ nhßþm màu." )
		return
	end
	
	if LuaFnGetAvailableItemCount(sceneId, selfId, 30503140) + LuaFnGetAvailableItemCount(sceneId, selfId, 38000992) < 1 then
		x830001_NotifyTip( sceneId, selfId, "Thiªu nguyên li®u: H°ng Di®u ThÕch" )
		return
	end
	
	local m = random(1,10);
	
	if CostMoney(sceneId, selfId,50000) == -1 then
		x809272_NotifyTip( sceneId, selfId, "Ngân lßþng không ðü!" )
		return
	end
	
	if LuaFnGetAvailableItemCount(sceneId, selfId, 38000992) >= 1 then
		LuaFnDelAvailableItem(sceneId,selfId,38000992,1)
	else
		LuaFnDelAvailableItem(sceneId,selfId,30503140,1)
	end
	
	for i = 0, m do
		local ret, tmp = LuaFnEquipLevelUp( sceneId, selfId, pos, pos)
	end
	x830001_NotifyTip( sceneId, selfId, "Nhßþm màu thành công." )
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x830001_OnEventRequest( sceneId, selfId, targetId, eventId )
	
end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x830001_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
