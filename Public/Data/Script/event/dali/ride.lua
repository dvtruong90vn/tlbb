--9´óÃÅÅÉÆï³Ë½Å±¾

x210299_g_ScriptId = 210299;

--Ñ§Ï°µÈ¼¶ÏÞÖÆ
x210299_g_SpecialEffectID = 18;

x210299_g_rideskillList = {};
x210299_g_rideskillList[1] ={limitLevel = 40, costMoney =350000, skillList = {
	{id=447,name="KÜ thu§t: H±"},
	{id=561,name="KÜ thu§t: Sß tØ"},
	{id=455,name="KÜ thu§t: Khôi Lang"},
	{id=450,name="KÜ thu§t: HÕc"},
	{id=451,name="KÜ thu§t: Thanh Phßþng"},
	{id=452,name="KÜ thu§t: Mao ngßu"},
	{id=448,name="KÜ thu§t: Hoàng Phiêu Mã"},
	{id=454,name="KÜ thu§t: Ðiêu"},
	{id=453,name="KÜ thu§t: Lµc"}}
	};

x210299_g_rideskillList[2] ={limitLevel = 60, costMoney =2900000, skillList = {
	{id=456,name="KÜ thu§t: BÕch H±"},
	{id=562,name="KÜ thu§t: BÕch sß"},
	{id=464,name="KÜ thu§t: BÕch Lang"},
	{id=459,name="KÜ thu§t: Kim Dñc HÕc"},
	{id=460,name="KÜ thu§t: H°ng BÕch Phßþng"},
	{id=461,name="KÜ thu§t: BÕch mao ngßu"},
	{id=457,name="KÜ thu§t: Thanh BÕch Thông Mã"},
	{id=463,name="KÜ thu§t: BÕch Ðiêu"},
	{id=462,name="KÜ thu§t: BÕch Lµc"}}
	};

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210299_OnDefaultEvent(sceneId, selfId, targetId, level, skillLevel)
	local selectSkill;
	local limitLevel;
	local costMoney;
	local selfMenpai = LuaFnGetMenPai(sceneId, selfId);
	if selfMenpai then
		skillLevel = skillLevel + 1;
		local selectRideskillList = x210299_g_rideskillList[skillLevel];

		local selectSkillIndex = selfMenpai + 1;
		selectSkill = selectRideskillList.skillList[selectSkillIndex];
		limitLevel = selectRideskillList.limitLevel;
		costMoney = selectRideskillList.costMoney;
	end
	
	local selfLevel = LuaFnGetLevel(sceneId, selfId);
	if selectSkill and limitLevel and selfLevel then
		if selfLevel < limitLevel then
			x210299_ShowTipWindow(sceneId, selfId, "C¥n ðÕt t¾i c¤p "..limitLevel.." m¾i h÷c có th¬ kÛ nång này.");
			return
		end
		
		local checkRet = LuaFnHaveSpecificEquitation(sceneId, selfId, selectSkill.id);
		if checkRet and checkRet == 0 then
				------------------------------------------------------------------------------	
			  local jz,_ = LuaFnCostMoneyWithPriority( sceneId, selfId, costMoney );	
				if jz == -1 then
					x210299_ShowTipWindow(sceneId, selfId, "#{GCShopBuyHandler_Info_Money_Is_Not_Enough}")
					return
				end
			------------------------------------------------------------------------------------
			local ret = LuaFnLearnSpecificEquitation(sceneId, selfId, selectSkill.id, 1);
			if ret and ret == 1 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x210299_g_SpecialEffectID, 0);
				x210299_ShowTipWindow(sceneId, selfId, "H÷c ðßþc "..selectSkill.name..".");
			end
		else
			x210299_ShowTipWindow(sceneId, selfId, "Các hÕ ðã h÷c ðßþc "..selectSkill.name..".");
		end
	end
end

--**********************************
--ÌáÊ¾
--**********************************
function x210299_ShowTipWindow(sceneId, selfId, message)
	BeginEvent(sceneId);
		AddText(sceneId, message);
	EndEvent( );
	DispatchMissionTips(sceneId, selfId);
end

