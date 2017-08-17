--在线泡点


--脚本号
x898989_g_scriptId = 898989

x898989_g_NormalExpBuffID = 5905	--普通 获得经验的特效....
x898989_g_MoreExpBuffID = 5904		--暴击 获得经验的特效....

x898989_g_ExpTbl = {
	[10]=100,[11]=111,[12]=130,[13]=140,[14]=150,
	[15]=180,[16]=220,[17]=250,[18]=300,[19]=320,
	[20]=350,[21]=380,[22]=400,[23]=430,[24]=450,
	[25]=500,[26]=550,[27]=600,[28]=650,[29]=700,
	[30]=10000,[31]=10000,[32]=10000,[33]=10000,[34]=10000,
	[35]=20000,[36]=20000,[37]=20000,[38]=20000,[39]=20000,
	[40]=30000,[41]=30000,[42]=30000,[43]=30000,[44]=30000,
	[45]=40000,[46]=40000,[47]=40000,[48]=40000,[49]=40000,
	[50]=50000,[51]=50000,[52]=50000,[53]=50000,[54]=50000,
	[55]=60000,[56]=60000,[57]=60000,[58]=60000,[59]=60000,
	[60]=1,[61]=1,[62]=1,[63]=1,[64]=1,
	[65]=1,[66]=1,[67]=1,[68]=1,[69]=1,
	[70]=1,[71]=1,[72]=1,[73]=1,[74]=1,
	[75]=1,[76]=1,[77]=1,[78]=1,[79]=1,
	[80]=1,[81]=1,[82]=1,[83]=1,[84]=1,
	[85]=1,[86]=1,[87]=1,[88]=1,[89]=1,
	[90]=1,[91]=1,[92]=1,[93]=1,[94]=1,
	[95]=1,[96]=1,[97]=1,[98]=1,[99]=1,
	[100]=1,[101]=1,[102]=1,[103]=1,[104]=1,
	[105]=1,[106]=1,[107]=1,[108]=1,[109]=1,
	[110]=1,[111]=1,[112]=1,[113]=1,[114]=1,
	[115]=1,[116]=1,[117]=1,[118]=1,[119]=1,
	[120]=80000,[121]=80000,[122]=1,[123]=1,[124]=1,
	[125]=1,[126]=1,[127]=1,[128]=1,[129]=1,
	[130]=1,[131]=1,[132]=1,[133]=1,[134]=1,
	[135]=1,[136]=1,[137]=1,[118]=1,[139]=1,
	[140]=1,[141]=1,[142]=1,[143]=1,[144]=1,
	[145]=1,[146]=1,[147]=1,[148]=1,[149]=1,

}

--**********************************
-- OnTime
--**********************************
function x898989_OnSceneTimer(sceneId)

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		x898989_DoHanYuLogic( sceneId, nHumanId )
	end

end

--**********************************
-- 挂机加经验逻辑
--**********************************
function x898989_DoHanYuLogic( sceneId, selfId )

	--if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
	--	return
	--end

	--if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
	--	return
	--end

	--获得经验....
	local IsMoreExp = 0
	local CurLevel = LuaFnGetLevel( sceneId, selfId )
	local CurExp = x898989_g_ExpTbl[CurLevel]
	--if CurExp and CurExp > 0 then

		--给玩家有5%几率给2倍经验....
			if random(100) <= 5 then
				CurExp = CurExp * 2
				IsMoreExp = 1
			end
	
		LuaFnAddExp( sceneId, selfId, CurExp)

	--获得赠点
	if CurLevel > 99 then
		ZengDian(sceneId,selfId,-1,1, 1 )
	end
	--end

	--给获得经验的buff....
	if 1 == IsMoreExp then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x898989_g_MoreExpBuffID, 0)
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x898989_g_NormalExpBuffID, 0)
	end

end
--**********************************
-- 获取某等级的经验
--**********************************
function x898989_GetPreExpOfThisLevel( sceneId, level )

	local Exp = x898989_g_ExpTbl[level]
	if Exp then
		return Exp
	else
		return 0
	end

end
