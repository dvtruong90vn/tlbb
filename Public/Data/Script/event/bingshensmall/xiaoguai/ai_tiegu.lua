--Ω≈±æ∫≈
x895092_g_ScriptId	= 895092

--∏±±æ¬ﬂº≠Ω≈±æ∫≈....
x895092_g_FuBenScriptId = 895063

x895092_MyName			= "Gia Lußt LiÍn Th‡nh - Thi™t CØt"	--◊‘º∫µƒ√˚◊÷....
x895092_BrotherName			= "Gia Lußt LiÍn Th‡nh"	--◊‘º∫µƒ√˚◊÷....

--√‚“ﬂBuff....
x895092_Buff_MianYi1	= 10472	--√‚“ﬂ“ª–©∏∫√Ê–ßπ˚....
x895092_Buff_MianYi2	= 10471	--√‚“ﬂ∆’Õ®“˛…Ì....

--Dººƒ‹....
x895092_BuffD				= 19801	--ºÚµ•∞ÊÁŒÁø∑Â π”√…À∫¶ΩµµÕ¡Àµƒ∞Ê±æ....
x895092_SkillD_CD		= 5000

--AI Index....
x895092_IDX_CD_SkillD			= 1	--Dººƒ‹µƒCD....

x895092_IDX_CombatFlag 		= 1	-- «∑Ò¥¶”⁄’Ω∂∑◊¥Ã¨µƒ±Í÷æ....


--**********************************
--≥ı ºªØ....
--**********************************
function x895092_OnInit(sceneId, selfId)
	--÷ÿ÷√AI....
	x895092_ResetMyAI( sceneId, selfId )

end


--**********************************
--–ƒÃ¯....
--**********************************
function x895092_OnHeartBeat(sceneId, selfId, nTick)

	--ºÏ≤‚ «≤ª «À¿¡À....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--ºÏ≤‚ «∑Ò≤ª‘⁄’Ω∂∑◊¥Ã¨....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895092_IDX_CombatFlag ) then
		return
	end

	--Dººƒ‹–ƒÃ¯....
	if 1 == x895092_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--Ω¯»Î’Ω∂∑....
--**********************************
function x895092_OnEnterCombat(sceneId, selfId, enmeyId)

	--º”≥ı ºbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895092_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x895092_Buff_MianYi2, 0 )

	--÷ÿ÷√AI....
	x895092_ResetMyAI( sceneId, selfId )

	--…Ë÷√Ω¯»Î’Ω∂∑◊¥Ã¨....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x895092_IDX_CombatFlag, 1 )

end


--**********************************
--¿Îø™’Ω∂∑....
--**********************************
function x895092_OnLeaveCombat(sceneId, selfId)

	--÷ÿ÷√AI....
	x895092_ResetMyAI( sceneId, selfId )

	--…æ≥˝◊‘º∫....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--…±À¿µ–»À....
--**********************************
function x895092_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--À¿Õˆ....
--**********************************
function x895092_OnDie( sceneId, selfId, killerId )

	--÷ÿ÷√AI....
	x895092_ResetMyAI( sceneId, selfId )

	--…æ≥˝◊‘º∫....
	SetCharacterDieTime( sceneId, selfId, 3000 )

	--±È¿˙≥°æ∞¿ÔÀ˘”–µƒπ÷....—∞’“–÷µ‹....∏¯∆‰…Ë÷√–Ë“™ π”√øÒ±©ººƒ‹....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895092_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19454, 0 )
		end
	end

	CallScriptFunction((200060), "Paopao",sceneId, "Gia Lußt LiÍn Th‡nh", "Binh Th·nh Kœ Trßn", "NguyÍn th•n thi™t cØt l® n‡o l’i b∏ ph· h¸y. Ph‰i chÂng l‡ ˝ tr∂i?" )
	CallScriptFunction( x894092_g_FuBenScriptId, "TipAllHuman", sceneId, "Tr•n D˚ng –’o Nh‚n: B∑i ch˙ng ta tßp kÌch Ím hÙm, khÙng k∏p phÚng b∏ nÍn Gia Lußt LiÍn Th‡nh l˙c n‡y „ ’i th˜ thﬂΩng. L˙c n‡y khÙng tiÍu diÆt h°n thÏ cÚn ch∂ l˙c n‡o nÊa?" )

end


--**********************************
--÷ÿ÷√AI....
--**********************************
function x895092_ResetMyAI( sceneId, selfId )

	--÷ÿ÷√≤Œ ˝....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x895092_IDX_CD_SkillD, x895092_SkillD_CD )

end


--**********************************
--ABCººƒ‹–ƒÃ¯....
--**********************************
function x895092_TickSkillABC( sceneId, selfId, nTick )

end


--**********************************
--Dººƒ‹–ƒÃ¯....
--**********************************
function x895092_TickSkillD( sceneId, selfId, nTick )

	--∏¸–¬ººƒ‹CD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x895092_IDX_CD_SkillD )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895092_IDX_CD_SkillD, cd-nTick )
		return 0

	else

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x895092_IDX_CD_SkillD, x895092_SkillD_CD-(nTick-cd) )
		return x895092_UseSkillD( sceneId, selfId )

	end

end


--**********************************
-- π”√Dººƒ‹....
--**********************************
function x895092_UseSkillD( sceneId, selfId )

	--±È¿˙≥°æ∞¿ÔÀ˘”–µƒπ÷....—∞’“–÷µ‹....∏¯∆‰…Ë÷√–Ë“™ π”√øÒ±©ººƒ‹....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x895092_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19453, 0 )
		end
	end

end
