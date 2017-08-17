-- Ñ°ÕÒÒ©²ÝÑùÃçÈÎÎñ
--MisDescBegin
-- ½Å±¾ºÅ
x600021_g_ScriptId = 600021

--ÈÎÎñºÅ
x600021_g_MissionId = 1108

--Møc tiêu nhi®m vønpc
x600021_g_Name = "Mµc D¸ch"

--ÈÎÎñ¹éÀà
x600021_g_MissionKind = 50

--ÐÆng c¤p nhi®m vø 
x600021_g_MissionLevel = 10000

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600021_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600021_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ði¬mµ½toÕ ðµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x600021_g_MissionName = "Nhi®m vø thß½ng nghi®p"
x600021_g_MissionInfo = ""												--ÈÎÎñÃèÊö
x600021_g_MissionTarget = "    T× %n · ðó ðoÕt lÕi %i. "						--Møc tiêu nhi®m vø
x600021_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600021_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"							--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600021_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600021_g_Parameter_Item_AllRandom = { { id = 6, num = 7 } }

x600021_g_StrForePart = 5

x600021_g_MissionRound = 44

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600021_g_CityMissionScript = 600001
x600021_g_MarketScript = 600017

--ÈÎÎñ½±Àø

--MisDescEnd

x600021_g_NpcIdx = x600021_g_StrForePart											-- MissionNpc ´æ´¢Î»ÖÃ
x600021_g_ItemIdx = x600021_g_StrForePart + 1										-- ÈÎÎñÎïÆ·toÕ ðµ ´æ´¢Î»ÖÃ
x600021_g_ItemCountIdx = x600021_g_StrForePart + 2									-- ÈÎÎñÎïÆ·ÊýÁ¿toÕ ðµ ´æ´¢Î»ÖÃ

-- Ëæ»úÒò×Ó
x600021_g_RandomSeed = 100
-- µôÂä¼¸ÂÊ
x600021_g_DropOdds = 20

x600021_g_missionItemsInfo = {}
x600021_g_missionItemsInfo[20 ] =
{
	[40003089] =
	{ 300219, 300209, 300220, 300221, 300222, 300224, 300223, 300225,
	  300226, 300228, 300227, 300229, 300240, 300241, 300242, 300243,
	  300244, 300246, 300245, 300260, 300247, 300248,
	}
}

x600021_g_missionItemsInfo[30 ] =
{
	[40003089] =
	{ 300261, 300249, 300262, 300263, 300264, 300265, 300266, 300268,
	  300267, 300269, 300272, 300270, 300273, 300271, 300274, 300276,
	  300275, 300278, 300277, 300280, 300279, 300281, 300282, 300284,
	}
}

x600021_g_missionItemsInfo[40 ] =
{
	[40003089] =
	{ 300286, 300283, 300285, 300288, 300287, 300289, 300290, 300291,
	  300292, 300296, 300293, 300294, 300297, 300295, 300298, 300299,
	  300300, 300301, 300302, 300304, 300303, 300305, 300312, 300306,
	}
}

x600021_g_missionItemsInfo[50 ] =
{
	[40003089] =
	{ 300313, 300310, 300307, 300311, 300308, 300314, 300309, 300315,
	  300316, 300317, 300318, 300320, 300322, 300319, 300321, 300323,
	  300324, 300325, 300326, 300327, 300328, 300332, 300330, 300329,
	}
}

x600021_g_missionItemsInfo[60 ] =
{
	[40003089] =
	{ 300333, 300331, 300334, 300336, 300335, 300337, 300338, 300339,
	  300340, 300344, 300342, 300341, 300345, 300343, 300346, 300348,
	  300347, 300349, 300350, 300351, 300352, 300353, 300354, 300356,
	}
}

x600021_g_missionItemsInfo[70 ] =
{
	[40003089] =
	{ 300355, 300358, 300357, 300359, 300360, 300361, 300362, 300363,
	  300364, 300365, 300366, 300368, 300367, 300370, 300369, 300372,
	  300371, 300373, 300374, 300375, 300376, 300380, 300378, 300377,
	}
}

