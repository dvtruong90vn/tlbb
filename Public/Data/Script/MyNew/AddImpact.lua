--LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, XXXX)--Kiem tra Impact tren nguoi nhan vat--
--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, XXXX, 0)--Them Impact len nhan vat--
--LuaFnCancelSpecificImpact(sceneId, selfId, XXXX)--Huy bo Impact tren nguoi nhan vat--

x380001_g_scriptId = 380001

function x380001_AddImpact(sceneId, selfId, equip_do)
	local Item106 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 106 ) --Gioi Chi 1--
	local Item110 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 110 ) --Vo Hon--
	local Item111 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 111 ) --Gioi Chi 2--
	local Item112 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 112 ) --Ho Phu 1--
	local Item113 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 113 ) --Ho Phu 2--
	local Item118 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 118 ) --Long Van--

	if Item106 >= 10259201 and Item106 <= 10263200 then
		local DW106_Base = 11000
		local DWID106 = mod(Item106,200)
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, DW106_Base + DWID106) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, DW106_Base + DWID106, 0)
		end
	else
		local DW106_Cancel = 11851
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, DW106_Cancel, 0)
	end

	if Item111 >= 10259201 and Item111 <= 10263200 then
		local DW111_Base = 11170
		local DWID111 = mod(Item111,200)
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, DW111_Base + DWID111) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, DW111_Base + DWID111, 0)
		end
	else
		local DW111_Cancel = 11852
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, DW111_Cancel, 0)
	end

	if Item112 >= 10265401 and Item112 <= 10269400 then
		local DW112_Base = 11340
		local DWID112 = mod(Item112,200)
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, DW112_Base + DWID112) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, DW112_Base + DWID112, 0)
		end
	else
		local DW112_Cancel = 11853
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, DW112_Cancel, 0)
	end

	if Item113 >= 10265401 and Item113 <= 10269400 then
		local DW113_Base = 11510
		local DWID113 = mod(Item113,200)
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, DW113_Base + DWID113) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, DW113_Base + DWID113, 0)
		end
	else
		local DW113_Cancel = 11854
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, DW113_Cancel, 0)
	end
	
	if Item118 >= 10157001 and Item118 <= 10157900 then
		local DW118_Base = 11680
		local i, m = LuaFnGetItemCreator(sceneId,selfId,118)
		local DWID118 = 175
		local LW_Pro1_Base = 13800
		local LW_Pro2_Base = 13810
		local LW_Pro3_Base = 13850
		local LW_Pro1 = 0
		local LW_Pro2 = 0
		local LW_Pro3 = 0
		if m ~= nil then
			DWID118 = tonumber(strsub(tostring(m),9,11))
			if DWID118 == 0 then
				DWID118 = 175
			end
			LW_Pro1 = tonumber(strsub(tostring(m),3,4))
			LW_Pro2 = tonumber(strsub(tostring(m),5,6))
			LW_Pro3 = tonumber(strsub(tostring(m),7,8))
		end
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, DW118_Base + DWID118) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, DW118_Base + DWID118, 0)
		end
		if LW_Pro1 ~= 0 then
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, LW_Pro1_Base + LW_Pro1) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, LW_Pro1_Base + LW_Pro1, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId,  13891, 0)
		end
		if LW_Pro2 ~= 0 then
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, LW_Pro2_Base + LW_Pro2) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, LW_Pro2_Base + LW_Pro2, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId,  13892, 0)
		end
		if LW_Pro3 ~= 0 then
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, LW_Pro3_Base + LW_Pro3) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, LW_Pro3_Base + LW_Pro3, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId,  13893, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 11855, 0)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId,  13891, 0)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId,  13892, 0)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId,  13893, 0)
	end

	if (Item110 >= 10156001 and Item110 <= 10156004) or (Item110 >= 10264601 and Item110 <= 10265400) then
		local i, m = LuaFnGetItemCreator(sceneId,selfId,110)
		local WH_Name = GetItemName(sceneId, Item110)
		
		local WH_TT_Base = 5
		local WH_TT = 4
		local WH_LV = 1
		local WH_Pro1 = 0
		local WH_Pro2 = 0
		local WH_Pro3 = 0		

		if m ~= nil then
			WH_TT_Base = tonumber(strsub(tostring(m),9,9))
			WH_TT = 9 - WH_TT_Base --Truong Thanh--
			WH_LV = tonumber(strsub(tostring(m),6,8)) --WH_LV--
			WH_Pro1 = tonumber(strsub(tostring(m),14,15)) --WH_Pro1--
			WH_Pro2 = tonumber(strsub(tostring(m),16,17)) --WH_Pro2--
			WH_Pro3 = tonumber(strsub(tostring(m),18,19)) --WH_Pro3--
		end
		
		local IDIP_Base = 0
		if WH_Name == "Lßu Ly Di®m" then
			IDIP_Base = 12000
		elseif WH_Name == "Ngñ Dao Bàn" then
			IDIP_Base = 12600
		end
		local Property = IDIP_Base + 120*WH_TT + WH_LV --OK--
		
		local Pro1 = 13200 + 40*WH_TT + WH_Pro1
		local Pro2 = 13400 + 40*WH_TT + WH_Pro2
		local Pro3 = 13600 + 40*WH_TT + WH_Pro3

		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Property) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Property, 0)
		end
		
		if WH_Pro1 ~= 0 then
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Pro1) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Pro1, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 11997, 0)
		end

		if WH_Pro2 ~= 0 then
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Pro2) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Pro2, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 11998, 0)
		end

		if WH_Pro3 ~= 0 then
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Pro3) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Pro3, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 11999, 0)
		end

	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 12000, 0)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 11999, 0)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 11998, 0)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 11997, 0)
	end
	
	if GetItemName(sceneId, Item110) == "Lßu Ly Di®m" or GetItemName(sceneId, Item110) == "Ngñ Dao Bàn" then
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,110)
		if szAuthor ~= nil then
			local WuhunSkill1 = tonumber(strsub(tostring(szAuthor),21,23))
			if WuhunSkill1 ~= 0 then
				local WHSkill1Base = 1360
				AddSkill(sceneId,selfId,WHSkill1Base + WuhunSkill1)
			else
				for i = 1361, 1384 do
					if HaveSkill(sceneId,selfId,i) == 1 then
						DelSkill(sceneId,selfId,i)
					end
				end
			end
			
			local WuhunSkill2 = tonumber(strsub(tostring(szAuthor),24,26))
			if WuhunSkill2 ~= 0 then
				local WHSkill2Base = 1384
				AddSkill(sceneId,selfId,WHSkill2Base + WuhunSkill2)
			else
				for i = 1385, 1516 do
					if HaveSkill(sceneId,selfId,i) == 1 then
						DelSkill(sceneId,selfId,i)
					end
				end
			end
			
			local WuhunSkill3 = tonumber(strsub(tostring(szAuthor),27,29))
			if WuhunSkill3 ~= 0 then
				local WHSkill3Base = 1516
				AddSkill(sceneId,selfId,WHSkill3Base + WuhunSkill3)
			else
				for i = 1517, 1600 do
					if HaveSkill(sceneId,selfId,i) == 1 then
						DelSkill(sceneId,selfId,i)
					end
				end
			end
		end
	else
		for i = 1361, 1600 do
			if HaveSkill(sceneId,selfId,i) == 1 then
				DelSkill(sceneId,selfId,i)
			end
		end
	end
end
--00000001500100000000000000000--
function x380001_NotifyFailTips(sceneId,selfId,Tip)
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end