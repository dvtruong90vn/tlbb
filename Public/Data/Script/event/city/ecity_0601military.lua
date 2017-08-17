
-- ¹ú·ÀÈÎÎñ,×½ÄÃ¼éÏ¸
--MisDescBegin
-- ½Å±¾ºÅ
x600031_g_ScriptId = 600031

--ÈÎÎñºÅ
x600031_g_MissionId = 1109

--Møc tiêu nhi®m vønpc
x600031_g_Name = "Võ ĞÕi Uy"

--ÈÎÎñ¹éÀà
x600031_g_MissionKind = 50

--ĞÆng c¤p nhi®m vø 
x600031_g_MissionLevel = 10000

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600031_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600031_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç

--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ği¬mµ½toÕ ğµ ½Å±¾ºÅ
--ÈÎÎñÎÄ±¾ÃèÊö
x600031_g_MissionName = "Nhi®m vø qu¯c phòng"
x600031_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600031_g_MissionTarget = "    SØ døng l®nh ği tu¥n, b¡t giæ ngß¶i khä nghi. "	--Møc tiêu nhi®m vø
x600031_g_ContinueInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"						--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600031_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "						--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x600031_g_MissionRound = 79

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600031_g_CityMissionScript = 600001
x600031_g_MilitaryScript = 600030

--MisDescEnd

x600031_g_MonsterId = {
{n=100,id=3550},{n=101,id=3551},{n=102,id=3552},{n=103,id=3553},{n=104,id=3554},{n=105,id=3555},{n=106,id=3556},{n=107,id=3557},{n=108,id=3558},{n=109,id=3559},
{n=110,id=3560},{n=111,id=3561},{n=112,id=3562},{n=113,id=3563},{n=114,id=3564},{n=115,id=3565},{n=116,id=3566},{n=117,id=3567},{n=118,id=3568},{n=119,id=3569},
{n=120,id=3570},{n=121,id=3571},{n=122,id=3572},{n=123,id=3573},{n=124,id=3574},{n=125,id=3575},{n=126,id=3576},{n=127,id=3577},{n=128,id=3578},{n=129,id=3579},
{n=130,id=3580},{n=131,id=3581},{n=132,id=3582},{n=133,id=3583},{n=134,id=3584},{n=135,id=3585},{n=136,id=3586},{n=137,id=3587},{n=138,id=3588},{n=139,id=3589},
{n=140,id=3590},{n=141,id=3591},{n=142,id=3592},{n=143,id=3593},{n=144,id=3594},{n=145,id=3595},{n=146,id=3596},{n=147,id=3597},{n=148,id=3598},{n=149,id=3599},
{n=150,id=3600},{n=151,id=3601},{n=152,id=3602},{n=153,id=3603},{n=154,id=3604},{n=155,id=3605},{n=156,id=3606},{n=157,id=3607},{n=158,id=3608},{n=159,id=3609},
{n=160,id=3610},{n=161,id=3611},{n=162,id=3612},{n=163,id=3613},{n=164,id=3614},{n=165,id=3615},{n=166,id=3616},{n=167,id=3617},{n=168,id=3618},{n=169,id=3619},
{n=170,id=3620},{n=171,id=3621},{n=172,id=3622},{n=173,id=3623},{n=174,id=3624},{n=175,id=3625},{n=176,id=3626},{n=177,id=3627},{n=178,id=3628},{n=179,id=3629},
{n=180,id=3630},{n=181,id=3631},{n=182,id=3632},{n=183,id=3633},{n=184,id=3634},{n=185,id=3635},{n=186,id=3636},{n=187,id=3637},{n=188,id=3638},{n=189,id=3639},
}

x600031_g_MonsterName = {
"Mµc",
"Ğ£ng",
"Quan",
"T¯ng",
"Vu",
"Giáp Nhân",
"Ti¬u Giáp",
"„t Nhân",
"Ti¬u „t",
"Bính Nhân",
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600031_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾

	if GetName( sceneId, targetId ) ~= x600031_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600031_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600031_g_MissionName )
			AddText( sceneId, x600031_g_ContinueInfo )
		EndEvent( )
		local bDone = x600031_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600031_g_ScriptId, x600031_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600031_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600031_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600031_OnAccept( sceneId, selfId, targetId )
		end
	end
	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600031_OnEnumerate( sceneId, selfId, targetId )

	if GetName( sceneId, targetId ) ~= x600031_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600031_g_MissionId ) > 0 then
		AddNumText( sceneId, x600031_g_ScriptId, x600031_g_MissionName, 2 )
	end
	
end

