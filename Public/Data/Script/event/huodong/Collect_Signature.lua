--Creator ◊Û¥∫Œ∞
-- ’ºØ«©√˚
----------------
--MisDescBegin
--Ω≈±æ∫≈
x808038_g_ScriptId = 808038;
--Ω” ‹»ŒŒÒNPC Ù–‘
x808038_g_Position_X=170.5004
x808038_g_Position_Z=122.5593

x808038_g_AccomplishNPC_Name="C¸ng Th·i V‚n"

--»ŒŒÒ∫≈
x808038_g_MissionId = 1130;

--»ŒŒÒƒø±Ínpc
x808038_g_Name 					= "C¸ng Th·i V‚n"
--»ŒŒÒπÈ¿‡
x808038_g_MissionKind			= 13 --¥Û¿Ì
--»ŒŒÒµ»º∂
x808038_g_MissionLevel		= 10000
-- «∑Ò «æ´”¢»ŒŒÒ
x808038_g_IfMissionElite	= 0
--»ŒŒÒ «∑Ò“—æ≠ÕÍ≥…
x808038_g_IsMissionOkFail	= 0		--»ŒŒÒ≤Œ ˝µƒµ⁄0Œª

--»ŒŒÒŒƒ±æ√Ë ˆ
x808038_g_MissionName			= "Thu Thßp Thi¨m Danh"
--»ŒŒÒ√Ë ˆ
x808038_g_MissionInfo			= "Thu thßp 15 H„o HÊu Thi¨m Danh, sau Û ™n C¸ng Th·i V‚n nhßn thﬂ∑ng!"
--»ŒŒÒƒø±Í
x808038_g_MissionTarget		= "#{SJQM_8825_20}"
--Œ¥ÕÍ≥…»ŒŒÒµƒnpc∂‘ª∞
x808038_g_ContinueInfo		= "Xem ra ngﬂΩi vÁn chﬂa ho‡n th‡nh ‡!"
--ÕÍ≥…»ŒŒÒnpcÀµµƒª∞
x808038_g_MissionComplete	= "L‡m  tØt l°m!"

x808038_g_city 				 	= 1		 --»ŒŒÒ≤Œ ˝µƒµ⁄1Œª

-- »ŒŒÒÕÍ≥…«Èøˆ,ƒ⁄»›∂ØÃ¨À¢–¬,’º”√»ŒŒÒ≤Œ ˝µƒµ⁄1Œª

x808038_g_Custom	= { {id="–„ thu thßp H‰o HÊu Thi¨m Danh",num=15} }
--MisDescEnd
----------------

