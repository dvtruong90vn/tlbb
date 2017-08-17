--Éú»î¼¼ÄÜ
--ÖÆÔìÒÂ·þ

--±¾½Å±¾µÄ½Å±¾ºÅ
x700960_g_ScriptID = 700960;

--Ô­ÁÏ±í
x700960_g_Stuff =
{
	--Å®ÕæÊÏ·þ
	[1] = {20103103, 20103112, 20103115, 20308071},
	[2] = {20103103, 20103112, 20103115, 20308071}, 
	[3] = {20103103, 20103112, 20103115, 20308071},
	[4] = {20103104, 20103113, 20103116, 20308072},
	[5] = {20103104, 20103113, 20103116, 20308072},
	[6] = {20103104, 20103113, 20103116, 20308072},
	[7]	=	{20103105, 20103114, 20103117, 20308073},
	[8]	=	{20103105, 20103114, 20103117, 20308073},
	[9]	=	{20103105, 20103114, 20103117, 20308073},
}

--Ô­ÁÏÊýÁ¿
x700960_g_Count	=
{
	[1]	= {1, 50, 10, 1},
	[2] = {1, 55, 11, 1},
	[3] = {1, 60, 12, 1},
	[4] = {1, 50, 10, 1},
	[5] = {1, 55, 11, 1},
	[6] = {1, 60, 12, 1},
	[7]	=	{1, 50, 10, 1},
	[8]	=	{1, 11, 2, 1},
	[9]	=	{1, 50, 10, 1},
}

x700960_g_CompoundInfo = {}

--Å®ÕæÊÏ·þ
x700960_g_CompoundInfo[413] =
{
	abilityId	= ABILITY_FENGREN,
	recipeLevel = 1,
	deleteVigor = 90,
	matTbl = 
	{
		{ matList = x700960_g_Stuff[1], count = x700960_g_Count[1], Product = 10124076,},
	},
}

x700960_g_CompoundInfo[414] =
{
	abilityId	= ABILITY_FENGREN,
	recipeLevel = 1,
	deleteVigor = 100,
	matTbl = 
	{
		{ matList = x700960_g_Stuff[2], count = x700960_g_Count[2], Product = 10124077,},
	},
}

x700960_g_CompoundInfo[415] =
{
	abilityId	= ABILITY_FENGREN,
	recipeLevel = 1,
	deleteVigor = 110,
	matTbl = 
	{
		{ matList = x700960_g_Stuff[3], count = x700960_g_Count[3], Product = 10124078,},
	},
}

x700960_g_CompoundInfo[416] =
{
	abilityId	= ABILITY_FENGREN,
	recipeLevel = 2,
	deleteVigor = 90,
	matTbl = 
	{
		{ matList = x700960_g_Stuff[4], count = x700960_g_Count[4], Product = 10124079,},
	},
}

x700960_g_CompoundInfo[417] =
{
	abilityId	= ABILITY_FENGREN,
	recipeLevel = 2,
	deleteVigor = 100,
	matTbl = 
	{
		{ matList = x700960_g_Stuff[5], count = x700960_g_Count[5], Product = 10124080,},
	},
}

x700960_g_CompoundInfo[418] =
{
	abilityId	= ABILITY_FENGREN,
	recipeLevel = 2,
	deleteVigor = 110,
	matTbl = 
	{
		{ matList = x700960_g_Stuff[6], count = x700960_g_Count[6], Product = 10124081,},
	},
}

x700960_g_CompoundInfo[423] =
{
	abilityId	= ABILITY_FENGREN,
	recipeLevel = 3,
	deleteVigor = 90,
	matTbl = 
	{
		{ matList = x700960_g_Stuff[7], count = x700960_g_Count[7], Product = 10124082,},
	},
}

x700960_g_CompoundInfo[530] =
{
	abilityId	= ABILITY_FENGREN,
	recipeLevel = 3,
	deleteVigor = 90,
	matTbl = 
	{
		{ matList = x700960_g_Stuff[8], count = x700960_g_Count[8], Product = 10124071,},
	},
}

x700960_g_CompoundInfo[531] =
{
	abilityId	= ABILITY_FENGREN,
	recipeLevel = 3,
	deleteVigor = 110,
	matTbl = 
	{
		{ matList = x700960_g_Stuff[9], count = x700960_g_Count[9], Product = 10124088,},
	},
}

--±³°üÐèÒªµÄ¿Õ¼ä
x700960_g_BagSpace = 1;

