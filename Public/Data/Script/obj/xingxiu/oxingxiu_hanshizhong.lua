--ÐÇËÞNPC
--º«ÊÀÖÒ
--ÆÕÍ¨

x016001_g_scriptId = 016001
x016001_g_eventList={227900,808004}

x016001_g_StudyAbility_NeedMoney = 5550000		--555G
---¡°ÃÅÅÉÕÙ¼¯Áî¡±Åä·½ID
x016001_g_RecipeId = 563
--Ë³·¢ÌØÐ§ID
x016001_g_SpecialEffectID = 18;


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta là Hàn Thª Trung hi®n ðang giæ chÑc ðÕi sß huynh cüa phái Tinh Túc.")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x016001_g_scriptId, "Gia nh§p môn phái",6,0)
		end
		AddNumText(sceneId, x016001_g_scriptId, "Gi¾i thi®u môn phái",8,1)
		AddNumText(sceneId, x016001_g_scriptId, "H÷c cách làm ra l®nh tri®u t§p cüa môn phái",12,2)
		AddNumText(sceneId, x016001_g_scriptId, "H÷c KÛ nång cüa môn phái?",8,6)		--Ö¸Â·µ½¼¼ÄÜÑ§Ï°ÈË
		for i, eventId in x016001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x016001_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()==0	then

		x016001_g_MenPai = GetMenPai(sceneId, selfId)
		if x016001_g_MenPai == 5   then
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i lÕi ðªn tiêu khi¬n vi sß r°i, ngß½i ðã là ð® tØ cüa Tinh Túc ta, còn bái sß làm gì næa c½ chÑ")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x016001_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã là cao ð° cüa môn phái khác, chúng ta không thu nh§n ngß½i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_005}")
			AddNumText(sceneId, x016001_g_scriptId, "Ta mu¯n bái nh§p phái Tinh Túc",6,3)
			AddNumText(sceneId, x016001_g_scriptId, "TÕi hÕ chßa mu¯n bái sß",8,4)
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
			x016001_g_MenPai = GetMenPai(sceneId, selfId)
			if x016001_g_MenPai == 5 then
				BeginEvent(sceneId)
					AddText(sceneId, "Ngß½i lÕi ðªn tiêu khi¬n vi sß r°i, ngß½i ðã là ð® tØ cüa Tinh Túc ta, còn bái sß làm gì næa c½ chÑ")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--·µ»ØÖµÎª9±íÊ¾ÎÞÃÅÅÉ
			elseif x016001_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 5)

				-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- °ÑÏà¹ØµÄÐÄ·¨ÉèÖÃÎª10¼¶±ð  31,34,35
				LuaFnSetXinFaLevel(sceneId,selfId,31,10)
				LuaFnSetXinFaLevel(sceneId,selfId,34,10)
				LuaFnSetXinFaLevel(sceneId,selfId,35,10)

				BeginEvent(sceneId)
					AddText(sceneId,"Các hÕ ðã gia nh§p phái Tinh Túc!");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				--¸øÍæ¼Ò·¢ÐÅ,¸æËßËûµ½ÄÄÀï´ò¹Ö,ÔõÑù×¬Ç®
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_1}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_xingxiu_0001}" )
				
				--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x016001_MsgBox( sceneId, selfId, "Nh§n ðßþc 20 cái Môn Phái Tri®u T§p L®nh." )

				if TryRecieveItem( sceneId, selfId, 10124005, 1 ) >= 0 then
					str		= "#YCác hÕ nh§n ðßþc "..GetItemName( sceneId, 10124005 ).."."
					x016001_MsgBox( sceneId, selfId, str )
				end
				
				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Tinh Túc!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 165, 0)
					CallScriptFunction( 227900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Tinh Túc!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 165, 0)
					CallScriptFunction( 227900, "OnDefaultEvent",sceneId, selfId, targetId )
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
			AddText(sceneId, "#{OBJ_xingxiu_0003}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif	GetNumText() == 2 then
	
		x016001_g_MenPai = GetMenPai(sceneId, selfId)
		if x016001_g_MenPai == 5 then

			local RecipeFlag = IsPrescrLearned( sceneId, selfId, x016001_g_RecipeId );
			if RecipeFlag >= 1 then
				BeginEvent(sceneId)
						AddText(sceneId,"Các hÕ ðã h÷c làm Môn Phái Tri®u T§p L®nh.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return 0;
			end
				
			local	lev	= QueryHumanAbilityLevel( sceneId, selfId, 39 )
			if lev < 2 then
					BeginEvent(sceneId)
					AddText(sceneId,"Chï có kÛ nång Chï Xích Thiên Nhai ðÕt c¤p ðµ 2 m¾i có th¬ truy«n thø! Ngoài ra, các hÕ còn phäi nµp cho tÕi hÕ#{_MONEY"..x016001_g_StudyAbility_NeedMoney.."}")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
			end	
				
			if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < x016001_g_StudyAbility_NeedMoney then
				BeginEvent(sceneId)
						AddText(sceneId,"Ti«n các hÕ mang theo không ðü! Phäi nµp cho ht#{_EXCHG"..x016001_g_StudyAbility_NeedMoney.."}.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return 0
			else
				BeginEvent(sceneId)
					AddText(sceneId,"H÷c phß½ng thÑc ph¯i hþp l®nh tri®u t§p môn phái phäi nµp cho tÕi hÕ #{_MONEY"..x016001_g_StudyAbility_NeedMoney.."}")
					AddNumText(sceneId, x016001_g_scriptId, "TÕi hÕ ð°ng ý h÷c.",12,999)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
					
			end

		else
			BeginEvent(sceneId)
				AddText(sceneId, "Ta chï truy«n thø cho ð® tØ cüa bän phái")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	
	elseif	GetNumText() == 999 then
		-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÑ§»áÁË±ØÒªµÄ¼¼ÄÜ²¢´ïµ½±ØÒªµÈ¼¶
		local	lev	= QueryHumanAbilityLevel( sceneId, selfId, 39 )
		if lev < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"KÛ nång Chï thß¾c thiên nhai cüa các hÕ vçn chßa ðÕt c¤p ðµ 2, tÕi hÕ không th¬ dÕy ðßþc.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
			
		-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇ¹»Ç®
		if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < x016001_g_StudyAbility_NeedMoney   then
			BeginEvent(sceneId)
				AddText(sceneId, "Ti«n các hÕ mang theo không ðü.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
		local delMoney,delJiaoZi = LuaFnCostMoneyWithPriority( sceneId, selfId, x016001_g_StudyAbility_NeedMoney )
		if delMoney and delMoney ~= -1  then
			CallScriptFunction( USERECIPE_SCRIPT, "ReadRecipe", sceneId, selfId, x016001_g_RecipeId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x016001_g_SpecialEffectID, 0);
			
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ ðã h÷c cách làm ra l®nh tri®u t§p cüa môn phái r°i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	else
		for i, findId in x016001_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_XINGSU )
				return
			end
		end
	end
	--Ö¸Â·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "Thi Toàn [87,70] có th¬ truy«n dÕy cho ngß½i kÛ nång chiªn ð¤u cüa phái ta. „n phím TAB, trên bän ð° s¨ xu¤t hi®n ký hi®u ðang nh¤p nháy.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 87, 70, "Thi Toàn" )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x016001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016001_g_eventList do
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
function x016001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			x016001_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x016001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x016001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x016001_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x016001_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
