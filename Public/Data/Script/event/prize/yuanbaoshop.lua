--ÐÂµÄÔª±¦ÉÌµê

x888902_g_scriptId = 888902
--Ôª±¦ÉÌµêÁÐ±í ÒªÓë¿Í»§¶Ë½çÃæ¶ÔÓ¦
x888902_g_shoplist = {}
x888902_g_shoplist[1] = {301, 302, 303, 304, 305, 306, 307, 308}			--´óÂô³¡--197,ÏÊ»¨ÎäÆ÷
x888902_g_shoplist[2] = {309, 310, 311, 312, 313, 314, 315, 316}			--±¦Ê¯ÉÌ³Ç,Ìí¼Ó"´óÀí±¦Ê¯Õ«--149",czf,2009.07.21
x888902_g_shoplist[3] = {317, 318, 319, 320, 321, 322, 323, 324}			--ÕäÊÞÉÌ³Ç
x888902_g_shoplist[4] = {325, 326, 327, 328, 329, 330, 331, 332}			--ÄÏ±±ÔÓ»õ, 164
x888902_g_shoplist[5] = {333, 334, 335, 336, 337, 338, 339, 340}			--ÐÎÏó¹ã³¡
x888902_g_shoplist[6] = {341, 342, 343, 344, 345, 346, 347, 348}			--»¨ÎèÈË¼ä
x888902_g_shoplist[7] = {349, 350, 351, 352, 353, 354, 355, 356}			--Îä¹¦ÃØ¼®146, 
x888902_g_shoplist[8] = {357, 358, 359, 360, 361, 362, 363, 364}			--´òÔìÍ¼


--**********************************
-- ¼ì²é´ËËæÉíNPCµÄ¹¦ÄÜ
-- opÊÇÇëÇóÀà±ð£¬±ÈÈç1´ú±íÔª±¦Ïà¹ØµÄËæÉí²Ù×÷¡­¡­
--**********************************
function x888902_OpenYuanbaoShop( sceneId, selfId, targetId , shopA ,shopB )

	local bCheck = x888902_YuanbaoShopCheckOp(sceneId,selfId);
	
	if bCheck > 0 then
		if shopA > 0 and shopA < 16 and x888902_g_shoplist[shopA][shopB] ~= nil then
			--PrintStr(x888902_g_shoplist[shopA][shopB])
			if targetId == -1 then
				DispatchYuanbaoShopItem( sceneId, selfId, x888902_g_shoplist[shopA][shopB])
			else
				DispatchNpcYuanbaoShopItem( sceneId, selfId, targetId , x888902_g_shoplist[shopA][shopB])
			end
		end
	end
end

function x888902_YuanbaoShopCheckOp(sceneId,selfId)
	--µØ¸®
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: ChÑc nång này không th¬ sØ døng · Ð¸a Phü", 0);
		return 0
	end
	--ÉúËÀÀÞÌ¨
	if sceneId == 410 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: N½i này không th¬ sØ døng chÑc nång ðßþc.", 0);
		return 0
	end
	--ÉÙÊÒÉ½
	if sceneId == 530 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: N½i này không th¬ sØ døng chÑc nång ðßþc.", 0);
		return 0
	end
	--×é¶Ó¸úËæ
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			return 0
		end
		if teamFollowFlag ~= 0 and teamLeaderFlag ~= 1 then
			return 0
		end
	end
	--Ë«ÈËÆï³Ë
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--´¦ÓÚË«ÈËÆï³Ë×´Ì¬£¬ÇÒÊÇ±»¶¯µÄ£¬½»¸øÖ÷¶¯·½À´´¦Àí
			return 0
		end
	end
	--10¼¶ÒÔÉÏ
	local level = GetLevel(sceneId,selfId);
	if nil == level or level < 10 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: ÐÕt c¤p 10 tr· lên m¾i có th¬ sØ døng chÑc nång này!", 0);
		return 0
	else

		return 1
	end
	return 0
end
