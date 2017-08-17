--ÍÚ³ö×ÏÌ´Ä¾
--Ñã±±

--½Å±¾ºÅ
x804009_g_scriptId = 804009
--ÈÎÎñºÅ
x804009_g_MissionId = 4009


local  PlayerName=""
--ÈÎÎñÃû
x804009_g_missionName="G² TØ Ğàn"
x804009_g_missionText_0="Tìm kiªm G² TØ Ğàn"
x804009_g_missionText_1="3 thß¾c quanh ğây"

x804009_g_missionText_2="Ngß½i là ai, ğªn c¯c lı này làm gì?"

x804009_g_MoneyBonus=80000
x804009_g_ItemBonus={{id=10101001,num=1}}
x804009_g_name	= ""

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x804009_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
	if( IsHaveMission(sceneId,selfId,x804009_g_MissionId) > 0)  then
		if x804009_CheckSubmit(sceneId,selfId) == 1 then
			BeginEvent(sceneId)
			AddText(sceneId,x804009_g_missionName)
			AddMoneyBonus( sceneId, x804009_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804009_g_scriptId,x804009_g_MissionId,1)
		else
			BeginEvent(sceneId)
			AddText(sceneId,x804009_g_missionName)
			AddText(sceneId,"Các hÕ không có ğÕo cø nhi®m vø!")
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804009_g_scriptId,x804009_g_MissionId,0)
		end
			
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x804009_CheckAccept(sceneId,selfId) > 0 then
		name = GetName(sceneId,selfId)
		playname = format("Các hÕ tên là: %s\n",name)
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent(sceneId)
		AddText(sceneId,x804009_g_missionName)
		AddText(sceneId,x804009_g_missionText_0)
		AddText(sceneId,playname)
		AddText(sceneId,x804009_g_missionText_1)
		AddMoneyBonus( sceneId, x804009_g_MoneyBonus )
		for i, item in x804009_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x804009_g_scriptId,x804009_g_MissionId)
  end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x804009_OnEnumerate( sceneId, selfId, targetId )
   if IsHaveMission(sceneId,selfId,x804009_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x804009_g_name then
			AddNumText(sceneId, x804009_g_scriptId,x804009_g_missionName);
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x804009_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x804009_g_scriptId,x804009_g_missionName)
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x804009_CheckAccept( sceneId, selfId )
	return 1	
end

--**********************************
--½ÓÊÜ
--**********************************
function x804009_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x804009_g_MissionId, x804009_g_scriptId, 0, 0, 0 )
end

--**********************************
--·ÅÆú
--**********************************
function x804009_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x804009_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x804009_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x804009_g_missionName)
     AddText(sceneId,x804009_g_missionText_2)
   AddMoneyBonus( sceneId, x804009_g_MoneyBonus )
    for i, item in x804009_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x804009_g_scriptId,x804009_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x804009_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x804009_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	if HaveItem(sceneId,selfId,20001003) >= 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x804009_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x804009_CheckSubmit( sceneId, selfId ) == 1 then
    BeginAddItem(sceneId)
		for i, item in x804009_g_ItemBonus do
			AddItem( sceneId,item.id, item.num )
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			if DelMission( sceneId,selfId,  x804009_g_MissionId ) ~=1 then
				return
			end
			if DelItem(sceneId,selfId,20001003,1) ~= 1 then
				return
			end
			
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
			MissionCom( sceneId,selfId,  x804009_g_MissionId )
			AddItemListToHuman(sceneId,selfId)
			AddMoney(sceneId,selfId,x804009_g_MoneyBonus );
			
			CallScriptFunction( 201001, "OnDefaultEvent",sceneId, selfId, targetId)
		else
		--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
		end
	        
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x804009_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x804009_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x804009_OnItemChanged( sceneId, selfId, itemdataId )
end








