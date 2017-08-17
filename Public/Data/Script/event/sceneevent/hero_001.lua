-- 212128
-- Ó¢ÐÛ²»ÅÂÔ¶Õ÷ÄÑ

--MisDescBegin
--½Å±¾ºÅ
x212128_g_ScriptId = 212128

--Tiªp thøÈÎÎñNPCÊôÐÔ
x212128_g_Position_X=373
x212128_g_Position_Z=185
x212128_g_SceneID=2
x212128_g_AccomplishNPC_Name="Tr¥m Quát"

--ÈÎÎñºÅ
x212128_g_MissionId = 250

--Ä¿±êNPC
x212128_g_Name	="Tr¥m Quát"

--ÈÎÎñ¹éÀà
x212128_g_MissionKind = 55

--ÐÆng c¤p nhi®m vø 
x212128_g_MissionLevel = 75

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x212128_g_IfMissionElite = 0

--ÈÎÎñÃû
x212128_g_MissionName="Anh hùng không sþ vi­n chinh khó"
x212128_g_MissionInfo="#{Mis_75_desc_001}"
x212128_g_MissionTarget="    Tìm Tr¥m Quát · thành ÐÕi Lý #{_INFOAIM373,185,2, Tr¥m Quát}. "
--x212128_g_MissionContinue="  ÉúÃüÈç¹ûÄÜ¹»ÖØÀ´mµt ´Î,Îmµt áÔõÃ´Ñ¡ÔñÄØ?¼ÈÈ»ÕæÊµºÍÐé»ÃÎÞ´Ó·Ö±æ,ÎªºÎ²»Ìý´ÓÐÄLinhtoÕ ðµ ÕÙ»½×ö³ö¾ñÔñÄØ."
x212128_g_MissionComplete="  Ð÷c ðßþc hªt sách trên thiên hÕ, ði hªt 5 châu 4 b¬ là sñ theo ðu±i cüa ð¶i ta. T× xßa ðªn nay chï có ngß¶i tri thÑc m¾i tr· thành anh hùng."

x212128_g_MoneyBonus=5000
x212128_g_exp=50000

x212128_g_Custom	= { {id="Ðã tìm th¤y Tr¥m Quát",num=1} }
x212128_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212128_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x212128_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212128_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212128_g_Name then
			x212128_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212128_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212128_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212128_g_MissionName)
				AddText(sceneId,x212128_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212128_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212128_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212128_g_ScriptId,x212128_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212128_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212128_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212128_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212128_g_Name then
			AddNumText(sceneId, x212128_g_ScriptId,x212128_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212128_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212128_g_Name then
			AddNumText(sceneId,x212128_g_ScriptId,x212128_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x212128_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212128_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel(sceneId, selfId) < 10 then
		return 0
	end
	
	return 1
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x212128_CheckAcceptEx( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212128_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel(sceneId, selfId) < x212128_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x212128_OnAccept( sceneId, selfId, targetId )
	if x212128_CheckAcceptEx(sceneId, selfId) < 1   then
		BeginEvent(sceneId)
			AddText( sceneId, "Nhi®m vø này yêu c¥u ðÆng c¤p nhân v§t ðÕt c¤p 75, và 6 loÕi tâm pháp ð«u ðÕt c¤p 70 m¾i có th¬ tiªp nh§n." )
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ¼ì²éÍæ¼ÒtoÕ ðµ ÐÄ·¨Ðúng²»Ðúng´ïµ½ÁËÒªÇó(Ç°ÁùÖÖÐÆng c¤p tâm pháp ´óÓÚµÈÓÚ30c¤p)
	
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 70 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("Nhi®m vø này yêu c¥u 6 loÕi tâm pháp ð«u ðÕt c¤p 70.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	-- C¥n ÍøÍæ¼ÒÉíÉÏ¶ªmµt cáiÎïÆ·
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission(sceneId,selfId, x212128_g_MissionId, x212128_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		local strText = format("#YDanh sách nhi®m vø#W: cüa các hÕ ðã ð¥y r°i")
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = format("#Y Tiªp nh§n nhi®m vø: Anh hùng không ngÕi gian truân.")
	Msg2Player(sceneId, selfId, strText,MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212128_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--·ÅÆú
--**********************************
function x212128_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x212128_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x212128_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x212128_g_MissionName)
	AddText(sceneId,x212128_g_MissionComplete)
	AddMoneyBonus( sceneId, x212128_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212128_g_ScriptId,x212128_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212128_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212128_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x212128_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212128_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x212128_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212128_g_exp)
		DelMission( sceneId, selfId, x212128_g_MissionId )
		MissionCom( sceneId, selfId, x212128_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Hoàn thành nhi®m vø: Anh hùng không ngÕi gian truân",MSG2PLAYER_PARA )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212128_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212128_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212128_OnItemChanged( sceneId, selfId, itemdataId )
end