x600021_g_missionItemsInfo[80 ] =
{
	[40003089] =
	{ 300382, 300381, 300379, 300383, 300384, 300385, 300386, 300387,
	  300388, 300392, 300389, 300390, 300394, 300393, 300391, 300395,
	  300396, 300397, 300398, 300400, 300399, 300401, 300404, 300402,
	}
}

x600021_g_missionItemsInfo[90 ] =
{
	[40003089] =
	{ 300405, 300403, 300406, 300408, 300407, 300409, 300410, 300414,
	  300411, 300412, 300416, 300415, 300413, 300417, 300418, 300419,
	  300420, 300422, 300426, 300421, 300423, 300427, 300428, 300424,
	  300429,
	}
}

x600021_g_missionItemsInfo[100] =
{
	[40003089] =
	{ 300425, 300430, 300434, 300431, 300432, 300435, 300436, 300433,
	  300437, 300438, 300439, 300440, 300444, 300441, 300442, 300445,
	  300446, 300443, 300447, 300448, 300449, 300450, 300454, 300451,
	  300452,
	}
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600021_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600021_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600021_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		local bDone = x600021_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600021_g_SubmitInfo
		else
			strText = x600021_g_ContinueInfo
		end

		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600021_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600021_g_ScriptId, x600021_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600021_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600021_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600021_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600021_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600021_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600021_g_MissionId ) > 0 then
		AddNumText( sceneId, x600021_g_ScriptId, x600021_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600021_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600021_g_MarketScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Tiªp thø
--**********************************
function x600021_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600021_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if GetLevel( sceneId, selfId ) < 40 then
		CallScriptFunction( x600021_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ðü ðÆng c¤p" )
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId, selfId, x600021_g_MissionId, x600021_g_ScriptId, 1, 0, 1 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600021_g_MissionId ) <= 0 then
		return
	end

	CallScriptFunction( x600021_g_MarketScript, "OnAccept", sceneId, selfId, targetId, x600021_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600021_g_MissionId )

	-- ÕÒµ½Íæ¼ÒÊÊºÏtoÕ ðµ c¤p±ð
	local idx, value, level, myLevel
	level = 0
	myLevel = LuaFnGetLevel( sceneId, selfId )

	for idx, value in x600021_g_missionItemsInfo do
		if idx > level and idx <= myLevel then
			level = idx
		end
	end

	local validMissions = x600021_g_missionItemsInfo[level]
	if not validMissions then
		x600021_OnAbandon( sceneId, selfId )
		CallScriptFunction( x600021_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không th¬ tìm ðßþc nhi®m vø thích hþp" )
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

	local itemCount = 1

	SetMissionByIndex( sceneId, selfId, misIndex, x600021_g_NpcIdx, missionNpc )
	SetMissionByIndex( sceneId, selfId, misIndex, x600021_g_ItemIdx, missionItem )
	SetMissionByIndex( sceneId, selfId, misIndex, x600021_g_ItemCountIdx, itemCount )

	local _, strDemandItemName = GetItemInfoByItemId( missionItem )
	local _, strNpcName, strNpcSceneDesc = GetNpcInfoByNpcId(sceneId, missionNpc )

	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		local missionInfo
		if random(2) == 1 then
			missionInfo = format( "    Ông nhân viên thu chi cüa Bän Thành, khi ði qua %s thì b¸ %s · ðó t¤n công, #Y%s#W m¤t tích th§t là phi«n toái quá, các hÕ giúp ta tìm v« ði",
				strNpcSceneDesc, strNpcName, strDemandItemName )
		else
			missionInfo = format( "    · %s có mµt ðám %s thß¶ng xuyên t¤n công ngß¶i ði ðß¶ng, hôm qua còn dám ðµng ðªn cä ông nhân viên thu chi cüa Bän Thành, mà xem, #Y%s#W cûng m¤t tích r°i, chï còn biªt phi«n các hÕ thôi",
				strNpcSceneDesc, strNpcName, strDemandItemName )
		end

		AddText( sceneId, missionInfo )
		AddText( sceneId, "    Các hÕ ðã nh§n nhi®m vø: " .. x600021_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--·ÅÆú
--**********************************
function x600021_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600021_g_MissionId ) <= 0 then
		return
	end

	-- É¾³ýÎïÆ·
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600021_g_MissionId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600021_g_ItemIdx )
	local nItemNum = GetItemCount( sceneId, selfId, demandItemId )

	if nItemNum > 0 then
		DelItem( sceneId, selfId, demandItemId, nItemNum )
	end

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600021_g_MarketScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x600021_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600021_g_MissionName )
		AddText( sceneId, x600021_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600021_g_ScriptId, x600021_g_MissionId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600021_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600021_g_MarketScript, "CheckSubmit", sceneId, selfId )

	if ret == 1 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600021_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600021_g_ItemIdx )
		local demandItemCount = GetMissionParam( sceneId, selfId, misIndex, x600021_g_ItemCountIdx )
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
function x600021_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600021_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if x600021_CheckSubmit( sceneId, selfId ) == 1 then
		-- ¿Û¶«Î÷
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600021_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600021_g_ItemIdx )
		local demandItemCount = GetMissionParam( sceneId, selfId, misIndex, x600021_g_ItemCountIdx )
		local nItemNum = GetItemCount( sceneId, selfId, demandItemId )

		if nItemNum >= demandItemCount then
			DelItem( sceneId, selfId, demandItemId, demandItemCount )
		else											-- Ö»×÷ÎªÈÝ´í,ÀíÂÛÉÏ²»¿ÉÄÜ·¢Éú
			SetMissionByIndex( sceneId, selfId, misIndex, x600021_g_IsMissionOkFail, 0 )
			return
		end

		CallScriptFunction( x600021_g_MarketScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600021_OnKillObject( sceneId, selfId, objdataId, objId )	--²ÎÊýÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
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
		if IsHaveMission( sceneId, curOwner, x600021_g_MissionId ) > 0 and
		   GetScriptIDByMissionID( sceneId, curOwner, x600021_g_MissionId ) == x600021_g_ScriptId then		--Èç¹ûCái này ÈËÓµÓÐÈÎÎñ
			misIndex = GetMissionIndexByID( sceneId, curOwner, x600021_g_MissionId )
			nNpcId = GetMissionParam( sceneId, curOwner, misIndex, x600021_g_NpcIdx )
			_, strNpcName = GetNpcInfoByNpcId(sceneId, nNpcId )
			demandItemId = GetMissionParam( sceneId, curOwner, misIndex, x600021_g_ItemIdx )
			demandItemCount = GetMissionParam( sceneId, curOwner, misIndex, x600021_g_ItemCountIdx )

			if MonsterName == strNpcName then
			-- mµt ¶¨¼¸ÂÊ´ò³öÈÎÎñËùÐèÎïÆ·
				if GetItemCount( sceneId, curOwner, demandItemId ) < demandItemCount then
					--if random( x600021_g_RandomSeed ) > x600021_g_DropOdds then
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
function x600021_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600021_OnItemChanged( sceneId, selfId, itemdataId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600021_g_MissionId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600021_g_ItemIdx )
	local demandItemCount = GetMissionParam( sceneId, selfId, misIndex, x600021_g_ItemCountIdx )
	local nItemNum = GetItemCount( sceneId, selfId, demandItemId )

	if demandItemId == itemdataId then
		local strText = nil
		local _, strItemName = GetItemInfoByItemId( itemdataId )

		if nItemNum >= demandItemCount then
			strText = format( "Ðã có ðßþc %s", strItemName )
			SetMissionByIndex( sceneId, selfId, misIndex, x600021_g_IsMissionOkFail, 1 )
		elseif nItemNum > 0 then
			strText = format( "L¤y ðßþc %s", strItemName )
		end

		if strText then
			CallScriptFunction( x600021_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, strText )
		end
	end
end
