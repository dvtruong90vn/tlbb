--ÁÉÎ÷NPC
--Thành th¸ ´«ËÍÈË3
x021032_g_scriptId=021032
x021032_g_city0 = 284
x021032_g_city1 = 302
x021032_g_city2 = 676
x021032_g_city3 = 694

--**********************************

--ÊÂ¼þ½»»¥Èë¿Ú

--**********************************

function x021032_OnDefaultEvent( sceneId, selfId,targetId )

	strCity0Name = CityGetCityName(sceneId, selfId, x021032_g_city0)
	strCity1Name = CityGetCityName(sceneId, selfId, x021032_g_city1)
	strCity2Name = CityGetCityName(sceneId, selfId, x021032_g_city2)
	strCity3Name = CityGetCityName(sceneId, selfId, x021032_g_city3)


	BeginEvent(sceneId)

		AddText(sceneId,"Ta có th¬ giúp gì ngß½i?")
		
		if(strCity0Name ~= "") then AddNumText(sceneId,x021032_g_scriptId,"Thành th¸ 1 "..strCity0Name,9,0) end
		if(strCity1Name ~= "") then AddNumText(sceneId,x021032_g_scriptId,"Thành th¸ 2 "..strCity1Name,9,1) end
		if(strCity2Name ~= "") then AddNumText(sceneId,x021032_g_scriptId,"Thành th¸ 3 "..strCity2Name,9,2) end
		if(strCity3Name ~= "") then AddNumText(sceneId,x021032_g_scriptId,"Thành th¸ 4 "..strCity3Name,9,3) end

	EndEvent(sceneId)

	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************

--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî

--**********************************

function x021032_OnEventRequest( sceneId, selfId, targetId, eventId )

	if	(GetNumText()==0)	then	CityMoveToScene(sceneId, selfId, x021032_g_city0, 99, 152)
	elseif	(GetNumText()==1)	then	CityMoveToScene(sceneId, selfId, x021032_g_city1, 99, 152)
	elseif	(GetNumText()==2)	then	CityMoveToScene(sceneId, selfId, x021032_g_city2, 99, 152)
	elseif	(GetNumText()==3)	then	CityMoveToScene(sceneId, selfId, x021032_g_city3, 99, 152)
	end

end
