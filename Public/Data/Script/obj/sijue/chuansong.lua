--ÐÕi Lý NPC
--Thôi Phùng CØu
--Script By China

x899994_g_ScriptId	= 899994
x899994_g_Yinpiao = 40002000
--**********************************
--M· ð¥u Event
--**********************************
function x899994_OnDefaultEvent( sceneId, selfId, targetId )
	--Ngân phiªu
	if GetItemCount(sceneId, selfId, x899994_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Ngß½i trên ngß¶i có ngân phiªu, ta không th¬ giúp gì ðßþc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		if GetLevel( sceneId, selfId ) >= 0 then
			AddText( sceneId, "#GÂn Oán TÑ Tuy®t Trang#I#r#cff99ff là mµt phó bän m¾i cüa h® th¯ng. Các hÕ có mu¯n träi nghi®m sÑc mÕnh cüa #BBoss#cff99ff?", 9, 100011 )
			AddNumText( sceneId, x899994_g_ScriptId, "Tiªn vào TÑ Tuy®t S½n Trang", 9, 1001 )
		end
		
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--Thân Event
--**********************************
function x899994_OnEventRequest( sceneId, selfId, targetId, eventId )
	--Ðµi ngû Tào V§n
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
				x899994_MsgBox( sceneId, selfId, targetId, "Ðµi ngû có thành viên ðang trong trÕng thái Tào V§n, không th¬ d¸ch chuy¬n." )
				return
			end
		end
	end

	--Tào V§n
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x899994_MsgBox( sceneId, selfId, targetId, "Ngß½i ðang trong trÕng thái Tào V§n, không th¬ d¸ch chuy¬n." )
		return
	end
	
	--Event
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	
	if arg == 1001 then		--Ân Oán TØ Tuy®t Trang
	local 	nam	= LuaFnGetName( sceneId, selfId )
	if GetItemCount(sceneId, selfId, 38000126) ~= 0  then
		BeginEvent( sceneId )
		AddText( sceneId, "#YNgß½i không có [TÑ Tuy®t Trang Thông Hành ChÑng], không th¬ tiªn vào." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		--Ðµi ngû
	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
		BeginEvent(sceneId)
		AddText(sceneId,"Các thành viên không · g¥n ðây.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end

		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 540, 98, 79, 10 )
		return
	end
end

function x899994_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end






