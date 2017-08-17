--çÎç¿·å¸±±¾....
--¶ËÄ¾Ôª¶Ô»°½Å±¾....

--½Å±¾ºÅ
x890074_g_ScriptId	= 890074

--¸±±¾Âß¼­½Å±¾ºÅ....
x890074_g_FuBenScriptId = 890063

--**********************************
--ËÀÍö....
--**********************************
function x890074_OnDie( sceneId, selfId, killerId )

	--Èç¹û»¹Ã»ÓĞÌôÕ½¹ıÀîÇïË®Ôò¿ÉÒÔÌôÕ½ÀîÇïË®....
	if 2 ~= CallScriptFunction( x890074_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "DingChunQiu" )	then
		CallScriptFunction( x890074_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "DingChunQiu", 1 )
	end
	-- zchw È«Çò¹«¸æ
	local	playerName	= GetName( sceneId, killerId )
	
	--É±ËÀ¹ÖÎïµÄÊÇ³èÎïÔò»ñÈ¡ÆäÖ÷ÈËµÄÃû×Ö....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--Èç¹ûÍæ¼Ò×é¶ÓÁËÔò»ñÈ¡¶Ó³¤µÄÃû×Ö....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("Thiªu Th¤t S½n #{_INFOUSR%s}Dçn d¡t  ğµi ngû mµt ğß¶ng hát vang, ğánh bÕi  #Y Thiên S½n Ğ°ng Lão #W,#Y Thiên S½n Ğ°ng Lão #W t¡t th· ti«n b¡t l¤y #{_INFOUSR%s}, vô hÕn oán h§n  nói: Thành quÖ...... Thành quÖ ta cûng......", playerName,playerName); --ÈÎÆ½Éú
		AddGlobalCountNews( sceneId, str )
	end
end
