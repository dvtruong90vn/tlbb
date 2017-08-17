--½Å±¾ºÅ
x895095_g_ScriptId	= 895095

--¸±±¾Âß¼­½Å±¾ºÅ....
x895095_g_FuBenScriptId = 895063

x895095_MyName			= "Nguyên Th¥n Phù Tr§n"	--×Ô¼ºµÄÃû×Ö....
x895095_BrotherName			= "Gia Lu§t Liên Thành - Nguyên Th¥n"	--×Ô¼ºµÄÃû×Ö....


--**********************************
--³õÊ¼»¯....
--**********************************
function x895095_OnInit(sceneId, selfId)


end


--**********************************
--ÐÄÌø....
--**********************************
function x895095_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x895095_IDX_CombatFlag ) then
		return
	end

	--¿¿½ü¸øBUFF....
	local x,z = GetWorldPos(sceneId,selfId)
	local MonsterId, DogX, DogZ
	local nMonsterNum = GetMonsterCount( sceneId )
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId, i)
		if GetName(sceneId, MonsterId) == x895095_BrotherName then
			DogX, DogZ = GetWorldPos( sceneId, MonsterId )
		end
	end
	if (x - DogX) * (x - DogX) + (z - DogZ) * (z - DogZ) < 10*10 then
		LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, 19464, 0 )
	end

end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x895095_OnEnterCombat(sceneId, selfId, enmeyId)

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x895095_OnLeaveCombat(sceneId, selfId)

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x895095_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x895095_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x895095_ResetMyAI( sceneId, selfId )

end


--**********************************
--ÖØÖÃAI....
--**********************************
function x895095_ResetMyAI( sceneId, selfId )

end


