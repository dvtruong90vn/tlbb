-- ª™…Ω¬€Ω£
-- √ÿºÆΩ≈±æ

x001235_g_scriptId = 001235

x001235_g_SmallBoxBuff = {
				{name="Tÿ S°c NÌ KÌp",buff=8053},
				{name="Ho‡ng S°c BÌ KÌp",buff=8052},
				{name="L¯c S°c BÌ KÌp",buff=8051},
				{name="B’ch S°c BÌ KÌp",buff=8050},
				{name="H°c S°c BÌ KÌp",buff=8049},
				{name="Lam S°c BÌ KÌp",buff=8048},
				{name="H∞ng S°c BÌ KÌp",buff=8047},
}

--**********************************
--Ãÿ ‚Ωªª•:Ãıº˛≈–∂œ
--**********************************
function x001235_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- œﬁ÷∆…Ì…œµƒbuff
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:œ˚∫ƒ∫Õø€≥˝¥¶¿Ì
--**********************************
function x001235_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:æ€∆¯¿‡≥…π¶…˙–ß¥¶¿Ì
--**********************************
function x001235_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- ∞¥’’’‚∏ˆNpcµƒ–’√˚∏¯ÕÊº“+buff£¨
	local szName = GetName(sceneId, selfId)
	for i=1, getn(x001235_g_SmallBoxBuff)  do
		if szName == x001235_g_SmallBoxBuff[i].name  then
			LuaFnDeleteMonster(sceneId, selfId)
			LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x001235_g_SmallBoxBuff[i].buff, 100 )
		end
	end	
	
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:“˝µº¿‡√ø ±º‰º‰∏Ù…˙–ß¥¶¿Ì
--**********************************
function x001235_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:Ωªª•ø™ º ±µƒÃÿ ‚¥¶¿Ì
--**********************************
function x001235_OnActivateActionStart( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:Ωªª•≥∑œ˚ ±µƒÃÿ ‚¥¶¿Ì
--**********************************
function x001235_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--Ãÿ ‚Ωªª•:Ωªª•÷–∂œ ±µƒÃÿ ‚¥¶¿Ì
--**********************************
function x001235_OnActivateInterrupt( sceneId, selfId, activatorId )
	return 0
end

function x001235_OnActivateInterrupt( sceneId, selfId, activatorId )

end

