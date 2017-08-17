--引魔珠（风）

--脚本号
x338511_g_scriptId = 338511

x338511_g_event = 050221
--**********************************
--刷新事件
--**********************************
function x338511_OnDefaultEvent( sceneId, selfId, bagIndex )
	
	local ret = CallScriptFunction( x338511_g_event, "IsMonster", sceneId, selfId, bagIndex )
	if ret == 1 then
		CallScriptFunction( x338511_g_event, "GenerateMonster", sceneId, selfId, 1 )
	end
	
end

function x338511_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
