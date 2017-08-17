--½Å±¾ºÅ
x895094_g_ScriptId	= 895094

--¸±±¾Âß¼­½Å±¾ºÅ....
x895094_g_FuBenScriptId = 895063

x895094_MyName			= "Thiªt C¯t Phù Tr§n"	--×Ô¼ºµÄÃû×Ö....
x895094_BrotherName			= "Gia Lu§t Liên Thành - Thiªt C¯t"	--×Ô¼ºµÄÃû×Ö....


--**********************************
--³õÊ¼»¯....
--**********************************
function x895094_OnInit(sceneId, selfId)

end


--**********************************
--ÐÄÌø....
--**********************************
function x895094_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895094_IDX_CombatFlag ) then
		return
	end

	--¿¿½ü¸øBUFF....
	local x,z = GetWorldPos(sceneId,selfId)
	local MonsterId, DogX, DogZ
	local nMonsterNum = GetMonsterCount( sceneId )
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId, i)
		if GetName(sceneId, MonsterId) == x895094_BrotherName then
			DogX, DogZ = GetWorldPos( sceneId, MonsterId )
		end
	end
	if (x - DogX) * (x - DogX) + (z - DogZ) * (z - DogZ) < 10*10 then
		LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19462, 0 )
	end

end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x895094_OnEnterCombat(sceneId, selfId, enmeyId)


end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x895094_OnLeaveCombat(sceneId, selfId)

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x895094_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x895094_OnDie( sceneId, selfId, killerId )


end


--**********************************
--ÖØÖÃAI....
--**********************************
function x895094_ResetMyAI( sceneId, selfId )


end


