--±¶≤ÿÃΩ≤‚∆˜2–Õ 

--Ω≈±æ∫≈
x300007_g_scriptId = 300004

--»ŒŒÒ∫≈
x300007_g_MissionId = 700

--»ŒŒÒµ¿æﬂ±‡∫≈
x300007_g_ItemId = 40002106

--**********************************
--À¢–¬ ¬º˛
--**********************************
function x300007_OnDefaultEvent( sceneId, selfId, BagIndex )
	misIndex = GetMissionIndexByID(sceneId,selfId,x300007_g_MissionId)
	x300007_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		--ªÒµ√»ŒŒÒ◊¥Ã¨
	scene = GetMissionParam(sceneId,selfId,misIndex,2)					--ªÒµ√±¶ŒÔ≥°æ∞∫≈
	treasureX = GetMissionParam(sceneId,selfId,misIndex,3)					--ªÒµ√±¶ŒÔX◊¯±Í
	treasureZ = GetMissionParam(sceneId,selfId,misIndex,4)				--ªÒµ√±¶ŒÔZ◊¯±Í	
	--»Áπ˚»ŒŒÒ“—æ≠ÕÍ≥…
	if x300007_g_MissionCondition == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"–„ tÏm ﬂ˛c r∞i, quay v´ giao tr‰ nhiÆm v¯ i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--»°µ√ÕÊº“µ±«∞◊¯±Í
	PlayerX = GetHumanWorldX(sceneId,selfId)
	PlayerZ = GetHumanWorldZ(sceneId,selfId)
	--º∆À„ÕÊº“”Î±¶≤ÿµƒæ‡¿Î
	Distance = floor(sqrt((treasureX - PlayerX) * (treasureX - PlayerX) + (treasureZ - PlayerZ) * (treasureZ - PlayerZ)))
	if sceneId ~= scene then
		BeginEvent(sceneId)
			AddText(sceneId,"HÏnh nhﬂ b‰o t‡ng khÙng n¢m trong c‰nh n‡y")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	if Distance >1 then
		--BeginEvent(sceneId)
		--	AddText(sceneId,"ÃΩ≤‚∆˜√ª”–∏–”¶µΩ»Œ∫Œ±¶≤ÿ")
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)
		--BeginEvent(sceneId)
		--	AddText(sceneId,"ºÃ–¯’“∞…")
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)
	--elseif Distance <= 100 and Distance >=2 then
		BeginEvent(sceneId)
			AddText(sceneId,"CÒ ly c·ch b‰o t‡ng cÚn "..Distance.." G’o")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif Distance <= 1 then
		BeginAddItem(sceneId)
			AddItem( sceneId,x300007_g_ItemId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0 then
			AddItemListToHuman(sceneId,selfId)
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--∞—»ŒŒÒ◊¥Ã¨±‰¡ø…Ë÷√Œ™1,±Ì æ“—æ≠ÕÍ≥…
		end
	end
end

--function OnTimeUp( sceneId, selfId, timeIndex )
--	npcobjid = LuaFnGetCopySceneData_Param(sceneId, 2)
--	if npcobjid ~= 0 then
--		LuaFnDeleteMonster( sceneId, npcobjid )
--		LuaFnSetCopySceneData_Param(sceneId, 2, 0)
--		StopTimer( sceneId, selfId,timeIndex)
--	end
--end

--function BaoZangAddress( sceneId, selfId  )
--	return	 45,2,3
	--g_TreasureAddress[1].scenenum,g_TreasureAddress[1].x,g_TreasureAddress[1].z
--end
