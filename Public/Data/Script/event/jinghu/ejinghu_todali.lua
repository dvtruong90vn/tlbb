-- 005120
-- 镜湖检查
--QQ:58977573 编写

-- 使用一些本场景唯一的全局变量来保存数据

-- 这里的计时器在第一玩家进入本场景后自己启动，永不关闭。
function x005120_OnSceneTimer(sceneId)
          
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
        for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		x005120_Dogodali( sceneId, nHumanId )
	end
end

function x005120_Dogodali( sceneId, selfId )
	   local guildid = GetHumanGuildID(sceneId, selfId)
	      if guildid == -1 then
	   CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 375, 225 )
	      end
end
