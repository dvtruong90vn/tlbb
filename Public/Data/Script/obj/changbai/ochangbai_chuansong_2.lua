--³¤°×NPC
--³ÇÊÐ´«ËÍÈË2
x022031_g_scriptId=022031

x022031_g_city0 = 253
x022031_g_city1 = 271
x022031_g_city2 = 645
x022031_g_city3 = 663

--**********************************

--ÊÂ¼þ½»»¥Èë¿Ú

--**********************************

function x022031_OnDefaultEvent( sceneId, selfId,targetId )

	strCity0Name = CityGetCityName(sceneId, selfId, x022031_g_city0)
	strCity1Name = CityGetCityName(sceneId, selfId, x022031_g_city1)
	strCity2Name = CityGetCityName(sceneId, selfId, x022031_g_city2)
	strCity3Name = CityGetCityName(sceneId, selfId, x022031_g_city3)


	BeginEvent(sceneId)

		AddText(sceneId,"Ta có th¬ giúp gì cho ngß½i?")
		
		if(strCity0Name ~= "") then AddNumText(sceneId,x022031_g_scriptId,"Thành ph¯ 1 "..strCity0Name,9,0) end
		if(strCity1Name ~= "") then AddNumText(sceneId,x022031_g_scriptId,"Thành ph¯ 2 "..strCity1Name,9,1) end
		if(strCity2Name ~= "") then AddNumText(sceneId,x022031_g_scriptId,"Thành ph¯ 3 "..strCity2Name,9,2) end
		if(strCity3Name ~= "") then AddNumText(sceneId,x022031_g_scriptId,"Thành ph¯ 4 "..strCity3Name,9,3) end

	EndEvent(sceneId)

	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************

--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî

--**********************************

function x022031_OnEventRequest( sceneId, selfId, targetId, eventId )

	if	(GetNumText()==0)	then	CityMoveToScene(sceneId, selfId, x022031_g_city0, 99, 152)
	elseif	(GetNumText()==1)	then	CityMoveToScene(sceneId, selfId, x022031_g_city1, 99, 152)
	elseif	(GetNumText()==2)	then	CityMoveToScene(sceneId, selfId, x022031_g_city2, 99, 152)
	elseif	(GetNumText()==3)	then	CityMoveToScene(sceneId, selfId, x022031_g_city3, 99, 152)
	end

end
