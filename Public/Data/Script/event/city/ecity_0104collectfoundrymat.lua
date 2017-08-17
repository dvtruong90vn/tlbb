-- Ñ°ÕÒ¿óÊ¯ÈÎÎñ
--MisDescBegin
-- ½Å±¾ºÅ
x600006_g_ScriptId = 600006

--ÈÎÎñºÅ
x600006_g_MissionId = 1105

--Møc tiêu nhi®m vønpc
x600006_g_Name = "Mã ºng Hùng"

--ÈÎÎñ¹éÀà
x600006_g_MissionKind = 50

--ÐÆng c¤p nhi®m vø 
x600006_g_MissionLevel = 10000

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600006_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600006_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ði¬mµ½toÕ ðµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x600006_g_MissionName = "Nhi®m vø công trình"
x600006_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600006_g_MissionTarget = "    T× %n tìm %s cái %i. "								--Møc tiêu nhi®m vø
x600006_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"						--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600006_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600006_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "						--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600006_g_Parameter_Item_AllRandom = { { id = 7, num = 6 } }

x600006_g_StrForePart = 5

x600006_g_MissionRound = 38

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600006_g_CityMissionScript = 600001
x600006_g_EngineeringScript = 600002

x600006_g_StrList = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" }

--ÈÎÎñ½±Àø

--MisDescEnd

x600006_g_NpcIdx = x600006_g_StrForePart											-- MissionNpc ´æ´¢Î»ÖÃ
x600006_g_ItemCountIdx = x600006_g_StrForePart + 1									-- ÈÎÎñÎïÆ·ÊýÁ¿toÕ ðµ ´æ´¢Î»ÖÃ
x600006_g_ItemIdx = x600006_g_StrForePart + 2										-- ÈÎÎñÎïÆ·toÕ ðµ ´æ´¢Î»ÖÃ

-- Ëæ»úÒò×Ó
x600006_g_RandomSeed = 100
-- µôÂä¼¸ÂÊ
x600006_g_DropOdds = 30

x600006_g_missionItems = {
	40003090, 40003091, 40003092, 40003093, 40003094, 40003095, 40003096, 40003097,
	40003098, 40003099, 40003100, 40003101, 40003102, 40003103, 40003104, 40003105,
	40003106, 40003107, 40003108, 40003109, 40003110, 40003111, 40003112, 40003113,
	40003114, 40003115, 40003116, 40003117, 40003118, 40003119, 40003120, 40003121,
	40003122, 40003123, 40003124, 40003125, 40003126, 40003127
}

x600006_g_missionItemsInfo = {}

