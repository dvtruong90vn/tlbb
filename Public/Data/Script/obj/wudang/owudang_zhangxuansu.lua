--Îäµ±NPC
--ÕÆÃÅÈË
--ÕÅÐþËØ
--ÆÕÍ¨

x012006_g_scriptId = 012006
x012006_g_eventList={223900,229009,808004,229012, 808092}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x012006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B¥n ðÕo chính là Trß½ng Huy«n T¯, ðèn nhang ÐÕo gia trên núi Võ Ðang, ðßþc b¥n ðÕo sáng l§p mß¶i låm nåm v« trß¾c.")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x012006_g_scriptId, "Gia nh§p môn phái",6,0)
		end
		AddNumText(sceneId, x012006_g_scriptId, "Gi¾i thi®u môn phái",8,1)
		AddNumText(sceneId, x012006_g_scriptId, "H÷c KÛ nång cüa môn phái?",8,6)		--Ö¸Â·µ½¼¼ÄÜÑ§Ï°ÈË
		for i, eventId in x012006_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x012006_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x012006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_WUDANG )
			return
		end
	end

	if GetNumText()==0	then

		x012006_g_MenPai = GetMenPai(sceneId, selfId)
		if x012006_g_MenPai == 3   then
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i lÕi ðªn tiêu khi¬n vi sß r°i, ngß½i ðã là ð® tØ cüa phái Võ Ðang ta, còn ðªn bái sß làm gì næa c½ chÑ. GiÞn m£t à?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x012006_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã là cao ð° cüa môn phái khác, chúng ta không thu nh§n ngß½i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_003}")
			AddNumText(sceneId, x012006_g_scriptId, "Ta mu¯n gia nh§p Võ Ðang",6,3)
			AddNumText(sceneId, x012006_g_scriptId, "TÕi hÕ chßa mu¯n bái sß",8,4)
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
			x012006_g_MenPai = GetMenPai(sceneId, selfId)
			if x012006_g_MenPai == 3 then
				BeginEvent(sceneId)
					AddText(sceneId, "Ngß½i lÕi ðªn tiêu khi¬n vi sß r°i, ngß½i ðã là ð® tØ cüa phái Võ Ðang ta, còn ðªn bái sß làm gì næa c½ chÑ. GiÞn m£t à?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--·µ»ØÖµÎª9±íÊ¾ÎÞÃÅÅÉ
			elseif x012006_g_MenPai==9	then
				AddText(sceneId,"V§y thì b¡t ð¥u t× bây gi¶, ngß½i chính thÑc là ð® tØ phái Võ Ðang cüa ta!")
				LuaFnJoinMenpai(sceneId, selfId, targetId, 3)

				-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- °ÑÏà¹ØµÄÐÄ·¨ÉèÖÃÎª10¼¶±ð  19,22,23
				LuaFnSetXinFaLevel(sceneId,selfId,19,10)
				LuaFnSetXinFaLevel(sceneId,selfId,22,10)
				LuaFnSetXinFaLevel(sceneId,selfId,23,10)

				BeginEvent(sceneId)
	  				AddText(sceneId,"Các hÕ ðã gia nh§p phái Võ Ðang!");
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,selfId)
				--¸øÍæ¼Ò·¢ÐÅ,¸æËßËûµ½ÄÄÀï´ò¹Ö,ÔõÑù×¬Ç®
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_9}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_wudang_0002}" )
				
				--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x012006_MsgBox( sceneId, selfId, "Nh§n ðßþc 20 cái Môn Phái Tri®u T§p L®nh" )

				if TryRecieveItem( sceneId, selfId, 10124004, 1 ) >= 0 then
					str		= "#YCác hÕ nh§n ðßþc "..GetItemName( sceneId, 10124004 ).."."
					x012006_MsgBox( sceneId, selfId, str )
				end
				
				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Võ Ðang!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
					CallScriptFunction( 223900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Võ Ðang!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
					CallScriptFunction( 223900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ngß½i ðã là cao ð° cüa môn phái khác, chúng ta không thu nh§n ngß½i")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_wudang_0003}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--Ö¸Â·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "Du Vi­n S½n [82,85] có th¬ truy«n dÕy kÛ nång chiªn ð¤u cüa môn phái ta cho ngß½i. Y ðang · bên cÕnh ta.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 82, 85, "Du Vi­n S½n" )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x012006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x012006_g_eventList do
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
function x012006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x012006_g_eventList do
		if missionScriptId == findId then
			x012006_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x012006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x012006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x012006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x012006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x012006_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x012006_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
