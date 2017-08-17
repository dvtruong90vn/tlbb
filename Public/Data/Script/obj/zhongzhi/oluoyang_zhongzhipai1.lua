--ÂåÑô
--ÖÖÖ²ÅÆ1

--½Å±¾ºÅ
x714021_g_ScriptId = 714021

event_xuanzezhiwu = 713550

--Ö²Îï²úÆ·±àºÅÁÐ±í
x714021_g_eventList={20104001,20104003,20104004,20104006,20104010,20104011,
			20105001,20105002,20105005,20105008,20105011} --Ö²ÎïµÄ±àºÅ,²»ÊÇscriptId
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x714021_OnDefaultEvent( sceneId, selfId,targetId )
	--PLANTFLAG[1] =0
	--PLANTFLAG[2] =0
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI)
	--Èç¹ûÍæ¼Ò²»»áÖÖÖ²¼¼ÄÜ
	if AbilityLevel == 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "Các hÕ c¥n h÷c kÛ nång tr°ng tr÷t trß¾c.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--Èç¹ûÍæ¼Ò»áÖÖÖ²¼¼ÄÜ
	if AbilityLevel ~= 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "M²i mµt v§t tr°ng ð«u có th¬ chia thành 2 loÕi: thu hoÕch s¾m và muµn. Th¶i gian trß·ng thành cüa loÕi thu hoÕch s¾m ch×ng 5 phút. Th¶i gian trß·ng thành cüa loÕi thu hoÕch muµn ch×ng 70 phút. Nhßng kªt quä thu hoÕch ðßþc r¤t nhi«u. anh ch÷n loÕi nào?")
			AddNumText(sceneId, x714021_g_ScriptId, "Tr°ng loÕi thu hoÕch s¾m",6,254)
			AddNumText(sceneId, x714021_g_ScriptId, "Tr°ng loÕi thu hoÕch s¾m",6,255)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x714021_OnEventRequest( sceneId, selfId, targetId, eventId )
	local name_Index
	local NumText = GetNumText()

	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI)

	if NumText == 254 or NumText == 255 then
		BeginEvent(sceneId)
			AddText(sceneId, "Xin ch÷n loÕi v§t tr°ng")
			--Í¨¹ýx714021_g_eventListºÍscriptglobalÖÐµÄÖ²ÎïÁÐ±í¶Ô±È£¬²¢¸ù¾ÝÍæ¼ÒÖÖÖ²¼¼ÄÜµÈÀ´ÏÔÊ¾ÏàÓ¦Ö²Îï
			for i, eventId in x714021_g_eventList do	--±éÀúÕâ¸öµ¾²ÝÈË¿ÉÒÔÖÖÖ²µÄÖ²ÎïÁÐ±í
				for j,g_ZhiWuId in V_ZHONGZHI_ID do		--±éÀúscriptglobalÖÐµÄËùÓÐÖ²ÎïÁÐ±í
					if eventId == g_ZhiWuId then
						if AbilityLevel >= V_ZHONGZHI_NEEDLEVEL[j] then --Èç¹ûÍæ¼ÒÖÖÖ²¼¼ÄÜµÈ>=¸ÃÖ²ÎïÒªÇó¼¼ÄÜµÈ]

							if NumText == 254 then
								name_Index = j
							else
								name_Index = j + getn(V_ZHONGZHI_NAME)/2
							end

							AddNumText(sceneId, x714021_g_ScriptId, V_ZHONGZHI_NAME[name_Index].."(C¤p "..V_ZHONGZHI_NEEDLEVEL[j]..")",6,name_Index)
							break
						end
					end
				end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return

	end

	zhiwuId = NumText
	for i, findId in x714021_g_eventList do
		if zhiwuId <= getn(V_ZHONGZHI_NAME) then
			CallScriptFunction( 713550, "OnDefaultEvent",sceneId, selfId, targetId, zhiwuId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ£¨ÔÝÊ±½èÓÃÈÎÎñ½Ó¿Ú£©
--**********************************
function x714021_OnMissionSubmit( sceneId, selfId, targetId, scriptId )
	for i, findId in x714021_g_eventList do
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
function x714021_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x714021_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, ABILITY_ZHONGZHI )
			end
			return
		end
	end
end

