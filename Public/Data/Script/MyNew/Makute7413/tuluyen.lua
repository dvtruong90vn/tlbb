--GetMissionData(sceneId, selfId, XIULIAN_GONGLI)--
--SetMissionData(sceneId, selfId, XIULIAN_GONGLI, X)--
--LuaFnWashSomePoints(sceneId, selfId, nType, nPoint)--
--0: Cuong Luc, 1: Noi Luc, 2: The Luc, 3: Tri Luc, 4: Than Phap--
x002193_g_scriptId = 002193

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************


function x002193_OnDefaultEvent( sceneId, selfId, targetId)	
	BeginEvent(sceneId)
		AddText(sceneId, "Ta là ngß¶i chuyên trách vi®c tu luy®n · ðây, các hÕ c¥n gì hãy nói cho ta biªt?")
		AddText(sceneId, "Ð¬ b¡t ð¥u tu luy®n c¥n b± sung ít nh¤t mµt ði¬m ti«m nång vào thuµc tính mà các hÕ mu¯n tu luy®n.")
		--AddNumText(sceneId, x002193_g_scriptId, "TEST szAuthor", 6, 0)
		--AddNumText(sceneId, x002193_g_scriptId, "TEST Th¥n Ðïnh", 6, 4)
		AddNumText(sceneId, x002193_g_scriptId, "Xem tình trÕng tu luy®n", 6, 1)
		AddNumText(sceneId, x002193_g_scriptId, "Tiªn hành tu luy®n", 6, 7)
		AddNumText(sceneId, x002193_g_scriptId, "Ta s¨ quay lÕi sau.", 8, 3)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002193_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()

	if key == 0 then
		LuaFnSetItemCreator(sceneId,selfId,0,"000000002A7DBA7D907E01005C005E0056004E004D00610477000000")
	end
	
	if key == 4 then
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, 0)
		SetMissionData(sceneId, selfId, XIULIAN_LILIANG, 0)
		SetMissionData(sceneId, selfId, XIULIAN_LINGQI, 0)
		SetMissionData(sceneId, selfId, XIULIAN_TILI, 0)
		SetMissionData(sceneId, selfId, XIULIAN_DINGLI, 0)
		SetMissionData(sceneId, selfId, XIULIAN_SHENFA, 0)
		x002193_ReturnAttr(sceneId, selfId)
	end
	
	if key == 1 then
		x002193_XiulianOpen(sceneId, selfId)
	end
	
	if key == 3 then
		x002193_CloseMe(sceneId, selfId)
	end
	
	if key == 7 then
		local gongli = GetMissionData(sceneId, selfId, XIULIAN_GONGLI)
		local CuongLuc = GetMissionData(sceneId, selfId, XIULIAN_LILIANG)
		local NoiLuc = GetMissionData(sceneId, selfId, XIULIAN_LINGQI)
		local TheLuc = GetMissionData(sceneId, selfId, XIULIAN_TILI)
		local TriLuc = GetMissionData(sceneId, selfId, XIULIAN_DINGLI)
		local ThanPhap = GetMissionData(sceneId, selfId, XIULIAN_SHENFA)
		BeginUICommand( sceneId )
			UICommand_AddInt(sceneId, gongli)
			UICommand_AddInt(sceneId, CuongLuc)
			UICommand_AddInt(sceneId, NoiLuc)
			UICommand_AddInt(sceneId, TheLuc)
			UICommand_AddInt(sceneId, TriLuc)
			UICommand_AddInt(sceneId, ThanPhap)
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 171717)
	end
end
function x002193_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end

