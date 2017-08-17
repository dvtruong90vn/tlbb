--∆Æ√Ï∑Â …£Õ¡π´AI

--A °æÕ¡∂›°øBOSSµƒHP√øÀ ß20%‘Úª·œ˚ ß20√Î....Õ¨ ±¥¥Ω®–°π÷“¿¥ŒŒ™1122÷ª..À¿ÕˆorÕ—¿Î’Ω∂∑œ˚ ß....
--B °æ≈£√´∂æ’Î°ø∑«Õ¡∂›◊¥Ã¨ ±√ø∏Ù20“ª¥Œ¥Û∑∂Œßπ•ª˜....Õ¡∂›◊¥Ã¨œ¬CD’˝≥£◊ﬂ÷ª «≤ª π”√....Õ¡∂›Ω· ¯ ±«ÂCD....
--C °æ≥ˆÕ¡ŒƒŒÔ°øΩ¯»ÎÕ¡∂› ±ÀÊª˙ªÒµ√2∏ˆbuff....Õ¨ ±«Â≥˝…œ¥Œµƒ2∏ˆbuff....
--D °æ∑ËøÒ°ø’Ω∂∑5∑÷÷”∫Û∏¯◊‘º∫∫ÕÀ˘”–Ω© ¨º”“ªª˜÷¬√¸buff....≤ª‘Ÿ π”√AB(C)....

--»´≥Ã∂º¥¯”–√‚“ﬂ÷∆∂®ººƒ‹µƒbuff....
--Õ—¿Î’Ω∂∑ªÚÀ¿Õˆ ±…æ≥˝Ω© ¨....


--Ω≈±æ∫≈
x890065_g_ScriptId	= 890065

--∏±±æ¬ﬂº≠Ω≈±æ∫≈....
x890065_g_FuBenScriptId = 890063


--√‚“ﬂÃÿ∂®ººƒ‹buff....
x890065_Buff_MianYi1	= 10472	--√‚“ﬂ“ª–©∏∫√Ê–ßπ˚....
x890065_Buff_MianYi2	= 10471	--√‚“ﬂ∆’Õ®“˛…Ì....

--AÕ¡∂›....
x890065_SkillA_TuDun				= 1028
x890065_SkillA_ChildName		= "BÂng T¢m"
x890065_SkillA_ChildBuff		= 10246
x890065_SkillA_ChildTime		= 5000		--Õ¡∂›∂‡≥§ ±º‰∫Ûø™ ºÀ¢–°π÷....
x890065_SkillA_Time					= 20000		--Õ¡∂›≥÷–¯µƒ ±º‰....


--B≈£√´∂æ’Î....
x890065_SkillB_NiuMaoDuZhen = 751
--¿‰»¥ ±º‰....
x890065_SkillB_CD						= 60000


--C≥ˆÕ¡ŒƒŒÔººƒ‹µƒbuff¡–±Ì....
--x890065_SkillC_ChutuBuff1 = { 10237, 10238 }
--x890065_SkillC_ChutuBuff2 = { 10239, 10240, 10241, 10242 }

x890065_SkillC_ChutuBuff1 = { 6446, 6446 }
x890065_SkillC_ChutuBuff2 = { 6446, 6446, 6446, 6446 }

--D∑ËøÒ....
x890065_SkillD_Buff1	= 10217
x890065_SkillD_Buff2	= 10217
--ø™ ºΩ¯»ÎøÒ±©◊¥Ã¨µƒ ±º‰....
x890065_EnterKuangBaoTime	= 5*60*1000


--AI Index....
x890065_IDX_HPStep							= 1	--—™¡øº∂±....
x890065_IDX_SkillB_CD						= 2	--Bººƒ‹µƒCD ±º‰....
x890065_IDX_KuangBaoTimer				= 3	--øÒ±©µƒº∆ ±∆˜....
x890065_IDX_TuDunTimer					= 4	--Õ¡∂›µƒº∆ ±∆˜....”√”⁄º∆À„∫Œ ±Õ¡∂›Ω· ¯....
x890065_IDX_NeedCreateChildNum	= 5	--–Ë“™¥¥Ω®µƒ–°π÷µƒ ˝¡ø....

