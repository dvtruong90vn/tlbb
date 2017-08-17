--Rß¾c ki®u hoaÈÎÎñ
--MisDescBegin
--½Å±¾ºÅ
x250036_g_ScriptId = 250036

--ÈÎÎñºÅ
x250036_g_MissionId = 1020

--ÈÎÎñÄ¿±ênpc
x250036_g_TargetNpcName	="HÖ Lai LÕc"

--ÈÎÎñ¹éÀà
x250036_g_MissionKind = 3

--ÈÎÎñµÈ¼¶
x250036_g_MissionLevel = 1

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x250036_g_IfMissionElite = 0

--ÈÎÎñÏÞÊ±
x250036_g_MissionLimitTime = 60 * 60 * 1000; --ºÁÃë

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾ÄÚÈÝ£¬ÓÃÓÚÔÚÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************

--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x250036_g_MissionName="Rß¾c ki®u hoa";
x250036_g_MissionInfo="Hãy ðªn LÕc Dß½ng - HÖ Lai LÕc[273,236] s¡p xªp tu¥n du b¢ng xe hoa.";
x250036_g_MissionTarget="Hãy ðªn LÕc Dß½ng HÖ Lai LÕc#{_INFOAIM273,236,0,HÖ Lai LÕc} s¡p xªp tu¥n du b¢ng xe hoa.";		--ÈÎÎñÄ¿±ê
x250036_g_ContinueInfo1="Th§t xin l²i, ðã quá th¶i gian dñ ð¸nh cüa các hÕ, các hÕ chï có th¬ bö qua ......";
x250036_g_ContinueInfo2="· ðây c¥n l§p kª hoÕch, cám ½n";
x250036_g_MissionComplete="Hãy ð¬ chúng ta b¡t ð¥u";

--ÈÎÎñ½±Àø
x250036_g_MoneyBonus = 0

--MisDescEnd

x250036_g_eventId_begin = 0;	--µã»÷Rß¾c ki®u hoaÈÎÎñÊÂ¼þ
x250036_g_eventId_start = 1;	--µã»÷¿ªÊ¼Ñ²ÓÎÊÂ¼þ
x250036_g_eventId_close = 2;	--µã»÷µÈ»áÔÙ¿ªÊ¼ÊÂ¼þ

x250036_g_busDataIds = {3, 4, 5};	--»¨³µDataID
x250036_g_busPatrolPathId = 3;		--»¨³µÂ·¾¶ID


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x250036_OnDefaultEvent(sceneId, selfId, targetId)	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	local selectEventId	= GetNumText();
	
	--µã»÷Rß¾c ki®u hoaÈÎÎñÊÂ¼þ
	if x250036_g_eventId_begin == selectEventId then
		x250036_OnBegin(sceneId, selfId, targetId);
	--µã»÷¿ªÊ¼Ñ²ÓÎÊÂ¼þ
	elseif x250036_g_eventId_start == selectEventId then
		x250036_OnStart(sceneId, selfId, targetId);
	--µã»÷µÈ»áÔÙ¿ªÊ¼ÊÂ¼þ
	elseif x250036_g_eventId_close == selectEventId then
		BeginUICommand(sceneId);
		EndUICommand(sceneId);
		DispatchUICommand(sceneId, selfId, 1000);
	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x250036_OnEnumerate(sceneId, selfId, targetId)
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x250036_g_MissionId) > 0 then
		AddNumText(sceneId, x250036_g_ScriptId, x250036_g_MissionName, 6, x250036_g_eventId_begin);
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x250036_CheckAccept(sceneId, selfId)
	return 1;
end

--**********************************
--½ÓÊÜ
--**********************************
function x250036_OnAccept(sceneId, selfId, marryLevel)

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission(sceneId, selfId, x250036_g_MissionId, x250036_g_ScriptId, 0, 0, 0);
	misIndex = GetMissionIndexByID(sceneId, selfId, x250036_g_MissionId);			--µÃµ½ÈÎÎñÐòÁÐºÅ
	if misIndex and misIndex >= 0 then
		StartMissionTimer(sceneId,selfId, x250036_g_MissionId);
		SetMissionByIndex(sceneId,selfId,misIndex, 0, 1);						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
		SetMissionByIndex(sceneId,selfId,misIndex, 7, x250036_g_MissionLimitTime);
		SetMissionByIndex(sceneId,selfId,misIndex, 2, marryLevel);
		
		Msg2Player(sceneId, selfId,"#YNh§n nhi®m vø#W: "..x250036_g_MissionName.."",MSG2PLAYER_PARA);	--ÁÄÌì´°¿ÚÌáÊ¾
	end
end

--**********************************
--·ÅÆú
--**********************************
function x250036_OnAbandon(sceneId, selfId)
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦ÈÎÎñ
 	local checkMission = IsHaveMission(sceneId, selfId, x250036_g_MissionId);
	if checkMission and checkMission == 1 then
	  DelMission(sceneId, selfId, x250036_g_MissionId);
	 end
end

