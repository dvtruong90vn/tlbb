--ThÕch Lâm 
--MisDescBegin
--½Å±¾ºÅ
x212103_g_ScriptId = 212103

--ÈÎÎñºÅ
x212103_g_MissionId = 602

--Møc tiêu nhi®m vønpc
x212103_g_Name	="Tr¸nh Huy«n" 

--ÈÎÎñ¹éÀà
x212103_g_MissionKind = 37

--ĞÆng c¤p nhi®m vø 
x212103_g_MissionLevel = 55

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x212103_g_IfMissionElite = 0

--******ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x212103_g_IsMissionOkFail = 0		--±äÁ¿toÕ ğµ µÚ0Î»

--******ÒÔÉÏĞúng¶¯Ì¬*****

--ÈÎÎñÎÄ±¾ÃèÊö
x212103_g_MissionName="Vùng ğ¤t tuy®t v÷ng"
x212103_g_MissionInfo="#{Lua_Shilin_001}"
x212103_g_MissionTarget="Nghe câu chuy®n Tr¸nh Huy«n k¬ #{_INFOAIM182,163,26,Tr¸nh Huy«n}."
x212103_g_ContinueInfo="....."
x212103_g_MissionComplete="Chuy®n cüa ta ğã k¬ xong, ngß½i hãy suy nghî ği"

x212103_g_MoneyBonus=21000
x212103_g_Exp = 6000

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x212103_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x212103_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x212103_g_MissionName)
			AddText(sceneId,x212103_g_ContinueInfo)
		EndEvent()
		bDone = x212103_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212103_g_ScriptId,x212103_g_MissionId,bDone)
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x212103_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x212103_g_MissionName)
			AddText(sceneId,x212103_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x212103_g_MissionTarget)
			AddMoneyBonus( sceneId, x212103_g_MoneyBonus )
		
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x212103_g_ScriptId,x212103_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x212103_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212103_g_MissionId) > 0 then
		return 
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x212103_g_MissionId) > 0 then
		AddNumText(sceneId, x212103_g_ScriptId, x212103_g_MissionName, 2, -1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x212103_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x212103_g_ScriptId, x212103_g_MissionName, 1, -1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x212103_CheckAccept( sceneId, selfId )
	-- Èç¹ûÍæ¼Ò×ö¹ıCái này ÈÎÎñ,²»ÄÜÔÙ×ö
	if IsMissionHaveDone(sceneId,selfId,x212103_g_MissionId) > 0 then
		return 0
	end
	--C¥n 1c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= x212103_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x212103_OnAccept( sceneId, selfId )
	-- Èç¹ûÍæ¼Ò×ö¹ıCái này ÈÎÎñ,²»ÄÜÔÙ×ö
	if IsMissionHaveDone(sceneId,selfId,x212103_g_MissionId) > 0 then
		return 
	end

	-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x212103_g_MissionId, x212103_g_ScriptId, 1, 0, 0 )

	-- C¥n ¿¼ÂÇÍæ¼ÒĞúng²»ĞúngÄÜ¹»Tiªp thøµ½Cái này ÈÎÎñ
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end

	-- Íæ¼ÒÒÑ¾­½Óµ½ÁËCái này ÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x212103_g_MissionId)		-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
	
	-- ÏûÏ¢Í¨Öª¿Í»§¶Ë
	Msg2Player(  sceneId, selfId,"#YTiªp nh§n#W ".. x212103_g_MissionName, MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTiªp nh§n#W " .. x212103_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--·ÅÆú
--**********************************
function x212103_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	DelMission( sceneId, selfId, x212103_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x212103_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x212103_g_MissionName)
		AddText(sceneId,x212103_g_MissionComplete)
		AddMoneyBonus( sceneId, x212103_g_MoneyBonus )
				
    EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212103_g_ScriptId,x212103_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212103_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212103_g_MissionId)
	local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)	
	if bComplete > 0 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x212103_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	-- °²È«ĞÔ¼ì²â
	-- 1¡¢¼ì²âÍæ¼ÒĞúng²»ĞúngÓĞCái này ÈÎÎñ
	if IsHaveMission(sceneId,selfId,x212103_g_MissionId) <= 0 then
		return
	end
	-- 2¡¢ÆäËû¼ì²â
	if x212103_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end

	--Ìí¼ÓÈÎÎñ½±Àø
	AddMoney(sceneId, selfId, x212103_g_MoneyBonus )
	AddExp(sceneId, selfId, x212103_g_Exp)
	DelMission( sceneId, selfId, x212103_g_MissionId )
	--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
	MissionCom( sceneId,selfId, x212103_g_MissionId )
	
	-- ÏûÏ¢Í¨Öª¿Í»§¶Ë
	
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212103_OnKillObject( sceneId, selfId, objdataId ,objId)

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x212103_OnEnterArea( sceneId, selfId, zoneId )

end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212103_OnItemChanged( sceneId, selfId, itemdataId )

end
