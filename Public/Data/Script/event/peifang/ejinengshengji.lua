--Éı¼¶¼¼ÄÜµÄ½Å±¾

--½Å±¾ºÅ
x713500_g_ScriptId = 713500

x713500_g_AbilityName = {}
x713500_g_AbilityDescription = {}
x713500_g_StudyCost = {}

x713500_g_AbilityName[1] = "N¤u nß¾ng"
x713500_g_AbilityName[2] = "Y h÷c"
x713500_g_AbilityName[3] = "Gia công"
x713500_g_AbilityName[8] = "Khai khoáng"
x713500_g_AbilityName[9] = "Hái dßşc"
x713500_g_AbilityName[10] = "Câu cá"
x713500_g_AbilityName[11] = "Tr°ng tr÷t"
x713500_g_AbilityDescription[1] = "Nhæng thÑ làm ra ğ«u có th¬ ån ğßşc"
x713500_g_AbilityDescription[2] = "Y h÷c không th¬ h÷c trong 1 s¾m 1 chi«u"
x713500_g_AbilityDescription[3] = "KÛ nång c¥n có khi chª tÕo trang b¸, hşp thành Bäo ThÕch"
x713500_g_AbilityDescription[8] = "Khai khoáng tuy v¤t vä, nhßng là mµt ngh« hái ra ti«n"
x713500_g_AbilityDescription[9] = "Ta có th¬ truy«n cho ngß¶i bän lînh phân bi®t thäo dßşc, không c¥n m¤t công h÷c Ğông Y, vçn có th¬ hái ra ti«n"
x713500_g_AbilityDescription[10] = "Ngß¶i không kiên nhçn không th¬ b¡t ğßşc cá l¾n"
x713500_g_AbilityDescription[11] = "Làm 1 chü nông trang vui vë"


--²âÊÔÊ±£¬Éı¼¶Ê¹ÓÃÍ¬ÑùµÄ»¨·Ñ¶¨Òå£¬ÕıÊ½ÖÆ×÷µÄÊ±ºòÈç¹ûĞèÒª¿ÉÒÔ²ÉÓÃ¶şÎ¬Êı×é£¬ÀıÈç£º
--x713500_g_StudyCost[1][1] = 200
x713500_g_StudyCost[1] = 0
x713500_g_StudyCost[2] = 0
x713500_g_StudyCost[3] = 0
x713500_g_StudyCost[8] = 0
x713500_g_StudyCost[9] = 0
x713500_g_StudyCost[10] = 0
x713500_g_StudyCost[11] = 100
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713500_OnDefaultEvent( sceneId, selfId, targetId, AbilityID )
	--Íæ¼Ò¼¼ÄÜµÄµÈ¼¶
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, AbilityID)
	--Íæ¼Ò¼Ó¹¤¼¼ÄÜµÄÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, AbilityID)

	BeginEvent(sceneId)
		AddText(sceneId, "Tên kÛ nång: " .. x713500_g_AbilityName[AbilityID])
		AddText(sceneId, x713500_g_AbilityDescription[AbilityID])

		if AbilityLevel < 1 then
			AddText(sceneId, "H÷c kÛ nång này c¥n m¤t hai lßşng bÕc")
		else
			AddText(sceneId, "C¤p kÛ nång hi®n có: " .. AbilityLevel .. "  c¤p")
			AddText(sceneId, "Thång c¤p kÛ nång này c¥n m¤t hai lßşng bÕc")
		end
	EndEvent(sceneId)

	--ÊìÁ·¶È²»×ã
	if ExpPoint < (AbilityLevel + 1) * 10 then
		BeginEvent(sceneId)
			strText = format("Ğµ thành thÕo cüa các hÕ không ğü")
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif GetMoney(sceneId, selfId) < x713500_g_StudyCost[AbilityID] then
		BeginEvent(sceneId)
			strText = format("Không ğü Ngân Lßşng")
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		DispatchMissionInfo( sceneId, selfId, targetId, x713500_g_ScriptId, AbilityID )
	end

   	return 1
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş   2006-01-06 ĞÂÔö
--**********************************
function x713500_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713500_g_ScriptId,"H÷c kÛ nång",12,-1);
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713500_CheckAccept( sceneId, selfId )
	return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x713500_OnAccept( sceneId, selfId, AbilityID )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, AbilityID )
	SetHumanAbilityLevel( sceneId, selfId, AbilityID, AbilityLevel + 1 )
end
