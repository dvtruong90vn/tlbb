--°ïÕ½¸±±¾
--ÆìÌ¨NPC½»»¥½Å±¾

--½Å±¾ºÅ
x402301_g_ScriptId	= 402301

--°ïÕ½¸±±¾½Å±¾
x402301_g_BangzhanScriptId	= 402047

--´óÆì´æTÕi Ê±¼ä
x402301_g_FlagTime	= 10*60

x402301_g_OpenFlagSelfIDIndex = 10						--µ±Ç°ÕýTÕi ²Ù×÷ÆìÌ¨toÕ ðµ selfidTÕi 32cái¸±±¾Êý¾ÝÖÐtoÕ ðµ Ë÷Òý
x402301_g_OpenFlagStartTime = 11							--µ±Ç°ÕýTÕi ²Ù×÷ÆìÌ¨toÕ ðµ ¿ªÊ¼Ê±¼äTÕi 32cái¸±±¾Êý¾ÝÖÐtoÕ ðµ Ë÷Òý
x402301_g_FlagRemainedTime = 12								--ÆìÖÄÉýÆðÒÔºótoÕ ðµ Ê£ÓàÊ±¼äTÕi 32cái¸±±¾Êý¾ÝÖÐtoÕ ðµ Ë÷Òý

x402301_g_GuildPoint_GetFlag = 4							--»ý·Ö¹æÔòË÷Òý,±íGuildWarPoint.txttoÕ ðµ ID

--°ïÕ½Êý¾ÝË÷Òý,¶ÔÓ¦³ÌÐòÖÐtoÕ ðµ  enum GUILDWAR_INT_ARRAY
x402301_g_A_FlagNumIndex = 16									--A°ïÕ¼Áì´óÆì´ÎÊýTÕi °ïÕ½Êý×éÖÐtoÕ ðµ Ë÷Òý
x402301_g_B_FlagNumIndex = 17									--B°ïÕ¼Áì´óÆì´ÎÊýTÕi °ïÕ½Êý×éÖÐtoÕ ðµ Ë÷Òý

--cáiÈË»ý·ÖÊý¾ÝË÷Òý,¶ÔÓ¦³ÌÐòenum GUILDWAR_INT_INDEX
x402301_g_Human_FlagIndex = 3									--cáiÈËÕ¼Áì´óÆì´ÎÊýË÷Òý


--ÕóÓªNPC
x402301_g_A_FlagName = "Viêm Hoàng chiªn kÏ"
x402301_g_A_FlagID = 13332
x402301_g_A_FlagPosX = 115.9615
x402301_g_A_FlagPosZ = 130.9660

x402301_g_B_FlagName = "Xi Vßu chiªn kÏ"
x402301_g_B_FlagID = 13323
x402301_g_B_FlagPosX = 115.9615
x402301_g_B_FlagPosZ = 130.9660

