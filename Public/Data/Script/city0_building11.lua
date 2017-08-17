--³ÇÊĞNPC
--¾Æµê

x805018_g_scriptId=805018
x805018_g_BuildingID13 = 2

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x805018_OnDefaultEvent( sceneId, selfId,targetId )

	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText
	
	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "Không phäi là ngß¶i cüa ta, không tiªp rßşu th¸t."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	BeginEvent(sceneId)
		strText = "Ta là chü ti®m rßşu, hòa khí sinh tài, m÷i ngß¶i ğ«u là ngß¶i quen, có vi®c gì liên quan ğªn n¤u nß¾ng ğ×ng ngÕi ğªn tìm ta."
		AddText(sceneId,strText);
		AddNumText(sceneId,x805018_g_scriptId,"Thñc ğ½n món n¤u nß¾ng",7,6)
		AddNumText(sceneId,x805018_g_scriptId,"Gi¾i thi®u ti®m rßşu",11,7)
		--life Ìí¼ÓÕâ¸ö½¨ÖşÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805018_g_scriptId,x805018_g_BuildingID13,8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x805018_OnEventRequest( sceneId, selfId, targetId, eventId )
	--´¦ÀíÕâ¸ö½¨ÖşÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
	if eventId ~= x805018_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805018_g_scriptId, x805018_g_BuildingID13 )
		return
	end
	
	if GetNumText() == 1 then
		CityBuildingChange(sceneId, selfId, x805018_g_BuildingID13, 0)
	elseif GetNumText() == 2 then
		CityBuildingChange(sceneId, selfId, x805018_g_BuildingID13, 1)
	elseif GetNumText() == 3 then
		CityBuildingChange(sceneId, selfId, x805018_g_BuildingID13, 2)
	elseif GetNumText() == 4 then
		CityBuildingChange(sceneId, selfId, x805018_g_BuildingID13, 3)
	elseif GetNumText() == 5 then
		CityBuildingChange(sceneId, selfId, x805018_g_BuildingID13, 4)
	elseif GetNumText() == 6 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ³ÇÊĞÉÌµê½çÃæ
			UICommand_AddInt(sceneId,x805018_g_BuildingID13)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 104)
	elseif GetNumText() == 7 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_JiuSi}" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 8 then
		BeginEvent(sceneId)
		--life Ìí¼ÓÕâ¸ö½¨ÖşÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805018_g_BuildingID13 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end
end
