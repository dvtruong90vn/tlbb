--∞›ÃÏµÿ»ŒŒÒ
--MisDescBegin
--Ω≈±æ∫≈
x250037_g_ScriptId = 250037

--»ŒŒÒ∫≈
x250037_g_MissionId = 1021

--»ŒŒÒƒø±Ínpc
x250037_g_TargetNpcName	="H÷ Lai L’c"

--»ŒŒÒπÈ¿‡
x250037_g_MissionKind = 3

--»ŒŒÒµ»º∂
x250037_g_MissionLevel = 1

-- «∑Ò «æ´”¢»ŒŒÒ
x250037_g_IfMissionElite = 0

--»ŒŒÒœﬁ ±
x250037_g_MissionLimitTime = 60 * 60 * 1000; --∫¡√Î

--œ¬√Êº∏œÓ «∂ØÃ¨œ‘ æµƒƒ⁄»›£¨”√”⁄‘⁄»ŒŒÒ¡–±Ì÷–∂ØÃ¨œ‘ æ»ŒŒÒ«Èøˆ**********************

--“‘…œ «∂ØÃ¨**************************************************************

--»ŒŒÒŒƒ±æ√Ë ˆ
x250037_g_MissionName="B·i thiÍn ∏a";
x250037_g_MissionInfo="H„y ™n L’c DﬂΩng - H÷ Lai L’c[273,236]s°p x™p chu¶n b∏ b·i thiÍn ∏a!";
x250037_g_MissionTarget="ó L’c DﬂΩng tÏm H÷ Lai L’c#{_INFOAIM273,236,0,H÷ Lai L’c} s°p x™p b·i thiÍn ∏a.";		--»ŒŒÒƒø±Í
x250037_g_ContinueInfo1="C·c ngﬂΩi tæi muµn qu·, gi∂ l‡nh „ qua, ta khÙng cÚn c·ch n‡o kh·c...";
x250037_g_ContinueInfo2="∑ ‚y c•n lßp k™ ho’ch, c·m Ωn";
x250037_g_MissionComplete="H„y ¨ ch˙ng ta b°t •u";

--»ŒŒÒΩ±¿¯
x250037_g_MoneyBonus = 0

--MisDescEnd

x250037_g_eventId_begin = 0;	--µ„ª˜∞›ÃÏµÿ»ŒŒÒµƒ ¬º˛
x250037_g_eventId_start = 1;	--µ„ª˜ø™ º∞›ÃÏµÿµƒ ¬º˛
x250037_g_eventId_close = 2;	--µ„ª˜µ»ª·‘Ÿø™ ºµƒ ¬º˛


--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x250037_OnDefaultEvent(sceneId, selfId, targetId)	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	local selectEventId	= GetNumText();
	
	--µ„ª˜∞›ÃÏµÿ»ŒŒÒµƒ ¬º˛
	if x250037_g_eventId_begin == selectEventId then
		x250037_OnBegin(sceneId, selfId, targetId);
	--µ„ª˜ø™ º∞›ÃÏµÿµƒ ¬º˛
	elseif x250037_g_eventId_start == selectEventId then
		x250037_OnStart(sceneId, selfId, targetId);
	--µ„ª˜µ»ª·‘Ÿø™ ºµƒ ¬º˛
	elseif x250037_g_eventId_close == selectEventId then
		BeginUICommand(sceneId);
		EndUICommand(sceneId);
		DispatchUICommand(sceneId, selfId, 1000);
	end

end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x250037_OnEnumerate(sceneId, selfId, targetId)
    --»Áπ˚“—Ω”¥À»ŒŒÒ
    if IsHaveMission(sceneId,selfId,x250037_g_MissionId) > 0 then
		AddNumText(sceneId, x250037_g_ScriptId, x250037_g_MissionName, 3, x250037_g_eventId_begin);
    end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x250037_CheckAccept(sceneId, selfId)
	return 1;
end

--**********************************
--Ω” ‹
--**********************************
function x250037_OnAccept(sceneId, selfId, marryLevel)

	--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	AddMission(sceneId, selfId, x250037_g_MissionId, x250037_g_ScriptId, 0, 0, 0);
	misIndex = GetMissionIndexByID(sceneId, selfId, x250037_g_MissionId);			--µ√µΩ»ŒŒÒµƒ–Ú¡–∫≈
	if misIndex and misIndex >= 0 then
		StartMissionTimer(sceneId,selfId, x250037_g_MissionId);
		SetMissionByIndex(sceneId,selfId,misIndex, 0, 1);						--∏˘æ›–Ú¡–∫≈∞—»ŒŒÒ±‰¡øµƒµ⁄0Œª÷√0 (»ŒŒÒÕÍ≥…«Èøˆ)
		SetMissionByIndex(sceneId,selfId,misIndex, 7, x250037_g_MissionLimitTime);
		SetMissionByIndex(sceneId,selfId,misIndex, 2, marryLevel);
		
		Msg2Player(sceneId, selfId,"#YNhßn nhiÆm v¯: "..x250037_g_MissionName.."",MSG2PLAYER_PARA);	--¡ƒÃÏ¥∞ø⁄Ã· æ
	end
