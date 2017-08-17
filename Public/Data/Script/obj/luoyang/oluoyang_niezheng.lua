-- ÂåÑôNPC
-- ÄôÕþ
-- ÆÕÍ¨

--½Å±¾ºÅ
x000111_g_ScriptId = 000111

--Ä¿±êNPC
x000111_g_name = "ÄôÕþ"

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í {ÊÕÍ½,³öÊ¦,Öð³öÊ¦ÃÅ,ÅÑÊ¦,Éý¼¶Ê¦µÂµÈ¼¶,Ê¦Í½ÇéÉî½±Àø}
--x000111_g_RelationEventList = { 806008, 806007, 806009, 806006, 806015 }
--È¥µô³öÊ¦µÄÉè¶¨
x000111_g_RelationEventList = { 806019, 806008, 806009, 806006, 806015, 806018 }

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000111_OnDefaultEvent( sceneId, selfId, targetId )
	x000111_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000111_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local i, eventId
		--zchw
		--AddNumText( sceneId, x000111_g_ScriptId, "Ê¦Í½ÐÄÁ¬ÐÄ", 6, 123)
		AddText( sceneId, "#{OBJ_luoyang_0030}" )
--		AddNumText( sceneId, x000111_g_ScriptId, "ÎÒÏëÁË½âÒ»ÏÂÔõÑù°ÝÊ¦", 11, 1 )
		
		for i, eventId in x000111_g_RelationEventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end

		
		