--«©√˚¬ºµ¿æﬂID
x808038_g_SignatureList_id = 40004451; 
--«©√˚µ¿æﬂID
x808038_g_Signature_id = 40004452; 
--Ω±¿¯¥Û¿Ò∞¸ID
x808038_g_Gift_id = 30008052; 
--∂“ªªΩ±¿¯Ãÿ–ßID
x808038_g_Impact_id = 47;
--æ≠—ÈΩ±¿¯÷µ
x808038_g_Exp_Prize = 
{
18308,19336,20337,21344,22392,23412,24437,25505,26543,27624,  										-- 10->19
56219,58703,61269,63851,66448,68992,71619,74262,76921,79526,											-- 20->29
132458,136815,141197,145491,149923,154380,158861,163253,167784,172339,						-- 30->39
258033,264744,271376,278159,284979,291718,298610,305538,312384,319384,						-- 40->49
326421,333374,340483,347628,354809,361905,369159,376448,383652,391013,						-- 50->59
398411,405722,413192,420699,428117,435695,443310,450835,458522,466245,						-- 60->69
474004,481673,489504,497371,505147,513087,521063,528946,536994,545078,						-- 70->79
553069,561225,569418,577647,585780,594081,602418,610659,619069,627514,						-- 80->89
635862,644380,652934,661390,670016,678678,687241,695975,704745,713552,						-- 90->99
722258,731000,739915,748866,757714,766738,775797,784753,793885,803052,						-- 100->109
812116,821356,830632,839802,849151,858535,867813,877269,886762,896148,						-- 110->119
905712,915314,924806,934479,944189,953789,963570,973388,983242,992985,						-- 120->129
1002911,1012874,1022724,1032759,1042829,1052787,1062930,1073109,1083174,1093425,	-- 130->139
1103713,1113885,1124244,1134640,1144920,1155387,1165892,1176278,1186855,1197467,	-- 140->149
1207961,
}
 
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x808038_OnDefaultEvent( sceneId, selfId, targetId )
	local id = GetNumText();
	if id == 1 then 
		BeginEvent(sceneId)
			AddText(sceneId, "#{SJQM_8815_02}");	
			AddNumText(sceneId, x808038_g_ScriptId, "Tham gia ho’t µng Thu Thßp Thi¨m Danh", 6, 3);
			AddNumText(sceneId, x808038_g_ScriptId, "–±i ph•n thﬂ∑ng", 6, 4);
			EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 2 then --∞Ô÷˙
		BeginEvent(sceneId)
			AddText(sceneId, "#{SJQM_8815_08}");
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 3 then --≤Œº”ªÓ∂Ø
		-- µ»º∂>10?
		local lvl = GetLevel(sceneId, selfId);
		if lvl < 10 then
			x808038_ReturnMsg(sceneId, selfId, targetId, "#{SJQM_8815_03}");
			return
		end
		-- “—Ω”«©√˚»ŒŒÒ£ø
		if IsHaveMission(sceneId, selfId, x808038_g_MissionId) > 0 then
			x808038_ReturnMsg(sceneId, selfId, targetId, "#{SJQM_8815_04}");
			return		
		end
		-- »ŒŒÒ“—¬˙£ø
		if IsMissionFull(sceneId, selfId) == 1 then
			x808038_ReturnMsg(sceneId, selfId, targetId, "#{SJQM_8815_05}");
			return			
		end
		-- ±≥∞¸»ŒŒÒ¿∏”–ø’º‰£ø
		if LuaFnGetTaskItemBagSpace(sceneId, selfId) == 0 then
			x808038_ReturnMsg(sceneId, selfId, targetId, "#{SJQM_8815_06}");
			return		
		end
		--  ’µΩ»ŒŒÒ
		local ret = AddMission( sceneId,selfId, x808038_g_MissionId, x808038_g_ScriptId, 0, 0, 0 );
		if ret < 1 then
			return
		end	
		-- Ãıº˛¬˙◊„£¨∏¯«©√˚¬ºµ¿æﬂ
		ret = TryRecieveItem( sceneId, selfId, x808038_g_SignatureList_id, QUALITY_MUST_BE_CHANGE);
		if ret == -1 then
			return  -- ∏¯µ¿æﬂ ß∞‹	
		end	
		--»’÷æ
		AuditJoinCollectSignature(sceneId, selfId);
		-- ∑µªÿ–≈œ¢
		BeginEvent(sceneId, selfId)
			AddText(sceneId, "#{SJQM_8815_07}");
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);	
	elseif id == 4 then
		-- ±æ÷‹∂“Ω±π˝£ø
		local weekTime = GetWeekTime();
		local diJiTian = GetTodayWeek();
		if diJiTian == 0 then  -- –«∆⁄“ª◊˜Œ™“ª÷‹ø™ º
			weekTime = weekTime - 1;
		end
		if GetMissionData(sceneId, selfId, MD_SIGNATURE_GETPRIZE_TIME) == weekTime then
			x808038_ReturnMsg(sceneId, selfId, targetId, "#{SJQM_8815_16}");
			return					
		end
		-- ≤Œº”ªÓ∂Ø¡À¬£ø
		if IsHaveMission(sceneId, selfId, x808038_g_MissionId) == 0 then
			x808038_ReturnMsg(sceneId, selfId, targetId, "#{SJQM_8815_17}");
			return		
		end
		-- πª15∏ˆ«©√˚£ø°¢
		if GetItemCount(sceneId, selfId, x808038_g_Signature_id) < 15 then
		  x808038_ReturnMsg(sceneId, selfId, targetId, "#{SJQM_8815_18}");
		  return
		end
		-- …œÀ¯£ø
		if LuaFnGetAvailableItemCount(sceneId, selfId, x808038_g_Signature_id) < 15 then
		  x808038_ReturnMsg(sceneId, selfId, targetId, "#{ResultText_158}");
		  return			
		end
		-- ±≥∞¸µ¿æﬂ¿∏”–ø’º‰£ø
		if LuaFnGetPropertyBagSpace(sceneId, selfId) == 0 then
			x808038_ReturnMsg(sceneId, selfId, targetId, "#{SJQM_8819_20}");
			return		
		end
		--ø€≥˝«©√˚
		if LuaFnDelAvailableItem(sceneId, selfId, x808038_g_Signature_id, 15) == 0 then
			x808038_ShowMsg(sceneId, selfId, "Kh§u tr◊ Thi¨m Danh th§t b’i!");
		  return
		end
		--ø€≥˝«©√˚≤æ
		if LuaFnDelAvailableItem(sceneId, selfId, x808038_g_SignatureList_id, 1) == 0 then
			x808038_ShowMsg(sceneId, selfId, "Kh§u tr◊ Thi¨m Danh L¯c th§t b’i!");
		  return
		end		
		-- Ω±¿¯æ≠—È
		local lvl = GetLevel(sceneId, selfId);
		if lvl > 9 and lvl < 119 then
			LuaFnAddExp(sceneId, selfId, x808038_g_Exp_Prize[lvl-9]);
		end
		-- ∏¯¥Û¿Ò∞¸
		ret = TryRecieveItem( sceneId, selfId, x808038_g_Gift_id, QUALITY_MUST_BE_CHANGE);
		if ret == -1 then
			x808038_ShowMsg(sceneId, selfId, "Nhßn thﬂ∑ng th§t b’i!");		
			return  -- µ¿æﬂ ß∞‹	
		end
		-- ≤•∑≈Ãÿ–ß
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x808038_g_Impact_id, 0);
		-- …Ë÷√∂“Ω± ±º‰
		SetMissionData(sceneId, selfId, MD_SIGNATURE_GETPRIZE_TIME, weekTime);
		-- …æ≥˝»ŒŒÒ
		DelMission(sceneId, selfId, x808038_g_MissionId);

		-- ∑µªÿœ˚œ¢
		BeginEvent(sceneId)
			AddText(sceneId, "#{SJQM_8815_19}");
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
		-- π„≤•
		local playerName = GetName(sceneId, selfId);
		if playerName ~= nil then
			str = format("#{_INFOUSR%s}#{SJQM_8815_01}", playerName); 
			AddGlobalCountNews( sceneId, str )
		end		
	end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x808038_OnEnumerate( sceneId, selfId, targetId )	
	AddNumText(sceneId, x808038_g_ScriptId, "Ho’t µng Thu Thßp Thi¨m Danh", 6, 1);
	AddNumText(sceneId, x808038_g_ScriptId, "V´ ho’t µng Thu Thßp Thi¨m Danh", 0, 2);
end

--**********************************
--∑≈∆˙£¨Ωˆπ©◊”»ŒŒÒµ˜”√
--**********************************
function x808038_OnAbandon( sceneId, selfId )
	local itemNum = LuaFnGetAvailableItemCount(sceneId, selfId, x808038_g_SignatureList_id);
	local itemNum2 = LuaFnGetAvailableItemCount(sceneId, selfId, x808038_g_Signature_id);
	if itemNum >= 1 then
		LuaFnDelAvailableItem( sceneId, selfId, x808038_g_SignatureList_id, itemNum );
	end
	if itemNum2 >= 1 then
		LuaFnDelAvailableItem( sceneId, selfId, x808038_g_Signature_id, itemNum2 );
	end
  if IsHaveMission(sceneId, selfId, x808038_g_MissionId) > 0 then
  	DelMission( sceneId, selfId, x808038_g_MissionId )
  end
  return 0;
end

--**********************************
--–≈œ¢Ã· æ
--**********************************
function x808038_ShowMsg( sceneId, selfId, msg )
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchMissionTips(sceneId, selfId);
end

--**********************************
--NPC∑µªÿœ˚œ¢
--**********************************

function x808038_ReturnMsg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end