--**********************************
--¼ÌÐø
--**********************************
function x250036_OnContinue(sceneId, selfId, targetId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x250036_CheckSubmit(sceneId, selfId)
	return 0;
end

--**********************************
--Ìá½»
--**********************************
function x250036_OnSubmit(sceneId, selfId, targetId,selectRadioId)
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x250036_OnKillObject(sceneId, selfId, objdataId ,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x250036_OnEnterArea(sceneId, selfId, zoneId)
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x250036_OnItemChanged(sceneId, selfId, itemdataId)
end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x250036_OnTimer(sceneId,selfId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250036_g_MissionId);
	if misIndex and misIndex >= 0 then
		local saveTime = GetMissionParam(sceneId, selfId, misIndex, 7);
		if saveTime and saveTime > 0 then
			saveTime = saveTime - 1000;
			if saveTime <= 0 then
				StopMissionTimer(sceneId, selfId, x250036_g_MissionId);
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 2);
				saveTime = 0;
			end
			SetMissionByIndex(sceneId, selfId, misIndex, 7, saveTime);
		end
	end
end

--**********************************
--µã»÷Rß¾c ki®u hoaÈÎÎñÊÂ¼þ
--**********************************
function x250036_OnBegin(sceneId, selfId, targetId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250036_g_MissionId);
	if misIndex and misIndex >= 0 then
		local stateCode = GetMissionParam(sceneId, selfId, misIndex, 0);
		if stateCode and stateCode == 2 then
			x250036_MessageBox(sceneId, selfId, targetId, "Các ngß½i ðªn muµn quá, phu ki®u do ta s¡p xªp ðã ði hªt r°i, không th¬ làm ðám rß¾c ðßþc...");
			DelMission(sceneId, selfId, x250036_g_MissionId);
		else
			BeginEvent(sceneId);
				AddText(sceneId, "Chúc m×ng các ngß½i, phu ki®u ðã chu¦n b¸ xong, hãy l§p tÑc rß¾c dâu.");
				AddNumText(sceneId, x250036_g_ScriptId, "B¡t ð¥u rß¾c", 8, x250036_g_eventId_start);
				AddNumText(sceneId, x250036_g_ScriptId, "Ch¶ mµt lát lÕi b¡t ð¥u...", 8, x250036_g_eventId_close);
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end
	end
end

--**********************************
--µã»÷¿ªÊ¼Ñ²ÓÎÊÂ¼þ
--**********************************
function x250036_OnStart(sceneId, selfId, targetId)
	local marryLevel = 0;
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250036_g_MissionId);
	if misIndex and misIndex >= 0 then
		local stateCode = GetMissionParam(sceneId, selfId, misIndex, 0);
		if stateCode and stateCode == 2 then
			x250036_MessageBox(sceneId, selfId, targetId, "Các ngß½i ðªn muµn quá, phu ki®u do ta s¡p xªp ðã ði hªt r°i, không th¬ làm ðám rß¾c ðßþc.");
			DelMission(sceneId, selfId, x250036_g_MissionId);
			return 0;
		else
			marryLevel = GetMissionParam(sceneId, selfId, misIndex, 2);
		end
	else
		x250036_MessageBox(sceneId, selfId, targetId, "Không tìm ðßþc nhi®m vø Rß¾c ki®u hoa");
		return 0;
	end
		
	local szMsg = "Nªu mu¯n rß¾c ki®u hoa, xin hai bên nam næ l§p thành 1 nhóm, lÕi t¾i tìm ta"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	szMsg = "Nhóm chï có th¬ do hai bên phu thê l§p thành, trong nhóm không th¬ có thành viên khác"
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Chï khi 2 ngß¶i ð«u ðªn bên ta m¾i có th¬ b¡t ð¥u rß¾c ki®u hoa"
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Không phäi là phu thê, không th¬ b¡t ð¥u rß¾c ki®u hoa!"
	local maleId = -1;
	local femaleId = -1;
	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		local sexType = LuaFnGetSex(sceneId, memId);
		if sexType == 1 then
			maleId = memId;
		else
			femaleId = memId;
		end
	end
	
	if maleId == -1 or femaleId == -1 then
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	local isSpouses = LuaFnIsSpouses(sceneId, maleId, femaleId);
	if isSpouses and isSpouses > 0 then
	else
		x250036_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	--zchw
	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		if LuaFnIsStalling(sceneId, memId) == 1 then
			x250036_MessageBox(sceneId, selfId, targetId, "#{CWHL_081208_1}")
			return 0;
		end
	end
	
	local busIndex = 1;
	if marryLevel and marryLevel > -1 and marryLevel < 3 then
		busIndex = marryLevel + 1;
	else
		busIndex = 1;
	end
	
	local busObjID = LuaFnCreateBusByPatrolPathId(sceneId, x250036_g_busDataIds[busIndex], x250036_g_busPatrolPathId, 0);
	if busObjID and busObjID ~= -1 then
		local succeeded, strText;
		succeeded = 0;
		local addPassergerRet = LuaFnBusAddPassengerList(sceneId, busObjID, targetId, 1, 2, maleId, femaleId);
		if addPassergerRet and addPassergerRet == OR_OK then
			local busStartRet = LuaFnBusStart(sceneId, busObjID);
			if busStartRet and busStartRet == 1 then
				BeginUICommand(sceneId);
				EndUICommand(sceneId);
				DispatchUICommand(sceneId, selfId, 1000);
				DelMission(sceneId, selfId, x250036_g_MissionId);
				CallScriptFunction(250037, "OnAccept", sceneId, selfId, marryLevel);
				succeeded = 1;
			else
				strText = "Kh·i ðµng có l²i, rß¾c ki®u hoa th¤t bÕi, xin liên h® v¾i GM Sói Ðz"
			end
		end
		
		if succeeded and succeeded == 1 then
		else
			LuaFnBusRemoveAllPassenger(sceneId, busObjID);
			LuaFnDeleteBus(sceneId, busObjID);
			if strText then
				x250036_MessageBox(sceneId, selfId, targetId, strText);
			end
		end
	end

end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x250036_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

