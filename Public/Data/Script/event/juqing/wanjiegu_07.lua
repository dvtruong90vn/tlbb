-- ´ó½ø¾ü

--MisDescBegin
--½Å±¾ºÅ
x200007_g_ScriptId = 200007

--ÈÎÎñºÅ
x200007_g_MissionId = 7

--Ç°ĞøÈÎÎñ
x200007_g_PreMissionId = 6

--Ä¿±êNPC
x200007_g_Name	="Ğoàn Chính Thu¥n"
x200007_g_Name1 ="Ğoàn Chính Minh"

--ÈÎÎñ¹éÀà
x200007_g_MissionKind = 51

--ĞÆng c¤p nhi®m vø 
x200007_g_MissionLevel = 20

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200007_g_IfMissionElite = 0

--ÈÎÎñÃû
x200007_g_MissionName="ĞÕi tiªn quân"
--ÈÎÎñÃèÊö
x200007_g_MissionInfo="#{Mis_juqing_0007}"
--Møc tiêu nhi®m vø
x200007_g_MissionTarget="#{Mis_juqing_Tar_0007}"		

x200007_g_MissionContinue="  Các hÕ tìm ta có vi®c gì?"
--Ìá½»Ê±npctoÕ ğµ »°
x200007_g_MissionComplete="  Cu¯i cùng các ngß½i ğã t¾i"

x200007_g_MoneyBonus=1580
x200007_g_exp=12000

x200007_g_Custom	= { {id="Ğã hµ t¯ng Ğoàn Chính Thu¥n",num=1} }

--MisDescEnd

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200007_OnDefaultEvent( sceneId, selfId, targetId, missionIndex )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	
	if IsHaveMission(sceneId,selfId,x200007_g_MissionId) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, x200007_g_MissionName)
			AddText(sceneId, x200007_g_MissionContinue)
			--AddText(sceneId,"#{M_SHOUHUO}#r")
			--AddMoneyBonus( sceneId, x200007_g_MoneyBonus )
		EndEvent( )
		local bDone = x200007_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200007_g_ScriptId,x200007_g_MissionId,bDone)
	elseif x200007_CheckAccept(sceneId,selfId) > 0 then

		BeginEvent(sceneId)
			AddText(sceneId, x200007_g_MissionName)
			AddText(sceneId, x200007_g_MissionInfo)
			AddText(sceneId, "#{M_MUBIAO}#r")
			AddText(sceneId, x200007_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200007_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200007_g_ScriptId,x200007_g_MissionId)
	end	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200007_OnEnumerate( sceneId, selfId, targetId )
	if 0 > GetLevel(sceneId, selfId)  then
		return
	end
	
	-- Èç¹ûÇ°ĞøÈÎÎñ1Ã»ÓĞÍê³É,¾ÍTr· v«
	if IsMissionHaveDone(sceneId, selfId, 6) <= 0   then
		return
	end
	-- Èç¹û±¾ÈÎÎñÒÑ¾­Íê³É,¾ÍTr· v«
	if IsMissionHaveDone(sceneId, selfId, x200007_g_MissionId) > 0 then
   	return
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif IsHaveMission(sceneId, selfId, x200007_g_MissionId) > 0 then

		if GetName(sceneId, targetId) == x200007_g_Name1  then
			--local misIndex = GetMissionIndexByID(sceneId, selfId, x200007_g_MissionId) 
			--if GetMissionParam(sceneId, selfId, misIndex, 0) == 1 	then   --Èç¹û»¤ËÍÍê³É
			if LuaFnGetCopySceneData_Param(sceneId, 11) >= 4   then
				AddNumText(sceneId, x200007_g_ScriptId, x200007_g_MissionName,2,0);
			end
		end

	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x200007_CheckAccept(sceneId, selfId) > 0 then
		if GetName(sceneId, targetId) == x200007_g_Name then
			AddNumText(sceneId, x200007_g_ScriptId, x200007_g_MissionName,1,-1);
		end
  end
end

