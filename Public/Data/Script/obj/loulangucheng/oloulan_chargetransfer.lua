-- created by ×ó´ºÎ°

x400959_g_ScriptId = 400959; --½Å±¾ºÅ
x400959_g_name	="Xa Truy«n Bình";

--´«ËÍÄ¿±ê
x400959_g_transfer_target =
{
	[1] = {x = 217, z = 339, scene_num = 0}, 		--LÕc Dß½ng
	[2] = {x = 333, z = 249, scene_num = 1}, 		--Tô Châu
	[3] = {x = 260, z = 85, scene_num = 2}, 		--ÐÕi Lý
	[4] = {x = 206, z = 266, scene_num = 34}, 	--Nam Häi
	[5] = {x = 186, z = 43, scene_num = 28},		--Nam Chiêu
	[6] = {x = 158, z = 113, scene_num = 22}, 	--Trß¶ng B?ch S½n
}

-- ÊÕ·Ñ½ð¶î
x400959_g_transfer_cost = 5000; -- 50Òø½»×Ó

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x400959_OnDefaultEvent( sceneId, selfId, targetId )
	x400959_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x400959_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_01}" );
		AddNumText(sceneId, x400959_g_ScriptId, "LÕc Dß½ng", 9, 1);
		AddNumText(sceneId, x400959_g_ScriptId, "Tô Châu", 9, 2);
		AddNumText(sceneId, x400959_g_ScriptId, "ÐÕi Lý", 9, 3);
		AddNumText(sceneId, x400959_g_ScriptId, "Nam Häi", 9, 4);
		AddNumText(sceneId, x400959_g_ScriptId, "Nam Chiêu", 9, 5);
		AddNumText(sceneId, x400959_g_ScriptId, "Trß¶ng BÕch S½n", 9, 6);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x400959_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÅÜÉÌÏà¹Ø
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Trên ngß¶i ngß½i có ngân phiªu, ta không th¬ giúp ngß½i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--¶ÓÎéÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ðß¶ng xá xa xôi hi¬m tr·, ta không th¬ ðßa cä ðµi ngß½i ði ðßþc, hãy thoát khöi trÕng thái theo ðµi r°i ðªn g£p ta" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "  Ngß½i có thuÖ v§n trong khoang chÑa, ta không giúp ngß¶i ði ðßþc")
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
				AddNumText(sceneId, x400959_g_ScriptId, "Xác Nh§n", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác Nh§n", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác Nh§n", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác Nh§n", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác Nh§n", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400959_g_ScriptId, "Xác Nh§n", 0, 61);
			end
			AddNumText(sceneId, x400959_g_ScriptId, "HuÖ bö", 0, 100);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 100 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	else
		local index = floor(id/10);
		local pos_x = x400959_g_transfer_target[index]["x"];
		local pos_z = x400959_g_transfer_target[index]["z"];
		local scene_num = x400959_g_transfer_target[index]["scene_num"];
			
		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--Ç®¹»Âð£¿
		if (nMoneyJZ + nMoney) >= x400959_g_transfer_cost then 
				
			-- ÊÕ·Ñ
			-- Ê¹ÓÃ´øÓÅÏÈ¼¶µÄ½ðÇ®ÏûºÄº¯Êý
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400959_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Thu phí th¤t bÕi");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
				-- ´«ËÍ
				CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z); 
			end

		-- Ç®²»¹»
		else
			BeginEvent(sceneId)
				AddText(sceneId, "S¯ ti«n mang theo không ðü");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return

		end
	end	
end
