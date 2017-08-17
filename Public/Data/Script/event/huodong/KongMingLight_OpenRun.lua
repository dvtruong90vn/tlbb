--´´½¨ÈË:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]
--Nhi®m vø Rùa-Thö thi chÕy¿×Ã÷µÆÉú³¤ ği¬m

--½Å±¾ºÅ
x808085_g_ScriptId	= 808085

x808085_g_Impact_Light_Complete 	= 47	--  ği¬mÁÁ¿×Ã÷µÆÊ±toÕ ğµ ÌØĞ§
x808085_g_Impact_GodOfFire_Mission = 5929 -- Rùa-Thö thi chÕy×´Ì¬ÌØĞ§

--Nhi®m vø Rùa-Thö thi chÕyºÅ
x808085_g_MissionId			= 1000
x808085_g_MissItemId = 40004444					-- ÈÎÎñÎïÆ·
--ÈÎÎñĞúng·ñÍê³É
x808085_g_Mission_IsComplete 			= 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»
--Nhi®m vø Rùa-Thö thi chÕyÃ¿ÌìÂÖÊı±ê¼Ç
x808085_g_RoundIndex 				 			= 7		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ7Î»

-- ÈÎÎñÎïÆ·²ÎÊı±ê¼Ç
x808085_g_LuoYangLighten_Cnt 			= 5	--¿×Ã÷µÆLÕc Dß½ngM· ra ÊıÁ¿Ë÷Òı
x808085_g_SuZhouLighten_Cnt				= 7	--¿×Ã÷µÆTô ChâuM· ra ÊıÁ¿Ë÷Òı
x808085_g_DaLiLighten_Cnt					= 9		--¿×Ã÷µÆĞÕi LıM· ra ÊıÁ¿Ë÷Òı

--¿×Ã÷µÆÍê³ÉÊıÁ¿±ê¼Ç
x808085_g_KongMing_Lighten				= 4		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ4Î»

x808085_g_KongMingLighten_Count		=	8		-- Ã¿¶ÎÂ·ÖĞC¥n  ği¬mÈ¼toÕ ğµ ¿×Ã÷µÆÊıÁ¿
x808085_g_KongMingLighten_MaxCnt	=	24	-- Rùa-Thö thi chÕy»î¶¯C¥n  ği¬mÈ¼toÕ ğµ ¿×Ã÷µÆ×ÜÊı

-- Ã¿ÌìRùa-Thö thi chÕy»î¶¯M· ra Ê±¼ä
x808085_g_ActivityTime						= { {tstart=1230, tend=1330},
																		  {tstart=1930, tend=2030},
																		  {tstart=2130, tend=2230} }

function x808085_OnRecycle(sceneId,selfId,targetId)

	if selfId <= 0 then
		return 1
	end
	
	-- Í¨Öª¿×Ã÷µÆË¢ĞÂ½Å±¾¼ÌĞøË¢ĞÂ¿×Ã÷µÆ
	local nTargetX = GetItemBoxWorldPosX( sceneId, targetId )
	local nTargetZ = GetItemBoxWorldPosZ( sceneId, targetId )
	CallScriptFunction( 808083, "RecordKongMingLightInfo", sceneId, selfId, targetId, nTargetX, nTargetZ )	

	return 1;
end

function x808085_OnCreate(sceneId,growPointType,x,y)

end

function x808085_OnOpen(sceneId,selfId,targetId)

	-- ¼ì²â ği¬mÈ¼¿×Ã÷µÆÌõ¼ş
	if x808085_CheckActivityEvent( sceneId, selfId ) == 0 then
		return OR_INVALID_TARGET
	end

	return OR_OK;
end

function x808085_OnProcOver(sceneId,selfId,targetId)

	-- ¼ì²â ği¬mÈ¼¿×Ã÷µÆÌõ¼ş
	if x808085_CheckActivityEvent( sceneId, selfId ) == 0 then
		return OR_INVALID_TARGET
	end
		
	-- ¸øM· ra Õß¼ÓÌØĞ§
	-- LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x808085_g_Impact_Light_Complete, 0)
