--Thành ph¯ NPC
--Îä¾ß

x805007_g_scriptId=805007
x805007_g_BuildingID15 = 6

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x805007_OnDefaultEvent( sceneId, selfId,targetId )
	
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText
	
	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "    Không phäi là ngß¶i cüa ta, không bán ra ngoài t¤t cä các loÕi binh khí."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	BeginEvent(sceneId)
		strText = "    Ta là chü cØa hàng binh khí, bäo kiªm ði v¾i anh hùng, nhæng vi®c liên quan ðªn binh khí trong thiên hÕ ð«u có th¬ tìm ta, ð«u là ngß¶i mµt nhà mà.."
		AddText(sceneId,strText)
		AddNumText(sceneId,x805007_g_scriptId,"CØa hàng bí m§t",7,8)
		AddNumText(sceneId,x805007_g_scriptId,"Nh¶ chª tÕo",6,9)
		AddNumText(sceneId,x805007_g_scriptId,"Gi¾i thi®u cØa hàng binh cø",11,7)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x805007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 0)
	elseif GetNumText() == 2 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 1)
	elseif GetNumText() == 3 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 2)
	elseif GetNumText() == 4 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 3)
	elseif GetNumText() == 5 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 4)
	elseif GetNumText() == 6 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --µ÷ÓÃThành ph¯ ÉÌµê½çÃæ
			UICommand_AddInt(sceneId,x805007_g_BuildingID15)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 104)
	elseif GetNumText() == 7 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_WuJuFang}" )		
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
