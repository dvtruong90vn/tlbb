--脚本号
x898989_g_scriptId = 898989

--**********************************
-- OnTime
--**********************************
function x898989_OnSceneTimer(sceneId)

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		x898989_DoAutoGetExpLogic( sceneId, nHumanId )
	end

end

--**********************************
-- 挂机加经验逻辑
--**********************************
function x898989_DoAutoGetExpLogic( sceneId, selfId )

	if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return
	end

	--获得经验....

	local nLevel = GetLevel(sceneId, selfId)
	if (nLevel >= 150) then
	  LuaFnAddExp( sceneId, selfId, 1000);
	  ZengDian(sceneId, selfId, -1, 1, 100);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得200赠点！" )
	elseif (nLevel >= 140) then
	  LuaFnAddExp( sceneId, selfId, 1000);
	  ZengDian(sceneId, selfId, -1, 1, 100);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得200赠点！" )
	elseif (nLevel >= 130) then
	  LuaFnAddExp( sceneId, selfId, 1000);
	  ZengDian(sceneId, selfId, -1, 1, 90);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得180赠点！" )	
	elseif (nLevel >= 120) then
	  LuaFnAddExp( sceneId, selfId, 1000);
	  ZengDian(sceneId, selfId, -1, 1, 80);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得180赠点！" )	
	elseif (nLevel >= 110) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 80);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得160赠点！" )
	elseif (nLevel >= 100) then
	  LuaFnAddExp( sceneId, selfId, 1000);
	  ZengDian(sceneId, selfId, -1, 1, 60);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得120赠点！" )
	elseif (nLevel >= 90) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 60);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得120赠点！" )
	elseif (nLevel >= 80) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 60);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得120赠点！" )
	elseif (nLevel >= 70) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 60);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得120赠点！" )
	elseif (nLevel >= 60) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 60);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得120赠点！" )
	elseif (nLevel >= 50) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 50);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得100赠点！" )
	elseif (nLevel >= 40) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 50);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得100赠点！" )
	elseif (nLevel >= 35) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 50);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得100赠点！" )
	elseif (nLevel >= 30) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 50);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得100赠点！" )
	elseif (nLevel >= 20) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 50);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得100赠点！" )
	elseif (nLevel >= 10) then
	  LuaFnAddExp( sceneId, selfId, 10000);
	  ZengDian(sceneId, selfId, -1, 1, 50);
	  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 149, 0);
	  x898989_MsgBox( sceneId, selfId, "恭喜您泡点成功!温馨提示：只要在洛阳，每1分钟可以获得100赠点！" )
  end;

end

--**********************************
--消息提示
--**********************************
function x898989_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


