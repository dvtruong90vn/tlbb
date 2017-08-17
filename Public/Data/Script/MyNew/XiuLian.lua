--脚本号
x390101_g_scriptId = 390101

--**********************************
--事件交互入口
--**********************************
function x390101_OnDefaultEvent( sceneId, selfId, targetId)
	local gongli=GetMissionData( sceneId, selfId, XIULIAN_GONGLI )
	local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
	local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
	local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
	local dingli=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
	local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )

	BeginEvent(sceneId)     
		AddText(sceneId, "您目前的功力为：#G"..gongli)
		if liliang==-1 then
			AddText(sceneId, "你还未开启力量的修炼")
		else
			AddText(sceneId, "你目前的修炼的力量等级为：#G"..liliang)
		end
		if lingqi==-1 then
			AddText(sceneId, "你还未开启灵气的修炼")
		else
			AddText(sceneId, "你目前的修炼的灵气等级为：#G"..lingqi)
		end
		if tili==-1 then
			AddText(sceneId, "您还未开启体力的修炼")
		else
			AddText(sceneId, "您目前的修炼的体力等级为：#G"..tili)
		end
		if dingli==-1 then
			AddText(sceneId, "你还未开启定力的修炼")
		else
			AddText(sceneId, "你目前的修炼的定力等级为：#G"..dingli)
		end
		if shenfa==-1 then
			AddText(sceneId, "您还未开启身法的修炼")
		else
			AddText(sceneId, "您目前的修炼的身法等级为：#G"..shenfa)
		end
		AddNumText(sceneId, x390101_g_scriptId,"开始修炼", 6, 1)
		--AddNumText(sceneId, x390101_g_scriptId,"测试领取100功力", 6, 88)
		--AddNumText(sceneId, x390101_g_scriptId,"测试领取10000G", 6, 89)
		AddNumText(sceneId, x390101_g_scriptId,"我只是路过的", 8, 9999)						
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x390101_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key=GetNumText()
	if key==9999 then
		x390101_CloseMe(sceneId, selfId)
	end
	if key==88 then
		--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 28400, 0 )
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, 100);
		x390101_ReturnAttr(sceneId, selfId)	--凡是修改到修炼属性的，都要加上这一行，让客户端的显示同步
		--x390101_ReturnAttr(sceneId, selfId)
	end
	if key ==89 then
		AddMoney( sceneId, selfId, 10000000000 );
	end
	if key==1 then
		local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
		local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
		local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
		local dingli=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
		local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )
		BeginEvent(sceneId)
			AddText(sceneId, "亲爱的玩家你可以去副本击杀BOSS可以掉功力丹，要激活相应的属性修炼书，才会显示出修炼选项！")
			AddText(sceneId, "本服暂时只开放了体力和身法的修炼")			
			if liliang>=0 then
				AddNumText(sceneId, x390101_g_scriptId,"修炼力量", 6, 101)
			end
			if lingqi>=0 then
			AddNumText(sceneId, x390101_g_scriptId,"修炼灵气", 6, 102)
			end
			if tili>=0 then
			AddNumText(sceneId, x390101_g_scriptId,"修炼体力", 6, 103)
			end
			if dingli>=0 then
			AddNumText(sceneId, x390101_g_scriptId,"修炼定力", 6, 104)
			end
			if shenfa>=0 then
			AddNumText(sceneId, x390101_g_scriptId,"修炼身法", 6, 105)
			end
			AddNumText(sceneId, x390101_g_scriptId,"再见", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==101 then
		local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,liliang)
		BeginEvent(sceneId)
			AddText(sceneId, "你目前已修炼的力量等级为："..liliang)
			local str = format("修炼到下一级需要#{_MONEY%d}和%d点功力。", needMoney,x390101_GetNeedGongli( sceneId, selfId,liliang) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"开始修炼", 6, 1011)
			AddNumText(sceneId, x390101_g_scriptId,"还是算了", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1011 then
		local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
		if liliang>=100 then
			x390101_NotifyTip( sceneId, selfId, "已修炼到目前支持的最高级，无法继续修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,liliang)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "金钱不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,liliang)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "功力不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_LILIANG, GetMissionData( sceneId, selfId, XIULIAN_LILIANG )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--成功时人物效果
		x390101_ReturnAttr(sceneId, selfId)						--凡是修改到修炼属性的，都要加上这一行，让客户端的显示同步
		x390101_MsgBox( sceneId, selfId, "恭喜你，修炼成功，请重新打开装备面板或重新点击NPC查询修炼状况，祝您游戏愉快。" )
	end
	if key==102 then
		local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,lingqi)
		BeginEvent(sceneId)
		AddText(sceneId, "你目前已修炼的灵气;等级为："..lingqi)
			local str = format("修炼到下一级需要#{_MONEY%d}和%d点功力。", needMoney,x390101_GetNeedGongli( sceneId, selfId,lingqi) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"开始修炼", 6, 1012)
			AddNumText(sceneId, x390101_g_scriptId,"还是算了", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1012 then
		local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI)
		if lingqi>=100 then
			x390101_NotifyTip( sceneId, selfId, "已修炼到目前支持的最高级，无法继续修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,lingqi)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "金钱不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,lingqi)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "功力不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_LINGQI, GetMissionData( sceneId, selfId, XIULIAN_LINGQI )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--成功时人物效果
		x390101_ReturnAttr(sceneId, selfId)						--凡是修改到修炼属性的，都要加上这一行，让客户端的显示同步
		x390101_MsgBox( sceneId, selfId, "恭喜你，修炼成功，请重新打开装备面板或重新点击NPC查询修炼状况，祝您游戏愉快。" )
	end
	if key==103 then
		local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,tili)
		BeginEvent(sceneId)
		AddText(sceneId, "你目前已修炼的体力;等级为："..tili)
			local str = format("修炼到下一级需要#{_MONEY%d}和%d点功力。", needMoney,x390101_GetNeedGongli( sceneId, selfId,tili) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"开始修炼", 6, 1013)
			AddNumText(sceneId, x390101_g_scriptId,"还是算了", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1013 then
		local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI)
		if tili>=100 then
			x390101_NotifyTip( sceneId, selfId, "已修炼到目前支持的最高级，无法继续修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,tili)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "金钱不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,tili)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "功力不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_TILI, GetMissionData( sceneId, selfId, XIULIAN_TILI )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--成功时人物效果
		x390101_ReturnAttr(sceneId, selfId)						--凡是修改到修炼属性的，都要加上这一行，让客户端的显示同步
		x390101_MsgBox( sceneId, selfId, "恭喜你，修炼成功，请重新打开装备面板或重新点击NPC查询修炼状况，祝您游戏愉快。" )
	end
	if key==104 then
		local tili=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,tili)
		BeginEvent(sceneId)
		AddText(sceneId, "你目前已修炼的体力;等级为："..tili)
			local str = format("修炼到下一级需要#{_MONEY%d}和%d点功力。", needMoney,x390101_GetNeedGongli( sceneId, selfId,tili) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"开始修炼", 6, 1014)
			AddNumText(sceneId, x390101_g_scriptId,"还是算了", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1014 then
		local tili=GetMissionData( sceneId, selfId, XIULIAN_DINGLI)
		if tili>=100 then
			x390101_NotifyTip( sceneId, selfId, "已修炼到目前支持的最高级，无法继续修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,tili)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "金钱不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,tili)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "功力不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_DINGLI, GetMissionData( sceneId, selfId, XIULIAN_DINGLI )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--成功时人物效果
		x390101_ReturnAttr(sceneId, selfId)						--凡是修改到修炼属性的，都要加上这一行，让客户端的显示同步
		x390101_MsgBox( sceneId, selfId, "恭喜你，修炼成功，请重新打开装备面板或重新点击NPC查询修炼状况，祝您游戏愉快。" )
	end
	if key==105 then
		local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,shenfa)
		BeginEvent(sceneId)
		AddText(sceneId, "你目前已修炼的身法;等级为："..shenfa)
			local str = format("修炼到下一级需要#{_MONEY%d}和%d点功力。", needMoney,x390101_GetNeedGongli( sceneId, selfId,shenfa) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"开始修炼", 6, 1015)
			AddNumText(sceneId, x390101_g_scriptId,"还是算了", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1015 then
		local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA)
		if shenfa>=100 then
			x390101_NotifyTip( sceneId, selfId, "已修炼到目前支持的最高级，无法继续修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,shenfa)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "金钱不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,shenfa)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "功力不足，无法修炼" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_SHENFA, GetMissionData( sceneId, selfId, XIULIAN_SHENFA )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--成功时人物效果
		x390101_ReturnAttr(sceneId, selfId)						--凡是修改到修炼属性的，都要加上这一行，让客户端的显示同步
		x390101_MsgBox( sceneId, selfId, "恭喜你，修炼成功，请重新打开装备面板或重新点击NPC查询修炼状况，祝您游戏愉快。" )
	end
	if key==9999 then
		--SetMissionData(sceneId, selfId, XIULIAN_GONGLI, 1);
		x390101_CloseMe(sceneId, selfId)
	end
