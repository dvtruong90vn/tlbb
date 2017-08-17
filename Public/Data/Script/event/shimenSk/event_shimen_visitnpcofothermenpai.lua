 --Nhi®m vø sß môn

--MisDescBegin
--½Å±¾ºÅ
x229010_g_ScriptId = 229010

--ÈÎÎñºÅ
x229010_g_MissionId = 1060

--ÈÎÎñ¹éÀà
x229010_g_MissionKind = 2

--ĞÆng c¤p nhi®m vø 
x229010_g_MissionLevel = 10000

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x229010_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x229010_g_IsMissionOkFail = 0		--±äÁ¿toÕ ğµ µÚ0Î»

--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ği¬mµ½toÕ ğµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x229010_g_MissionName="Nhi®m vø sß môn"
x229010_g_MissionInfo=""  --ÈÎÎñÃèÊö
x229010_g_MissionTarget ="Khá l¡m...... — b±n môn ta, ngß½i luôn phát dß½ng quang ğÕi, t§n tâm t§n lñc, c¥n cù làm vi®c. Ta s¨ giao cho ngß½i 1 nhi®m vø khác., #G%s#Wv×a ğßa cho ta b° câu ğßa thß, nói h÷ c¥n giúp ğŞ, ngß½i ği tìm ği #G%s#W cüa#Y%s#W, ông (bà) ta s¨ s¡p xªp nhi®m vø cüa ngß½i."
x229010_g_ContinueInfo="Làm t¯t l¡m"		--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x229010_g_MissionComplete="Vi®c ta giao ğã hoàn thành chßa?"					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x229010_g_MissionRound=17

x229010_g_DoubleExp = 48
x229010_g_AccomplishCircumstance = 1

--¸ñÊ½×Ö·û´®ÖĞtoÕ ğµ Ë÷Òı, ±íÊ¾´Ó4¿ªÊ¼,ºó¶àÉÙÎ»ÊÓSetMissionByIndex(...)toÕ ğµ ¶àÉÙ¶ø¶¨
x229010_g_StrForePart=4

x229010_g_StrList = {
						"Huy«n Trình",
						"Tháp Lâm phø bän",
						"Bän Tß¾ng", 
						"MÕnh Thanh Thanh",
						"Ph§t „n", 
						"Phß½ng LÕp", 
						"Cúc Kiªm", 
						"Lâm Linh T¯",
						"Phùng A Tam",
						"H°ng Ng÷c", 
						"Tháp ğª phø bän",
						"Ğào Hoa Tr§n phø bän",
						"Phø bän h¥m rßşu",
						"Quang Minh ğµng phø bän",
						"Chiªt Mai Phong phø bän",
						"Linh Tính Phong phø bän",
						"C¯c Ğ¸a phø bän",
						"Ngû Th¥n Ğµng phø bän", 
						"Thiªu Lâm",
						"Thiên Long",
						"Nga My",
						"Cái Bang",
						"Minh Giáo",
						"Thiên S½n",
						"Võ Ğang",
						"Tiêu Dao",
						"Tinh Túc",
						}
						
--MisDescEnd

--add by xindefeng
--x229010_GetStrIndexByStrValue(),x229010_GetStrValueByStrIndex()º¯ÊıÊ¹ÓÃx229010_g_StrListÀ´²éÕÒIndexºÍNPCTên,¶ø¼ÓÉÏ×Ô¶¯Ñ°Â·ĞÅÏ¢ºó,ÎŞ·¨ÕÒµ½ÕıÈ·Index,Òò´Ë½¨Á¢
--´Ë±í¸øx229010_GetStrIndexByStrValue(),x229010_GetStrValueByStrIndex()Ê¹ÓÃÀ´ÕÒµ½ÕıÈ·IndexºÍNPCTên
x229010_g_StrList2 = {
						"Huy«n Trình",
						"Tháp Lâm phø bän",
						"Bän Tß¾ng", 
						"MÕnh Thanh Thanh",
						"Ph§t „n", 
						"Phß½ng LÕp", 
						"Cúc Kiªm", 
						"Lâm Linh T¯",
						"Phùng A Tam",
						"H°ng Ng÷c", 
						"Tháp ğª phø bän",
						"Ğào Hoa Tr§n phø bän",
						"Phø bän h¥m rßşu",
						"Quang Minh ğµng phø bän",
						"Chiªt Mai Phong phø bän",
						"Linh Tính Phong phø bän",
						"C¯c Ğ¸a phø bän",
						"Ngû Th¥n Ğµng phø bän", 
						"Thiªu Lâm",
						"Thiên Long",
						"Nga My",
						"Cái Bang",
						"Minh Giáo",
						"Thiên S½n",
						"Võ Ğang",
						"Tiêu Dao",
						"Tinh Túc",
						}
						
