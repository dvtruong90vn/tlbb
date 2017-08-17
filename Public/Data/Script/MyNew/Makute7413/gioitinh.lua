--×ªÐÔµ¤NPC Áõ¶Ü

--½Å±¾ºÅ
x002191_g_scriptId = 002191


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002191_g_eventList={0147000, 0147001, 0147002, 0147003, 0147004, 0147005, 0147006}
x002191_g_item_zhuanxingdan = 30900048


x002191_g_result_msg = {
	"#{ZXD_20080312_03}", --"ÄúÒÑ³É»éÎÞ·¨¸ü¸ÄÐÔ±ð£¬Çë½â³ý»éÒö¹ØÏµºóÔÙÊ¹ÓÃ¸ÃÎïÆ·"
	"#{ZXD_20080318_01}", --"¾àÀëÌ«Ô¶£¬×ªÐÔµ¤Ê¹ÓÃÊ§°Ü"
	"#{ZXD_20080318_02}", --"Ã»ÓÐ¿ÉÓÃµÄ×ªÐÔµ¤",
	"#{ZXD_20080318_03}", --"×é¶ÓÊ±ÎÞ·¨×ªÐÔ£¬ÇëÍË³ö×é¶Ó×´Ì¬ºóÔÙÊ¹ÓÃ",
	"#{ZXD_20080318_04}", --"°ÚÌ¯×´Ì¬Ê±ÎÞ·¨Ê¹ÓÃ×ªÐÔµ¤",
	"#{ZXD_20080318_05}"  --"³Ë×´Ì¬ÎÞ·¨Ê¹ÓÃ×ªÐÔµ¤"
}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002191_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "Nam thanh næ tú ð«u mu¯n có ðßþc tình yêu cüa mình, ta có th¬ giúp gì cho ngß½i?" )
		AddNumText( sceneId, x002191_g_scriptId, "Thay ð±i gi¾i tính", 6, 0147000)
		AddNumText( sceneId, x002191_g_scriptId, "Hß¾ng dçn sØ døng chuy¬n tính ðan", 11, 0147001)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002191_OnDefaultEvent( sceneId, selfId,targetId )
	x002191_UpdateEventList( sceneId, selfId, targetId )
	AddNumText( sceneId, x002191_g_scriptId,"SØa dung mÕo",6,4)
	AddNumText( sceneId, x002191_g_scriptId,"Ta mu¯n ð±i tên", 6, 1 )
	AddNumText( sceneId, x002191_g_scriptId,"Thay ð±i màu tóc",6,2)
	AddNumText( sceneId, x002191_g_scriptId,"Thay ð±i ki¬u tóc",6,3)
	AddNumText( sceneId, x002191_g_scriptId,"Nhßþm màu th¶i trang",6,6)
	AddNumText( sceneId, x002191_g_scriptId,"Thay ð±i bi¬u tßþng nhân v§t",6,5)
end

--**********************************
-- ÊÂ¼þ´¦Àí
--**********************************
function x002191_OnEventRequest( sceneId, selfId, targetId, eventId )
	local request_id = GetNumText()
	print("function x002191_OnEventRequest")
	if request_id == 1 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 5423 )
	end
	if GetNumText() == 2 then
		CallScriptFunction( 801011, "OnEnumerate",sceneId, selfId, targetId )
	end
	if GetNumText() == 3 then
		CallScriptFunction( 801010, "OnEnumerate",sceneId, selfId, targetId )
	end
	if GetNumText() == 4 then
		CallScriptFunction( 805029, "OnEnumerate",sceneId, selfId, targetId )
	end
	if GetNumText() == 5 then
		CallScriptFunction( 805030, "OnEnumerate",sceneId, selfId, targetId )
	end
	if GetNumText() == 6 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  0910281)
	end
	if request_id == 0147000 then
		local isMarried = LuaFnIsMarried(sceneId, selfId)
		if isMarried > 0 then
			BeginEvent(sceneId)
				AddText( sceneId, "#{ZXD_20080312_03}" )		
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x002191_g_item_zhuanxingdan)
		if itemCount < 1 then
			BeginEvent(sceneId)
				AddText( sceneId, "#{ZXD_20080312_04}" )		
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		--Í¨Öª¿Í»§¶Ë¿ªÊ¼×ªÐÔÑ¡Ôñ
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, targetId);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 0147000)
		
	elseif request_id == 0147003 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, targetId);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 0147005)
		
	elseif request_id == 0147004 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, targetId);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 0147006) --¹Ø±ÕNPC¶Ô»°¿ò
		
	elseif request_id == 0147001 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{ZXD_20080312_02}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
-- ÇëÇóÈ·ÈÏ½çÃæ
--**********************************
function x002191_OnZhuanXingRequest( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{ZXD_20080312_05}")
		AddNumText( sceneId, x002191_g_scriptId, "Xác nh§n", 6, 0147003)
		AddNumText( sceneId, x002191_g_scriptId, "HuÖ bö", 6, 0147004)		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
-- ¿Í»§¶Ëµ÷ÓÃº¯Êý
--**********************************
function x002191_OnZhuanXingConfirm( sceneId, selfId, targetId, sex, hairColor, hairModel, faceModel, nFaceId)
	print("x002191_OnZhuanXingConfirm")
	local pre_condition = x002191_PreZhuanXingCondition( sceneId, selfId, targetId )
	if pre_condition == 0 then
		local is_suc = HumanZhuanXing(sceneId, selfId, sex, hairColor, hairModel, faceModel, nFaceId)
		if is_suc == 1 then
			LuaFnDelAvailableItem(sceneId, selfId, x002191_g_item_zhuanxingdan, 1)
			BeginEvent(sceneId)
				AddText(sceneId, "#{ZXD_20080312_06}")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)

			--±äÐÔÍ¬Ê±¼ÓÒ»¸öÉý¼¶ÌØÐ§
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 100 )
			return
		end
	elseif( pre_condition >= 1 and pre_condition <= 6 ) then
		BeginEvent(sceneId)
			AddText(sceneId, x002191_g_result_msg[pre_condition])
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end


--**********************************
-- ÊÇ·ñÂú×ã×ªÐÔÌõ¼þ
--**********************************
function x002191_PreZhuanXingCondition( sceneId, selfId, targetId )
	
	--ÒÑ¾­½á»é
	local isMarried = LuaFnIsMarried(sceneId, selfId)
	if isMarried == 1 then
		return 1
	end
	
	--¾àÀëÌ«Ô¶
	local isValidDistance = IsInDist( sceneId, selfId, targetId, 1000.0)
	if isValidDistance <= 0 then
		return 2
	end
	
	--Ã»ÓÐºÏ·¨ÎïÆ·
	local itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x002191_g_item_zhuanxingdan)
	if itemCount <= 0 then
		return 3
	end
	
	--ÊÇ·ñ×é¶Ó
	local hasTeam = LuaFnHasTeam(sceneId, selfId)
	if hasTeam > 0 then
		return 4
	end
	
	--ÊÇ·ñ°ÚÌ¯
	local isStall = LuaFnIsStalling(sceneId, selfId)
	if isStall > 0 then
		return 5
	end

	--ÊÇ·ñÆï³Ë
	local isRiding = LuaFnIsRiding(sceneId, selfId)
	if isRiding > 0 then
		return 6
	end
	
	--¿ÉÒÔ×ªÐÔ
	return 0
end