x600006_g_missionItemsInfo[20] = {
	[40003091] = { 300218 },
	[40003094] = { 300202, 300260 },
	[40003096] = { 300246, 300248 },
	[40003099] = { 300200, 300210, 300201, 300211, 300212, 300213, 300228, 300229 },
	[40003101] = { 300240 },
	[40003102] = { 300204, 300205, 300224, 300225 },
	[40003103] = { 300242 },
	[40003107] = { 300220, 300221, 300244, 300245 },
	[40003111] = { 300226 },
	[40003112] = { 300222 },
	[40003117] = { 300214, 300215, 300208, 300209 },
	[40003126] = { 300206 },
	[40003127] = { 300216 }
}
x600006_g_missionItemsInfo[30] = {
	[40003094] = { 300260 },
	[40003096] = { 300247, 300248, 300249 },
	[40003097] = { 300268 },
	[40003102] = { 300272 },
	[40003106] = { 300280, 300281, 300282 },
	[40003107] = { 300278, 300279, 300284 },
	[40003120] = { 300276 },
	[40003122] = { 300262, 300263, 300270, 300271 },
	[40003124] = { 300264, 300265, 300266, 300267 },
	[40003125] = { 300274 }
}
x600006_g_missionItemsInfo[40] = {
	[40003097] = { 300304 },
	[40003100] = { 300288 },
	[40003102] = { 300286, 300287, 300296, 300297 },
	[40003106] = { 300283, 300312 },
	[40003107] = { 300285 },
	[40003113] = { 300290, 300291, 300292, 300293, 300294, 300295 },
	[40003122] = { 300298, 300299, 300300, 300301, 300302, 300303, 300306 }
}
x600006_g_missionItemsInfo[50] = {
	[40003099] = { 300332 },
	[40003100] = { 300322 },
	[40003106] = { 300313, 300314, 300315, 300316, 300317, 300318, 300319 },
	[40003107] = { 300310 },
	[40003109] = { 300330 },
	[40003113] = { 300324, 300325, 300326, 300327, 300328, 300329 },
	[40003122] = { 300307 },
	[40003125] = { 300308 },
	[40003126] = { 300320 }
}
x600006_g_missionItemsInfo[60] = {
	[40003092] = { 300348, 300349, 300350, 300351, 300352, 300353, 300354 },
	[40003099] = { 300333 },
	[40003100] = { 300344 },
	[40003107] = { 300356 },
	[40003109] = { 300331 },
	[40003115] = { 300336, 300337, 300338, 300339, 300342, 300343 },
	[40003116] = { 300340 },
	[40003126] = { 300334, 300335, 300346, 300347 }
}
x600006_g_missionItemsInfo[70] = {
	[40003092] = { 300355 },
	[40003094] = { 300358 },
	[40003107] = { 300357 },
	[40003108] = { 300380 },
	[40003110] = { 300378 },
	[40003111] = { 300360, 300361, 300362, 300363, 300364, 300365 },
	[40003115] = { 300372, 300373, 300374, 300375, 300376, 300377 },
	[40003118] = { 300366 },
	[40003125] = { 300370 },
	[40003126] = { 300368 }
}
x600006_g_missionItemsInfo[80] = {
	[40003090] = { 300400 },
	[40003092] = { 300382, 300383, 300384, 300385, 300386, 300387 },
	[40003093] = { 300404 },
	[40003094] = { 300394 },
	[40003098] = { 300402 },
	[40003107] = { 300392 },
	[40003108] = { 300381 },
	[40003110] = { 300379 },
	[40003111] = { 300396, 300397, 300398, 300399 },
	[40003114] = { 300388, 300389, 300390, 300391 }
}
x600006_g_missionItemsInfo[90] = {
	[40003092] = { 300408 },
	[40003093] = { 300405 },
	[40003094] = { 300416 },
	[40003095] = { 300422 },
	[40003098] = { 300403 },
	[40003100] = { 300424 },
	[40003101] = { 300426 },
	[40003102] = { 300414 },
	[40003119] = { 300406, 300407, 300410, 300411, 300412, 300413 },
	[40003121] = { 300418, 300419, 300420, 300421 },
	[40003123] = { 300428 }
}
x600006_g_missionItemsInfo[100] = {
	[40003093] = { 300434, 300435, 300444, 300445 },
	[40003098] = { 300456, 300457, 300458, 300459, 300460, 300461, 300462, 300463 },
	[40003100] = { 300425, 300454, 300455 },
	[40003105] = { 300446, 300447, 300448, 300449, 300450, 300451, 300452, 300453 },
	[40003119] = { 300436, 300437, 300438, 300439, 300440, 300441, 300442, 300443 },
	[40003123] = { 300430, 300431, 300432, 300433 }
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600006_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600006_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600006_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		local bDone = x600006_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600006_g_SubmitInfo
		else
			strText = x600006_g_ContinueInfo
		end

		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600006_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600006_g_ScriptId, x600006_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600006_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600006_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600006_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600006_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600006_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600006_g_MissionId ) > 0 then
		AddNumText( sceneId, x600006_g_ScriptId, x600006_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600006_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600006_g_EngineeringScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Tiªp thø
--**********************************
function x600006_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600006_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if GetLevel( sceneId, selfId ) < 20 then
		CallScriptFunction( x600006_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ðü ðÆng c¤p" )
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId, selfId, x600006_g_MissionId, x600006_g_ScriptId, 1, 0, 1 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600006_g_MissionId ) <= 0 then
		return
	end

	CallScriptFunction( x600006_g_EngineeringScript, "OnAccept", sceneId, selfId, targetId, x600006_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600006_g_MissionId )

	-- ÕÒµ½Íæ¼ÒÊÊºÏtoÕ ðµ c¤p±ð
	local idx, value, level, myLevel
	level = 0
	myLevel = LuaFnGetLevel( sceneId, selfId )

	for idx, value in x600006_g_missionItemsInfo do
		if idx > level and idx <= myLevel then
			level = idx
		end
	end

	local validMissions = x600006_g_missionItemsInfo[level]
	if not validMissions then
		x600006_OnAbandon( sceneId, selfId )
		CallScriptFunction( x600006_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không th¬ tìm ðßþc nhi®m vø thích hþp" )
		return
	end

	local missionArray = {}
	local i = 1

	for idx, value in validMissions do
		missionArray[i] = idx
		i = i + 1
	end

	-- Ëæ»úÌô³ömµt cáiÊÊÓÃtoÕ ðµ ÎïÆ·
	local missionItem = missionArray[random( getn(missionArray) )]

	-- ÔÙËæ»úÌô³ömµt cáiÊÊÓÃµôÂä¸ÃÎïÆ·toÕ ðµ ¹ÖÎï NpcId ºÅ
	local missionNpc = validMissions[missionItem][random( getn(validMissions[missionItem]) )]

	local itemCount = 5 + random(5)

	SetMissionByIndex( sceneId, selfId, misIndex, x600006_g_NpcIdx, missionNpc )
	SetMissionByIndex( sceneId, selfId, misIndex, x600006_g_ItemIdx, missionItem )
	SetMissionByIndex( sceneId, selfId, misIndex, x600006_g_ItemCountIdx, itemCount )

	local _, strDemandItemName = GetItemInfoByItemId( missionItem )
	local _, strNpcName, strNpcSceneDesc = GetNpcInfoByNpcId(sceneId, missionNpc )

	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		local missionInfo
		if random(2) == 1 then
			missionInfo = format( "    Chúng ta chª tÕo c¥n dùng ðªn #Y%s #W, có th¬ tìm ðßþc · %s %s, các hÕ hãy ði l¤y %d cái ðem v«",
				strDemandItemName, strNpcSceneDesc, strNpcName, itemCount )
		else
			missionInfo = format( "    Nghe nói %s %s có th¬ chª tÕo ra #Y%s #W, ði«u ðó r¤t có lþi cho nghiên cÑu công nghi®p, v§y làm phi«n các hÕ hãy ði l¤y %d cái ðem v«",
				strNpcSceneDesc, strNpcName, strDemandItemName, itemCount )
		end

		AddText( sceneId, missionInfo )
		AddText( sceneId, "    Các hÕ ðã nh§n nhi®m vø: " .. x600006_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--·ÅÆú
--**********************************
function x600006_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600006_g_MissionId ) <= 0 then
		return
	end

	-- É¾³ýÎïÆ·
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600006_g_MissionId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600006_g_ItemIdx )
	local nItemNum = GetItemCount( sceneId, selfId, demandItemId )

	if nItemNum > 0 then
		DelItem( sceneId, selfId, demandItemId, nItemNum )
	end

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600006_g_EngineeringScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x600006_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600006_g_MissionName )
		AddText( sceneId, x600006_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600006_g_ScriptId, x600006_g_MissionId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600006_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600006_g_EngineeringScript, "CheckSubmit", sceneId, selfId )

	if ret == 1 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600006_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600006_g_ItemIdx )
		local demandItemCount = GetMissionParam( sceneId, selfId, misIndex, x600006_g_ItemCountIdx )
		local nItemNum = GetItemCount( sceneId, selfId, demandItemId )

		if nItemNum < demandItemCount then
			ret = 0
		end
	end

	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600006_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600006_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if x600006_CheckSubmit( sceneId, selfId ) == 1 then
		-- ¿Û¶«Î÷
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600006_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600006_g_ItemIdx )
		local demandItemCount = GetMissionParam( sceneId, selfId, misIndex, x600006_g_ItemCountIdx )
		local nItemNum = GetItemCount( sceneId, selfId, demandItemId )

		if nItemNum >= demandItemCount then
			DelItem( sceneId, selfId, demandItemId, demandItemCount )
		else											-- Ö»×÷ÎªÈÝ´í,ÀíÂÛÉÏ²»¿ÉÄÜ·¢Éú
			SetMissionByIndex( sceneId, selfId, misIndex, x600006_g_IsMissionOkFail, 0 )
			return
		end

		CallScriptFunction( x600006_g_EngineeringScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600006_OnKillObject( sceneId, selfId, objdataId, objId )				--²ÎÊýÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
	local allOwnersCount = GetMonsterOwnerCount( sceneId, objId )		--È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
	local i
	local curOwner
	local misIndex
	local nNpcId
	local strNpcName
	local MonsterName = GetName( sceneId, objId )
	local demandItemId
	local demandItemCount

	for i = 0, allOwnersCount - 1 do
		curOwner = GetMonsterOwnerID( sceneId, objId, i )				--È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
		if IsHaveMission( sceneId, curOwner, x600006_g_MissionId ) > 0 and	--Èç¹ûCái này ÈËÓµÓÐÈÎÎñ
		   GetScriptIDByMissionID( sceneId, curOwner, x600006_g_MissionId ) == x600006_g_ScriptId then		--²¢ÇÒÐúng±¾½Å±¾toÕ ðµ ÈÎÎñ
			misIndex = GetMissionIndexByID( sceneId, curOwner, x600006_g_MissionId )
			nNpcId = GetMissionParam( sceneId, curOwner, misIndex, x600006_g_NpcIdx )
			_, strNpcName = GetNpcInfoByNpcId(sceneId, nNpcId )
			demandItemId = GetMissionParam( sceneId, curOwner, misIndex, x600006_g_ItemIdx )
			demandItemCount = GetMissionParam( sceneId, curOwner, misIndex, x600006_g_ItemCountIdx )

			if MonsterName == strNpcName then
			-- mµt ¶¨¼¸ÂÊ´ò³öÈÎÎñËùÐèÎïÆ·
				if GetItemCount( sceneId, curOwner, demandItemId ) < demandItemCount then
					--if random( x600006_g_RandomSeed ) > x600006_g_DropOdds then
						--return
					--end

					AddMonsterDropItem( sceneId, objId, curOwner, demandItemId )
				end
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600006_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600006_OnItemChanged( sceneId, selfId, itemdataId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600006_g_MissionId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600006_g_ItemIdx )
	local demandItemCount = GetMissionParam( sceneId, selfId, misIndex, x600006_g_ItemCountIdx )
	local nItemNum = GetItemCount( sceneId, selfId, demandItemId )

	if demandItemId == itemdataId then
		local _, strItemName = GetItemInfoByItemId( itemdataId )
		
		local strText = format( "L¤y ðßþc %s %d/%d", strItemName, nItemNum, demandItemCount )

		if nItemNum <= demandItemCount then
			SetMissionByIndex( sceneId, selfId, misIndex, x600006_g_IsMissionOkFail, 0 )
		end

		if nItemNum >= demandItemCount then
			strText = format( "Ðã l¤y ðßþc ðü s¯ %s %d/%d", strItemName, demandItemCount, demandItemCount )
			SetMissionByIndex( sceneId, selfId, misIndex, x600006_g_IsMissionOkFail, 1 )
		end


		if strText and nItemNum <= demandItemCount then
			CallScriptFunction( x600006_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, strText )
		end
	end
end