function x002193_ReturnAttr(sceneId, selfId)
	local gongli = GetMissionData(sceneId, selfId, XIULIAN_GONGLI)
	local CuongLuc = GetMissionData(sceneId, selfId, XIULIAN_LILIANG)
	local NoiLuc = GetMissionData(sceneId, selfId, XIULIAN_LINGQI)
	local TheLuc = GetMissionData(sceneId, selfId, XIULIAN_TILI)
	local TriLuc = GetMissionData(sceneId, selfId, XIULIAN_DINGLI)
	local ThanPhap = GetMissionData(sceneId, selfId, XIULIAN_SHENFA)

	BeginUICommand( sceneId )
		UICommand_AddInt(sceneId, gongli)
		UICommand_AddInt(sceneId, CuongLuc)
		UICommand_AddInt(sceneId, NoiLuc)
		UICommand_AddInt(sceneId, TheLuc)
		UICommand_AddInt(sceneId, TriLuc)
		UICommand_AddInt(sceneId, ThanPhap)
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 20000001)
end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x002193_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--¹Ø±Õ¶Ô»°¿ò
--**********************************
function x002193_CloseMe(sceneId, selfId)
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end
--*****************
function x002193_XiulianOpen(sceneId, selfId)
	if GetLevel(sceneId,selfId) < 70 then
		 x002193_NotifyTip( sceneId, selfId, "Nhân v§t ðÕt c¤p 70 m¾i có th¬ m· khung tu luy®n!" )
		return
	else
		local gongli = GetMissionData(sceneId, selfId, XIULIAN_GONGLI)
		local CuongLuc = GetMissionData(sceneId, selfId, XIULIAN_LILIANG)
		local NoiLuc = GetMissionData(sceneId, selfId, XIULIAN_LINGQI)
		local TheLuc = GetMissionData(sceneId, selfId, XIULIAN_TILI)
		local TriLuc = GetMissionData(sceneId, selfId, XIULIAN_DINGLI)
		local ThanPhap = GetMissionData(sceneId, selfId, XIULIAN_SHENFA)
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, gongli)
			UICommand_AddInt(sceneId, CuongLuc)
			UICommand_AddInt(sceneId, NoiLuc)
			UICommand_AddInt(sceneId, TheLuc)
			UICommand_AddInt(sceneId, TriLuc)
			UICommand_AddInt(sceneId, ThanPhap)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,74130001)
	end
end

function x002193_XiuLianLevelUp(sceneId, selfId, SkillId)
	if SkillId <= 0 or SkillId >= 6 then
		x002193_NotifyTip( sceneId, selfId, "Hãy ch÷n sách tu luy®n mà các hÕ mu¯n luy®n." )
		return
	end

	local CongLuc = GetMissionData(sceneId, selfId, XIULIAN_GONGLI)
	if CongLuc <= 9 then
		x002193_NotifyTip( sceneId, selfId, "Không ðü công lñc ð¬ tu luy®n." )
		return
	end
	
	local Exp = GetExp(sceneId,selfId)
	if Exp <= 999999 then
		x002193_NotifyTip( sceneId, selfId, "Không ðü kinh nghi®m ð¬ tu luy®n." )
		return
	end
	
	if GetMoney(sceneId,selfId) >= 100000 then
		CostMoney(sceneId, selfId, 100000)
	else
		x002193_NotifyTip( sceneId, selfId, "Ngân lßþng không ðü ð¬ tu luy®n." )
		return
	end
	
	local Point = GetPlayerRemainPoints(sceneId, selfId)
	SetPlayerRemainPoints(sceneId, selfId, Point + 1)
	LuaFnAddExp(sceneId,selfId,-1000000)
	SetMissionData(sceneId, selfId, XIULIAN_GONGLI, CongLuc - 10)

	if SkillId == 1 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,171718)
		local CuongLuc = GetMissionData(sceneId, selfId, XIULIAN_LILIANG)
		if CuongLuc == -1 then
			SetMissionData(sceneId, selfId, XIULIAN_LILIANG, 1)
		else
			SetMissionData(sceneId, selfId, XIULIAN_LILIANG, CuongLuc + 1)
		end
	end

	if SkillId == 2 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,171719)
		local NoiLuc = GetMissionData(sceneId, selfId, XIULIAN_LINGQI)
		if NoiLuc == -1 then
			SetMissionData(sceneId, selfId, XIULIAN_LINGQI, 1)
		else
			SetMissionData(sceneId, selfId, XIULIAN_LINGQI, NoiLuc + 1)
		end
	end
	
	if SkillId == 3 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,171720)
		local TheLuc = GetMissionData(sceneId, selfId, XIULIAN_TILI)
		if TheLuc == -1 then
			SetMissionData(sceneId, selfId, XIULIAN_TILI, 1)
		else
			SetMissionData(sceneId, selfId, XIULIAN_TILI, TheLuc + 1)
		end
	end
	
	if SkillId == 4 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,171721)
		local TriLuc = GetMissionData(sceneId, selfId, XIULIAN_DINGLI)
		if TriLuc == -1 then
			SetMissionData(sceneId, selfId, XIULIAN_DINGLI, 1)
		else
			SetMissionData(sceneId, selfId, XIULIAN_DINGLI, TriLuc + 1)
		end
	end
	
	if SkillId == 5 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,171722)
		local ThanPhap = GetMissionData(sceneId, selfId, XIULIAN_SHENFA)
		if ThanPhap == -1 then
			SetMissionData(sceneId, selfId, XIULIAN_SHENFA, 1)
		else
			SetMissionData(sceneId, selfId, XIULIAN_SHENFA, ThanPhap + 1)
		end
	end

	x002193_ReturnAttr(sceneId, selfId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
end