--	AddNumText( sceneId, x000111_g_ScriptId, "²é¿´Ê¦µÂµãÊý", 6, 2 )
		AddNumText( sceneId, x000111_g_ScriptId, "Ta mu¯n dùng ði¬m Thi®n ác nh§n lînh kinh nghi®m", 6, 3 )
		AddNumText( sceneId, x000111_g_ScriptId, "Xu¤t sß", 6, 10 )
		AddNumText( sceneId, x000111_g_ScriptId, "Gi¾i thi®u sß ð°", 11, 4 )
		--AddNumText( sceneId, x000111_g_ScriptId, "¹ØÓÚÊ¦Í½ÐÄÁ¬ÐÄ", 11, 321)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000111_OnEventRequest( sceneId, selfId, targetId, eventId )
	local strText
	local	nMlevel	= LuaFnGetmasterLevel( sceneId, selfId )

	if eventId == x000111_g_ScriptId then

		if GetNumText() == 1 then							-- ÁË½âÔõÃ´°ÝÊ¦
			BeginEvent( sceneId )
			AddText( sceneId, "#{OBJ_luoyang_0032}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		
		elseif GetNumText() == 4 then					-- Ê¦Í½½éÉÜ
			BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_050}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )

		elseif GetNumText() == 2 then					-- ²é¿´Ê¦µÂµãÊý
			BeginEvent( sceneId )
			strText = format( "S¯ ði¬m sß ðÑc hi®n có: %d", LuaFnGetMasterMoralPoint( sceneId, selfId ) )
			AddText( sceneId, strText )
			strText = format( "Tích lûy s¯ ði¬m sß ðÑc: %d", LuaFnGetMasterMoralPoint( sceneId, selfId ) )
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )

		elseif GetNumText() == 10 then
			local HumanLevel = LuaFnGetLevel( sceneId, selfId )
			
			if HumanLevel < 45 then--Ð¡ÓÚ45¼¶
				x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_5}" )
				return
			end
			
			
			
			if LuaFnHaveMaster( sceneId, selfId ) == 0 then--Ã»ÓÐÊ¦¸µ
				x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_6}" )
				return
			end
			
			--¼ì²éÊÇ·ñÒÑ¾­³ö¹ýÊ¦
			if GetMissionFlag(sceneId, selfId, MF_ShiTu_ChuShi_Flag) == 1 then --±íÊ¾ÒÑ¾­³öÊ¦
				x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_6}" )
				return
			end
				
			--³öÊ¦ÉèÖÃ³öÊ¦±êÖ¾
			SetMissionFlag(sceneId, selfId, MF_ShiTu_ChuShi_Flag, 1)
			
			--·¢ËÍ¿ÉÖ´ÐÐÓÊ¼þ
			LuaFnChuShiMail(sceneId, selfId)
						
			x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_1}" )
			
			return
		
		elseif GetNumText() == 3 then					-- ÉÆ¶ñÖµ»»¾­Ñé
			if nMlevel < 1 or nMlevel > 4 then
				x000111_MyMsgBox( sceneId, selfId, targetId, "ÐÆng c¤p sß ðÑc không ðü" )
				return
			end
			if LuaGetPrenticeSupplyExp( sceneId, selfId ) == 0 then
				x000111_MyMsgBox( sceneId, selfId, targetId, "Không có kinh nghi®m có th¬ lînh" )
				return
			end
			--´ò¿ª¿Í»§¶ËÉÆ¶ñÖµ¶Ò»»¾­Ñé´°¿Ú
			LuaFnExpAssign( sceneId, selfId, 1 )
			--¹Ø±Õ´°¿Ú
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		-- add by zchw
		elseif GetNumText() == 123 then
			--¼ì²éµÈ¼¶
			local HumanLevel = LuaFnGetLevel( sceneId, selfId )
			
			if HumanLevel < 30 then--Ð¡ÓÚ45¼¶
				x000111_MyMsgBox( sceneId, selfId, targetId, "C¤p ðµ trên 30 không th¬ lînh." );
				return
			end
			--¼ì²âÍæ¼Ò²Î¼Ó»î¶¯µÄÊ±¼ä
			local	nDayTime = GetMissionData( sceneId, selfId, MD_SHITU_XINLIANXIN );
			local nDay = LuaFnGetDayOfThisMonth()
			if nDayTime == nDay then
				x000111_MyMsgBox(sceneId, selfId, targetId, "Hôm nay ngß½i ðã tham gia lînh thß·ng, mai hãy ðªn.");
				return
			end

			-- 1£¬¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐÎ»ÖÃÄÜ¹»·ÅÏÂÎïÆ·
			BeginAddItem(sceneId)
				AddItem( sceneId, 30008045, 1 ); --´óÀñ°ü			
			if EndAddItem(sceneId,selfId)	< 1 then
				return
			end
			-- ¸øÀñ°ü
			AddItemListToHuman(sceneId,selfId);
			-- ÌáÊ¾ÐÅÏ¢
			x000111_MyMsgBox(sceneId, selfId, targetId, "Ta có ðÕi l­ sß ð° này t£ng cho ngß½i, hãy sØ døng nó.");
			BeginEvent(sceneId)
				strText = "Ngß½i mu¯n nh§n ðÕi l­ bao?";
				AddText(sceneId, strText)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, selfId)
			-- ¼ÇÂ¼ÁìÈ¡Ê±¼ä
			SetMissionData( sceneId, selfId, MD_SHITU_XINLIANXIN, nDay );
			-- ¼ÇÂ¼²ÎÓëÈÕÖ¾
			AuditJoinJiaoShiJie(sceneId, selfId);
		elseif GetNumText() == 321 then --Ê¦Í½ÐÄÁ¬ÐÄ½éÉÜ
				x000111_MyMsgBox(sceneId, selfId, targetId, "M²i nåm mµt l¥n, ðÕt c¤p 30 tr· lên có th¬ ðªn ÐÕi Lý Nhiªp Chính [170,123] ð¬ lînh Sß Ð° ÐÕi L­ Bao. SØ døng ðÕi l­ bao s¨ có nhi«u ph¥n thß·ng vô cùng h¤p dçn.");
				return			
		-- end of zchw
		end
				
		
		return
	end

	local i, findId
	for i, findId in x000111_g_RelationEventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
--		x000111_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000111_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x000111_g_RelationEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x000111_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000111_g_RelationEventList do
		if missionScriptId == findId then
			x000111_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¶Ô»°¿òÌáÊ¾
--**********************************
function x000111_MyMsgBox( sceneId, selfId, targetId, str )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
