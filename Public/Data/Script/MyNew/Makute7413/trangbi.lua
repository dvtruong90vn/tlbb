--**************************--
--*Script Gia Cong Trang Bi*--
--*   Author: Makute7413   *--
--**************************--

x002192_g_ScriptId = 002192

--*****************************--
--*     On Default Event      *--
--*****************************--
function x002192_OnDefaultEvent(sceneId,selfId,targetId)
	BeginEvent(sceneId)
		AddText(sceneId,"Ta là #GBành Hoài TØ#W, ð£c sÑ gia công trang b¸ cüa #GThiên Long Bát Bµ#W. Ta có th¬ giúp gì cho các hÕ?")
		--AddNumText(sceneId,x002192_g_ScriptId,"Test!",6,0)
		AddNumText(sceneId,x002192_g_ScriptId,"Ðøc l² t¤t cä trang b¸",6,1)
		AddNumText(sceneId,x002192_g_ScriptId,"Cß¶ng hoá t¤t cä trang b¸",6,2)
		AddNumText(sceneId,x002192_g_ScriptId,"Tß½ng khäm bäo thÕch",6,3)
		AddNumText(sceneId,x002192_g_ScriptId,"Tß½ng khäm bäo thÕch cñc hÕn",6,5)
		AddNumText(sceneId,x002192_g_ScriptId,"Tháo gÞ bäo thÕch",6,4)
		AddNumText(sceneId,x002192_g_ScriptId,"Tháo gÞ bäo thÕch cñc hÕn",6,6)
		AddNumText(sceneId,x002192_g_ScriptId,"Kh¡c danh lên trang b¸",6,7)
		AddNumText(sceneId,x002192_g_ScriptId,"Giám ð¸nh tß ch¤t trang b¸",6,8)
		AddNumText(sceneId,x002192_g_ScriptId,"Tái giám ð¸nh tß ch¤t trang b¸",6,9)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x002192_OnEventRequest(sceneId,selfId,targetId,eventId)
	local key = GetNumText()

	if key == 1 then
		for i = 0, 30 do
			if LuaFnGetBagEquipType(sceneId, selfId, i) ~= -1 then
				if LuaFnGetBagEquipType(sceneId, selfId, i) == 16 then
					if GetBagGemCount(sceneId, selfId, i) == 0 then
						AddBagItemSlotFour(sceneId, selfId, i)
						AddBagItemSlotFour(sceneId, selfId, i)
						AddBagItemSlotFour(sceneId, selfId, i)
					end
				else
					AddBagItemSlotFour(sceneId, selfId, i)
					AddBagItemSlotFour(sceneId, selfId, i)
					AddBagItemSlotFour(sceneId, selfId, i)
					AddBagItemSlotFour(sceneId, selfId, i)
				end
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
			AddText(sceneId,"T¤t cä trang b¸ trong tay näi cüa các hÕ ðã ðßþc ðøc l² thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 2 then
		for i = 0, 30 do
			if LuaFnGetBagEquipType(sceneId, selfId, i) ~= -1 then
				LuaFnEquipEnhance(sceneId, selfId, i, i)
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		x002192_NotifyFailTips(sceneId,selfId,"T¤t cä trang b¸ ðßþc cß¶ng hoá +1")
	end
	
	if key == 3 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,19830424)
	end

	if key == 4 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,27)
	end

	if key == 5 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,751107)
	end

	if key == 6 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,25702)
	end
	
	if key == 7 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1005)
	end

	if key == 8 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1001)
	end

	if key == 9 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,112233)
	end
end	
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002192_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
	--*****************--

	--*****************--	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002192_NotifyFailTips(sceneId,selfId,Tip)
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end