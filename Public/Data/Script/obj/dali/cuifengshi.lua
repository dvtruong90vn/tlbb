--传送NPC
--驿站老板
--普通

x002924_g_ScriptId	= 002924

--门派信息(门派名称，SceneID，PosX，PosY，门派ID)
x002924_g_mpInfo		= {}
x002924_g_mpInfo[0]	= { "星宿", 16,  96, 152, MP_XINGSU }
x002924_g_mpInfo[1]	= { "逍遥", 14,  67, 145, MP_XIAOYAO }
x002924_g_mpInfo[2]	= { "少林",  9,  96, 127, MP_SHAOLIN }
x002924_g_mpInfo[3]	= { "天山", 17,  95, 120, MP_TIANSHAN }
x002924_g_mpInfo[4]	= { "天龙", 13,  96, 120, MP_DALI }
x002924_g_mpInfo[5]	= { "峨嵋", 15,  89, 139, MP_EMEI }
x002924_g_mpInfo[6]	= { "武当", 12, 103, 140, MP_WUDANG }
x002924_g_mpInfo[7]	= { "明教", 11,  98, 167, MP_MINGJIAO }
x002924_g_mpInfo[8]	= { "丐帮", 10,  91, 116, MP_GAIBANG }

x002924_g_Yinpiao = 40002000
--**********************************
--事件交互入口
--**********************************
function x002924_OnDefaultEvent( sceneId, selfId, targetId )

	-- 检测玩家身上是不是有“银票”这个东西，有就不能使用这里的功能
	if GetItemCount(sceneId, selfId, x002924_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  你身上有银票，正在跑商！我不能帮助你。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		if GetLevel( sceneId, selfId ) >= 10 then
			--AddText( sceneId, "#{XIYU_20071228_01}" )
			--AddNumText( sceneId, x002924_g_ScriptId, "#Y返回门派", 9, 1000 )
			AddNumText( sceneId, x002924_g_ScriptId, "#Y城市 - 洛阳", 9, 1001 )
			AddNumText( sceneId, x002924_g_ScriptId, "#Y城市 - 苏州", 9, 1002 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#Y野外 - 昆仑山", 9, 1003 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#Y城市 - 洛阳 - 九州商会", 9, 1006 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#Y城市 - 苏州 - 铁匠铺", 9, 1007 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18『天劫楼』→『快速转身』", 9, 1015 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18『四绝庄』→『终极宝石』", 9, 1018 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18『圣火宫』→『五行令牌』", 9, 1017 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18『昆仑福地』『六合令牌』", 9, 1010 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18『地下神殿』→『技能书』", 9, 1019 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18『大圣探险』『会员装备』", 9, 1014 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18『秦皇地宫』→『秦皇珠』", 9, 1013 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18『古墓一层』『新手练级』", 9, 1008 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18『三春幻境』『超级神符』", 9, 1016 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#Y『束河古镇』『轮回神符』", 9, 1009 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#b#c33ffccBOSS -『束河古城』", 9, 1012 )
			AddNumText( sceneId, x002924_g_ScriptId, "#Y带我去其他门派", 9, 1011 )
			for i, mp in x002924_g_mpInfo do
				--AddNumText( sceneId, x002924_g_ScriptId, "门派 - "..mp[1], 9, i )
			end
		else
			AddText( sceneId, "  你需要等级到达10级以上，才能去别的城市。" )
			AddNumText( sceneId, x002924_g_ScriptId, "城市 - 大理",  9, 1003 )
			AddNumText( sceneId, x002924_g_ScriptId, "城市 - 大理2", 9, 1004 )
			AddNumText( sceneId, x002924_g_ScriptId, "城市 - 大理3", 9, 1005 )
		end

		-- 我怎样才能去敦煌和嵩山
		--AddNumText( sceneId, x002924_g_ScriptId, "我怎样才能去敦煌和嵩山", 11, 2000 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x002924_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1011 then
	local	mp
	local	i		= 0
		BeginEvent( sceneId )
			for i, mp in x002924_g_mpInfo do
				AddNumText( sceneId, x002924_g_ScriptId, "门派 - "..mp[1], 9, i )
			end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
		--队伍相关
	if GetTeamId(sceneId,selfId)>=0 and
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x002924_MsgBox( sceneId, selfId, targetId, "  你队伍成员中有人有漕运\货舱在身，我们驿站不能为你提供传送服务。" )
				return
			end
		end
	end

	--漕运相关
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x002924_MsgBox( sceneId, selfId, targetId, "  你有漕运\货舱在身，我们驿站不能为你提供传送服务。" )
		return
	end

	--顺利传送
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--返回门派
		if id < 0 or id >= 9 then
			x002924_MsgBox( sceneId, selfId, targetId, "  你还没有加入任何门派！" )
		else
			mp	= x002924_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--洛阳
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183, 10 )
		return
	end
	if arg == 1002 then		--苏州
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162, 10 )
		return
	end
	if arg == 1003 then		--昆仑山
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 110,18, 10 )
		return
	end
	if arg == 1006 then		--洛阳商会
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 10 )
		return
	end
	if arg == 1007 then		--铁匠铺
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 132, 10 )
		return
	end
	if arg == 1008 then		--古一
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 159, 70, 100, 10 )
		return
	end
	if arg == 1009 then		--束河古镇
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 422, 200, 211, 10 )
		return
	end
	if arg == 1010 then		--昆仑福地
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 421, 93, 36, 10 )
		return
	end
	if arg == 1012 then		--昆仑山
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 110, 18, 10 )
		return
	end
	if arg == 1013 then		--秦皇地宫
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 400, 110, 18, 10 )
		return
	end
	if arg == 1014 then		--火焰谷
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 519, 31, 33, 10 )
		return
	end
	if arg == 1015 then		--天劫楼
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 533, 82, 77, 125 )
		return
	end
	if arg == 1016 then		--幻境
		BeginEvent( sceneId )
			AddText( sceneId, "  十二煞星副本生死擂台制作中。 " )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 534, 36, 32, 10 )
		return
	end
	if arg == 1017 then		--圣火宫
		BeginEvent( sceneId )
			AddText( sceneId, "  。 ")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 537, 85, 36, 10 )
		return
	end
	if arg == 1018 then		--四绝庄
		BeginEvent( sceneId )
			AddText( sceneId, "  。 ")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 540, 98, 109, 10 )
		return
	end
	if arg == 1019 then		--监狱
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 151, 36, 32, 10 )
		return
	end
	if arg == 1003 then		--大理1
		--如果玩家就在大理1则不传送
		if sceneId == 2 then
			x002924_MsgBox( sceneId, selfId, targetId, "  ")
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--大理2
		--如果玩家就在大理2则不传送
		if sceneId == 71 then
			x002924_MsgBox( sceneId, selfId, targetId, "  你已经在大理2了。" )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--大理3
		--如果玩家就在大理3则不传送
		if sceneId == 72 then
			x002924_MsgBox( sceneId, selfId, targetId, "  你已经在大理3了。" )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x002924_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			return
		end
	end

	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		return
	end

end

--**********************************
--根据门派ID获取门派信息
--**********************************
function x002924_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002924_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--对话窗口信息提示
--**********************************
function x002924_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end