x890065_IDX_CombatFlag 			= 1	-- «∑Ò¥¶”⁄’Ω∂∑◊¥Ã¨µƒ±Í÷æ....
x890065_IDX_IsTudunMode			= 2	-- «∑Ò¥¶”⁄Õ¡∂›ƒ£ Ωµƒ±Í÷æ....
x890065_IDX_IsKuangBaoMode	= 3	-- «∑Ò¥¶”⁄øÒ±©ƒ£ Ωµƒ±Í÷æ....


--**********************************
--≥ı ºªØ....
--**********************************
function x890065_OnInit(sceneId, selfId)
	--÷ÿ÷√AI....
	x890065_ResetMyAI( sceneId, selfId )
end


--**********************************
--–ƒÃ¯....
--**********************************
function x890065_OnHeartBeat(sceneId, selfId, nTick)

	--ºÏ≤‚ «≤ª «À¿¡À....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--ºÏ≤‚ «∑Ò≤ª‘⁄’Ω∂∑◊¥Ã¨....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x890065_IDX_CombatFlag ) then
		return
	end

	--øÒ±©◊¥Ã¨≤ª–Ë“™◊ﬂ¬ﬂº≠....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x890065_IDX_IsKuangBaoMode ) then
		return
	end

	--÷¥––øÒ±©¬ﬂº≠....
	if 1 == x890065_DoSkillD_KuangBao( sceneId, selfId, nTick ) then
		return
	end

	--÷¥––Õ¡∂›¬ﬂº≠....
	if 1 == x890065_SkillLogicA_TunDun( sceneId, selfId, nTick ) then
		return
	end

	--÷¥––≈£√´∂æ’Î¬ﬂº≠....
	if 1 == x890065_SkillLogicB_NiuMaoDuZhen( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--Ω¯»Î’Ω∂∑....
--**********************************
function x890065_OnEnterCombat(sceneId, selfId, enmeyId)

	--º”≥ı ºbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x890065_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x890065_Buff_MianYi2, 0 )

	--÷ÿ÷√AI....
	x890065_ResetMyAI( sceneId, selfId )

	--…Ë÷√Ω¯»Î’Ω∂∑◊¥Ã¨....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x890065_IDX_CombatFlag, 1 )

end


