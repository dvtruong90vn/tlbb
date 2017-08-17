--¶ýº£NPC
--³ÇÊÐ´«ËÍÈË2
x024031_g_scriptId=024031

x024031_g_city0 = 246
x024031_g_city1 = 264
x024031_g_city2 = 638
x024031_g_city3 = 656

--**********************************

--ÊÂ¼þ½»»¥Èë¿Ú

--**********************************

function x024031_OnDefaultEvent( sceneId, selfId,targetId )

	strCity0Name = CityGetCityName(sceneId, selfId, x024031_g_city0)
	strCity1Name = CityGetCityName(sceneId, selfId, x024031_g_city1)
	strCity2Name = CityGetCityName(sceneId, selfId, x024031_g_city2)
	strCity3Name = CityGetCityName(sceneId, selfId, x024031_g_city3)


	BeginEvent(sceneId)

		AddText(sceneId,"Ta có th¬ giúp gì ðßþc ngß½i?")
		
		if(strCity0Name ~= "") then AddNumText(sceneId,x024031_g_scriptId,"Thành ph¯ 1 "..strCity0Name,9,0) end
		if(strCity1Name ~= "") then AddNumText(sceneId,x024031_g_scriptId,"Thành ph¯ 2 "..strCity1Name,9,1) end
		if(strCity2Name ~= "") then AddNumText(sceneId,x024031_g_scriptId,"Thành ph¯ 3 "..strCity2Name,9,2) end
		if(strCity3Name ~= "") then AddNumText(sceneId,x024031_g_scriptId,"Thành ph¯ 4 "..strCity3Name,9,3) end

	EndEvent(sceneId)

	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************

--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî

--**********************************

function x024031_OnEventRequest( sceneId, selfId, targetId, eventId )

	if	(GetNumText()==0)	then	CityMoveToScene(sceneId, selfId, x024031_g_city0, 99, 152)
	elseif	(GetNumText()==1)	then	CityMoveToScene(sceneId, selfId, x024031_g_city1, 99, 152)
	elseif	(GetNumText()==2)	then	CityMoveToScene(sceneId, selfId, x024031_g_city2, 99, 152)
	elseif	(GetNumText()==3)	then	CityMoveToScene(sceneId, selfId, x024031_g_city3, 99, 152)
	end

end
