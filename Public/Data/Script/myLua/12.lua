-- 领奖NPC

x454546_g_scriptId = 454546

x454546_g_MonsterId = 42106    ---npc怪物ID
x454546_g_CreateId = 42210     ----创建的怪物ID
x454546_g_posX = 64            ----创建怪物坐标x
x454546_g_posY = 109            ----创建怪物坐标y
x454546_g_AIScript = 302       ----创建怪物技能对应文件ID
x454546_g_Title = "天杀星"       ----创建怪物称号


--**********************************
--事件交互入口
--**********************************
function x454546_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "生死擂台不是这么好闯的，每战胜副本内每一个BOSS，都可以获得高级神秘物品，要注意危险哦!" )
		AddNumText( sceneId, x454546_g_scriptId, "#c00ff00决战 李魁？", 6, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件列表选中一项
--**********************************
function x454546_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 210 then
		BeginEvent( sceneId )
   		local n = GetMonsterCount(sceneId)
		if n>170 then
   		strText = "当前怪物数量为:"..n.."个,当怪少于170个可再来手动刷新,！"
  		AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
   		else 
		BeginEvent( sceneId )
		LuaFnCreateMonster(531, 39339, 30, 30, 17, 0, 402030)
                AddText( sceneId, "刷新成功！本关玩家和怪物总数量为:"..n.."个！" )
           	AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		end
  
        elseif GetNumText() == 200 then

	CallScriptFunction( x454546_g_scriptId, "TipAllHuman", sceneId, "战斗开始" )
	local nMonsterNum = GetMonsterCount(sceneId)
	local Monsters = x454546_g_MonsterId
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if Monsters == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

	local posX = x454546_g_posX
	local posY = x454546_g_posY
	local AIScript = x454546_g_AIScript
	local Title = x454546_g_Title

	local MstId = LuaFnCreateMonster(sceneId, x454546_g_CreateId, posX, posY, 1, AIScript, 0);
	SetMonsterFightWithNpcFlag( sceneId, MstId, 0 )
	SetUnitReputationID(sceneId, selfId, MstId, 28)
	SetNPCAIType(sceneId, MstId, 1)
	if Title ~= "" then
		SetCharacterTitle(sceneId, MstId, Title)
	end
	LuaFnSendSpecificImpactToUnit(sceneId, MstId, MstId, MstId, 152, 0)

	 end
end

--**********************************
--提示所有副本内玩家....
--**********************************
function x454546_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end