--**********************************
--¿Îø™’Ω∂∑....
--**********************************
function x890065_OnLeaveCombat(sceneId, selfId)

	--÷ÿ÷√AI....
	x890065_ResetMyAI( sceneId, selfId )

	--…æ≥˝◊‘º∫....
	LuaFnDeleteMonster( sceneId, selfId )

	--¥¥Ω®∂‘ª∞NPC....
	local MstId = CallScriptFunction( x890065_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuangJuXian_NPC", -1, -1 )
	SetUnitReputationID( sceneId, MstId, MstId, 0 )

end


--**********************************
--…±À¿µ–»À....
--**********************************
function x890065_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--À¿Õˆ....
--**********************************
function x890065_OnDie( sceneId, selfId, killerId )

	--÷ÿ÷√AI....
	x890065_ResetMyAI( sceneId, selfId )

	--…Ë÷√“—æ≠ÃÙ’Ωπ˝…£Õ¡π´....
	CallScriptFunction( x890065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "ZhuangJuXian", 2 )

	--»Áπ˚ªπ√ª”–ÃÙ’Ωπ˝Œ⁄¿œ¥Û‘Úø…“‘ÃÙ’ΩŒ⁄¿œ¥Û....
	if 2 ~= CallScriptFunction( x890065_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "MuRongFu" )	then
		CallScriptFunction( x890065_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "MuRongFu", 1 )
	end
	
	-- zchw »´«Úπ´∏Ê
	local	playerName	= GetName( sceneId, killerId )
	
	--…±À¿π÷ŒÔµƒ «≥ËŒÔ‘ÚªÒ»°∆‰÷˜»Àµƒ√˚◊÷....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--»Áπ˚ÕÊº“◊È∂”¡À‘ÚªÒ»°∂”≥§µƒ√˚◊÷....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("#YTrang T¯ Hi´n#W c˚ng khÙng trØng tr˜i n±i væi t± µi c¸a #cFF0000#{_INFOUSR%s}#W, b∏ ·nh cho nﬂæc ch‰y hoa rΩi, trØn ch’y rΩi h™t c‰ ti´n b’c ra ngo‡i...", playerName); --…£Õ¡π´
		AddGlobalCountNews( sceneId, str )
	end
	
end


--**********************************
--÷ÿ÷√AI....
--**********************************
function x890065_ResetMyAI( sceneId, selfId )

	--÷ÿ÷√≤Œ ˝....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_HPStep, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_SkillB_CD, x890065_SkillB_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_KuangBaoTimer, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_TuDunTimer, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_NeedCreateChildNum, 0 )

	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x890065_IDX_CombatFlag, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x890065_IDX_IsTudunMode, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x890065_IDX_IsKuangBaoMode, 0 )

	--«Â≥˝buff....
	for i, buffId in x890065_SkillC_ChutuBuff1 do
		LuaFnCancelSpecificImpact( sceneId, selfId, buffId )
	end

	for i, buffId in x890065_SkillC_ChutuBuff2 do
		LuaFnCancelSpecificImpact( sceneId, selfId, buffId )
	end

	LuaFnCancelSpecificImpact( sceneId, selfId, x890065_SkillD_Buff1 )
	LuaFnCancelSpecificImpact( sceneId, selfId, x890065_SkillD_Buff2 )

	--«Â≥˝–°π÷....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, MonsterId) == x890065_SkillA_ChildName then
			LuaFnDeleteMonster(sceneId, MonsterId)
		end
	end

end


--**********************************
--øÒ±©ººƒ‹....
--**********************************
function x890065_DoSkillD_KuangBao( sceneId, selfId )

	--º”øÒ±©buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x890065_SkillD_Buff1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x890065_SkillD_Buff2, 0 )

	--∏¯À˘”––°π÷º”øÒ±©....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, MonsterId) == x890065_SkillA_ChildName then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x890065_SkillD_Buff1, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x890065_SkillD_Buff2, 0 )
		end
	end

end


