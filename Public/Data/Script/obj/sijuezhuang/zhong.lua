--çÎç¿·å¸±±¾....
--·ûÃôÒÇ¶Ô»°½Å±¾....

--½Å±¾ºÅ
x893081_g_ScriptId = 893081

--¸±±¾Âß¼­½Å±¾ºÅ....
x893081_g_FuBenScriptId = 893063

--ÕðÉåbuff±í....
x893081_g_BUFF = { 10264, 10265, 10266 }



--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x893081_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText( sceneId, "Bên trong TÑ Tuy®t Ði®n có r¤t nhi«u hµ v®. Nhßng mµt khi ðã nghe tiªng chuông, h÷ s¨ r¶i ði." )

		--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½Ë«×Ó....	
		--if 1 == CallScriptFunction( x893081_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" ) then
			AddNumText( sceneId, x893081_g_ScriptId, "Ðánh chuông", 10, 1 )
		--end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x893081_OnEventRequest( sceneId, selfId, targetId, eventId )

	--ÊÇ²»ÊÇ¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½Ë«×Ó....	
	--if 1 ~= CallScriptFunction( x893081_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" ) then
		--return
	--end

	--Èç¹ûÕýÔÚºÍ±ðµÄBOSSÕ½¶·Ôò·µ»Ø....
	local ret, msg = CallScriptFunction( x893081_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
	CallScriptFunction( x893081_g_FuBenScriptId, "OpenSJZTimer", sceneId, 7, x893081_g_ScriptId, -1 ,-1 )
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x893081_OnSJZTimer( sceneId, step, data1, data2 )

	if 7 == step then
		MonsterTalk(sceneId, -1, "", "#{SJZ_100129_31}" )
		CallScriptFunction( x893081_g_FuBenScriptId, "DeleteBOSS", sceneId, "Zhong_NPC" )
		CallScriptFunction( x893081_g_FuBenScriptId, "TipAllHuman", sceneId, "Các hÕ có th¬ t¾i ch² Phan Tinh Tinh tiªn hành khiêu chiªn Mçn M£c r°i." )
		return
	end

	if 6 == step then
		CallScriptFunction( x893081_g_FuBenScriptId, "TipAllHuman", sceneId, "Các hÕ có th¬ t¾i ch² Phan Tinh Tinh tiªn hành khiêu chiªn Mçn M£c r°i." )
		return
	end

	if 5 == step then
		CallScriptFunction( x893081_g_FuBenScriptId, "TipAllHuman", sceneId, "Các hÕ có th¬ t¾i ch² Phan Tinh Tinh tiªn hành khiêu chiªn Mçn M£c r°i." )
		return
	end

	if 4 == step then
		CallScriptFunction( x893081_g_FuBenScriptId, "TipAllHuman", sceneId, "Các hÕ có th¬ t¾i ch² Phan Tinh Tinh tiªn hành khiêu chiªn Mçn M£c r°i." )
		return
	end

	if 3 == step then
		CallScriptFunction( x893081_g_FuBenScriptId, "TipAllHuman", sceneId, "Các hÕ có th¬ t¾i ch² Phan Tinh Tinh tiªn hành khiêu chiªn Mçn M£c r°i." )
	--É¾³ýÒþÉí×´Ì¬....
	  local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	  for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, nHumanId, x893064_Buff_A, 0 )
			LuaFnCancelSpecificImpact(sceneId,nHumanId,22211)
		end
	  end
		return
	end

	if 2 == step then

		--ÌáÊ¾Õ½¶·¿ªÊ¼....
		CallScriptFunction( x893081_g_FuBenScriptId, "TipAllHuman", sceneId, "Các hÕ có th¬ t¾i ch² Phan Tinh Tinh tiªn hành khiêu chiªn Mçn M£c r°i." )
		--É¾³ýNPC....
		CallScriptFunction( x893081_g_FuBenScriptId, "DeleteBOSS", sceneId, "Panqinqin_NPC" )

		return
	end

	if 1 == step then
		--ÉèÖÃ¿ÉÒÔÌôÕ½BOSSãÉÄ«....
		CallScriptFunction( x893081_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "MinMo", 1 )
		--É¾³ýËùÓÐ¹ÖÎï....
	  local nCount = GetMonsterCount(sceneId)
	  for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 14112 or MosDataID == 14118 then
			LuaFnDeleteMonster(sceneId, nObjId)
		end
	  end

		return
	end
end

