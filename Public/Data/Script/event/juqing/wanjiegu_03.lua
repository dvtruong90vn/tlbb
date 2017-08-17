-- Vi Tiªu Chi Læ

--MisDescBegin
--½Å±¾ºÅ
x200003_g_ScriptId = 200003

--ÈÎÎñºÅ
x200003_g_MissionId = 3

--Ç°ĞøÈÎÎñºÅ
x200003_g_PreMissionId = 2

--Ä¿±êNPC
x200003_g_Name	="Chung Linh"
x200003_g_Name1 ="ThÕch Nhân"

--ÈÎÎñ¹éÀà
x200003_g_MissionKind = 51

--ĞÆng c¤p nhi®m vø 
x200003_g_MissionLevel = 20

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200003_g_IfMissionElite = 0

--ÈÎÎñÃû
x200003_g_MissionName="Vi Tiªu Chi Læ"
--ÈÎÎñÃèÊö
x200003_g_MissionInfo="#{Mis_juqing_0003}"
--Møc tiêu nhi®m vø
x200003_g_MissionTarget="#{Mis_juqing_Tar_0003}"		
--Ìá½»Ê±npctoÕ ğµ »°
x200003_g_MissionComplete="  <— phía trß¾c ThÕch ¯c Kín không chút gió này, các hÕ s¨ tìm th¤y mµt ThÕch Cäm Ğß½ng, T× khe h· bên cÕnh ThÕch Cäm Ğß½ng có th¬ nghe th¤y âm thanh cüa Ğoàn Dñ. >"		

x200003_g_MoneyBonus=100
x200003_g_exp=5600

x200003_g_Custom	= { {id="Ğã hµ t¯ng Chung Linh",num=1} }

--MisDescEnd

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200003_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if IsHaveMission(sceneId,selfId,x200003_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == x200003_g_Name1  then
			--C¥n ÈÎÎñÍê³É²Å¿ÉÒÔ
			--local misIndex = GetMissionIndexByID(sceneId, selfId, x200003_g_MissionId)-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ
			--if GetMissionParam(sceneId, selfId, misIndex, 0) == 1	then   --Èç¹û»¤ËÍÍê³É
			if LuaFnGetCopySceneData_Param(sceneId, 11) == 7  then
				BeginEvent(sceneId)
					AddText(sceneId,x200003_g_Name)
					AddText(sceneId,x200003_g_MissionComplete)
					AddText(sceneId,"#{M_MUBIAO}#r")
					AddText(sceneId,x200003_g_MissionTarget)
				EndEvent( )
				DispatchMissionContinueInfo(sceneId, selfId, targetId, x200003_g_ScriptId, x200003_g_MissionId)
			end
		end
		
	elseif x200003_CheckAccept(sceneId,selfId) > 0 then

		BeginEvent(sceneId)
			AddText(sceneId, x200003_g_MissionName)
			AddText(sceneId, x200003_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId, x200003_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200003_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200003_g_ScriptId,x200003_g_MissionId)
	end	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200003_OnEnumerate( sceneId, selfId, targetId )
	if LuaFnGetCopySceneData_Param(sceneId, 11) ~= 0  then
		if GetName(sceneId, targetId) == x200003_g_Name then
			return
		end
	end

	if 0 > GetLevel(sceneId, selfId)  then
		return
	end
	
	-- Èç¹ûÇ°ĞøÈÎÎñ1Ã»ÓĞÍê³É,¾ÍTr· v«
	if IsMissionHaveDone(sceneId, selfId, 2) <= 0   then
		return
	end
	-- Èç¹û±¾ÈÎÎñÒÑ¾­Íê³É,¾ÍTr· v«
	if IsMissionHaveDone(sceneId, selfId, x200003_g_MissionId) > 0 then
   	return
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif IsHaveMission(sceneId, selfId, x200003_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x200003_g_MissionId)-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ

		if GetMissionParam(sceneId, selfId, misIndex, 0) ~= 1	then   --Èç¹û»¤ËÍÍê³É
			if GetName(sceneId, targetId) == x200003_g_Name then
				--BeginEvent(sceneId)
					AddNumText(sceneId, x200003_g_ScriptId, x200003_g_MissionName,2,-1);
				--EndEvent()	
				DispatchEventList(sceneId, selfId, targetId)
			end
		end
		
		if GetName(sceneId, targetId) == x200003_g_Name1  then
			--if GetMissionParam(sceneId, selfId, misIndex, 0) == 1	then   --Èç¹û»¤ËÍÍê³É
			if LuaFnGetCopySceneData_Param(sceneId, 11) == 7 then
				--BeginEvent(sceneId)
					AddNumText(sceneId, x200003_g_ScriptId, x200003_g_MissionName,2,0);
				--EndEvent()	
				DispatchEventList(sceneId, selfId, targetId)
			end
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x200003_CheckAccept(sceneId, selfId) > 0 then
		if GetName(sceneId, targetId) == x200003_g_Name then
			--BeginEvent(sceneId)
				AddNumText(sceneId, x200003_g_ScriptId, x200003_g_MissionName,1,-1);
			--EndEvent()
			DispatchEventList(sceneId, selfId, targetId)	
		end
  end
end

--**********************************
-- 
--**********************************
function x200003_OnLockedTarget( sceneId, selfId, targetId )

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200003_CheckAccept( sceneId, selfId )
	-- ½ÓÈÎÎñtoÕ ğµ Ìõ¼şĞúng,ÈËÎï´ïµ½20c¤pÒÔÉÏ,²¢ÇÒÍê³ÉÁËÇ°ĞøÈÎÎñ
	if GetLevel(sceneId, selfId) < 20   then
		return 0
	end
	
	if IsMissionHaveDone(sceneId, selfId, x200003_g_PreMissionId ) < 1   then
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
function x200003_OnAccept( sceneId, selfId, targetId )

	if x200003_CheckAccept( sceneId, selfId ) < 1 then
		return
	end

	-- ¼ì²âÍæ¼ÒĞúng²»ĞúngÒÑ¾­Íê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, x200003_g_MissionId) > 0   then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200003_g_MissionId, x200003_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø: Vi Tiªu Chi Læ",MSG2PLAYER_PARA )
	
	-- Í¨Öª¸±±¾¼ÆÊ±Æ÷,¿ªÊ¼»¤ËÍ¾çÇé
	if LuaFnGetCopySceneData_Param(sceneId, 11) == 0 then
		LuaFnSetCopySceneData_Param(sceneId, 11, 1)
		LuaFnSetCopySceneData_Param(sceneId, 12, targetId)
	end
	
