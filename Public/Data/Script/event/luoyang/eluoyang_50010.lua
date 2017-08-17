--×½ÕäÊÞÈÎÎñ
--×½ÕäÊÞ
--MisDescBegin
--½Å±¾ºÅ
x250010_g_ScriptId = 250010

--ÈÎÎñºÅ
x250010_g_MissionId = 720

--ÈÎÎñÄ¿±ênpc
x250010_g_Name	="Vân Hàm Nhi"

--ÈÎÎñ¹éÀà
x250010_g_MissionKind = 11

--ÈÎÎñµÈ¼¶
x250010_g_MissionLevel = 35

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x250010_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈÝ£¬ÓÃÓÚÔÚÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x250010_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»

x250010_g_PetDataID=3090	--ÈÎÎñÕäÊÞµÄ±àºÅ
--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚÒ»Î»ÓÃÀ´´æ´¢Ëæ»úµÃµ½µÄ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x250010_g_MissionName="B¡t trân thú"
x250010_g_MissionInfo="Ti¬u thß nhà tôi mu¯n 1 con Thanh Oa."  --ÈÎÎñÃèÊö
x250010_g_MissionTarget="Giúp Vân Hàm Nhi tìm ðßþc 1 con Thanh Oa."		--ÈÎÎñÄ¿±ê
x250010_g_ContinueInfo="Các hÕ b¡t ðßþc Thanh Oa ch½a?"		--Î´Nhi®m vø hoàn thành!µÄnpc¶Ô»°
x250010_g_MissionComplete="Làm t¯t l¡m."					--Nhi®m vø hoàn thành!npcËµ»°µÄ»°

--ÈÎÎñ½±Àø
x250010_g_MoneyBonus = 1890

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x250010_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x250010_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x250010_g_MissionName)
			AddText(sceneId,x250010_g_ContinueInfo)
		EndEvent( )
		bDone = x250010_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x250010_g_ScriptId,x250010_g_MissionId,bDone)
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x250010_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x250010_g_MissionName)
			AddText(sceneId,x250010_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x250010_g_MissionTarget)
			--AddMoneyBonus( sceneId, x250010_g_MoneyBonus )
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x250010_g_ScriptId,x250010_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x250010_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x250010_g_MissionId) > 0 then
		AddNumText(sceneId,x250010_g_ScriptId,x250010_g_MissionName,3,-1);
    --Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x250010_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x250010_g_ScriptId,x250010_g_MissionName,4,-1);
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x250010_CheckAccept( sceneId, selfId )
	--ÐèÒª1¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--¼ì²âÊÇ·ñÀë·ÅÆú³¬¹ý15·ÖÖÓ£¬Èç¹ûÎ´³¬¹ý£¬Ôò²»¿ÉÒÔ½ÓÊÜÈÎÎñ.Ô­ÒòÊÇÎªÁË·ÀÖ¹Íæ¼ÒÀ´»ØË¢ÈÎÎñ£¬ÒÔË¢µ½×Ô¼ººÃ×¥µÄÕäÊÞ.
--**********************************
function x250010_GetTimePass( sceneId, selfId )        --create by Steven.Han
   
  --¼ì²â×½ÕäÊÞÈÎÎñ·ÅÆúÊ±¼äÊÇ·ñ³¬¹ý15·ÖÖÓ£¬Èç¹û³¬¹ý£¬·µ»Ø1£¬·ñÔò£¬·µ»Ø0

  local iDayCount=GetMissionData( sceneId, selfId, MD_CAPTUREPETABANDON_TIME )
  
  if( 0 == iDayCount ) then
      return 1                   --Èç¹ûÊÇ0£¬±íÊ¾»¹Î´·ÅÆú¹ý´ËÈÎÎñ£¬ÊÇ¿ÉÒÔ½ÓÊÜµÄ.
  end
  
  local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
	local CurQuarterTime = mod(CurTime,100)	--µ±Ç°Ê±¼ä(¿Ì)

	local OldDaytime = floor(iDayCount/100)	--ÉÏ´Î·ÅÆúµÄÊ±¼ä(Ìì)
	local OldQuarterTime = mod(iDayCount,100)	--ÉÏ´Î·ÅÆúµÄÊ±¼ä(¿Ì)  	
  
  if( CurDaytime > OldDaytime ) then
      return 1               --Èç¹ûÒÑ¾­³¬¹ýÒ»ÌìÁË£¬ÔòÈÏÎª³¬¹ýÁË15·ÖÖÓ.
  end
  
  if( OldQuarterTime == CurQuarterTime ) then
      return 0
  end	
	
	return 1

end

