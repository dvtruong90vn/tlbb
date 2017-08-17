-- 125024 ±¶œ‰
-- ªÒ»°buffµƒ±¶œ‰

x125024_g_scriptId = 125024

--**********************************
--Ãÿ ‚Ωªª•:Ãıº˛≈–∂œ
--**********************************
function x125024_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- œﬁ÷∆…Ì…œµƒbuff
	local bOk = CallScriptFunction((125022), "IsCanOpenBox",sceneId,activatorId )

	if bOk == 0  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"C·c h’ hiÆn t’i khÙng th¨ m∑ b‰o sﬂΩng n‡y.");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,activatorId,selfId)
		
	end
	
	if GetUnitCampID(sceneId, activatorId, activatorId) < 10   then
    BeginEvent(sceneId)
      AddText(sceneId,"NgﬂΩi hiÆn t’i chi™n §u trong phe khÙng x·c ∏nh, khÙng th¨ m∑ ra b‰o sﬂΩng.");
    EndEvent(sceneId)
    DispatchMissionTips(sceneId,activatorId,selfId)
		bOk = 0
	end
	
	return bOk
end

--**********************************
--Ãÿ ‚Ωªª•:œ˚∫ƒ∫Õø€≥˝¥¶¿Ì
--**********************************
function x125024_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:æ€∆¯¿‡≥…π¶…˙–ß¥¶¿Ì
--**********************************
function x125024_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- ∞¥’’’‚∏ˆNpcµƒ–’√˚∏¯ÕÊº“+buff£¨
	-- selfId == ±¶œ‰Id
	-- activatorId == ø™∆Ù»ÀId
	
	local x
	local z
	x,z = GetWorldPos(sceneId, selfId)
	LuaFnDeleteMonster(sceneId, selfId)
	
	-- ∏¯ø™∆Ù≥…π¶µƒÕÊº““ª∏ˆµÙ¬‰∞¸
	local nItemId = 40004434

	local nBoxId = DropBoxEnterScene(	x,z,sceneId )
	if nBoxId > -1  then
		AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,1,nItemId)

		-- ∞—’‚∏ˆµÙ¬‰∞Û∂®∏¯÷∆∂®ÕÊº“
		SetItemBoxOwner(sceneId, nBoxId, LuaFnGetGUID(sceneId,activatorId))
	end
	
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:“˝µº¿‡√ø ±º‰º‰∏Ù…˙–ß¥¶¿Ì
--**********************************
function x125024_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:Ωªª•ø™ º ±µƒÃÿ ‚¥¶¿Ì
--**********************************
function x125024_OnActivateActionStart( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:Ωªª•≥∑œ˚ ±µƒÃÿ ‚¥¶¿Ì
--**********************************
function x125024_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--Ãÿ ‚Ωªª•:Ωªª•÷–∂œ ±µƒÃÿ ‚¥¶¿Ì
--**********************************
function x125024_OnActivateInterrupt( sceneId, selfId, activatorId )
	return 0
end

function x125024_OnActivateInterrupt( sceneId, selfId, activatorId )

end

