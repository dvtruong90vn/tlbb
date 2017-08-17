--ÌìÉ½NPC
--ÕÆÃÅÈË
--Ã·½£
--ÆÕÍ¨

--½Å±¾ºÅ
x017001_g_ScriptId = 017001

x017001_g_eventList={228900,229009,200096,200097,808004,229012, 808092}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x017001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Mai Kiªm, lão tôn chü không có · ðây, ta tÕm th¶i quän lý ð® tØ cüa phái Thiên S½n")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x017001_g_ScriptId, "Gia nh§p môn phái",6,0)
		end
		AddNumText(sceneId, x017001_g_ScriptId, "Gi¾i thi®u môn phái",8,1)
		AddNumText(sceneId, x017001_g_ScriptId, "H÷c KÛ nång cüa môn phái?",8,6)		--Ö¸Â·µ½¼¼ÄÜÑ§Ï°ÈË
		for i, eventId in x017001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x017001_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x017001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_TIANSHAN )
			return
		end
	end

	if GetNumText()==0	then

		x017001_g_MenPai = GetMenPai(sceneId, selfId)
		if x017001_g_MenPai == 7   then
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i lÕi ðªn tiêu khi¬n vi sß r°i, ngß½i ðã là ð® tØ cüa phái Thiên S½n ta, còn bái sß làm gì næa c½ chÑ. GiÞn m£t à?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x017001_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã là cao ð° cüa môn phái khác, chúng ta không nh§n ngß½i næa")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_007}")
			AddNumText(sceneId, x017001_g_ScriptId, "Ta mu¯n gia nh§p phái Thiên S½n",6,3)
			AddNumText(sceneId, x017001_g_ScriptId, "TÕi hÕ chßa mu¯n bái sß",8,4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		 
		return
	end
	
	if GetNumText()==4	then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
	
	if GetNumText()==3	then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"Hãy s¡p xªp lÕi tay näi, c¥n 2 v¸ trí tr¯ng, ta s¨ thß·ng cho ngß½i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ hãy ðþi t¾i sau c¤p 10 lÕi t¾i bái sß h÷c ngh®!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x017001_g_MenPai = GetMenPai(sceneId, selfId)
			if x017001_g_MenPai == 7 then
				BeginEvent(sceneId)
					AddText(sceneId, "Ngß½i lÕi ðªn tiêu khi¬n vi sß r°i, ngß½i ðã là ð® tØ cüa phái Thiên S½n ta, còn bái sß làm gì næa c½ chÑ. GiÞn m£t à?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--·µ»ØÖµÎª9±íÊ¾ÎÞÃÅÅÉ
			elseif x017001_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 7)

				-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- °ÑÏà¹ØµÄÐÄ·¨ÉèÖÃÎª10¼¶±ð  43,46,47
				LuaFnSetXinFaLevel(sceneId,selfId,43,10)
				LuaFnSetXinFaLevel(sceneId,selfId,46,10)
				LuaFnSetXinFaLevel(sceneId,selfId,47,10)

				BeginEvent(sceneId)
	  				AddText(sceneId,"Các hÕ ðã gia nh§p phái Thiên S½n!");
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,selfId)
				--¸øÍæ¼Ò·¢ÐÅ,¸æËßËûµ½ÄÄÀï´ò¹Ö,ÔõÑù×¬Ç®
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_7}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_tianshan_0001}" )
				
				--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x017001_MsgBox( sceneId, selfId, "Nh§n ðßþc 20 cái Môn Phái Tri®u T§p L®nh" )

				if TryRecieveItem( sceneId, selfId, 10124006, 1 ) >= 0 then
					str		= "#YCác hÕ ðã nh§n ðßþc "..GetItemName( sceneId, 10124006 ).."."
					x017001_MsgBox( sceneId, selfId, str )
				end
					
				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Thiên S½n!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 167, 0)
					CallScriptFunction( 228900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Thiên S½n!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 167, 0)
					CallScriptFunction( 228900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ngß½i ðã là cao ð° cüa môn phái khác, chúng ta không nh§n ngß½i næa.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_tianshan_0003}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--Ö¸Â·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "Lan Kiªm [88,44] có th¬ truy«n dÕy kÛ nång chiªn ð¤u cüa môn phái ta cho ngß½i. Y ðang · cÕnh ta.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 88, 44, "Lan Kiªm" )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x017001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017001_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x017001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x017001_g_eventList do
		if missionScriptId == findId then
			x017001_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x017001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x017001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x017001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x017001_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x017001_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
