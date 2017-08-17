--Ã÷½ÌNPC
--·½°Ù»¨
--ÆÕÍ¨

--½Å±¾ºÅ
x011002_g_ScriptId = 011002

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x011002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta có th¬ truy«n thø cho khinh công ð£c bi®t cüa b±n phái, có ði«u c¥n t¯n 50 #-03")
		AddNumText(sceneId, x011002_g_ScriptId, "H÷c khinh công phái Minh Giáo",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x011002_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 1 then
			if	HaveSkill( sceneId, selfId, 24)<0	then
				-- ¼ì²éÇ®
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  ÄúÉíÉÏµÄÏÖ½ð²»×ã1#-15£¬Òò´ËÎÞ·¨Ñ§Ï°±¾ÃÅÇá¹¦¡£")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ¿ÛÇ®
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 24 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  ¹§Ï²ÄãÑ§»á±¾ÃÅµÄÇá¹¦£¬Ï£ÍûÎª±¾ÃÅµÄ·¢Ñï¹â´ó¼ÌÐøÅ¬Á¦¡£")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Äã²»ÊÇÒÑ¾­Ñ§»áÁËÂð£¿")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ñ§Ï°Ã÷½ÌÇá¹¦ÐèÒªÏÈ¼ÓÈëÃ÷½Ì£¡")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Äã²»ÊÇ±¾ÃÅÅÉµÄµÜ×Ó£¬ÎÒÊÇ²»ÄÜ½ÌÄãÃ÷½ÌµÄÇá¹¦µÄ")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x011002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x011002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x011002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x011002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x011002_OnDie( sceneId, selfId, killerId )
end