--**********************************
--Õ¡∂›¬ﬂº≠....
--**********************************
function x890065_SkillLogicA_TunDun( sceneId, selfId, nTick )


	--Õ¡∂›ƒ£ Ω‘Ú∏¸–¬Õ¡∂›µƒº∆ ±∆˜....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x890065_IDX_IsTudunMode ) then

		local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x890065_IDX_TuDunTimer )
		if cd > nTick then

			MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_TuDunTimer, cd-nTick )
			--»Áπ˚µΩ¡ÀÀ¢–°π÷µƒ ±º‰≤¢«“±æ¥ŒÕ¡∂›ªπ√ªÀ¢π˝–°π÷....
			if cd < (x890065_SkillA_Time-x890065_SkillA_ChildTime) then
				local needCreateNum = MonsterAI_GetIntParamByIndex( sceneId, selfId, x890065_IDX_NeedCreateChildNum )
				if needCreateNum > 0 then
					--¥¥Ω®–°π÷....
					MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_NeedCreateChildNum, 0 )
					local x,z = GetWorldPos( sceneId, selfId )
					for i=1, needCreateNum do
						local MstId = CallScriptFunction( x890065_g_FuBenScriptId, "CreateBOSS", sceneId, "JiangShi_BOSS", x, z )
						LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x890065_SkillA_ChildBuff, 0 )
						SetCharacterName( sceneId, MstId, x890065_SkillA_ChildName )
					end
				end
			end

		else

			--Õ¡∂›Ω· ¯....…Ë÷√¿Îø™Õ¡∂›◊¥Ã¨....
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_TuDunTimer, 0 )
			MonsterAI_SetBoolParamByIndex( sceneId, selfId, x890065_IDX_IsTudunMode, 0 )
			--÷ÿ÷√≈£√´∂æ’ÎCD....
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_SkillB_CD, x890065_SkillB_CD )

		end


	--∑«Õ¡∂›ƒ£ Ω‘ÚºÏ≤‚ «∑Òø…“‘Ω¯»ÎÕ¡∂›ƒ£ Ω....
	else


		--√øºı…Ÿ20%—™ ±Ω¯»ÎÕ¡∂›ƒ£ Ω....
		local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
		local LastStep = MonsterAI_GetIntParamByIndex( sceneId, selfId, x890065_IDX_HPStep )
		local CurStep = -1
		if CurPercent <= 0.2 then
			CurStep = 4
		elseif CurPercent <= 0.4 then
		 	CurStep = 3
		elseif CurPercent <= 0.6 then
		 	CurStep = 2
		elseif CurPercent <= 0.8 then
			CurStep = 1
		end

		--Ω¯––Õ¡∂›....
		if CurStep > LastStep then
			--∏¯◊‘º∫…Ë÷√“˛…Ìand≤ªƒ‹π•ª˜....
			local x,z = GetWorldPos( sceneId, selfId )
			LuaFnUnitUseSkill( sceneId, selfId, x890065_SkillA_TuDun, selfId, x, z, 0, 1 )

			--ÀÊª˙ªÒµ√2∏ˆbuff(≥ˆÕ¡ŒƒŒÔ)....
			local idx1 = random( getn(x890065_SkillC_ChutuBuff1) )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x890065_SkillC_ChutuBuff1[idx1], 0 )
			local idx2 = random( getn(x890065_SkillC_ChutuBuff2) )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x890065_SkillC_ChutuBuff2[idx2], 0 )

			local NeedCreateNum = 1
			if CurStep == 3 or CurStep == 4 then
				NeedCreateNum = 2
			end

			MonsterAI_SetBoolParamByIndex( sceneId, selfId, x890065_IDX_IsTudunMode, 1 )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_NeedCreateChildNum, NeedCreateNum )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_HPStep, CurStep )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_TuDunTimer, x890065_SkillA_Time )
			return 1
		end


	end

	return 0

end


--**********************************
--≈£√´∂æ’Î¬ﬂº≠....
--**********************************
function x890065_SkillLogicB_NiuMaoDuZhen( sceneId, selfId, nTick )

	--∏¸–¬ººƒ‹CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x890065_IDX_SkillB_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_SkillB_CD, cd-nTick )
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_SkillB_CD, x890065_SkillB_CD-(nTick-cd) )
		--∑«Õ¡∂›◊¥Ã¨≤≈ø…“‘”√....
		if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x890065_IDX_IsTudunMode ) then
			local x,z = GetWorldPos( sceneId, selfId )
			MonsterTalk( sceneId, -1, "", "#{PMF_20080530_16}" )
			LuaFnUnitUseSkill( sceneId, selfId, x890065_SkillB_NiuMaoDuZhen, selfId, x, z, 0, 0 )
			return 1
		end
	end

	return 0

end


--**********************************
--øÒ±©¬ﬂº≠....
--**********************************
function x890065_DoSkillD_KuangBao( sceneId, selfId, nTick )

	--ºÏ≤‚ «∑ÒµΩ¡ÀøÒ±©µƒ ±∫Ú....
	local kbTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x890065_IDX_KuangBaoTimer )
	if kbTime < x890065_EnterKuangBaoTime then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x890065_IDX_KuangBaoTimer, kbTime+nTick )

	else

		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x890065_IDX_IsKuangBaoMode, 1 )
		--º”øÒ±©buff....
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x890065_SkillD_Buff1, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x890065_SkillD_Buff2, 0 )
		--∏¯À˘”––°π÷º”øÒ±©buff....
		local nMonsterNum = GetMonsterCount(sceneId)
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId,i)
			if GetName(sceneId, MonsterId) == x890065_SkillA_ChildName then
				LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x890065_SkillD_Buff1, 0 )
				LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x890065_SkillD_Buff2, 0 )
			end
		end
		return 1

	end


	return 0

end
