--×½ÕäÊŞÈÎÎñ
--×½ÕäÊŞ
--MisDescBegin
--½Å±¾ºÅ
x250001_g_ScriptId = 250001

--ÈÎÎñºÅ
x250001_g_MissionId = 720

--ÈÎÎñÄ¿±ênpc
x250001_g_Name	="Vân Hàm Nhi"

--ÈÎÎñ¹éÀà
x250001_g_MissionKind = 11

--ÈÎÎñµÈ¼¶
x250001_g_MissionLevel = 10

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x250001_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x250001_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»

x250001_g_PetDataID=3000	--ÈÎÎñÕäÊŞµÄ±àºÅ
--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚÒ»Î»ÓÃÀ´´æ´¢Ëæ»úµÃµ½µÄ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x250001_g_MissionName="B¡t trân thú"
x250001_g_MissionInfo="Ti¬u thß nhà tôi mu¯n 1 con Sài Miêu."  --ÈÎÎñÃèÊö
x250001_g_MissionTarget="Giúp Vân Hàm Nhi tìm ğßşc 1 con Sài Miêu."		--ÈÎÎñÄ¿±ê
x250001_g_ContinueInfo="Các hÕ b¡t ğßşc Sài Miêu chßa?"		--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x250001_g_MissionComplete="Làm t¯t l¡m."					--Íê³ÉÈÎÎñnpcËµ»°µÄ»°

--ÈÎÎñ½±Àø
x250001_g_MoneyBonus = 180

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x250001_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x250001_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñĞèÇóµÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x250001_g_MissionName)
			AddText(sceneId,x250001_g_ContinueInfo)
		EndEvent( )
		bDone = x250001_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x250001_g_ScriptId,x250001_g_MissionId,bDone)
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x250001_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x250001_g_MissionName)
			AddText(sceneId,x250001_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x250001_g_MissionTarget)
			--AddMoneyBonus( sceneId, x250001_g_MoneyBonus )
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x250001_g_ScriptId,x250001_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x250001_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x250001_g_MissionId) > 0 then
		AddNumText(sceneId,x250001_g_ScriptId,x250001_g_MissionName,3,-1);
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x250001_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x250001_g_ScriptId,x250001_g_MissionName,4,-1);
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x250001_CheckAccept( sceneId, selfId )
	--ĞèÒª1¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--¼ì²âÊÇ·ñÀë·ÅÆú³¬¹ı15·ÖÖÓ£¬Èç¹ûÎ´³¬¹ı£¬Ôò²»¿ÉÒÔ½ÓÊÜÈÎÎñ¡£Ô­ÒòÊÇÎªÁË·ÀÖ¹Íæ¼ÒÀ´»ØË¢ÈÎÎñ£¬ÒÔË¢µ½×Ô¼ººÃ×¥µÄÕäÊŞ¡£
--**********************************
function x250001_GetTimePass( sceneId, selfId )        --create by Steven.Han
   
  --¼ì²â×½ÕäÊŞÈÎÎñ·ÅÆúÊ±¼äÊÇ·ñ³¬¹ı15·ÖÖÓ£¬Èç¹û³¬¹ı£¬·µ»Ø1£¬·ñÔò£¬·µ»Ø0

  local iDayCount=GetMissionData( sceneId, selfId, MD_CAPTUREPETABANDON_TIME )
  
  if( 0 == iDayCount ) then
      return 1                   --Èç¹ûÊÇ0£¬±íÊ¾»¹Î´·ÅÆú¹ı´ËÈÎÎñ£¬ÊÇ¿ÉÒÔ½ÓÊÜµÄ¡£
  end
  
  local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
	local CurQuarterTime = mod(CurTime,100)	--µ±Ç°Ê±¼ä(¿Ì)

	local OldDaytime = floor(iDayCount/100)	--ÉÏ´Î·ÅÆúµÄÊ±¼ä(Ìì)
	local OldQuarterTime = mod(iDayCount,100)	--ÉÏ´Î·ÅÆúµÄÊ±¼ä(¿Ì)  	
  
  if( CurDaytime > OldDaytime ) then
      return 1               --Èç¹ûÒÑ¾­³¬¹ıÒ»ÌìÁË£¬ÔòÈÏÎª³¬¹ıÁË15·ÖÖÓ¡£
  end
  
  if( OldQuarterTime == CurQuarterTime ) then
      return 0
  end	
	
	return 1

end

--**********************************
--½ÓÊÜ
--**********************************
function x250001_OnAccept( sceneId, selfId )

  if( 0 == x250001_GetTimePass( sceneId, selfId ) ) then      
      --Msg2Player(  sceneId, selfId,"#Y¾à·ÅÆú´ËÈÎÎñ²»×ã15·ÖÖÓ£¬ÎŞ·¨ÔÙ´Î½ÓÊÜ",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
      
		  BeginEvent(sceneId)
			  strText = format("Th¶i gian bö nhi®m vø không ğü 15 phút, không th¬ tiªp nh§n tiªp!")
			  AddText(sceneId,strText)
 		  EndEvent(sceneId)

 		  DispatchMissionTips(sceneId,selfId)
 		      
      return
  end	
  
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x250001_g_MissionId, x250001_g_ScriptId,0,0,0 )
	misIndex = GetMissionIndexByID(sceneId,selfId,x250001_g_MissionId)			--µÃµ½ÈÎÎñµÄĞòÁĞºÅ
	SetMissionEvent(sceneId, selfId, x250001_g_MissionId, 3)
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
	SetMissionByIndex(sceneId,selfId,misIndex,1,x250001_g_ScriptId)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ1Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ
	--¼ì²âÍæ¼ÒÉíÉÏµÄµÀ¾ßÊÇ·ñÒÑ¾­Âú×ãÍê³ÉÌõ¼ş£¬Èç¹ûÒÑ¾­Âú×ã£¬Ôò°ÑÍê³ÉÈÎÎñµÄ±äÁ¿ÖÃÎª1
	if x250001_CheckSubmit( sceneId, selfId ) == 2 then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)					--°ÑÈÎÎñÍê³É±êÖ¾ÖÃÎª1
	end
