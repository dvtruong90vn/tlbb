--Th·nh Th˙ SΩn±¶œ‰’˘∂·
--¥Û±¶œ‰NPCΩªª•Ω≈±æ

--Ω≈±æ∫≈
x808067_g_ScriptId	= 808067

--Th·nh Th˙ SΩn±¶œ‰’˘∂·ªÓ∂ØΩ≈±æ
x808067_g_ActivityScriptId	= 808066

-- ‹œﬁbuff....
x808067_g_LimitiBuff = {

			50,
			112,
			1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,
			1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,
			7084,
			7085,

}


--**********************************
--Ãÿ ‚Ωªª•:Ãıº˛≈–∂œ
--**********************************
function x808067_OnActivateConditionCheck( sceneId, selfId, activatorId )

	local strText = "Tr’ng th·i trﬂæc m°t khÙng th¨ m∑ ra"
	--Œﬁµ–◊¥Ã¨Œﬁ∑®M∑ ra ±¶œ‰....
	if LuaFnIsUnbreakable(sceneId,activatorId) ~= 0 then
		BeginEvent(sceneId)
		 		AddText(sceneId,strText)
		 	EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	--“˛…Ì◊¥Ã¨Œﬁ∑®M∑ ra ±¶œ‰....
	if LuaFnIsConceal(sceneId,activatorId) ~= 0 then
		BeginEvent(sceneId)
		 		AddText(sceneId,strText)
		 	EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	-- ‹œﬁbuffŒﬁ∑®M∑ ra ....
	for i, impactId in x808067_g_LimitiBuff do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, activatorId, impactId) == 1 then
			BeginEvent(sceneId)
			 		AddText(sceneId,strText)
			 	EndEvent(sceneId)
			DispatchMissionTips(sceneId,activatorId)
			return 0
		end
	end

	--ºÏ≤‚±≥∞¸–˙ng∑Ò”–µÿ∑Ω....
	if LuaFnGetPropertyBagSpace( sceneId, activatorId ) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "Ch≤ trØng trong t˙i x·ch khÙng ¸" )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	--ºÏ≤‚–˙ng∑Òø…“‘ø™¥Û±¶œ‰....
	local bRet, PlayerName = CallScriptFunction( x808067_g_ActivityScriptId, "CheckOpenBigBox", sceneId, activatorId )

	if bRet == 0 then
		BeginEvent(sceneId)
		 		AddText(sceneId,"B‰o vßt mong muØn b∏ ngﬂ∂i o’t i r∞i");
		 	EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	if bRet == -1 then
		BeginEvent(sceneId)
		 		AddText(sceneId, PlayerName.."–ang m∑ b‰o tﬂΩng, t’m th∂i khÙng th¨ thao t·c");
		 	EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	return 1

end

--**********************************
--Ãÿ ‚Ωªª•:œ˚∫ƒ∫Õø€≥˝¥¶¿Ì
--**********************************
function x808067_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:æ€∆¯¿‡≥…π¶…˙–ß¥¶¿Ì
--**********************************
function x808067_OnActivateEffectOnce( sceneId, selfId, activatorId )
	CallScriptFunction( x808067_g_ActivityScriptId, "OnBigBoxOpen", sceneId, selfId, activatorId )
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:“˝µº¿‡√ø ±º‰º‰∏Ù…˙–ß¥¶¿Ì
--**********************************
function x808067_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--Ãÿ ‚Ωªª•:Ωªª•ø™ º ±to’ µ Ãÿ ‚¥¶¿Ì
--**********************************
function x808067_OnActivateActionStart( sceneId, selfId, activatorId )
		return 1
end

--**********************************
--Ãÿ ‚Ωªª•:Ωªª•≥∑œ˚ ±to’ µ Ãÿ ‚¥¶¿Ì
--**********************************
function x808067_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--Ãÿ ‚Ωªª•:Ωªª•÷–∂œ ±to’ µ Ãÿ ‚¥¶¿Ì
--**********************************
function x808067_OnActivateInterrupt( sceneId, selfId, activatorId )
	CallScriptFunction( x808067_g_ActivityScriptId, "OnCancelOpen", sceneId )
	return 0
end
