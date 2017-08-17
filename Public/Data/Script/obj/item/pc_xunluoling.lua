--Íæ¼Ò³ÇÊÐ¡¢Ñ²ÂßÁî

--½Å±¾ºÅ
x300024_g_scriptId = 300024

--ÈÎÎñºÅ
x300024_g_MissionId = 1109


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x300024_g_eventList={211208}

x300024_g_Pos = {{x=44,z=45},{x=55,z=55},{x=65,z=55},{x=99,z=55},{x=45,z=74},{x=56,z=64},{x=56,z=80},
							{x=49,z=91},{x=56,z=97},{x=73,z=98},{x=83,z=100},{x=97,z=100},{x=110,z=100},{x=119,z=100},
							{x=145,z=99},{x=100,z=82},{x=81,z=45},{x=100,z=122},{x=86,z=123},{x=70,z=126},{x=55,z=125},
							{x=44,z=125},{x=44,z=135},{x=45,z=145},{x=99,z=143},{x=75,z=140},{x=64,z=150},{x=140,z=130},
							{x=150,z=140},{x=120,z=150},{x=120,z=150}}

-- ÌØ±ð×¢Òâ£¬ÕâÀïµÄ¶¨Òå£¬Í¬ÊÂÔÚpc_xunluoing.lua ÖÐÒ²ÓÐÏàÍ¬µÄ¶¨Òå£¬ÐèÒªÍ¬²½¸Ä
x300024_g_MonsterId = {
{n=100,id=3550},{n=101,id=3551},{n=102,id=3552},{n=103,id=3553},{n=104,id=3554},{n=105,id=3555},{n=106,id=3556},{n=107,id=3557},{n=108,id=3558},{n=109,id=3559},
{n=110,id=3560},{n=111,id=3561},{n=112,id=3562},{n=113,id=3563},{n=114,id=3564},{n=115,id=3565},{n=116,id=3566},{n=117,id=3567},{n=118,id=3568},{n=119,id=3569},
{n=120,id=3570},{n=121,id=3571},{n=122,id=3572},{n=123,id=3573},{n=124,id=3574},{n=125,id=3575},{n=126,id=3576},{n=127,id=3577},{n=128,id=3578},{n=129,id=3579},
{n=130,id=3580},{n=131,id=3581},{n=132,id=3582},{n=133,id=3583},{n=134,id=3584},{n=135,id=3585},{n=136,id=3586},{n=137,id=3587},{n=138,id=3588},{n=139,id=3589},
{n=140,id=3590},{n=141,id=3591},{n=142,id=3592},{n=143,id=3593},{n=144,id=3594},{n=145,id=3595},{n=146,id=3596},{n=147,id=3597},{n=148,id=3598},{n=149,id=3599},
{n=150,id=3600},{n=151,id=3601},{n=152,id=3602},{n=153,id=3603},{n=154,id=3604},{n=155,id=3605},{n=156,id=3606},{n=157,id=3607},{n=158,id=3608},{n=159,id=3609},
{n=160,id=3610},{n=161,id=3611},{n=162,id=3612},{n=163,id=3613},{n=164,id=3614},{n=165,id=3615},{n=166,id=3616},{n=167,id=3617},{n=168,id=3618},{n=169,id=3619},
{n=170,id=3620},{n=171,id=3621},{n=172,id=3622},{n=173,id=3623},{n=174,id=3624},{n=175,id=3625},{n=176,id=3626},{n=177,id=3627},{n=178,id=3628},{n=179,id=3629},
{n=180,id=3630},{n=181,id=3631},{n=182,id=3632},{n=183,id=3633},{n=184,id=3634},{n=185,id=3635},{n=186,id=3636},{n=187,id=3637},{n=188,id=3638},{n=189,id=3639},
}

