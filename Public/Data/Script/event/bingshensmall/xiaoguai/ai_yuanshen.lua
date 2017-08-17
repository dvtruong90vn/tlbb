--Ω≈±æ∫≈
x895093_g_ScriptId	= 895093

--∏±±æ¬ﬂº≠Ω≈±æ∫≈....
x895093_g_FuBenScriptId = 895063

x895093_MyName			= "Gia Lußt LiÍn Th‡nh - NguyÍn Th•n"	--◊‘º∫µƒ√˚◊÷....
x895093_BrotherName			= "Gia Lußt LiÍn Th‡nh"	--◊‘º∫µƒ√˚◊÷....

--√‚“ﬂBuff....
x895093_Buff_MianYi1	= 10472	--√‚“ﬂ“ª–©∏∫√Ê–ßπ˚....
x895093_Buff_MianYi2	= 10471	--√‚“ﬂ∆’Õ®“˛…Ì....

--Dººƒ‹....
x895093_BuffD				= 19801	--ºÚµ•∞ÊÁŒÁø∑Â π”√…À∫¶ΩµµÕ¡Àµƒ∞Ê±æ....
x895093_SkillD_CD		= 5000

--AI Index....
x895093_IDX_CD_SkillD			= 1	--Dººƒ‹µƒCD....

x895093_IDX_CombatFlag 		= 1	-- «∑Ò¥¶”⁄’Ω∂∑◊¥Ã¨µƒ±Í÷æ....


--**********************************
--≥ı ºªØ....
--**********************************
function x895093_OnInit(sceneId, selfId)
	--÷ÿ÷√AI....
	x895093_ResetMyAI( sceneId, selfId )

end


--**********************************
--–ƒÃ¯....
--**********************************
function x895093_OnHeartBeat(sceneId, selfId, nTick)

	--ºÏ≤‚ «≤ª «À¿¡À....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--ºÏ≤‚ «∑Ò≤ª‘⁄’Ω∂∑◊¥Ã¨....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895093_IDX_CombatFlag ) then
		return
	end

	--Dººƒ‹–ƒÃ¯....
	if 1 == x895093_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--Ω¯»Î’Ω∂∑....
--**********************************
function x895093_OnEnterCombat(sceneId, selfId, enmeyId)

	--º”≥ı ºbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895093_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895093_Buff_MianYi2, 0 )

	--÷ÿ÷√AI....
	x895093_ResetMyAI( sceneId, selfId )

	--…Ë÷√Ω¯»Î’Ω∂∑◊¥Ã¨....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895093_IDX_CombatFlag, 1 )

end


--**********************************
--¿Îø™’Ω∂∑....
--**********************************
function x895093_OnLeaveCombat(sceneId, selfId)

	--÷ÿ÷√AI....
	x895093_ResetMyAI( sceneId, selfId )

	--…æ≥˝◊‘º∫....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--…±À¿µ–»À....
--**********************************
function x895093_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--À¿Õˆ....
--**********************************
function x895093_OnDie( sceneId, selfId, killerId )

	--÷ÿ÷√AI....
	x895093_ResetMyAI( sceneId, selfId )

	--…æ≥˝◊‘º∫....
	SetCharacterDieTime( sceneId, selfId, 3000 )

	--±È¿˙≥°æ∞¿ÔÀ˘”–µƒπ÷....—∞’“–÷µ‹....∏¯∆‰…Ë÷√–Ë“™ π”√øÒ±©ººƒ‹....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895093_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19454, 0 )
		end
	end

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lußt LiÍn Th‡nh", "Binh Th·nh Kœ Trßn", "NguyÍn th•n thi™t cØt nhﬂ th™ n‡o m‡ l’i b∏ ph· h¸y? Ch‰ nh® l‡ ˝ tr∂i?" )
	CallScriptFunction( x894093_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr•n D˚ng –’o Nh‚n: Do ta tßp kÌch ban Ím b§t ng∂, Da Lußt LiÍn Th‡nh khÙng k∏p phÚng b∏, „ b∏ th˜ thﬂΩng n£ng, cÚn ch∂ gÏ m‡ khÙng nh‚n cΩ hµi gia tay tiÍu diÆt h°n?" )

end


--**********************************
--÷ÿ÷√AI....
--**********************************
function x895093_ResetMyAI( sceneId, selfId )

	--÷ÿ÷√≤Œ ˝....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895093_IDX_CD_SkillD, x895093_SkillD_CD )

end


--**********************************
--ABCººƒ‹–ƒÃ¯....
--**********************************
function x895093_TickSkillABC( sceneId, selfId, nTick )

end


--**********************************
--Dººƒ‹–ƒÃ¯....
--**********************************
function x895093_TickSkillD( sceneId, selfId, nTick )

	--∏¸–¬ººƒ‹CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895093_IDX_CD_SkillD )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895093_IDX_CD_SkillD, cd-nTick )
		return 0

	else

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895093_IDX_CD_SkillD, x895093_SkillD_CD-(nTick-cd) )
		return x895093_UseSkillD( sceneId, selfId )

	end

end


--**********************************
-- π”√Dººƒ‹....
--**********************************
function x895093_UseSkillD( sceneId, selfId )

	--±È¿˙≥°æ∞¿ÔÀ˘”–µƒπ÷....—∞’“–÷µ‹....∏¯∆‰…Ë÷√–Ë“™ π”√øÒ±©ººƒ‹....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895093_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19453, 0 )
		end
	end

end
