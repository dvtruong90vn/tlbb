--ËÕÖÝNPC
--Öì·æ
--ÆÕÍ¨

x001069_g_ScriptId	= 001069

--²Ù×÷¼¯
x001069_g_Key				=
{
	["inf"]	= 1000,	--ÖÆÔì½éÉÜ
	["ln"]	= 1,		--ÎÒÒªÑ§Ï°¾«Á¶Åä·½ - ¾«Á¶ - ÖýÔì
	["zh"]	= 2,		--ÎÒÒªÑ§Ï°¾«ÖÆÅä·½ - ¾«ÖÆ - ·ìÈÒ
	["gn"]	= 3,		--ÎÒÒªÑ§Ï°¾«¹¤Åä·½ - ¾«¹¤ - ¹¤ÒÕ
	["sh"]	= 4,		--¾«¹¤Åä·½ÉÌµê
}

--ÉÌµê±àºÅ
x001069_g_shoptableindex=196

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001069_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "10 nåm ð¬ rèn ra 1 cây kiªm, ð° cüa Chu Phong ta làm ra là t¯t nh¤t!" )
		if GetLevel( sceneId, selfId ) >= 10 then
			AddNumText( sceneId, x001069_g_ScriptId, "Ta mu¯n h÷c tinh luy®n (Rèn) ph¯i phß½ng", 2, x001069_g_Key["ln"] )
			AddNumText( sceneId, x001069_g_ScriptId, "Ta mu¯n h÷c tinh chª (May M£c) ph¯i phß½ng", 2, x001069_g_Key["zh"] )
			AddNumText( sceneId, x001069_g_ScriptId, "Ta mu¯n h÷c tinh công (Công Ngh®) ph¯i phß½ng", 2, x001069_g_Key["gn"] )
			AddNumText( sceneId, x001069_g_ScriptId, "Mua tinh công ph¯i phß½ng", 7, x001069_g_Key["sh"])
		end
		AddNumText( sceneId, x001069_g_ScriptId, "Gi¾i thi®u chª tÕo", 11, x001069_g_Key["inf"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001069_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	key	= GetNumText()

	if key == x001069_g_Key["inf"] then
		x001069_MsgBox( sceneId, selfId, targetId, "#{INTRO_ZHIZAO}" )
	
	elseif key == x001069_g_Key["ln"] then
		if QueryHumanAbilityLevel( sceneId, selfId, 46 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 46, 1 )
		end
		for i = 644, 703 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		x001069_MsgBox( sceneId, selfId, targetId, "Chúc m×ng các hÕ ðã h÷c hªt t¤t cä ph¯i phß½ng Tinh luy®n" )

	elseif key == x001069_g_Key["zh"] then
		if QueryHumanAbilityLevel( sceneId, selfId, 47 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 47, 1 )
		end
		for i = 704, 773 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		for i = 804, 883 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		x001069_MsgBox( sceneId, selfId, targetId, "Chúc m×ng các hÕ ðã h÷c hªt t¤t cä ph¯i phß½ng Tinh chª" )
	
	elseif key == x001069_g_Key["gn"] then
		if QueryHumanAbilityLevel( sceneId, selfId, 48 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 48, 1 )
		end
		for i = 774, 803 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		
		for i = 1064, 1075 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
 		
		x001069_MsgBox( sceneId, selfId, targetId, "Chúc m×ng các hÕ ðã h÷c hªt t¤t cä ph¯i phß½ng Tinh công" )
	elseif key == x001069_g_Key["sh"] then
		DispatchShopItem( sceneId, selfId, targetId, x001069_g_shoptableindex )
	end

end

--**********************************
--Message Box
--**********************************
function x001069_MsgBox( sceneId, selfId, targetId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end