-- ÌØ±ð×¢Òâ£¬ÕâÀïµÄ¶¨Òå£¬Í¬ÊÂÔÚpc_xunluoing.lua ÖÐÒ²ÓÐÏàÍ¬µÄ¶¨Òå£¬ÐèÒªÍ¬²½¸Ä
x300024_g_MonsterName = {
"Mµc",
"Ð£ng",
"Quan",
"T¯ng",
"Vu",
"Giáp Nhân",
"Ti¬u Giáp",
"„t Nhân",
"Ti¬u „t",
"Bính Nhân",
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300024_OnDefaultEvent( sceneId, selfId, BagIndex )

	local nIndex = GetNumText()
	if nIndex == 1   then
		
	elseif nIndex == 2   then
		
	end
	
	local misIndex = GetMissionIndexByID(sceneId, selfId, x300024_g_MissionId)
	
	local nHaveMonster = GetMissionParam(sceneId, selfId, misIndex, 3)
	local nMonster = GetMissionParam(sceneId, selfId, misIndex, 4)
	
	if nHaveMonster == 999 then 
		SetNpcCamp(sceneId, nMonster, 9)
		return
	end

	-- »ñµÃµ±Ç°µÄËæ»úÖµ£¬¿´¿´ÊÇ²»ÊÇ0£¬Èç¹ûÊÇ0£¬¾Í´ÓÐÂÈ¡µÃËæ»úÊý
	local nData = GetMissionData(sceneId, selfId, MD_MILITARY_ROND_POSITION)
	if nData == 0   then 
		nData = random( getn(x300024_g_Pos) )
		SetMissionData( sceneId, selfId, MD_MILITARY_ROND_POSITION, nData)
	end

	-- ÅÐ¶¨Íæ¼ÒÊÇ²»ÊÇÒÑ¾­½øÈëÁËÕâ¸öÇøÓò
	-- È¡µÃÍæ¼Òµ±Ç°×ø±ê
	PlayerX = GetHumanWorldX(sceneId,selfId)
	PlayerZ = GetHumanWorldZ(sceneId,selfId)
	
	--¼ÆËãÍæ¼ÒÓë±¦²ØµÄ¾àÀë
	Distance = floor(sqrt((x300024_g_Pos[nData].x - PlayerX) * (x300024_g_Pos[nData].x - PlayerX) + (x300024_g_Pos[nData].z - PlayerZ) * (x300024_g_Pos[nData].z - PlayerZ)))
	
	if Distance > 5  then
		-- Íæ¼Òµã»÷Õâ¸öÎïÆ·£¬»áµ¯³öÑ²ÂßÁîµÄ£¬¸æËßÍæ¼ÒÔÚÊ²Ã´µØµã¿ÉÒÔÊ¹ÓÃÕâ¸öÎïÆ·
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ c¥n ðªn thành ph¯ cüa mình, · v¸ trí [" .. tostring(x300024_g_Pos[nData].x) .. "," .. tostring(x300024_g_Pos[nData].z) .. "] ði tìm gián ði®p.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	
	else
		local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
		local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)
	
		if Humanguildid ~= cityguildid    then
			return
		end

		if DelItem( sceneId, selfId, 40004413, 1 ) > 0 then
		
			-- ÕâÀï¸ù¾ÝÈÎÎñÖÐ±£´æµÄÊý¾ÝÀ´·Å¹Ö
			local nIndex = GetMissionParam(sceneId, selfId, misIndex, 5)
			for i ,nn in x300024_g_MonsterId  do
				if nn.n == nIndex  then
					--´´½¨¹ÖÎï£¬
					local MonsterId = LuaFnCreateMonster(sceneId, nn.id, x300024_g_Pos[nData].x, x300024_g_Pos[nData].z, 1, 0, -1)
					
					-- ÉèÖÃÕâ¸ö¹ÖµÄ×Ô¶¯ÏûÊ§Ê±¼ä  £¨15·ÖÖÐ¡££©
					SetCharacterDieTime(sceneId, MonsterId, 15*60000)
		
					-- ÉèÖÃ¹ÖÎïµÈ¼¶
					local nPlayerLevel = GetLevel(sceneId, selfId)
					SetLevel(sceneId, MonsterId, nPlayerLevel - 2)

					-- ÉèÖÃÕâ¸ö¹ÖÎª²»ÄÜ¹¥»÷
					local curCampID = 8 --¶ÔÍæ¼Ò¶Ô¹Ö¶¼ÊÇÓÑºÃµÄÕóÓª
					SetNpcCamp(sceneId, MonsterId, curCampID)

					-- ±£´æÕâ¸ö¹ÖÎïµÄ±àºÅ,Í¬Ê±±£´æÒ»¸öÒÑ¾­·Å³ö¹ÖÎïµÄ±êÖ¾
					SetMissionByIndex(sceneId, selfId, misIndex, 4, MonsterId)
					SetMissionByIndex(sceneId, selfId, misIndex, 3, 999)
					
					local nXin = GetMissionParam(sceneId, selfId, misIndex, 6)
					local nMing = GetMissionParam(sceneId, selfId, misIndex, 7)
					
					local szXin = x300024_g_MonsterName[nXin] .. x300024_g_MonsterName[nMing]
					
					-- °Ñ¹ÖµÄÃû×ÖÉèÖÃÎª³ÆºÅ£¬È»ºóÃû×ÖÓÃÕâ¸ö±íÊ¾
					SetCharacterTitle(sceneId, MonsterId, GetName(sceneId, MonsterId))
					
					-- 
					SetCharacterName(sceneId, MonsterId, szXin)
					break
				end
			end

			BeginEvent(sceneId)
				AddText(sceneId, "TÕi hÕ chï dÕo ch½i mµt chút · ch² quý bang, không h« có ác ý.")
				AddNumText(sceneId, x300024_g_scriptId,"Hoài nghi ngß½i là gian tª, b¡t lÕi!", 10, 1)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)
		end
	end
end

--**********************************
--Ë¢ÐÂÊÂ¼þ
--**********************************
function x300024_OnEventRequest( sceneId, selfId, targetId, eventId )
		--CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
		return
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x300024_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x300024_g_eventList do
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
function x300024_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	--for i, findId in x300024_g_eventList do
	--	if missionScriptId == findId then
	--		UpdateEventList( sceneId, selfId, targetId )
	--		return
	--	end
	--end
end

function x300024_IsSkillLikeScript( sceneId, selfId)
	return 0;
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x300024_OnKillObject( sceneId, selfId, objdataId ,objId )

end
