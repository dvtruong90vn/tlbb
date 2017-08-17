-- ËÕÖÝNPC
-- ÔÀ³£Ô²
-- ÖÐÇïÈÎÎñ

x050001_g_scriptId = 050001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x050001_g_eventList = { 050017, 808064, 050020 } --050009,

x050001_g_ControlScript = 050009

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x050001_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		if CallScriptFunction( x050001_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
			AddText( sceneId, "Ðêm r¢m trung thu, hoa ð©p trång tròn, xóm ngõ bình thß¶ng bày the g¤m" ..
				"L¥u cao m¤y n½i di­n t¤u nhÕc quän huy«n. Nhßng chính trong giây phút này, tß¾ng sî cüa ta ðang c¯ g¡ng chiªn ð¤u v¾i gi£c · biên gi¾i" ..
				", m¾i có thª gi¾i rñc rÞ cüa chúng ta" )
		else
			AddText( sceneId, "Tô h÷c sî có câu viªt r¤t hay, ngß¶i có lúc bi hoan ly hþp.#r" ..
				"Trång có lúc tròn lúc khuyªt, vi®c cûng có lúc khó ki®n toàn. Tuy ðêm nay trång không tròn, nhßng " ..
				"trong lòng ta, trång và ngß¶i cûng gi¯ng nhau, luôn ðoàn viên" )
		end

		local i, eventId
		for i, eventId in x050001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
		--AddNumText(sceneId, x050001_g_scriptId, "ÖÐÇï»î¶¯½éÉÜ", 11, 1010);
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050001_OnDefaultEvent( sceneId, selfId, targetId )
	x050001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x050001_OnEventRequest( sceneId, selfId, targetId, eventId )
	local Num = GetNumText();
	if(Num == 1010) then
		BeginEvent(sceneId);
			AddNumText(sceneId, 808064, "#{ZQHD_20070916_010}", 11, 705 )
			AddNumText(sceneId, 050017, "#{ZQHD_20070916_011}", 11, 10);
			AddNumText(sceneId, 050020, "#{ZQHD_20070916_012}", 11, 102);
		EndEvent(sceneId);
		DispatchEventList(sceneId,selfId,targetId)
	end
	local i, findId
	for i, findId in x050001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x050001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x050001_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x050001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	local i, findId
	for i, findId in x050001_g_eventList do
		if missionScriptId == findId then
			x050001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end
