			
--BUS
--´óÀíÔÓ»õµê·ÉÍùÄÏÃÅ¸½½ü

x210286_g_ScriptId = 210286
x210286_g_busGuilList = {1000005, 1000006}


function x210286_OnDefaultEvent( sceneId, selfId, targetId )
	local bSucceeded = 0;
	strText = "Hi®n tÕi không th¬ dùng v§t cßÞi, xin ðþi mµt lát";
	for i, busGuid in x210286_g_busGuilList do
		busId = LuaFnBusGetObjIDByGUID(sceneId, busGuid);
		if busId then
			if busId ~= -1 then
				ret = LuaFnBusAddPassenger_Shuttle(sceneId, busId, selfId, targetId, 0);
				if ret == OR_OK then
					strText = "Xin ch¶, l§p tÑc bay"
					bSucceeded = 1;
					break
				elseif ret == OR_BUS_PASSENGERFULL then
					strText = "V§t cßÞi ðã ð¥y, xin ðáp chuyªn sau"
					break
				elseif ret == OR_BUS_HASMOUNT then
					strText = "Khi cßÞi v§t, các hÕ không th¬ thñc hi®n thao tác này"
					break
				elseif ret == OR_BUS_HASPET then
					strText = "Khi mang theo trân thú, các hÕ không th¬ thñc hi®n thao tác này"
					break
				elseif ret == OR_BUS_CANNOT_TEAM_FOLLOW then
					strText = "Khi l§p ðµi ði theo, các hÕ không th¬ thñc hi®n thao tác này"
					break
				elseif ret == OR_BUS_CANNOT_DRIDE then
					strText = "Khi cßÞi 2 ngß¶i, các hÕ không th¬ thñc hi®n thao tác này"
					break
				elseif ret == OR_BUS_CANNOT_CHANGE_MODEL then
					strText = "Khi biªn thân, các hÕ không th¬ thñc hi®n thao tác này"
					break
				else
				end
			end
		end
	end

	BeginEvent(sceneId)
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	if bSucceeded == 1 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId, selfId, 1000)
	end
end



--**********************************

--ÁÐ¾ÙÊÂ¼þ

--**********************************

function x210286_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId, x210286_g_ScriptId, "Bay t¾i g¥n Nam Môn", 9, -1);
end

