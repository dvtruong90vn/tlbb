-- ¹ÅÊ«¶Ô¾äÈÎÎñ
--MisDescBegin
-- ½Å±¾ºÅ
x600013_g_ScriptId = 600013

--ÈÎÎñºÅ
x600013_g_MissionId = 1107

--Møc tiêu nhi®m vønpc
x600013_g_Name = "Hµi H÷a"

--ÈÎÎñ¹éÀà
x600013_g_MissionKind = 50

--ÐÆng c¤p nhi®m vø 
x600013_g_MissionLevel = 10000

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600013_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600013_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç
x600013_g_MissionParam_SubId = 1						-- ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600013_g_MissionParam_PoemIssued = 2					-- Ðúng·ñÒÑ¾­·¢²¼Ê«¾ä
x600013_g_MissionParam_IsFailed = 3						-- ÕýÈ·´ð°¸Ë÷Òý´æ·ÅÎ»ÖÃ
x600013_g_MissionParam_PoemIndex = 4					-- Ê«¾äË÷Òý´æ·ÅÎ»ÖÃ
x600013_g_MissionParam_AnswerIndex = 5					-- ÕýÈ·´ð°¸Ë÷Òý´æ·ÅÎ»ÖÃ

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ði¬mµ½toÕ ðµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x600013_g_MissionName = "Nhi®m vø kÛ thu§t"
x600013_g_MissionInfo = "    Hôm nay ta mu¯n có %s, tìm lÕi ðây giúp ta!"			--ÈÎÎñÃèÊö
x600013_g_MissionTarget = "    Trä l¶i ðúng 1 câu ð¯i câu th½ c±. "						--Møc tiêu nhi®m vø
x600013_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600013_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"							--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600013_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600013_g_StrForePart = 5
x600013_g_Offset = 140000												-- Suppose to 150000, ±íÀïµÚ¼¸cáiÎïÆ·ÁÐtoÕ ðµ Æ«ÒÆÁ¿

x600013_g_MissionRound = 42

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600013_g_CityMissionScript = 600001
x600013_g_SciTechScript = 600012

--ÈÎÎñ½±Àø

--MisDescEnd

x600013_g_Answer = 3

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600013_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600013_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600013_g_MissionId ) > 0 then
		local bDone = x600013_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600013_g_SubmitInfo
		else
			strText = x600013_g_ContinueInfo
		end

		if bDone == 0 then												--ÈÎÎñÎ´Íê³É
			if GetNumText() == 0 then
				BeginEvent( sceneId )
					AddText( sceneId, x600013_g_MissionName )
					x600013_IssueQuiz( sceneId, selfId )
				EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
			else
				x600013_CheckAnswer( sceneId, selfId, targetId )
			end
		elseif bDone == 1 then											--ÈÎÎñÒÑ¾­Íê³É
			BeginEvent( sceneId )
				AddText( sceneId, x600013_g_MissionName )
				AddText( sceneId, strText )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x600013_g_ScriptId, x600013_g_MissionId, bDone )
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600013_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600013_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600013_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600013_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600013_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600013_g_MissionId ) > 0 then
		AddNumText( sceneId, x600013_g_ScriptId, x600013_g_MissionName, 3, 0 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600013_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600013_g_SciTechScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½
--**********************************
function x600013_GetMissionPoemOffset( sceneId, selfId )
	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos

	if nPlayerLevel < 55 then								-- 40 ~ 54
		nPos = 1
	elseif nPlayerLevel < 70 then							-- 55 ~ 69
		nPos = 2
	elseif nPlayerLevel < 85 then							-- 70 ~ 84
		nPos = 3
	else													-- 85 ~ 100
		nPos = 4
	end

	return nPos
end

--**********************************
--ÈÎÎñ·¢²¼
--**********************************
function x600013_IssueQuiz( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600013_g_MissionId ) <= 0 then	-- Ã»ÓÐÈÎÎñ
		return
	end

	local missionInfo
	if random(2) == 1 then
		missionInfo = format( "    Nghe nói các hÕ tài cán h½n ngß¶i, mu¯n thØ các hÕ mµt chút" )
	else
		missionInfo = format( "    Có mµt s¯ v¤n ð« ta nghî thª nào cûng không hi¬u, các hÕ có th¬ giäi ðáp cho ta không?" )
	end

	AddText( sceneId, missionInfo )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600013_g_MissionId )
	local QuizTable
	local nPoemIndex

	if GetMissionParam( sceneId, selfId, misIndex, x600013_g_MissionParam_IsFailed ) == 1
	 or GetMissionParam( sceneId, selfId, misIndex, x600013_g_MissionParam_PoemIssued ) ~= 1 then
		local nOffset = x600013_GetMissionPoemOffset( sceneId, selfId )
		local nPosStart = x600013_g_Offset + nOffset * 10000

		-- Ê¹ÓÃÐÂtoÕ ðµ ½Ó¿Ú ðÕt ðßþcÌâÄ¿±àºÅ
		nPoemIndex = GetRandomQuestionsIndex(2)

		-- Ê«¾äË÷Òý´æ·ÅÎ»ÖÃ
		SetMissionByIndex( sceneId, selfId, misIndex, x600013_g_MissionParam_PoemIndex, nPoemIndex )
	else
		nPoemIndex = GetMissionParam( sceneId, selfId, misIndex, x600013_g_MissionParam_PoemIndex )
	end

	local Quiz
	local Opt = {}
	local Key = {}
	Quiz, Opt[1], Opt[2], Opt[3], Opt[4], Opt[5], Opt[6],
		  Key[1], Key[2], Key[3], Key[4], Key[5], Key[6] = GetQuestionsRecord( nPoemIndex )

	AddText( sceneId, Quiz )

	local RandomOrder = { 1, 2, 3, 4, 5, 6 }
	local newPos
	local i
	for i = 1, x600013_g_Answer do
		if Key[i] == 1 then
			newPos = random( x600013_g_Answer )
			RandomOrder[i] = newPos
			RandomOrder[newPos] = i
		end
	end

	-- ÕýÈ·´ð°¸Ë÷Òý´æ·ÅÎ»ÖÃ
	SetMissionByIndex( sceneId, selfId, misIndex, x600013_g_MissionParam_AnswerIndex, newPos )
	SetMissionByIndex( sceneId, selfId, misIndex, x600013_g_MissionParam_PoemIssued, 1 )
	SetMissionByIndex( sceneId, selfId, misIndex, x600013_g_MissionParam_IsFailed, 0 )

	for i = 1, x600013_g_Answer do
		AddNumText( sceneId, x600013_g_ScriptId, Opt[RandomOrder[i]], -1, i )		-- 9 + i ÖÆ¶¨¿Í»§¶ËÌØ¶¨toÕ ðµ Í¼±ê (Ñ¡ÏîÍ¼±êÎªÊý×ÖÏî)
	end

