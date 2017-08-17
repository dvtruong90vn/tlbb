-- created by ×ó´ºÎ°

x400958_g_ScriptId = 400958; --½Å±¾ºÅ
x400958_g_name	="Xa Truy«n Trí";

--´«ËÍÄ¿±ê
x400958_g_transfer_target =
{
	[1] = {x = 217, z = 339, scene_num = 0}, 		--ÂåÑô
	[2] = {x = 333, z = 249, scene_num = 1}, 		--ËÕÖÝ
	[3] = {x = 294, z = 90, scene_num = 186}, 	--Â¥À¼
	[4] = {x = 206, z = 266, scene_num = 34}, 	--ÄÏº£
	[5] = {x = 186, z = 43, scene_num = 28},		--ÄÏÚ¯
	[6] = {x = 158, z = 113, scene_num = 22}, 	--³¤°×É½
}

-- ÊÕ·Ñ½ð¶î
x400958_g_transfer_cost = 5000; -- 50Òø½»×Ó

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x400958_OnDefaultEvent( sceneId, selfId, targetId )
	x400958_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x400958_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_01}" );
		AddNumText(sceneId, x400958_g_ScriptId, "LÕc Dß½ng", 9, 1);
		AddNumText(sceneId, x400958_g_ScriptId, "Tô Châu", 9, 2);
		AddNumText(sceneId, x400958_g_ScriptId, "Lâu Lan", 9, 3);
		AddNumText(sceneId, x400958_g_ScriptId, "Nam Häi", 9, 4);
		AddNumText(sceneId, x400958_g_ScriptId, "Nam Chiêu", 9, 5);
		AddNumText(sceneId, x400958_g_ScriptId, "Trß¶ng BÕch S½n", 9, 6);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x400958_OnEventRequest( sceneId, selfId, targetId, eventId )
	--10¼¶
	if GetLevel(sceneId, selfId) < 10 then
		BeginEvent( sceneId )
			AddText( sceneId, "Sau khi ðÕt c¤p 10 m¾i có th¬ di chuy¬n ðªn các vùng!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )	
		return	
	end
	--ÅÜÉÌÏà¹Ø
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Trên ngß¶i ngß½i có Ngân Phiªu, ðang · trÕng thái thß½ng nhân, không th¬ d¸ch chuy¬n b¢ng chÑc nång này!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--¶ÓÎéÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "Xin l²i, ðß¶ng sá xa xôi, ta không th¬ tiªp nh§n cä t± ðµi, hãy r¶i t± ðµi r°i hãy ðªn g£p ta!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "Ngß½i ðang trong trÕng thái Tào V§n, ta không th¬ giúp ngß½i ðßþc!")
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
				AddNumText(sceneId, x400958_g_ScriptId, "Xác ð¸nh", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400958_g_ScriptId, "Xác ð¸nh", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400958_g_ScriptId, "Xác ð¸nh", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400958_g_ScriptId, "Xác ð¸nh", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400958_g_ScriptId, "Xác ð¸nh", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400958_g_ScriptId, "Xác ð¸nh", 0, 61);
			end
			AddNumText(sceneId, x400958_g_ScriptId, "Hüy bö", 0, 100);
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
		if index == 3 then
			if GetLevel(sceneId, selfId) < 75 then
				BeginEvent(sceneId)
					AddText(sceneId, "C¤p ðµ cüa ngß½i không ðü 75, không th¬ tiªn vào!")
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
		if index == 3 then
			minLevel = 75
		end
		if LuaFnGetDRideFlag(sceneId, selfId) == 1 then
			local objId = LuaFnGetDRideTargetID(sceneId, selfId);
			if objId ~= -1 and GetLevel(sceneId, objId) < minLevel then
				local Tip = format("#{CQTS_90227_1}%d#{CQTS_90227_2}", minLevel)
				x400958_NotifyFailTips( sceneId, selfId, targetId, Tip )
				return					
			end
		end		
		--[/tx44121]
				
		local pos_x = x400958_g_transfer_target[index]["x"];
		local pos_z = x400958_g_transfer_target[index]["z"];
		local scene_num = x400958_g_transfer_target[index]["scene_num"];

		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--Ç®¹»Âð£¿
		if (nMoneyJZ + nMoney) >= x400958_g_transfer_cost then 
				
			-- ÊÕ·Ñ
			-- Ê¹ÓÃ´øÓÅÏÈ¼¶µÄ½ðÇ®ÏûºÄº¯Êý					
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400958_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "ÊÕ·ÑÊ§°Ü£¡");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
				CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z, minLevel); 
			end

		-- Ç®²»¹»
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i không ðü ti«n!");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return

		end
	end	
end
--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x400958_NotifyFailTips( sceneId, selfId, targetId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