--/////////////////////////////////////////////////////////////////////////////////////////////////////
            
--×ÓÈÎÎñtoÕ ğµ ÀàĞÍ´úºÅ¶¨Òå
x229010_g_SubMissionTypeEnum = {XunWu=1, SongXin=2, DingDianYinDao=3, FuBenZhanDou=4, BuZhuo=5, ShouJi=6, KaiGuang=7, otherMenpaiFuben=8}

--¸±±¾ÁĞ±í
x229010_g_FuBen_List = {
								{menpainame="Thiªu Lâm", menpai=MP_SHAOLIN  , NpcName="Huy«n Trình", scene=9, posx=61, posz=61, FubenName="Tháp Lâm phø bän"},
								{menpainame="Thiên Long", menpai=MP_DALI     , NpcName="Bän Tß¾ng", scene=13, posx=35, posz=86, FubenName="Tháp ğª phø bän"},
								{menpainame="Nga My", menpai=MP_EMEI     , NpcName="MÕnh Thanh Thanh", scene=15, posx=96, posz=73, FubenName="Ğào Hoa Tr§n phø bän"},
								{menpainame="Cái Bang", menpai=MP_GAIBANG  , NpcName="Ph§t „n", scene=10, posx=41, posz=144, FubenName="Phø bän h¥m rßşu"},
								{menpainame="Minh Giáo", menpai=MP_MINGJIAO , NpcName="Phß½ng LÕp", scene=11, posx=89, posz=56, FubenName="Quang Minh ğµng phø bän"},
								{menpainame="Thiên S½n", menpai=MP_TIANSHAN , NpcName="Cúc Kiªm", scene=17, posx=99, posz=45, FubenName="Chiªt Mai Phong phø bän"},
								{menpainame="Võ Ğang", menpai=MP_WUDANG   , NpcName="Lâm Linh T¯", scene=12, posx=58, posz=73, FubenName="Linh Tính Phong phø bän"},
								{menpainame="Tiêu Dao", menpai=MP_XIAOYAO  , NpcName="Phùng A Tam", scene=14, posx=62, posz=68, FubenName="C¯c Ğ¸a phø bän"},
								{menpainame="Tinh Túc", menpai=MP_XINGSU   , NpcName="H°ng Ng÷c", scene=16, posx=128, posz=78, FubenName="Ngû Th¥n Ğµng phø bän"},
							}
	
--changed by xindefeng                								
function x229010_GetStrIndexByStrValue(stringV)
	for i, v in x229010_g_StrList2 do
		if v == stringV then
			return i-1
		end
	end
	local strText = format("C¥n phäi %s ğång kí StrList trong", stringV)
	--PrintStr(strText)
	return 0;
end

--changed by xindefeng
--±»x229000_IsFubenMission(),x229000_SetFubenMissionSucc()µ÷ÓÃ
function x229010_GetStrValueByStrIndex(sceneId, index)
	if index+1 >= 1 and index+1 <= getn(x229010_g_StrList2) then
		return x229010_g_StrList2[index+1]	
	end
	return""
end

