--Ñ¡ÔñÖ²ÎïtoÕ ðµ ½Å±¾

--½Å±¾ºÅ
x713550_g_scriptId = 713550


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713550_OnDefaultEvent( sceneId, selfId, targetId, zhiwuId )
	local num =0
	--ÅÐ¶ÏÖÖÖ²ÅÆtoÕ ðµ Î»ÖÃ
	local PlantFlag_X
	local PlantFlag_Z
	PlantFlag_X,PlantFlag_Z =  GetWorldPos(sceneId,targetId)	-- ði¬mµ½npc×ø±ê
	PlantFlag_X = floor(PlantFlag_X)
	PlantFlag_Z = floor(PlantFlag_Z)

	for i, findid in PLANTNPC_ADDRESS do
		if	((PlantFlag_X ==  findid.X)  and (PlantFlag_Z == findid.Z) and (sceneId == findid.Scene)) then
			num = i
			break
		end
	end
	--Èç¹ûÃ»ÕÒµ½¶ÔÓ¦Î»ÖÃ
	if num == 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "Nß¾c và ð¤t s¨ hªt, ð« ngh¸ hãy bäo v® tñ nhiên")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--Èç¹ûÍÁµØ²»ÐúngÏÐÖÃ×´Ì¬
	if	PLANTFLAG[num] ~= 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "Ð¤t ðã ðßþc tr°ng tr÷t, xin m¶i 1 lúc næa hãy ðªn nhé!")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return
	end

	--Èç¹û»îÁ¦²»×ã
	x713550_g_energy = GetHumanEnergy(sceneId,selfId)
	--²éÕÒÖ²ÎïµÈc¤p
	local level_Index
	if zhiwuId >= getn(V_ZHONGZHI_ID) then
		level_Index = zhiwuId-getn(V_ZHONGZHI_NAME)/2
	else
		level_Index = zhiwuId
	end

	x713550_g_ZhiWuLevel = V_ZHONGZHI_NEEDLEVEL[level_Index]

	local EnergyCost = CallScriptFunction( ABILITYLOGIC_ID, "CalcEnergyCostCaiJi", sceneId, selfId, ABILITY_ZHONGZHI, x713550_g_ZhiWuLevel )
	if x713550_g_energy < EnergyCost then
		BeginEvent(sceneId)
			AddText(sceneId, "Tinh lñc cüa các hÕ không ðü!")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return
	end

	--ÅÐ¶ÏÍæ¼ÒÐúng·ñTÕi N phútÄÚÖÖÖ²ÁË,Èç¹ûTÕi N phútÄÚÖÖÖ²ÁË,Ôò²»ÔÊÐíÔÙÖÖ,³¬¹ýN phútÔò¿ÉÒÔ
	--missiondataÄ¬ÈÏÖµÐúng0,ÖØÐÂÆô¶¯·þÎñÆ÷²»»á±ä
	local CurrentTime = LuaFnGetCurrentTime()
	local MissionData = GetMissionData(sceneId,selfId,MD_ZHONGZHI_TIME)
	local Zhongzhi_Flag =  GetMissionData(sceneId,selfId,MD_ZHONGZHI_FLAG)
	local WaitTime
	if (Zhongzhi_Flag == 1 and (CurrentTime - MissionData) <= 300) or
		(Zhongzhi_Flag == 2 and (CurrentTime - MissionData) <= 4200) then
		if Zhongzhi_Flag == 1 then
			WaitTime = 300 - (CurrentTime - MissionData)
		else
			WaitTime = 4200 - (CurrentTime - MissionData)
		end
		
		WaitTime = floor(WaitTime/60)
		BeginEvent(sceneId)
			AddText(sceneId, "Không th¬ tr°ng tr÷t liên tøc, khoäng"..WaitTime.."Phút ð°ng h° sau có th¬ tiªp tøc tr°ng tr÷t")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--Í³¼ÆÊý¾Ý
	LuaFnAuditAbility(sceneId, selfId, ABILITY_ZHONGZHI, -1, -1)
	--Ôö¼ÓÊìÁ·¶È
	CallScriptFunction(ABILITYLOGIC_ID, "GainExperience", sceneId, selfId, ABILITY_ZHONGZHI, x713550_g_ZhiWuLevel)
	--É¾³ýÏàÓ¦»îÁ¦
		CallScriptFunction(ABILITYLOGIC_ID, "EnergyCostZhongZhi", sceneId, selfId, ABILITY_ZHONGZHI, x713550_g_ZhiWuLevel)
	--·ÅÖÃÉú³¤ ði¬m

	ItemBoxTypeId = V_ZHONGZHI_ITEMBOX_ID[zhiwuId]

	ItemBoxId01 = ItemBoxEnterScene(PlantFlag_X+1.5,PlantFlag_Z-1,ItemBoxTypeId,sceneId,QUALITY_MUST_BE_CHANGE,0)
	ItemBoxId02 = ItemBoxEnterScene(PlantFlag_X+1.5,PlantFlag_Z+2,ItemBoxTypeId,sceneId,QUALITY_MUST_BE_CHANGE,0)
	ItemBoxId03 = ItemBoxEnterScene(PlantFlag_X-0.5,PlantFlag_Z-1,ItemBoxTypeId,sceneId,QUALITY_MUST_BE_CHANGE,0)
	ItemBoxId04 = ItemBoxEnterScene(PlantFlag_X-0.5,PlantFlag_Z+2,ItemBoxTypeId,sceneId,QUALITY_MUST_BE_CHANGE,0)
	SetItemBoxMaxGrowTime(sceneId,ItemBoxId01,45000)
	SetItemBoxMaxGrowTime(sceneId,ItemBoxId02,45000)
	SetItemBoxMaxGrowTime(sceneId,ItemBoxId03,45000)
	SetItemBoxMaxGrowTime(sceneId,ItemBoxId04,45000)
	-- ði¬mµ½guid
	local guid = GetHumanGUID(sceneId,selfId)

	--¸øItemBoxÉè¶¨Ö÷ÈË
	SetItemBoxOwner(sceneId,ItemBoxId01,guid)
	SetItemBoxOwner(sceneId,ItemBoxId02,guid)
	SetItemBoxOwner(sceneId,ItemBoxId03,guid)
	SetItemBoxOwner(sceneId,ItemBoxId04,guid)

	PLANTFLAG[num] = 8
	BeginEvent(sceneId)
		AddText(sceneId, "Các hÕ b¡t ð¥u tr°ng tr÷t")
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)

	--°ÑmissiondataÉèÖÃÎªµ±Ç°Ê±¼ä
	SetMissionData(sceneId,selfId,MD_ZHONGZHI_TIME,CurrentTime)
	
	if zhiwuId >= getn(V_ZHONGZHI_ID) then
		SetMissionData(sceneId,selfId,MD_ZHONGZHI_FLAG,2)
	else
		SetMissionData(sceneId,selfId,MD_ZHONGZHI_FLAG,1)
	end

 	return OR_OK
end