--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­½ÓÊÜÁËÈÎÎñ
--	BeginEvent(sceneId)
--		AddText(sceneId,x250001_g_MissionInfo)
--	EndEvent(sceneId)
--	DispatchEventList(sceneId,selfId,targetId)	--¶Ô»°¿òÏÔÊ¾MissionInfo
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: B¡t Trân thú",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
end

--**********************************
--·ÅÆú
--**********************************
function x250001_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x250001_g_MissionId )
    
    local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä	
	  SetMissionData(sceneId,selfId,MD_CAPTUREPETABANDON_TIME,CurTime )     --°Ñµ±Ç°Ê±¼äÉèÖÃÎª·ÅÆúÊ±¼ä  Steven.Han
    --Msg2Player(  sceneId, selfId,"#YÄã·ÅÆúÁË²¶×½ÕäÊŞÈÎÎñ£¬15·ÖÖÓÖ®ÄÚÄã½«ÎŞ·¨ÔÙ´Î½ÓÊÜ´ËÈÎÎñ",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
    
end

--**********************************
--¼ÌĞø
--**********************************
function x250001_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x250001_g_MissionName)
    AddText(sceneId,x250001_g_MissionComplete)
    --AddMoneyBonus( sceneId, x250001_g_MoneyBonus )
    --for i, item in g_ItemBonus do
	--	AddItemBonus( sceneId, item.id, item.num )
	--end
    --for i, item in g_RadioItemBonus do
	--	AddRadioItemBonus( sceneId, item.id, item.num )
	--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x250001_g_ScriptId,x250001_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x250001_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x250001_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	--µÃµ½Ğ¯´øÕäÊŞÊıÁ¿
	PetNum = LuaFnGetPetCount(sceneId,selfId)
	if PetNum ~= 0 then
		for i = 1,PetNum,1 do
			PetIndex = i - 1		--ÕäÊŞindex´Ó0¿ªÊ¼
			if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == x250001_g_PetDataID then
				return 2
			end
		end
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x250001_OnSubmit( sceneId, selfId, targetId,selectRadioId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x250001_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊıÒâË¼£º³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x250001_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x250001_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Íæ¼ÒÌá½»µÄÎïÆ·¼°ÕäÊŞ
--**********************************
function x250001_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	if indexpet == 255 then --Ë÷ÒıÖµ·µ»Ø255±íÊ¾¿Õ£¬Ã»Ìá½»ÕäÊŞ
		BeginEvent(sceneId)
			strText = "Hãy ğem trân thú vào trong cØa s±!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		--µÃµ½·ÅÈë´°¿ÚÖĞµÄÕäÊŞ±àºÅ
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, indexpet )
		if petdataid == x250001_g_PetDataID then
			--½±Àø½ğÇ®²¢ÌáÊ¾
			
				BeginEvent(sceneId)
					AddText(sceneId,"Nhi®m vø hoàn thành, t£ng cho các hÕ #{_MONEY"..x250001_g_MoneyBonus.."}")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,npcid)
			ret0 = DelMission( sceneId, selfId, x250001_g_MissionId ) --É¾³ıÈÎÎñ
			ret1 = LuaFnDeletePet(sceneId, selfId, indexpet ) --É¾³ıÕäÊŞ
			if ret0>0 and ret1>0 then
				Msg2Player(  sceneId, selfId,"Nhi®m vø hoàn thành: B¡t trân thú",MSG2PLAYER_PARA )
				AddMoney(sceneId, selfId, x250001_g_MoneyBonus )
			end
			
			BeginEvent(sceneId)
				strText = "Nhi®m vø hoàn thành!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				strText = "Trân thú không phù hşp!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--ÕäÊŞ¸Ä±ä
--**********************************
function x250001_OnPetChanged( sceneId, selfId, petDataId)
	misIndex = GetMissionIndexByID(sceneId,selfId,x250001_g_MissionId)			--µÃµ½ÈÎÎñµÄĞòÁĞºÅ
	--¼ì²âÍæ¼ÒÉíÉÏµÄµÀ¾ßÊÇ·ñÒÑ¾­Âú×ãÍê³ÉÌõ¼ş£¬Èç¹ûÒÑ¾­Âú×ã£¬Ôò°ÑÍê³ÉÈÎÎñµÄ±äÁ¿ÖÃÎª1
	if x250001_CheckSubmit( sceneId, selfId )  == 2 then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)					--°ÑÈÎÎñÍê³É±êÖ¾ÖÃÎª1
	else
		SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--°ÑÈÎÎñÍê³É±êÖ¾ÖÃÎª0
	end
end
