--»éÇì¸±±¾

x401030_g_ScriptId = 401030;				-- ½Å±¾ºÅ

x401030_g_CopySceneName = "Hôn nhân Ði¬n L­";		-- ¸±±¾Ãû³Æ
x401030_g_CopySceneType = FUBEN_WEDDING;	-- ¸±±¾ÀàÐÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x401030_g_TickElapse = 5;					-- »Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x401030_g_LimitTickCount = 500;				-- ¸±±¾ÐÄÌø´ÎÊýÏÞÖÆ£¨µ¥Î»£º´ÎÊý£©
x401030_g_CloseTick = 6;					-- ¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±ÐÄÌø´ÎÊý£¨µ¥Î»£º´ÎÊý£©
x401030_g_NoUserTime = 300;					-- ¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x401030_g_Fuben_X = 40;						-- ½ø¸±±¾µÄÎ»ÖÃX
x401030_g_Fuben_Z = 45;						-- ½ø¸±±¾µÄÎ»ÖÃZ
x401030_g_Back_X = 175;						-- ³ö¸±±¾µÄÎ»ÖÃX
x401030_g_Back_Z = 95;						-- ³ö¸±±¾µÄÎ»ÖÃZ

x401030_g_closeEventNotifyText_minute = "Sau %d phút, b¯i cänh s¨ ðóng lÕi";
x401030_g_closeEventNotifyText_second = "Các hÕ s¨ r¶i khöi ðây sau %d giây!";

x401030_g_invitationDataId_level1  = 30303100;		-- ÆÕÍ¨ÇëÌûID
x401030_g_invitationDataId_level2  = 30303101;		-- ¸ß¼¶ÇëÌûID
x401030_g_invitationDataId_level3  = 30303102;		-- ºÀ»ªÇëÌûID

--**********************************
--´´½¨º¯Êý
--**********************************
function x401030_Create(sceneId, selfId, marryTargetId, weddingLevel)

	local selfGUID, marryTargetGUID;
	selfGUID = -1;
	marryTargetGUID = -1;
	if selfId and selfId ~= -1 then
		selfGUID  = LuaFnObjId2Guid(sceneId, selfId);
	end
	
	if marryTargetId and marryTargetId ~= -1 then
		marryTargetGUID = LuaFnObjId2Guid(sceneId, marryTargetId);
	end
	
	if selfGUID and selfGUID ~= -1 and marryTargetGUID and marryTargetGUID ~= -1 then
	else
		return 0;
	end
	
	if weddingLevel == 1 then
		LuaFnSetSceneLoad_Map(sceneId, "wedding_2.nav");
		LuaFnSetSceneLoad_Monster(sceneId, "wedding_2_monster.ini");
	elseif weddingLevel == 2 then
		LuaFnSetSceneLoad_Map(sceneId, "wedding_3.nav");
		LuaFnSetSceneLoad_Monster(sceneId, "wedding_3_monster.ini");
	else
		LuaFnSetSceneLoad_Map(sceneId, "wedding_1.nav");
		LuaFnSetSceneLoad_Monster(sceneId, "wedding_1_monster.ini");
	end
	
	LuaFnSetCopySceneData_TeamLeader(sceneId, selfGUID);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x401030_g_NoUserTime * 1000);
	LuaFnSetCopySceneData_Timer(sceneId, x401030_g_TickElapse * 1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x401030_g_CopySceneType);				--ÉèÖÃ¸±±¾Êý¾Ý£¬ÕâÀï½«0ºÅË÷ÒýµÄÊý¾ÝÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x401030_g_ScriptId);					--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);										--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);									--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);										--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);										--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 6, selfGUID);								--ÉèÖÃÄÐÖ÷ÈËµÄGUID
	LuaFnSetCopySceneData_Param(sceneId, 7, marryTargetGUID);							--ÉèÖÃÅ®Ö÷ÈËµÄGUID
	LuaFnSetCopySceneData_Param(sceneId, 8, weddingLevel);							--»éÇìµäÀñ¼¶±ð
	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, 0);					--¼¶±ð²î£¬CopyScene_LevelGap ÔÚ scene.lua ÖÐ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene(sceneId);								--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	if bRetSceneID > 0 then
		x401030_NotifyTips(sceneId, selfId, "D¸ch chuy¬n thành công!");
	else
		x401030_NotifyTips(sceneId, selfId, "S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!");
	end
end