end
--**********************************
--消耗功力计算
--**********************************
function x390101_GetNeedGongli( sceneId, selfId,level)
	local needGongli=20
	return needGongli
end

--**********************************
--消耗金钱计算
--**********************************
function x390101_GetNeedMoney( sceneId, selfId,level)
	local needMoeny=1000000;	--这里是初始金钱10000是1G。
	needMoeny=needMoeny*level	--金钱消耗为等级乘以初始金钱
	return needMoeny;
end
--**********************************
--对话窗口信息提示
--**********************************
function x390101_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end


--**********************************
--醒目提示
--**********************************
function x390101_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--关闭对话框
--**********************************
function x390101_CloseMe(sceneId, selfId)
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end
--*****************
function x390101_ReturnAttr(sceneId, selfId)
	local gongli=GetMissionData( sceneId, selfId, XIULIAN_GONGLI )
	local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
	local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
	local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
	local dingli=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
	local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )
	local menpai=GetMissionData( sceneId, selfId, NEW_MENPAI )
	x390101_AddBuff(sceneId, selfId)
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, gongli )
		UICommand_AddInt( sceneId, liliang )
		UICommand_AddInt( sceneId, lingqi )
		UICommand_AddInt( sceneId, tili )
		UICommand_AddInt( sceneId, dingli )
		UICommand_AddInt( sceneId, shenfa )
		UICommand_AddInt( sceneId, menpai )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId,  20000001)