--**********************************
--ÌØÊâ½»»¥:Ìõ¼þÅÐ¶Ï
--**********************************
function x402301_OnActivateConditionCheck( sceneId, selfId, activatorId )
	--Ðúng·ñÐúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_78}")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end

	--Ðúng·ñÐúngËùC¥n toÕ ðµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= FUBEN_BANGZHAN then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_78}")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end
	
	--Ðúng·ñ¿ªÊ¼¼Ç·Ö
	if LuaFnGetCopySceneData_Param( sceneId, 7 ) == 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_79}")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end
	
	--ÆìÌ¨ÉÏ Ðã mu¯n dâng lên ÆìÖÄ
	local RemainedTime = LuaFnGetCopySceneData_Param( sceneId, x402301_g_FlagRemainedTime )
	if RemainedTime > 0 then
		local minute = floor(RemainedTime / 60)
		local second = mod(RemainedTime, 60)
		
		BeginEvent(sceneId)
			if minute == 0 then
				AddText(sceneId,"#{BHXZ_081103_80}"..second.."#{BHXZ_081103_81}")
			else
				AddText(sceneId,"#{BHXZ_081103_80}"..minute.." phút "..second.."#{BHXZ_081103_81}")
			end
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end
	
	--ÎÞµÐ×´Ì¬ÎÞ·¨¼ÀÆì...ÒþÉí¿ÉÒÔ¼ÀÆì
	if LuaFnIsUnbreakable(sceneId,activatorId) ~= 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_124}")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡ ði¬m±£´ætoÕ ðµ °ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	local guildid = GetHumanGuildID(sceneId, activatorId)
	
	if guildid ~= Aguildid and guildid ~= Bguildid then
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i không có Bang hµi.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 0
	end
	
	local OpenFlagSelfId = LuaFnGetCopySceneData_Param( sceneId, x402301_g_OpenFlagSelfIDIndex )
	local OpenFlagStartTime = LuaFnGetCopySceneData_Param( sceneId, x402301_g_OpenFlagStartTime )
	local NowTime = LuaFnGetCurrentTime()
	
	if OpenFlagSelfId ~= 0 then --ÓÐÈËÕýTÕi Òýµ¼¼ÀÆì
		if OpenFlagSelfId == activatorId then --×Ô¼º
			return 1
		else --²»Ðúng×Ô¼º
			if (NowTime - OpenFlagStartTime) <= 180 then --Ðúng·ñ³¬Ê±
				BeginEvent(sceneId)
					AddText(sceneId,GetName(sceneId, OpenFlagSelfId).."#{BHXZ_081103_65}")
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,activatorId)
				return 0
			end
		end
	end
	
	LuaFnSetCopySceneData_Param( sceneId, x402301_g_OpenFlagSelfIDIndex, activatorId )	-- µ±Ç°ÕýTÕi ²Ù×÷ÆìÌ¨toÕ ðµ selfid
	LuaFnSetCopySceneData_Param( sceneId, x402301_g_OpenFlagStartTime, NowTime )	-- µ±Ç°ÕýTÕi ²Ù×÷ÆìÌ¨toÕ ðµ ¿ªÊ¼Ê±¼ä
	
	return 1

end

