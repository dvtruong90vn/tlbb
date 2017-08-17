--³ÇÊĞNPC
--Ò½Ôº

x805016_g_scriptId=805016
x805016_g_BuildingID11 = 10

--½Å±¾ºÅ
x805016_g_shenyi_scriptId = 64					-- ¡°½­ºşÓÎÒ½¡±½Å±¾
x805016_g_pet_dem_ScriptId	= 701603		-- ¡°ÕäÊŞÖÎÁÆ¡±½Å±¾

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x805016_OnDefaultEvent( sceneId, selfId,targetId )
	
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText
	
	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "Lß Hoàng Liên ta ğã t×ng l§p l¶i th«, ngoÕi tr× ngß¶i cüa bang hµi, ngß¶i bên ngoài dù có b®nh tØ thª nào ta cûng không cÑu."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	BeginEvent(sceneId)
		strText = "Ta là chü y xá này, lß½ng y nhß t× mçu, hu¯ng h° gì là ngß¶i cùng bang v¾i nhau, nªu nhß các hÕ cäm th¤y thích thú v¾i y thu§t, có th¬ ng°i ğàm ğÕo v¾i nhau."
		AddText(sceneId,strText);
		
		if CityGetBuildingLevel(sceneId, selfId, sceneId, CITY_BUILDING_YISHE) >=3 then
			AddNumText(sceneId,x805016_g_scriptId,"#GTr¸ li®u",6,0)
		end
		
		AddNumText(sceneId,x805016_g_scriptId,"Mua ğan bào chª dßşc",7,6)
		AddNumText(sceneId,x805016_g_scriptId,"Gi¾i thi®u y xá",11,7)
		--life Ìí¼ÓÕâ¸ö½¨ÖşÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805016_g_scriptId,x805016_g_BuildingID11,8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x805016_OnEventRequest( sceneId, selfId, targetId, eventId )

	--³èÎï
	if eventId == x805016_g_pet_dem_ScriptId then
		-- µ÷ÓÃ¡°ÕäÊŞÖÎÁÆ¡±½Å±¾
		CallScriptFunction( x805016_g_pet_dem_ScriptId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText() )	
		return
	end

	--´¦ÀíÒ½ÁÆÊÂ¼ş
	if eventId == x805016_g_shenyi_scriptId then
		-- µ÷ÓÃ¡°½­ºşÓÎÒ½¡±½Å±¾
		CallScriptFunction( x805016_g_shenyi_scriptId, "OnEventRequest",sceneId, selfId, targetId, GetNumText() )	
		return
	end

	--´¦ÀíÕâ¸ö½¨ÖşÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
	if eventId ~= x805016_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805016_g_scriptId, x805016_g_BuildingID11 )
		return
	end
	if GetNumText() == 0 then
		-- µ÷ÓÃ¡°½­ºşÓÎÒ½¡±½Å±¾
		CallScriptFunction( x805016_g_shenyi_scriptId, "UpdateEventList",sceneId, selfId, targetId )
	elseif GetNumText() == 1 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 0)
	elseif GetNumText() == 2 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 1)
	elseif GetNumText() == 3 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 2)
	elseif GetNumText() == 4 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 3)
	elseif GetNumText() == 5 then
		CityBuildingChange(sceneId, selfId, x805016_g_BuildingID11, 4)
	elseif GetNumText() == 6 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃ³ÇÊĞÉÌµê½çÃæ
			UICommand_AddInt(sceneId,x805016_g_BuildingID11)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 104)
	elseif GetNumText() == 7 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_YiShe}" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 8 then
		BeginEvent(sceneId)
		--life Ìí¼ÓÕâ¸ö½¨ÖşÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805016_g_BuildingID11 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end
end