end

function x390101_AddBuff(sceneId, selfId)
	local liliangBuff = 28000
	local lingqiBuff = 28100
	local tiliBuff = 28200
	local dingliBuff = 28300
	local shenfaBuff = 28400
	local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
	local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
	local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
	local dingli=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
	local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )

	liliangBuff=liliangBuff+liliang
	lingqiBuff=lingqiBuff+lingqi
	tiliBuff=tiliBuff+tili
	dingliBuff=dingliBuff+dingli
	shenfaBuff=shenfaBuff+shenfa
	if liliang>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, liliangBuff, 0)
	end
	if lingqi>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, lingqiBuff, 0)
	end
	if tili>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, tiliBuff, 0)
	end
	if dingli>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, dingliBuff, 0)
	end
	if shenfa>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, shenfaBuff, 0)
	end

 local    nam    = LuaFnGetName( sceneId, selfId )
 
 if nam=="名称2222" 
 
 or nam=="名称2222"
 
 or nam=="名称3333"  
 
 then
 
  str="#W玩家#cFF0000"..nam.."#W上线了#117#117#117！！！！！"
  
  BroadMsgByChatPipe(sceneId, selfId, str, 4)

end

 local    nam    = LuaFnGetName( sceneId, selfId )

 
 if nam=="VIP⑤勋章" 
 
 or nam=="#cFF0000骑士GM1"
 
 or nam=="名称1124"  
 then
 
  str="#cff66cc玩家#cFF0000["..nam.."]#cff66cc开着#c00ffff#122[法拉利]#122#cff66cc一路火花带闪电，手拿菜刀砍电线，上线了#117"
  
  BroadMsgByChatPipe(sceneId, selfId, str, 4)

end

end