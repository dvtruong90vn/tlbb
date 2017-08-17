--´óÀí
--ÖÖÖ²ÅÆ25

--½Å±¾ºÅ
x714081_g_ScriptId = 714081

event_xuanzezhiwu = 713550

--Ö²Îï²úÆ·±àºÅÁÐ±í
x714081_g_eventList={20104001,20104002,20104005,20104007,20104009,20104012,
			20105001,20105004,20105007,20105012} --Ö²ÎïµÄ±àºÅ,²»ÊÇscriptId
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x714081_OnDefaultEvent( sceneId, selfId,targetId )
	--PLANTFLAG[1] =0
	--PLANTFLAG[2] =0
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI)
	--Èç¹ûÍæ¼Ò²»»áÖÖÖ²¼¼ÄÜ
	if AbilityLevel == 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "Các hÕ nên h÷c kÛ nång tr°ng tr÷t trß¾c")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--Èç¹ûÍæ¼Ò»áÖÖÖ²¼¼ÄÜ
	if AbilityLevel ~= 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "Xin ch÷n loÕi v§t tr°ng")
			--Í¨¹ýx714081_g_eventListºÍscriptglobalÖÐµÄÖ²ÎïÁÐ±í¶Ô±È£¬²¢¸ù¾ÝÍæ¼ÒÖÖÖ²¼¼ÄÜµÈÀ´ÏÔÊ¾ÏàÓ¦Ö²Îï
			for i, scriptId in x714081_g_eventList do	--±éÀúÕâ¸öµ¾²ÝÈË¿ÉÒÔÖÖÖ²µÄÖ²ÎïÁÐ±í
				for j,g_ZhiWuId in V_ZHONGZHI_ID do		--±éÀúscriptglobalÖÐµÄËùÓÐÖ²ÎïÁÐ±í
					if scriptId == g_ZhiWuId then
						if AbilityLevel >= V_ZHONGZHI_NEEDLEVEL[j] then --Èç¹ûÍæ¼ÒÖÖÖ²¼¼ÄÜµÈ>=¸ÃÖ²ÎïÒªÇó¼¼ÄÜµÈ]
							AddNumText(sceneId, x714081_g_eventList[i], V_ZHONGZHI_NAME[j],6,-1)
							break
						end
					end
				end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x714081_OnEventRequest( sceneId, selfId, targetId, scriptId )
	zhiwuId = scriptId
	for i, findId in x714081_g_eventList do
		if zhiwuId == findId then
			CallScriptFunction( 713550, "OnDefaultEvent",sceneId, selfId, targetId, zhiwuId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ£¨ÔÝÊ±½èÓÃÈÎÎñ½Ó¿Ú£©
--**********************************
function x714081_OnMissionSubmit( sceneId, selfId, targetId, scriptId )
	for i, findId in x714081_g_eventList do
		if scriptId == findId then
			ret = CallScriptFunction( scriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( scriptId, "OnAccept", sceneId, selfId, ABILITY_ZHONGZHI )
				CallScriptFunction( scriptId, "OnDefaultEvent",sceneId, selfId, targetId, ABILITY_ZHONGZHI )
			end
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x714081_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x714081_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, ABILITY_ZHONGZHI )	
			end
			return
		end
	end
end