--**********************************
--´´½¨º¯Êý
--**********************************
function x401030_Close(sceneId, selfId)
	local selfGUID = LuaFnGetGUID(sceneId, selfId);
	local marryCharGUID_A, marryCharGUID_B;
	marryCharGUID_A = LuaFnGetCopySceneData_Param(sceneId, 6);
	marryCharGUID_B = LuaFnGetCopySceneData_Param(sceneId, 7);
	local bSelfWedding = 0;
	if selfGUID and marryCharGUID_A and marryCharGUID_B then
		if marryCharGUID_A < 0 then
			marryCharGUID_A = marryCharGUID_A + 4294967296;
		end
		if marryCharGUID_B < 0 then
			marryCharGUID_B = marryCharGUID_B + 4294967296;
		end
		if selfGUID == marryCharGUID_A or selfGUID == marryCharGUID_B then
			bSelfWedding = 1;
		end
	end

	if bSelfWedding == 1 then
		local tempParam = LuaFnGetCopySceneData_Param(sceneId, 4);
		if tempParam == 0 then
			LuaFnSetCopySceneData_Param(sceneId, 4, 1);
			BroadMsgByChatPipe(sceneId, selfId, "Hôn l­ ðã kªt thúc, cänh s¡p ðóng, xin m÷i ngß¶i nhanh chóng rút lui. Ða tÕ ðã tham dñ", 2);
		end
	end
end

--**********************************************************
--Íæ¼Ò½øÈë¸±±¾
--selfId		:	Òª½øÈë¸±±¾µÄÍæ¼ÒID
--targetGUID	:	½øÈëË­µÄ¸±±¾£¨ÄÐ»òÅ®Ö÷½ÇµÄGUID£©
--**********************************************************
function x401030_PlayerEnter(sceneId, selfId, targetId, targetGUID)
	if targetGUID and selfId then
		local selfGUID = LuaFnGetGUID(sceneId, selfId);
		if targetGUID < 0 then
			targetGUID = targetGUID + 4294967296;
		end
		local checkRet = 0;
		if selfGUID and selfGUID == targetGUID then
			checkRet = 1;
		else
			local itemIdList = {x401030_g_invitationDataId_level3, x401030_g_invitationDataId_level2, x401030_g_invitationDataId_level1};
			local itemId;
			local itemPos;
			for _, itemId in itemIdList do
				local i, maxCount;
				maxCount = 100;
				itemPos = 0;
				for i = 0, maxCount - 1 do
					itemPos = LuaFnGetItemPosByItemDataID(sceneId, selfId, itemId, itemPos);
					if itemPos and itemPos > -1 then
						local creatorGUID = GetBagItemParam(sceneId, selfId, itemPos, 0, 2);
						if creatorGUID and creatorGUID == targetGUID then
							checkRet = 1;
							break;
						end
						itemPos = itemPos + 1;
					else
						break;
					end
				end
				if checkRet == 1 then
					break;
				end
			end
		end

		if checkRet == 1 then
			local destSceneId = FindCopySceneIDByCopySceneParams(sceneId, x401030_g_CopySceneType, 1, 6, targetGUID);
			if destSceneId and destSceneId >= 0 then
			else
				destSceneId = FindCopySceneIDByCopySceneParams(sceneId, x401030_g_CopySceneType, 1, 7, targetGUID);
			end
			
			if destSceneId and destSceneId >= 0 then
				local leaveFlag = LuaFnGetCopySceneData_Param(destSceneId, 4);
				if leaveFlag == 1 then
					x401030_MessageBox(sceneId, selfId, targetId, "Xin l²i, l­ ðß¶ng mà các hÕ xin vào ðang ðóng");
				else
					NewWorld(sceneId, selfId, destSceneId, x401030_g_Fuben_X, x401030_g_Fuben_Z);
					return 1;
				end
			else
				x401030_MessageBox(sceneId, selfId, targetId, "Xin l²i, hi®n gi¶ không có ai phát thi®p cß¾i cho các hÕ");
			end
		else
			x401030_MessageBox(sceneId, selfId, targetId, "Xin l²i, hi®n gi¶ không có ai phát thi®p cß¾i cho các hÕ");
		end
	end
	return 0;
end