--**********************************
--ÌØÊâ½»»¥:ÏûºÄºÍ¿Û³ý´¦Àí
--**********************************
function x402301_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:¾ÛÆøÀà³É¹¦ÉúÐ§´¦Àí
--**********************************
function x402301_OnActivateEffectOnce( sceneId, selfId, activatorId )
	--Ðúng·ñÐúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_78}")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 1
	end

	--Ðúng·ñÐúngËùC¥n toÕ ðµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= FUBEN_BANGZHAN then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_78}")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,activatorId)
		return 1
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡ ði¬m±£´ætoÕ ðµ °ïÅÉIDºÏÌå
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	local guildid = GetHumanGuildID(sceneId, activatorId)
	
	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end
	
	--´´½¨´óÆìNPC,»ý·Ö
	if guildid == Aguildid then
		local MstId = LuaFnCreateMonster(sceneId, x402301_g_A_FlagID, x402301_g_A_FlagPosX, x402301_g_A_FlagPosZ, 3, 0, -1 )
		SetCharacterName( sceneId, MstId, x402301_g_A_FlagName )
		LuaFnSetCopySceneData_Param( sceneId, x402301_g_FlagRemainedTime, x402301_g_FlagTime )	--ÆìÖÄÉýÆðÒÔºótoÕ ðµ Ê£ÓàÊ±¼ä
		
		local addpoint = GetGuildWarPoint(sceneId, x402301_g_GuildPoint_GetFlag)
		CallScriptFunction( x402301_g_BangzhanScriptId, "AddAGuildPoint", sceneId, activatorId, guildid, addpoint )
		local alreadynum = GetGuildIntNum( sceneId, guildid, x402301_g_A_FlagNumIndex )
		SetGuildIntNum( sceneId, guildid, x402301_g_A_FlagNumIndex, alreadynum+1 )
		--CityChangeAttr( sceneId, activatorId, GUILD_CONTRIB_POINT, 30 ) --Ôö¼Ó°ï¹±
		CallScriptFunction( x402301_g_BangzhanScriptId, "AddHumanGuildArrayInt", sceneId, activatorId, x402301_g_Human_FlagIndex, 1 )
		
		local guid = LuaFnObjId2Guid(sceneId, activatorId)
		local log = format("HumanGuildID=%d,Apply_GuildID=%d,Applied_GuildID=%d", guildid, Aguildid, Bguildid)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_FLAG, guid, log)
		
		local msg = LuaFnGetGuildName(sceneId, activatorId).."#{BHXZ_081103_125}"..GetName(sceneId, activatorId).." Ðã mu¯n dâng lên "..x402301_g_A_FlagName.."."
		for i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x402301_NotifyFailTips(sceneId, mems[i], msg)
				Msg2Player(sceneId, mems[i], msg, MSG2PLAYER_PARA)
			end
		end
	elseif guildid == Bguildid then
		local MstId = LuaFnCreateMonster(sceneId, x402301_g_B_FlagID, x402301_g_B_FlagPosX, x402301_g_B_FlagPosZ, 3, 0, -1 )
		SetCharacterName( sceneId, MstId, x402301_g_B_FlagName )
		LuaFnSetCopySceneData_Param( sceneId, x402301_g_FlagRemainedTime, x402301_g_FlagTime )	--ÆìÖÄÉýÆðÒÔºótoÕ ðµ Ê£ÓàÊ±¼ä
		
		local addpoint = GetGuildWarPoint(sceneId, x402301_g_GuildPoint_GetFlag)
		CallScriptFunction( x402301_g_BangzhanScriptId, "AddBGuildPoint", sceneId, activatorId, guildid, addpoint )
		local alreadynum = GetGuildIntNum( sceneId, guildid, x402301_g_B_FlagNumIndex )
		SetGuildIntNum( sceneId, guildid, x402301_g_B_FlagNumIndex, alreadynum+1 )
		--CityChangeAttr( sceneId, activatorId, GUILD_CONTRIB_POINT, 30 ) --Ôö¼Ó°ï¹±
		CallScriptFunction( x402301_g_BangzhanScriptId, "AddHumanGuildArrayInt", sceneId, activatorId, x402301_g_Human_FlagIndex, 1 )
		
		local guid = LuaFnObjId2Guid(sceneId, activatorId)
		local log = format("HumanGuildID=%d,Apply_GuildID=%d,Applied_GuildID=%d", guildid, Aguildid, Bguildid)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_FLAG, guid, log)
		
		local msg = LuaFnGetGuildName(sceneId, activatorId).."#{BHXZ_081103_125}"..GetName(sceneId, activatorId).." Ðã mu¯n dâng lên "..x402301_g_B_FlagName.."."
		for i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x402301_NotifyFailTips(sceneId, mems[i], msg)
				Msg2Player(sceneId, mems[i], msg, MSG2PLAYER_PARA)
			end
		end
	end
	
	LuaFnSetCopySceneData_Param( sceneId, x402301_g_OpenFlagSelfIDIndex, 0 )	-- µ±Ç°ÕýTÕi ²Ù×÷ÆìÌ¨toÕ ðµ selfid
	LuaFnSetCopySceneData_Param( sceneId, x402301_g_OpenFlagStartTime, 0 )	-- µ±Ç°ÕýTÕi ²Ù×÷ÆìÌ¨toÕ ðµ ¿ªÊ¼Ê±¼ä
	
	return 1
end

--**********************************
--ÌØÊâ½»»¥:Òýµ¼ÀàÃ¿Ê±¼ä¼ä¸ôÉúÐ§´¦Àí
--**********************************
function x402301_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--ÌØÊâ½»»¥:½»»¥¿ªÊ¼Ê±toÕ ðµ ÌØÊâ´¦Àí
--**********************************
function x402301_OnActivateActionStart( sceneId, selfId, activatorId )
		return 1
end

--**********************************
--ÌØÊâ½»»¥:½»»¥³·ÏûÊ±toÕ ðµ ÌØÊâ´¦Àí
--**********************************
function x402301_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--ÌØÊâ½»»¥:½»»¥ÖÐ¶ÏÊ±toÕ ðµ ÌØÊâ´¦Àí
--**********************************
function x402301_OnActivateInterrupt( sceneId, selfId, activatorId )
	LuaFnSetCopySceneData_Param( sceneId, x402301_g_OpenFlagSelfIDIndex, 0 )	-- µ±Ç°ÕýTÕi ²Ù×÷ÆìÌ¨toÕ ðµ selfid
	LuaFnSetCopySceneData_Param( sceneId, x402301_g_OpenFlagStartTime, 0 )	-- µ±Ç°ÕýTÕi ²Ù×÷ÆìÌ¨toÕ ðµ ¿ªÊ¼Ê±¼ä
	
	return 0
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x402301_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
