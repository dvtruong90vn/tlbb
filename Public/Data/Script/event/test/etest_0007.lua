--µöµ½Ë®¹íºÅ½Ç
--Ñã±±

--½Å±¾ºÅ
x804007_g_scriptId = 804007

--ÈÎÎñºÅ
x804007_g_MissionId = 4007

--Ä¿±êNPC

--ÈÎÎñÃû
local  PlayerName=""
x804007_g_missionName="Thüy QuÖ Hào Giác"
x804007_g_missionText_0="Thüy QuÖ Hào Giác"
x804007_g_missionText_1="Thüy QuÖ thß¶ng lui t¾i thüy vñc này, hãy tiêu di®t chúng!"
x804007_g_missionText_2="Ngß½i là ai? Ğªn c¯c lı này làm gì?"
x804007_g_MoneyBonus=166
x804007_g_ItemBonus={{id=10105001,num=1}}
x804007_g_name	= ""

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x804007_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
  if (IsMissionHaveDone(sceneId,selfId,x804007_g_MissionId) > 0 ) then
  	return
	elseif( IsHaveMission(sceneId,selfId,x804007_g_MissionId) > 0)  then
		if x804007_CheckSubmit(sceneId,targetId) == 1 then
			BeginEvent(sceneId)
			AddText(sceneId,x804007_g_missionName)
			AddMoneyBonus( sceneId, x804007_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804007_g_scriptId,x804007_g_MissionId,1)
		else
			BeginEvent(sceneId)
			AddText(sceneId,x804007_g_missionName)
			AddMoneyBonus( sceneId, x804007_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804007_g_scriptId,x804007_g_MissionId,0)
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x804007_CheckAccept(sceneId,selfId) > 0 then
		name = GetName(sceneId,selfId)
		playname = format("Các hÕ tên là :%s\n",name)
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent(sceneId)
		AddText(sceneId,x804007_g_missionName)
		AddText(sceneId,x804007_g_missionText_0)
		AddText(sceneId,playname)
		AddText(sceneId,x804007_g_missionText_1)
		AddMoneyBonus( sceneId, x804007_g_MoneyBonus )
		for i, item in x804007_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x804007_g_scriptId,x804007_g_MissionId)
  end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x804007_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x804007_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x804007_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x804007_g_name then
			AddNumText(sceneId, x804007_g_scriptId,x804007_g_missionName);
		end
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x804007_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x804007_g_scriptId,x804007_g_missionName)
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x804007_CheckAccept( sceneId, selfId )
	return 1	
end

--**********************************
--½ÓÊÜ
--**********************************
function x804007_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x804007_g_MissionId, x804007_g_scriptId, 0, 0, 0 )
end

--**********************************
--·ÅÆú
--**********************************
function x804007_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x804007_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x804007_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x804007_g_missionName)
     AddText(sceneId,x804007_g_missionText_2)
   AddMoneyBonus( sceneId, x804007_g_MoneyBonus )
    for i, item in x804007_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x804007_g_scriptId,x804007_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x804007_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x804007_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

		if HaveItem(sceneId,selfId,20001002) >= 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x804007_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x804007_CheckSubmit( sceneId, selfId ) == 1 then
    BeginAddItem(sceneId)
		for i, item in x804007_g_ItemBonus do
			AddItem( sceneId,item.id, item.num )
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			if DelMission( sceneId,selfId,  x804007_g_MissionId ) ~= 1 then
				return
			end
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
			MissionCom( sceneId,selfId,  x804007_g_MissionId )
			AddItemListToHuman(sceneId,selfId)
			AddMoney(sceneId,selfId,x804007_g_MoneyBonus );
			
			CallScriptFunction( 201001, "OnDefaultEvent",sceneId, selfId, targetId)
		else
		--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
		end
	        
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x804007_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x804007_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x804007_OnItemChanged( sceneId, selfId, itemdataId )
end