--**********************************
--Íæ¼ÒÍË³ö¸±±¾
--**********************************
function x401030_PlayerExit(sceneId, selfId)
	if selfId then
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3);		--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
		
		--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
		local memId;
		for	i = 0, membercount - 1 do
			memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if memId == selfId then
				NewWorld(sceneId, selfId, oldsceneId, x401030_g_Back_X, x401030_g_Back_Z);
				return 
			end
		end
	end
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x401030_OnCopySceneReady(sceneId, destSceneId)

	LuaFnSetCopySceneData_Param(destSceneId, 3, sceneId);			--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	
	local selfGUID  = LuaFnGetCopySceneData_Param(destSceneId, 6);
	local marryTargetGUID  = LuaFnGetCopySceneData_Param(destSceneId, 7);
	
	if selfGUID and selfGUID ~= -1 and marryTargetGUID and marryTargetGUID ~= -1 then
	else
		return 0;
	end

	local selfId, marryTargetId;
	selfId = -1;
	marryTargetId = -1;
	if selfGUID and selfGUID ~= -1 then
		selfId = LuaFnGuid2ObjId(sceneId, selfGUID);
	end
	
	if marryTargetGUID and marryTargetGUID ~= -1 then
		marryTargetId = LuaFnGuid2ObjId(sceneId, marryTargetGUID);
	end

	if selfId and selfId ~= -1 then
		if LuaFnIsCanDoScriptLogic(sceneId, selfId) ~= 1 then
			return 
		end
	end

	if marryTargetId and marryTargetId ~= -1 then
		if LuaFnIsCanDoScriptLogic(sceneId, marryTargetId) ~= 1 then
			return 
		end
	end
	
	if selfId and selfId ~= -1 then
		NewWorld(sceneId, selfId, destSceneId, x401030_g_Fuben_X, x401030_g_Fuben_Z);
	end
	
	if marryTargetId and marryTargetId ~= -1 then
		NewWorld(sceneId, marryTargetId, destSceneId, x401030_g_Fuben_X, x401030_g_Fuben_Z);
	end
end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x401030_OnPlayerEnter(sceneId, selfId)
end

--**********************************
--ÓÐÍæ¼ÒÔÚ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x401030_OnHumanDie(sceneId, selfId, killerId)
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x401030_OnCopySceneTimer(sceneId, nowTime)
	
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local tickCount = LuaFnGetCopySceneData_Param(sceneId, 2);	--È¡µÃÒÑ¾­Ö´ÐÐµÄ¶¨Ê±´ÎÊý
	tickCount = tickCount + 1;
	LuaFnSetCopySceneData_Param(sceneId, 2, tickCount);		--ÉèÖÃÐÂµÄ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
		
	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4);
	
	if leaveFlag == 1 then --ÐèÒªÀë¿ª

		--Àë¿ªµ¹¼ÆÊ±¼äµÄ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5);
		leaveTickCount = leaveTickCount + 1;
		LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount);
		
		if leaveTickCount > x401030_g_CloseTick or leaveTickCount == x401030_g_CloseTick then --µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3);--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
			
			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
			local mems = {};
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId, i);
				NewWorld(sceneId, mems[i], oldsceneId, x401030_g_Back_X, x401030_g_Back_Z);
			end
			
		elseif leaveTickCount < x401030_g_CloseTick then
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3);--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓÐÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
			local mems = {};
	  		local strText = format(x401030_g_closeEventNotifyText_second, (x401030_g_CloseTick-leaveTickCount)*x401030_g_TickElapse);
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId, i);
				x401030_NotifyTips(sceneId, mems[i], strText);
			end
		end

	elseif tickCount > x401030_g_LimitTickCount or tickCount == x401030_g_LimitTickCount then
		LuaFnSetCopySceneData_Param(sceneId, 4, 1);
		return
	else
		local tempSecond = (x401030_g_LimitTickCount - tickCount) * x401030_g_TickElapse;
		local tempMinute = floor(tempSecond / 60);
		if tempMinute * 60 == tempSecond then
			local bNotify = 0;
			if tempMinute > 10 then
				local tempValue = floor(tempMinute / 10);
				if tempValue * 10 == tempMinute then
					bNotify = 1;
				end
			elseif tempMinute > 1 then
				bNotify = 1;
			end
			
			if bNotify == 1 then
				local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
				local mems = {};
				local strText = format(x401030_g_closeEventNotifyText_minute, tempMinute);
				for	i=0,membercount-1 do
					mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId, i);
					x401030_NotifyTips(sceneId, mems[i], strText);
				end
			end
		end
	end
end

function x401030_NotifyTips(sceneId, selfId, tipText)
	BeginEvent(sceneId);
		AddText(sceneId, tipText);
	EndEvent(sceneId);
	DispatchMissionTips(sceneId, selfId);
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x401030_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end