--**********************************
--Tiªp thø
--**********************************
function x600031_OnAccept( sceneId, selfId, targetId )
	
	if GetName( sceneId, targetId ) ~= x600031_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId, selfId, x600031_g_MissionId, x600031_g_ScriptId, 1, 0, 0 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600031_g_MissionId ) <= 0 then
		return
	end

	CallScriptFunction( x600031_g_MilitaryScript, "OnAccept", sceneId, selfId, targetId, x600031_g_ScriptId )

	-- ¸øÍæ¼ÒÌí¼ÓÏà¹ØtoÕ ğµ ÈÎÎñÎïÆ·
	BeginAddItem( sceneId )
		AddItem( sceneId, 40004413, 1 )
	local ret = EndAddItem( sceneId, selfId )
	if ret <= 0 then 
		return
	end
	AddItemListToHuman(sceneId,selfId)
	
	--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		local missionInfo
		if random(2) == 1 then
			missionInfo = format( "    G¥n ğây trong thành ph¯ toàn th¤y nhæng kë lén lén lút lút, các hÕ c¥m l®nh tu¥n tra này, ği tu¥n b¯n xung quanh thành ph¯" )
		else
			missionInfo = format( "    Giæ an toàn cho thành ph¯ là trách nhi®m cüa chúng ta, l®nh tu¥n tra này giao cho các hÕ, l§p mµt vài thành tích nhé" )
		end

		AddText( sceneId, "Các hÕ ğã nh§n nhi®m vø: " .. x600031_g_MissionName )
		AddText( sceneId, missionInfo )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	-- ¸øCái này ÈÎÎñ·ÖÅämµt Ğ©¹ÖÎïÏò¹ÛtoÕ ğµ ±ØÒªÊı¾İ
	-- ¾ßÌåĞúng¸ù¾İÍê¼ÒtoÕ ğµ µÈc¤p£«Ëæ»úmµt cáiÃÅÅÉÀ´ ğÕt ğßşc
	local randMenpai = random( 9 ) - 1
	local nLevel = GetLevel(sceneId, selfId)
	local nIndex = 100 + randMenpai*10 + floor(nLevel/10)-1
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600031_g_MissionId)
	if nIndex>=100 and nIndex<189   then
		SetMissionByIndex(sceneId, selfId, misIndex, 5, nIndex)
	else
		SetMissionByIndex(sceneId, selfId, misIndex, 5, 189)
	end
	
	-- Ëæ»ú¹ÖÎïtoÕ ğµ Tên
	local nXin = random(4)
	local nMing = random(4) + 4
	SetMissionByIndex(sceneId, selfId, misIndex, 6, nXin)
	SetMissionByIndex(sceneId, selfId, misIndex, 7, nMing)

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600031_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600031_g_MilitaryScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600031_CheckSubmit( sceneId, selfId )
	--²éÑ¯ÈËÎïÉíÉÏĞúng²»ĞúngÓĞCái này  ğÕt ğßşctoÕ ğµ ÎïÆ·ÁË
	if GetItemCount( sceneId, selfId, 40004254 ) < 1   then
		return 0
	end
	return 1
end

--**********************************
--·ÅÆúÈÎÎñ
--**********************************
function x600031_OnAbandon( sceneId, selfId )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x600031_g_MilitaryScript, "OnAbandon", sceneId, selfId )
	
	--É¾³ıÈÎÎñÎïÆ·
	DelItem( sceneId, selfId, 40004254, 1 )
	DelItem( sceneId, selfId, 40004413, 1 )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600031_OnKillObject( sceneId, selfId, objdataId ,objId )
	
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600031_g_MissionId )		-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ

	local monsterName = GetName(sceneId, objId)
	
	local nXin = GetMissionParam(sceneId, selfId, misIndex, 6)
	local nMing = GetMissionParam(sceneId, selfId, misIndex, 7)
	
	local nMingzi = x600031_g_MonsterName[nXin] .. x600031_g_MonsterName[nMing]
	
	if monsterName == nMingzi   then
		-- ¸øÍæ¼ÒÌí¼ÓÏà¹ØtoÕ ğµ ÈÎÎñÎïÆ·
		BeginAddItem( sceneId )
			AddItem( sceneId, 40004254, 1 )
		local ret = EndAddItem( sceneId, selfId )
		if ret <= 0 then 
			return
		end
		AddItemListToHuman(sceneId,selfId)
		SetMissionByIndex( sceneId, selfId, misIndex, x600031_g_IsMissionOkFail, 1 )
	end
end

--**********************************
--¼ÌĞø
--**********************************
function x600031_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600031_g_MissionName )
		AddText( sceneId, x600031_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600031_g_ScriptId, x600031_g_MissionId )
end

--**********************************
--Ìá½»
--**********************************
function x600031_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if GetName( sceneId, targetId ) ~= x600031_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end
	
	if x600031_CheckSubmit( sceneId, selfId ) == 1 then
		-- É¾³ıÈÎÎñÏà¹ØC¥n É¾³ıtoÕ ğµ ÎïÆ·
		CallScriptFunction( x600031_g_MilitaryScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )

		DelItem( sceneId, selfId, 40004254, 1 )
		
		-- Çå³ıËæ»útoÕ ğµ Î»ÖÃĞÅÏ¢
		SetMissionData( sceneId, selfId, MD_MILITARY_ROND_POSITION, 0)
	end
end