function x700960_AbilityCheck( sceneId, selfId, recipeId )
	
	local CompoundInfo	= x700960_g_CompoundInfo[recipeId];
	if(not CompoundInfo) then
		return OR_ERROR;
	end
	
	--±³°ü¿Õ¼ä¼ì²é
	if(LuaFnGetPropertyBagSpace(sceneId, selfId) < x700960_g_BagSpace) then
		return OR_BAG_OUT_OF_SPACE;
	end
	
	--¼¼ÄÜµÈ¼¶ÏÞÖÆ
	local abilityLevel = QueryHumanAbilityLevel(sceneId, selfId, CompoundInfo.abilityId);
	if(abilityLevel < CompoundInfo.recipeLevel) then
		return OR_NO_LEVEL
	end
	
	--»îÁ¦ÏÞÖÆ
	local vigor = GetHumanVigor(sceneId, selfId);
	if(vigor - CompoundInfo.deleteVigor < 0) then
		return OR_NOT_ENOUGH_VIGOR;
	end
	
	--²ÄÁÏÊýÁ¿ÏÞÖÆ
	local i, matInfo, tblCount, bMatEnoughFlag, idx, MatSN, Count, listCount;
	
	tblCount = getn( CompoundInfo.matTbl);
	bMatEnoughFlag = 0;
	
	for i=1,tblCount do
		Count = 0;
		matInfo = CompoundInfo.matTbl[i];
		if(not matInfo) then
			return OR_STUFF_LACK
		end
		
		if(not matInfo.matList) then
			return OR_STUFF_LACK;
		end
		
		listCount = getn(matInfo.matList);
		for j=1,listCount do
			MatSN = matInfo.matList[j];
			Count = LuaFnGetAvailableItemCount( sceneId, selfId, MatSN );
			
			if(Count < matInfo.count[j]) then
				return OR_STUFF_LACK;
			end
		end
		
	end
	
	
end

function x700960_AbilityProduce( sceneId, selfId, recipeId )

	local	CompoundInfo = x700960_g_CompoundInfo[recipeId];
	if(not CompoundInfo) then
		return OR_ERROR
	end
	
	--¿Û³ý»îÁ¦
	local vigor = GetHumanVigor(sceneId, selfId);
	vigor = vigor - CompoundInfo.deleteVigor;
	SetHumanVigor(sceneId, selfId, vigor);
	
	local i, matInfo, tblCount, bMatEnoughFlag, idx, MatSN, Count, DelCount, listCount, bagIndex;
	
	tblCount = getn(CompoundInfo.matTbl);
	DelCount = 0;
	
	for i = 1, tblCount do
		Count = 0;
		matInfo = CompoundInfo.matTbl[i];
		if(not matInfo) then
			return OR_STUFF_LACK
		end
		
		if(not matInfo.matList) then
			return OR_STUFF_LACK
		end
		
		listCount = getn(matInfo.matList);
		for j=1, listCount do
			MatSN = matInfo.matList[j];
			Count = LuaFnGetAvailableItemCount( sceneId, selfId, MatSN );
			
			if(Count < matInfo.count[j]) then
				return OR_STUFF_LACK
			end		
		end
		
		--¿Û³ýÎïÆ·
		for j=1, listCount do
			MatSN = matInfo.matList[j];
			DelCount = LuaFnGetAvailableItemCount( sceneId, selfId, MatSN );
			
			if(DelCount > 0) then
				if(DelCount > matInfo.count[j]) then
					DelCount = matInfo.count[j];
				end
			end
			
			LuaFnDelAvailableItem( sceneId, selfId, MatSN, DelCount );
		end
		
		bagIndex = LuaFnTryRecieveItem( sceneId, selfId, matInfo.Product, QUALITY_MUST_BE_CHANGE );
		if(bagIndex < 0) then
			LuaFnAuditAbility(sceneId, selfId, CompoundInfo.abilityId, recipeId, 0)
			return OR_ERROR
		end
		
		local itemInfo = GetBagItemTransfer( sceneId, selfId, bagIndex );
	
		--ÔÚÕâÀï¹ã²¥
		BroadMsgByChatPipe( sceneId, selfId, "#{_INFOUSR"..GetName( sceneId, selfId).."}#I c¦n th§n, tay d®t thành t× cái kén mµt, tách ra t×ng mûi chï b¸ höng, và cu¯i cùng ß¾c m½ ðã thành hi®n thñc khi #{_INFOMSG"..itemInfo.."}#I ðßþc tÕo nên trong ni«m vui sß¾ng vô hÕn!", 4);
	end	
	
	LuaFnSendAbilitySuccessMsg( sceneId, selfId, CompoundInfo.abilityId, recipeId, matInfo.Product )
	LuaFnAuditAbility(sceneId, selfId, CompoundInfo.abilityId, recipeId, 1)
	
	return OR_OK
end
