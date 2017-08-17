--引魔珠（玄）

--脚本号
x338510_g_scriptId = 338510

x338510_g_event = 050221
--**********************************
--刷新事件
--**********************************
function x338510_OnDefaultEvent( sceneId, selfId, bagIndex )
	
	local ret = CallScriptFunction( x338510_g_event, "IsMonster", sceneId, selfId, bagIndex )
	if ret == 1 then
		CallScriptFunction( x338510_g_event, "GenerateMonster", sceneId, selfId, 4 )
	end
	
end

function x338510_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
