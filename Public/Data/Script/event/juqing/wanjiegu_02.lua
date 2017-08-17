--¾çÇéÈÎÎñ
--Íò½Ù¹È,°×Ìì
-- Ïà»áTÕi Íò½Ù¹È    ´Ó¸±±¾ÍâÍ·toÕ ğµ ¶ÎÕı´¾´¦½ÓÈÎÎñ,µ½¸±±¾ÀïÍ·ºÍ¶ÎÕı´¾»ãºÏ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200002_g_ScriptId = 200002

--ÈÎÎñºÅ
x200002_g_MissionId = 5

--Ç°ĞøÈÎÎñºÅ
x200002_g_PreMissionId = 4

--Ä¿±êNPC
x200002_g_Name = "Ğoàn Chính Thu¥n"

--Tiªp thøÈÎÎñNPCÊôĞÔ
x200002_g_Position_X=193
x200002_g_Position_Z=110
x200002_g_SceneID=2
x200002_g_AccomplishNPC_Name="Hoa Hách C¤n"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200002_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x200002_g_MissionLevel = 20

--ÈÎÎñ¹éÀà
x200002_g_MissionKind = 51

--ÈÎÎñÎÄ±¾ÃèÊö
x200002_g_MissionName="G£p nhau tÕi VÕn Kiªp C¯c"
x200002_g_MissionInfo="#{Mis_juqing_0005}"
x200002_g_MissionTarget="#{Mis_juqing_Tar_0005}"	--Møc tiêu nhi®m vø
x200002_g_MissionComplete="  $N, các hÕ r¯t cuµc ğã ğªn r°i, chúng ta ğã ğşi các hÕ ğã lâu r°i. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x200002_g_MoneyBonus=1800
x200002_g_exp=1500

x200002_g_Custom	= { {id="Ğã tìm ğßşc Ğoàn Chính Thu¥n",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200002_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200002_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200002_g_MissionId) > 0)  then
		-- ¼ì²âĞúng²»ĞúngTÕi ¸±±¾,ÔÙ¼ì²âĞúng²»Ğúng,Èç¹ûĞúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
			-- ¼ì²âÏÂTên,°²È« ği¬m ği¬m
			if GetName(sceneId, targetId) == x200002_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200002_g_MissionName)
				AddText(sceneId,x200002_g_MissionComplete)
				AddMoneyBonus( sceneId, x200002_g_MoneyBonus )
		    EndEvent( )
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200002_g_ScriptId,x200002_g_MissionId)
			end
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200002_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200002_g_MissionName)
			AddText(sceneId,x200002_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200002_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200002_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200002_g_ScriptId,x200002_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200002_OnEnumerate( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200002_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200002_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		local sceneType = LuaFnGetSceneType(sceneId) ;
		if sceneType == 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
			AddNumText(sceneId, x200002_g_ScriptId,x200002_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200002_CheckAccept(sceneId,selfId) > 0 then	
		AddNumText(sceneId,x200002_g_ScriptId,x200002_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200002_CheckAccept( sceneId, selfId )
	--ÅĞ¶¨Ìõ¼ş
	--1,Ç°ĞøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200002_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200002_g_MissionId) > 0  then
		return 0
	end
	
	--2,µÈc¤p´ïµ½20
	if GetLevel(sceneId, selfId) < 20   then
		return 0
	end

	--3,³¡¾°²»Ğúng¸±±¾
	local sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType == 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
		return 0
	end
	
	return 1
end


--**********************************
--Tiªp thø
--**********************************
function x200002_OnAccept( sceneId, selfId, targetId )

	if x200002_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200002_g_MissionId, x200002_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: G£p nhau tÕi VÕn Kiªp C¯c",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200002_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x200002_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200002_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x200002_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200002_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200002_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ¿ÉÒÔÌá½»toÕ ğµ Ìõ¼şÅĞ¶¨
	-- 1,ÓĞCái này ÈÎÎñ,
	if( IsHaveMission(sceneId,selfId,x200002_g_MissionId) > 0)  then
		AddMoney(sceneId,selfId,x200002_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200002_g_exp)

		DelMission( sceneId, selfId,  x200002_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId, selfId, x200002_g_MissionId )
		Msg2Player( sceneId, selfId, "#YHoàn t¤t nhi®m vø#W: G£p nhau tÕi VÕn Kiªp C¯c",MSG2PLAYER_PARA )
		
		-- µ÷ÓÃºóĞøÈÎÎñ
		CallScriptFunction((200006), "OnDefaultEvent",sceneId, selfId, targetId )
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200002_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200002_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200002_OnItemChanged( sceneId, selfId, itemdataId )
	
end