end

--**********************************
--Tiªp thø
--**********************************
function x600013_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600013_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if GetLevel( sceneId, selfId ) < 40 then
		CallScriptFunction( x600013_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ðü ðÆng c¤p" )
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId, selfId, x600013_g_MissionId, x600013_g_ScriptId, 0, 0, 0 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600013_g_MissionId ) <= 0 then
		return
	end

	CallScriptFunction( x600013_g_SciTechScript, "OnAccept", sceneId, selfId, targetId, x600013_g_ScriptId )

	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		x600013_IssueQuiz( sceneId, selfId )
		AddText( sceneId, "#rCác hÕ ðã nh§n " .. x600013_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--·ÅÆú
--**********************************
function x600013_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600013_g_SciTechScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x600013_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600013_g_MissionName )
		AddText( sceneId, x600013_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600013_g_ScriptId, x600013_g_MissionId )
end

--**********************************
--¼ì²é´ð°¸
--**********************************
function x600013_CheckAnswer( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600013_g_MissionId ) <= 0 then	-- Ã»ÓÐÈÎÎñ
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600013_g_MissionId )

	BeginEvent( sceneId )
		AddText( sceneId, x600013_g_MissionName )

		local ContinueInfo = ""
		local bDone = 0
		if GetMissionParam( sceneId, selfId, misIndex, x600013_g_MissionParam_PoemIssued ) ~= 1 then
			return
		end

		if GetNumText() == GetMissionParam( sceneId, selfId, misIndex, x600013_g_MissionParam_AnswerIndex ) then
			ContinueInfo = format( "    Quä nhiên là tài cao, ti¬u sinh bái phøc bái phøc" )
			SetMissionByIndex( sceneId, selfId, misIndex, x600013_g_IsMissionOkFail, 1 )	-- Íê³É
			bDone = 1
		else
			ContinueInfo = format( "    Không phäi ðâu, không phäi ðâu, thôi th¤y không phäi nhß v§y ðâu, chi b¢ng thØ mµt l¥n næa" )
			SetMissionByIndex( sceneId, selfId, misIndex, x600013_g_MissionParam_IsFailed, 1 )	-- th¤t bÕi
		end

		AddText( sceneId, ContinueInfo )
	EndEvent( )
	DispatchMissionDemandInfo( sceneId, selfId, targetId, x600013_g_ScriptId, x600013_g_MissionId, bDone )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600013_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600013_g_SciTechScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600013_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600013_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if x600013_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600013_g_SciTechScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600013_OnKillObject( sceneId, selfId, objdataId, objId )	--²ÎÊýÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600013_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600013_OnItemChanged( sceneId, selfId, itemdataId )
end