end

--**********************************
--·ÅÆú
--**********************************
function x200003_OnAbandon( sceneId, selfId )
  --½«»¤ËÍnpcË²ÒÆ»ØÔ­À´Î»ÖÃ
  DelMission(sceneId, selfId, x200003_g_MissionId)
  
end

--**********************************
--¼ÌĞø
--**********************************
function x200003_OnContinue( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,x200003_g_Name)
		AddText(sceneId,x200003_g_MissionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200003_g_MissionTarget)
	EndEvent( )
	
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x200003_g_ScriptId, x200003_g_MissionId)

end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200003_CheckSubmit( sceneId, selfId )

	--1, Ğúng·ñÓĞCái này ÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200003_g_MissionId) < 1 then
		return 0;
	end
	
	--2, Ğúng·ñÒÑ¾­Íê³ÉCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200003_g_MissionId) > 0  then
		return 0;
	end

	--3, ÈÎÎñÌØ¶¨ÅĞ¶Ï
	local bComplete = LuaFnGetCopySceneData_Param(sceneId, 11)
	if bComplete > 6 then
		return 1
	else
		return 0
	end
	
end

--**********************************
--Ìá½»
--**********************************
function x200003_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	-- ¼ì²âĞúng²»ĞúngThöa mãnHoàn t¤t nhi®m vøtoÕ ğµ Ìõ¼ş
	if x200003_CheckSubmit(sceneId, selfId) < 1 then 
		return
	end

	if DelMission( sceneId,selfId, x200003_g_MissionId ) ~= 1 then
		return
	end

	--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
	MissionCom( sceneId,selfId, x200003_g_MissionId )

	AddMoney(sceneId,selfId,x200003_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,x200003_g_exp)
	

	Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø: Vi Tiªu Chi Læ",MSG2PLAYER_PARA )

	-- µ÷ÓÃºóĞøÈÎÎñ
	CallScriptFunction((200004), "OnDefaultEvent",sceneId, selfId, targetId )
	
end

function x200003_OnHumanDie(sceneId, selfId)
end

--**********************************
--¶¨Ê±ÊÂ¼ş
--**********************************
function x200003_OnTimer(sceneId,selfId)
end