--**********************************
--½ÓÊÜ
--**********************************
function x250010_OnAccept( sceneId, selfId )

  if( 0 == x250010_GetTimePass( sceneId, selfId ) ) then      
      --Msg2Player(  sceneId, selfId,"#YTh¶i gian bö nhi®m vø không ðü 15 phút, không th¬ tiªp nh§n tiªp!",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
      
		  BeginEvent(sceneId)
			  strText = format("Th¶i gian bö nhi®m vø không ðü 15 phút, không th¬ tiªp nh§n tiªp!")
			  AddText(sceneId,strText)
 		  EndEvent(sceneId)

 		  DispatchMissionTips(sceneId,selfId)
 		      
      return
  end	
  
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x250010_g_MissionId, x250010_g_ScriptId,0,0,0 )
	misIndex = GetMissionIndexByID(sceneId,selfId,x250010_g_MissionId)			--µÃµ½ÈÎÎñµÄÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
	SetMissionByIndex(sceneId,selfId,misIndex,1,x250010_g_ScriptId)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿µÄµÚ1Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ
	--¼ì²âÍæ¼ÒÉíÉÏµÄµÀ¾ßÊÇ·ñÒÑ¾­Âú×ãÍê³ÉÌõ¼þ£¬Èç¹ûÒÑ¾­Âú×ã£¬Ôò°ÑNhi®m vø hoàn thành!µÄ±äÁ¿ÖÃÎª1
	if x250010_CheckSubmit( sceneId, selfId ) then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)					--°ÑÈÎÎñÍê³É±êÖ¾ÖÃÎª1
	end
	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­½ÓÊÜÁËÈÎÎñ
--	BeginEvent(sceneId)
--		AddText(sceneId,x250010_g_MissionInfo)
--	EndEvent(sceneId)
--	DispatchEventList(sceneId,selfId,targetId)	--¶Ô»°¿òÏÔÊ¾MissionInfo
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: B¡t Trân thú",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
end

--**********************************
--·ÅÆú
--**********************************
function x250010_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x250010_g_MissionId )
    
    local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä	
	  SetMissionData(sceneId,selfId,MD_CAPTUREPETABANDON_TIME,CurTime )     --°Ñµ±Ç°Ê±¼äÉèÖÃÎª·ÅÆúÊ±¼ä  Steven.Han
    --Msg2Player(  sceneId, selfId,"#YÄã·ÅÆúÁËB¡t trân thúÈÎÎñ£¬15·ÖÖÓÖ®ÄÚÄã½«ÎÞ·¨ÔÙ´Î½ÓÊÜ´ËÈÎÎñ",MSG2PLAYER_PARA )	--ÁÄÌì´°¿ÚÌáÊ¾
    
end

--**********************************
--¼ÌÐø
--**********************************
function x250010_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x250010_g_MissionName)
    AddText(sceneId,x250010_g_MissionComplete)
    --AddMoneyBonus( sceneId, x250010_g_MoneyBonus )
    --for i, item in g_ItemBonus do
	--	AddItemBonus( sceneId, item.id, item.num )
	--end
    --for i, item in g_RadioItemBonus do
	--	AddRadioItemBonus( sceneId, item.id, item.num )
	--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x250010_g_ScriptId,x250010_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x250010_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x250010_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	--µÃµ½Ð¯´øÕäÊÞÊýÁ¿
	PetNum = LuaFnGetPetCount(sceneId,selfId)
	if PetNum ~= 0 then
		for i = 1,PetNum,1 do
			PetIndex = i - 1		--ÕäÊÞindex´Ó0¿ªÊ¼
			if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == x250010_g_PetDataID then
				return 2
			end
		end
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x250010_OnSubmit( sceneId, selfId, targetId,selectRadioId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x250010_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊýÒâË¼£º³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x250010_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x250010_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Íæ¼ÒÌá½»µÄÎïÆ·¼°ÕäÊÞ
--**********************************
function x250010_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	if indexpet == 255 then --Ë÷ÒýÖµ·µ»Ø255±íÊ¾¿Õ£¬Ã»Ìá½»ÕäÊÞ
		BeginEvent(sceneId)
			strText = "Hãy ðem trân thú vào trong cØa s±!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		--µÃµ½·ÅÈë´°¿ÚÖÐµÄÕäÊÞ±àºÅ
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, indexpet )
		if petdataid == x250010_g_PetDataID then
			--½±Àø½ðÇ®²¢ÌáÊ¾
			
				BeginEvent(sceneId)
					AddText(sceneId,"Nhi®m vø hoàn thành, t£ng cho các hÕ #{_MONEY"..x250010_g_MoneyBonus.."}")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,npcid)
			ret0 = DelMission( sceneId, selfId, x250010_g_MissionId ) --É¾³ýÈÎÎñ
			ret1 = LuaFnDeletePet(sceneId, selfId, indexpet ) --É¾³ýÕäÊÞ
			if ret0>0 and ret1>0 then
				Msg2Player(  sceneId, selfId,"Nhi®m vø hoàn thành: B¡t trân thú",MSG2PLAYER_PARA )
				AddMoney(sceneId, selfId, x250010_g_MoneyBonus )
			end
			
			BeginEvent(sceneId)
				strText = "Nhi®m vø hoàn thành!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				strText = "Trân thú không phù hþp!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

