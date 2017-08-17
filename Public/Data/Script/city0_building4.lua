--Thành ph¯ NPC
--·À¾ß

x805011_g_scriptId=805011
x805011_g_BuildingID5 = 4

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x805011_OnDefaultEvent( sceneId, selfId,targetId )

	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText
	
	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "    Không phäi là ngß¶i cüa ta, không bán t¤t cä các quân trang hoàn mÛ"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	BeginEvent(sceneId)
		strText = "    Ta là chü ti®m døng cø phòng thân, có vi®c gì chï giáo? Nªu có vi®c gì liên quan ðªn døng cø phòng thân, tìm Châu Vô K¸ ta nh¤t ð¸nh không sai ðâu"
		AddText(sceneId,strText);
		AddNumText(sceneId,x805011_g_scriptId,"CØa hàng bí m§t",7,7)
		AddNumText(sceneId,x805011_g_scriptId,"Nh¶ chª tÕo",6,8)
		AddNumText(sceneId,x805011_g_scriptId,"Trang phøc bang hµi",6,9)
		AddNumText(sceneId,x805011_g_scriptId,"Gi¾i thi®u phòng cø phß¶ng",8,6)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x805011_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 1 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 0)
	elseif GetNumText() == 2 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 1)
	elseif GetNumText() == 3 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 2)
	elseif GetNumText() == 4 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 3)
	elseif GetNumText() == 5 then
		CityBuildingChange(sceneId, selfId, x805011_g_BuildingID5, 4)
	elseif GetNumText() == 6 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_FangJuFang}" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 7 then
		BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 8 then
		BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 9 then
		BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
end
