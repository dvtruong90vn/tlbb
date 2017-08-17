--²ÔÉ½NPC
--³ÇÊÐ´«ËÍÈË1
x025030_g_scriptId=025030

x025030_g_city0 = 209
x025030_g_city1 = 227
x025030_g_city2 = 601
x025030_g_city3 = 619

--**********************************

--ÊÂ¼þ½»»¥Èë¿Ú

--**********************************

function x025030_OnDefaultEvent( sceneId, selfId,targetId )

		strCity0Name = CityGetCityName(sceneId, selfId, x025030_g_city0)
		strCity1Name = CityGetCityName(sceneId, selfId, x025030_g_city1)
		strCity2Name = CityGetCityName(sceneId, selfId, x025030_g_city2)
		strCity3Name = CityGetCityName(sceneId, selfId, x025030_g_city3)


	BeginEvent(sceneId)

		AddText(sceneId,"Có gì ta có th¬ giúp ðßþc ngß½i không?")
		
			if(strCity0Name ~= "") then AddNumText(sceneId,x025030_g_scriptId,"Thành ph¯ 1 "..strCity0Name,9,0) end
			if(strCity1Name ~= "") then AddNumText(sceneId,x025030_g_scriptId,"Thành ph¯ 2 "..strCity1Name,9,1) end
			if(strCity2Name ~= "") then AddNumText(sceneId,x025030_g_scriptId,"Thành ph¯ 3 "..strCity2Name,9,2) end
			if(strCity3Name ~= "") then AddNumText(sceneId,x025030_g_scriptId,"Thành ph¯ 4 "..strCity3Name,9,3) end

	EndEvent(sceneId)

	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************

--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî

--**********************************

function x025030_OnEventRequest( sceneId, selfId, targetId, eventId )

	if	(GetNumText()==0)	then	CityMoveToScene(sceneId, selfId, x025030_g_city0, 99, 152)
	elseif	(GetNumText()==1)	then	CityMoveToScene(sceneId, selfId, x025030_g_city1, 99, 152)
	elseif	(GetNumText()==2)	then	CityMoveToScene(sceneId, selfId, x025030_g_city2, 99, 152)
	elseif	(GetNumText()==3)	then	CityMoveToScene(sceneId, selfId, x025030_g_city3, 99, 152)
	end

end