function x229010_AddOtherMenpaiFubenMission(sceneId, selfId, missionId, targetId)
	local index	= 1
	local a = {}
		
	for i, v in x229010_g_FuBen_List do
		if v.menpai ~= GetMenPai(sceneId, selfId) then
			a[index] = i
			index = index + 1
		end	
	end
	
	index = a[random(getn(a))]
	
	local menpaiName = x229010_g_FuBen_List[index].menpainame
	local npcName =  x229010_g_FuBen_List[index].NpcName
	local fubenName =  x229010_g_FuBen_List[index].FubenName
	local nSceneId = x229010_g_FuBen_List[index].scene
	local posx = x229010_g_FuBen_List[index].posx
	local posz = x229010_g_FuBen_List[index].posz
	
	--Ôö¼Ó½ÓÊÕÈÎÎñtoÕ ğµ ±ØÒªÅĞ¶Ï
	CallScriptFunction( 500501,"CheckAccept_Necessary", sceneId, selfId)
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local bAdd = AddMission( sceneId,selfId, missionId, x229010_g_ScriptId, 0, 0, 0 )
	if bAdd < 1 then
		return
	end	
	
	local nFormatIndex = GetMissionCacheData(sceneId, selfId, 0)
	local NpcNameIndex = x229010_GetStrIndexByStrValue(npcName)
	local MenpaiNameIndex = x229010_GetStrIndexByStrValue(menpaiName)
	
	-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
		
	SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --ÉèÖÃÈÎÎñĞúng·ñÍê³É(Î´Íê³É)
	SetMissionByIndex(sceneId, selfId, misIndex, 1, x229010_g_SubMissionTypeEnum.otherMenpaiFuben)
	
	SetMissionByIndex(sceneId, selfId, misIndex, x229010_g_StrForePart, MenpaiNameIndex)
	SetMissionByIndex(sceneId, selfId, misIndex, x229010_g_StrForePart+1, MenpaiNameIndex)
	SetMissionByIndex(sceneId, selfId, misIndex, x229010_g_StrForePart+2, NpcNameIndex)
	
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Nhi®m vø sß môn", MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID,"AskTheWay", sceneId, selfId, nSceneId, posx, posz, npcName)

	local strMissionTarget = format("Khá l¡m...... — b±n môn ta, ngß½i luôn phát dß½ng quang ğÕi, t§n tâm t§n lñc, c¥n cù làm vi®c. Ta s¨ giao cho ngß½i 1 nhi®m vø khác. %s v×a dùng b° câu ğßa thß cho ta nói h÷ c¥n giúp ğŞ, ngß½i hãy ği tìm %s %s, ông ta s¨ s¡p xªp nhi®m vø cüa ngß½i",
			menpaiName, menpaiName, npcName)
			
	BeginEvent(sceneId)
		AddText(sceneId, strMissionTarget)
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)	
	
	-- ği¬mµ½»·Êı
	local round = GetMissionData(sceneId,selfId,MD_SHIMEN_HUAN)

	round = round + 1

	if	round >= 21 then
		SetMissionData(sceneId, selfId, MD_SHIMEN_HUAN, 1)
	else
		SetMissionData(sceneId, selfId, MD_SHIMEN_HUAN, round)
	end
	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x229010_OnEnumerate( sceneId, selfId, targetId )
	return
end

--**********************************
--·ÅÆú
--**********************************
function x229010_OnAbandon( sceneId, selfId )
	local shimenMissionIdList = {1080, 1090, 1065, 1070, 1060, 1100, 1075, 1085, 1095}
	for i, v in shimenMissionIdList do
		if IsHaveMission(sceneId,selfId,v) > 0	 then
			--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	  	DelMission( sceneId, selfId, v )
	  	SetMissionData(sceneId,selfId,MD_SHIMEN_HUAN,0)	--»·ÊıÇå0
 			--µ÷ÓÃÍ¨ÓÃ·ÅÆú½Ó¿Ú
			------------------------------------------------------------------
		  CallScriptFunction( 500501,"Abandon_Necessary", sceneId, selfId )
			-------------------------------------------------------------------
			break
		end	
	end
end

