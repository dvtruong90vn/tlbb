-- created by ×ó´ºÎ°

x400962_g_ScriptId = 400962; --½Å±¾ºÅ
x400962_g_name	="Xa Truy«n Häi";

--´«ËÍÄ¿±ê
x400962_g_transfer_target =
{
	[1] = {x = 217, z = 339, scene_num = 0}, 		--LÕc Dß½ng
	[2] = {x = 333, z = 249, scene_num = 1}, 		--Tô Châu
	[3] = {x = 260, z = 85, scene_num = 2}, 		--ÐÕi Lý
	[4] = {x = 294, z = 90, scene_num = 186}, 	--Â¥À¼
	[5] = {x = 206, z = 266, scene_num = 34}, 	--ÄÏº£
	[6] = {x = 186, z = 43, scene_num = 28},		--ÄÏÚ¯
}

-- ÊÕ·Ñ½ð¶î
x400962_g_transfer_cost = 5000; -- 50Òø½»×Ó

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x400962_OnDefaultEvent( sceneId, selfId, targetId )
	x400962_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x400962_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_02}" );
		AddNumText(sceneId, x400962_g_ScriptId, "LÕc Dß½ng", 9, 1);
		AddNumText(sceneId, x400962_g_ScriptId, "Tô Châu", 9, 2);
		AddNumText(sceneId, x400962_g_ScriptId, "ÐÕi Lý", 9, 3);
		AddNumText(sceneId, x400962_g_ScriptId, "Lâu Lan", 9, 4);
		AddNumText(sceneId, x400962_g_ScriptId, "Nam Häi", 9, 5);
		AddNumText(sceneId, x400962_g_ScriptId, "Nam Chiêu", 9, 6);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x400962_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÅÜÉÌÏà¹Ø
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Xin thÑ l²i trên ngß¶i các hÕ ðang giæ ngân phiªu ta không th¬ giúp ðßþc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--¶ÓÎéÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "Phi thß¶ng th§t có l²i, b·i vì ðß¶ng xá quá mÑc xa xôi, chúng ta n½i này v§n chuy¬n nång lñc hæu hÕn, cho nên không tiªp thø t± ðµi truy«n t¯ng, thïnh ngài r¶i ði ðµi ngû mµt mình tiªn ðªn ði!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "Ngß½i có thuÖ v§n khoang chÑa hàng trong ngß¶i, chúng ta trÕm d¸ch không th¬ cho ngß½i cung c¤p truy«n t¯ng phøc vø.")
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--
	local id = GetNumText();
	if id >=1 and id <= 6 then
		BeginEvent(sceneId)
			--"±¾´Î´«ËÍÊÕÈ¡50Òø½»×Ó£¬ÄãÒª´«ËÍÂð£¿"
			AddText(sceneId, "#{FFCS_081210_1}")
			if id == 1 then	
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400962_g_ScriptId, "Xác nh§n", 0, 61);
			end
			AddNumText(sceneId, x400962_g_ScriptId, "Hüy bö", 0, 100);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 100 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	else
		local index = floor(id/10);
		--Â¥À¼75¼¶ÏÞÖÆ
		if index == 4 then
			if GetLevel(sceneId, selfId) < 75 then
				BeginEvent(sceneId)
					AddText(sceneId, "C¤p b§c cüa ngß½i không ðªn 75, không th¬ d¸ch chuy¬n.")
				EndEvent()
				DispatchEventList(sceneId, selfId, targetId)
				return
			end
			--Í¬Æï´øÐ¡ºÅÏÞÖÆ
			if LuaFnGetDRideFlag(sceneId, selfId) == 1 then
				local objId = LuaFnGetDRideTargetID(sceneId, selfId);
				if objId ~= -1 and GetLevel(sceneId, objId) < 75 then
					BeginEvent(sceneId)
						AddText(sceneId, "#{SRCS_090203_1}")
					EndEvent()
					DispatchEventList(sceneId, selfId, targetId)
					return					
				end
			end
		end
		--[tx44121]bugÕâÀïÃ»ÓÐÉèÖÃ×îµÍ¼¶±ð£¬µ¼ÖÂµÍ¼¶±ð¿ÉÍ¨¹ýË«Æï³Ë½ø¸ß¼¶±ð³¡¾°
		local minLevel = 10
		if index == 4 then
			minLevel = 75
		end
		if LuaFnGetDRideFlag(sceneId, selfId) == 1 then
			local objId = LuaFnGetDRideTargetID(sceneId, selfId);
			if objId ~= -1 and GetLevel(sceneId, objId) < minLevel then
			  local Tip = format("#{CQTS_90227_1}%d#{CQTS_90227_2}", minLevel)					
				x400962_NotifyFailTips( sceneId, selfId, targetId, Tip )
				return					
			end
		end	
    --[/tx44121]
    		
		local pos_x = x400962_g_transfer_target[index]["x"];
		local pos_z = x400962_g_transfer_target[index]["z"];
		local scene_num = x400962_g_transfer_target[index]["scene_num"];

		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--Ç®¹»Âð£¿
		if (nMoneyJZ + nMoney) >= x400962_g_transfer_cost then 
				
			-- ÊÕ·Ñ
			-- Ê¹ÓÃ´øÓÅÏÈ¼¶µÄ½ðÇ®ÏûºÄº¯Êý					
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400962_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Thu phí th¤t bÕi!");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
  			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z, minLevel); 
			end

		-- Ç®²»¹»
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Không ðü ngân lßþng.");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return

		end
	end	
end
--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x400962_NotifyFailTips( sceneId, selfId, targetId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