--**********************************
-- 
--**********************************
function x200007_OnLockedTarget( sceneId, selfId, targetId, missionIndex )

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200007_CheckAccept( sceneId, selfId )
	-- ½ÓÈÎÎñtoÕ ğµ Ìõ¼şĞúng,ÈËÎï´ïµ½20c¤pÒÔÉÏ,²¢ÇÒÍê³ÉÁËÇ°ĞøÈÎÎñ
	if GetLevel(sceneId, selfId) < 20   then
		return 0
	end
	
	if IsMissionHaveDone(sceneId, selfId, x200007_g_PreMissionId ) < 1   then
		return 0
	end
	
	-- Èç¹û»¤ËÍÒÑ¾­¿ªÊ¼,¾Í²»ÄÜÔÙ½ÓCái này ÈÎÎñ
	if LuaFnGetCopySceneData_Param(sceneId, 25) == 1   then
		return 0
	end

	return 1

end

--**********************************
--Tiªp thø
--**********************************
function x200007_OnAccept( sceneId, selfId, targetId )

	if x200007_CheckAccept( sceneId, selfId ) < 1 then
		return
	end

	-- ¼ì²âÍæ¼ÒĞúng²»ĞúngÒÑ¾­Íê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, x200007_g_MissionId) > 0   then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200007_g_MissionId, x200007_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: ĞÕi tiªn quân",MSG2PLAYER_PARA )

	-- Í¨Öª¸±±¾³¡¾°¼ÆÊ±Æ÷,M· ra »¤ËÍ¾çÇé
	if LuaFnGetCopySceneData_Param(sceneId, 11) == 0 then
		LuaFnSetCopySceneData_Param(sceneId, 11, 1)
		LuaFnSetCopySceneData_Param(sceneId, 12, targetId)
	end
	
	-- b¡t ğ¥u»¤ËÍºó,É¾³ı  Íò½Ù¹ÈÎÀ±ø 
	local nMonsterNum1 = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=0, nMonsterNum1-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		if GetName(sceneId, nMonsterId)  == "V® binh VÕn Kiªp C¯c"  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end

	LuaFnSetCopySceneData_Param(sceneId, 25, 1)

end

--**********************************
--·ÅÆú
--**********************************
function x200007_OnAbandon( sceneId, selfId )
  --½«»¤ËÍnpcË²ÒÆ»ØÔ­À´Î»ÖÃ
  DelMission(sceneId, selfId, x200007_g_MissionId)
  
end

--**********************************
--¼ÌĞø
--**********************************
function x200007_OnContinue( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,x200007_g_MissionName)
		AddText(sceneId,x200007_g_MissionComplete)
	EndEvent( )
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x200007_g_ScriptId, x200007_g_MissionId)

end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200007_CheckSubmit( sceneId, selfId )
	
	--local misIndex = GetMissionIndexByID(sceneId, selfId, x200007_g_MissionId) 
	--local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)
	
	--1, Ğúng·ñÓĞCái này ÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200007_g_MissionId) < 1 then
		return 0;
	end
	
	--2, Ğúng·ñÒÑ¾­Íê³ÉCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200007_g_MissionId) > 0  then
		return 0;
	end

	--3, ÈÎÎñÌØ¶¨ÅĞ¶Ï	
	local bComplete = LuaFnGetCopySceneData_Param(sceneId, 11)
	if bComplete >=4  then
		return 1
	else
		return 0
	end
	
end

--**********************************
--Ìá½»
--**********************************
function x200007_OnSubmit( sceneId, selfId, targetId, selectRadioId, missionIndex )

	-- ¼ì²âĞúng²»ĞúngThöa mãnHoàn t¤t nhi®m vøtoÕ ğµ Ìõ¼ş
	if x200007_CheckSubmit(sceneId, selfId ) ~= 1   then
		return
	end

	if DelMission( sceneId,selfId, x200007_g_MissionId ) ~= 1 then
		return
	end

	--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
	MissionCom( sceneId,selfId, x200007_g_MissionId )
	AddMoney(sceneId,selfId,x200007_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,x200007_g_exp)
	
	Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: ĞÕi tiªn quân",MSG2PLAYER_PARA )

	-- µ÷ÓÃºóĞøÈÎÎñ
	CallScriptFunction((200008), "OnDefaultEvent",sceneId, selfId, targetId )

end

function x200007_OnHumanDie(sceneId, selfId)

end

--**********************************
--¶¨Ê±ÊÂ¼ş
--**********************************
function x200007_OnTimer(sceneId,selfId)--,missionIndex)

end