end

--**********************************
--¼ì²âµ±Ç°Ğúng·ñĞúng»î¶¯Ê±¼ä
--**********************************
function x808085_CheckActivityTime()

	local nHour	 = GetHour()
	local nMinute = GetMinute()
  local curHourTime = nHour*100+nMinute

	for i=1, getn(x808085_g_ActivityTime) do
	  if curHourTime >= x808085_g_ActivityTime[i].tstart and curHourTime <= x808085_g_ActivityTime[i].tend then
	  	return i
	  end
	end

	return 0

end

--**********************************
--¼ì²â¼¤»îÌõ¼ş
--**********************************
function x808085_CheckActivityEvent( sceneId, selfId )
	
	-- ¼ì²âĞúng·ñÓĞNhi®m vø Rùa-Thö thi chÕy
	if IsHaveMission( sceneId, selfId, x808085_g_MissionId ) <= 0 then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_011}" )		
		return 0
	end

	local	nDayTime = GetMissionData( sceneId, selfId, MD_GODOFFIRE_DAYTIME )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x808085_g_MissionId)
	
	-- ¼ì²âÈÎÎñĞúng·ñÍê³É	
	if GetMissionParam(sceneId, selfId, misIndex, x808085_g_Mission_IsComplete) > 0 then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_028}" )
		return 0
	end

	-- ¼ì²â±¾ÂÖ»î¶¯Ê±¼äĞúng·ñÓĞĞ§
	local nDay = LuaFnGetDayOfThisMonth()
	if nDayTime ~= nDay then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_017}" )
		return 0
	end
	
	local nTimePoint = x808085_CheckActivityTime()
	if nTimePoint ~= GetMissionParam(sceneId, selfId, misIndex, x808085_g_RoundIndex) then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end

	-- ¼ì²âĞúng·ñÓĞÈÎÎñÎïÆ·
	if HaveItem(sceneId, selfId, x808085_g_MissItemId) <= 0 then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_039}" )
		return 0
	end
	
	-- ¼ì²â¸ÃÀà¿×Ã÷µÆĞúng·ñÒÑ ği¬mÍê
	local BagPos = GetItemBagPos( sceneId, selfId, x808085_g_MissItemId, 0 )
	local LuoYangCnt = GetBagItemParam(sceneId, selfId, BagPos, x808085_g_LuoYangLighten_Cnt, 1)
	local SuZhouCnt = GetBagItemParam(sceneId, selfId, BagPos, x808085_g_SuZhouLighten_Cnt, 1)
	local DaLiCnt = GetBagItemParam(sceneId, selfId, BagPos, x808085_g_DaLiLighten_Cnt, 1)
	local	nAllCount = GetMissionParam(sceneId, selfId, misIndex, x808085_g_KongMing_Lighten)
	
	if sceneId == 6 and DaLiCnt >= x808085_g_KongMingLighten_Count then					-- ÎŞÁ¿É½
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_060}" )		
		return 0
	elseif sceneId == 5 and DaLiCnt >= x808085_g_KongMingLighten_Count then			-- Kính K°
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_060}" )		
		return 0
	elseif sceneId == 4 and SuZhouCnt >= x808085_g_KongMingLighten_Count then		-- Thái H°
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_059}" )		
		return 0
	elseif sceneId == 3 and SuZhouCnt >= x808085_g_KongMingLighten_Count then		-- Tung S½n
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_059}" )		
		return 0
	elseif sceneId == 7 and LuoYangCnt >= x808085_g_KongMingLighten_Count then	-- Kiªm Các
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_058}" )		
		return 0
	elseif sceneId == 8 and LuoYangCnt >= x808085_g_KongMingLighten_Count then	-- Ğôn Hoàng
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_058}" )		
		return 0
	end

	if nAllCount >= x808085_g_KongMingLighten_MaxCnt then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_035}" )		
		return 0
	end

	return 1
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x808085_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