end

--**********************************
--∑≈∆˙
--**********************************
function x250037_OnAbandon(sceneId, selfId)
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
 	local checkMission = IsHaveMission(sceneId, selfId, x250037_g_MissionId);
	if checkMission and checkMission == 1 then
		DelMission(sceneId, selfId, x250037_g_MissionId);
	end
end

--**********************************
--ºÃ–¯
--**********************************
function x250037_OnContinue(sceneId, selfId, targetId)
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x250037_CheckSubmit(sceneId, selfId)
	return 0;
end

--**********************************
--Ã·Ωª
--**********************************
function x250037_OnSubmit(sceneId, selfId, targetId,selectRadioId)
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x250037_OnKillObject(sceneId, selfId, objdataId ,objId)
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x250037_OnEnterArea(sceneId, selfId, zoneId)
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x250037_OnItemChanged(sceneId, selfId, itemdataId)
end

--**********************************
--∂® ± ¬º˛
--**********************************
function x250037_OnTimer(sceneId,selfId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250037_g_MissionId);
	if misIndex and misIndex >= 0 then
		local saveTime = GetMissionParam(sceneId, selfId, misIndex, 7);
		if saveTime and saveTime > 0 then
			saveTime = saveTime - 1000;
			if saveTime <= 0 then
				StopMissionTimer(sceneId, selfId, x250037_g_MissionId);
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 2);
				saveTime = 0;
			end
			SetMissionByIndex(sceneId, selfId, misIndex, 7, saveTime);
		end
	end
end

--**********************************
--µ„ª˜∞›ÃÏµÿ»ŒŒÒµƒ ¬º˛
--**********************************
function x250037_OnBegin(sceneId, selfId, targetId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250037_g_MissionId);
	if misIndex and misIndex >= 0 then
		local stateCode = GetMissionParam(sceneId, selfId, misIndex, 0);
		if stateCode and stateCode == 2 then
			x250037_MessageBox(sceneId, selfId, targetId, x250037_g_ContinueInfo1);
			DelMission(sceneId, selfId, x250037_g_MissionId);
		else
			BeginEvent(sceneId);
				AddText(sceneId, "N‡o, ·m rﬂæc kiÆu hoa rµn r‡ng „ k™t th˙c r∞i, gi∂ b°t •u b·i thiÍn ∏a n‡o!");
				AddNumText(sceneId, x250037_g_ScriptId, "–ﬂ˛c, gi∂ s® b°t •u", 8, x250037_g_eventId_start);
				AddNumText(sceneId, x250037_g_ScriptId, "Ch˙ng ta h„y ch∂ mµt l·t...", 8, x250037_g_eventId_close);
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end
	end
end

--**********************************
--µ„ª˜ø™ º∞›ÃÏµÿµƒ ¬º˛
--**********************************
function x250037_OnStart(sceneId, selfId, targetId)
	local marryLevel = 0;
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250037_g_MissionId);
	if misIndex and misIndex >= 0 then
		local stateCode = GetMissionParam(sceneId, selfId, misIndex, 0);
		if stateCode and stateCode == 2 then
			x250037_MessageBox(sceneId, selfId, targetId, x250037_g_ContinueInfo1);
			DelMission(sceneId, selfId, x250037_g_MissionId);
			return 0;
		else
			marryLevel = GetMissionParam(sceneId, selfId, misIndex, 2);
		end
	else
		x250037_MessageBox(sceneId, selfId, targetId, "Chﬂa tÏm ﬂ˛c nhiÆm v¯ b·i thiÍn ∏a!");
		return 0;
	end
		
	local szMsg = "N™u muØn b·i thiÍn ∏a, m∂i hai bÍn nam nÊ tßp h˛p th‡nh 1 µi, l’i tæi tÏm ta"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	szMsg = "NhÛm chÔ cÛ th¨ do hai bÍn phu thÍ lßp th‡nh, trong nhÛm khÙng th¨ cÛ th‡nh viÍn kh·c"
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "ChÔ cÛ 2 ngﬂ∂i tæi bÍn c’nh ta mæi cÛ th¨ b°t •u b·i thiÍn ∏a"
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "KhÙng l‡ phu thÍ, khÙng th¨ b°t •u b·i thiÍn ∏a"
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
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	local isSpouses = LuaFnIsSpouses(sceneId, maleId, femaleId);
	if isSpouses and isSpouses > 0 then
	else
		x250037_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end


	DelMission(sceneId, selfId, x250037_g_MissionId);

	CallScriptFunction(401030, "Create", sceneId, maleId, femaleId, marryLevel);

end

--**********************************
--∂‘ª∞¥∞ø⁄–≈œ¢Ã· æ
--**********************************
function x250037_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end
