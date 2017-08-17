-- 200090 
-- ËÍÐÅÈÎÎñ 

--MisDescBegin

--½Å±¾ºÅ
x200090_g_ScriptId = 200090

--ÈÎÎñºÅ
x200090_g_MissionId = 20

--Ç°ÐøÈÎÎñ
x200090_g_PreMissionId = 19

--Tiªp thøÈÎÎñNPCÊôÐÔ
x200090_g_Position_X=307
x200090_g_Position_Z=343
x200090_g_SceneID=0
x200090_g_AccomplishNPC_Name="T× Kinh Lôi"

--Ä¿±êNPC
x200090_g_Name	="T× Kinh Lôi"

--ÈÎÎñ¹éÀà
x200090_g_MissionKind = 47

--ÐÆng c¤p nhi®m vø 
x200090_g_MissionLevel = 40

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200090_g_IfMissionElite = 0

--ÈÎÎñÃû
x200090_g_MissionName="Tø Hi«n Trang"
x200090_g_MissionInfo="#{Mis_juqing_0020}"
x200090_g_MissionTarget="#{Mis_juqing_Tar_0020}"
x200090_g_MissionComplete="  Nªu hai v¸ cao tång Huy«n NÕn ðÕi sß và Huy«n T¸ch ðÕi sß ðªn Tø Hi«n Trang, Thª thì anh hùng thiên hÕ s¨ không còn là r¡n không ð¥u r°i. $N, ða tÕ ngß½i. Nªu g¥n ðây ngß½i không b§n vi®c, có th¬ cùng anh hùng trong Tø Hi«n Trang giao kªt mµt phen"

x200090_g_MoneyBonus=5400
x200090_g_exp=5400

x200090_g_Custom	= { {id="Ðã tìm ðßþc T× Kinh Lôi",num=1} }
x200090_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200090_OnDefaultEvent( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200090_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200090_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x200090_g_Name then
			x200090_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200090_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200090_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200090_g_MissionName)
				AddText(sceneId,x200090_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200090_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x200090_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200090_g_ScriptId,x200090_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200090_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200090_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200090_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x200090_g_Name then
			AddNumText(sceneId, x200090_g_ScriptId,x200090_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200090_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x200090_g_Name then
			AddNumText(sceneId,x200090_g_ScriptId,x200090_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200090_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200090_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200090_g_MissionLevel then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñtoÕ ðµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x200090_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x200090_OnAccept( sceneId, selfId, targetId )
	if x200090_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200090_g_MissionId, x200090_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Tø Hi«n Trang",MSG2PLAYER_PARA )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200090_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x200090_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200090_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200090_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200090_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200090_g_MissionName)
		AddText(sceneId,x200090_g_MissionComplete)
		AddMoneyBonus( sceneId, x200090_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200090_g_ScriptId,x200090_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200090_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200090_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200090_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200090_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x200090_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200090_g_exp)
		DelMission( sceneId,selfId,  x200090_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x200090_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Tø Hi«n Trang",MSG2PLAYER_PARA )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200090_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200090_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200090_OnItemChanged( sceneId, selfId, itemdataId )
end
