-- 200035 ËÄÃæ³ş¸è

--Ò®ÂÉºé»ù ÈÃÍæ¼ÒºÍ ¶Ô»°, TÕi Hoàn t¤t nhi®m vøtoÕ ğµ Ê±ºò,»áÓĞ¾çÇé(¶Ô»°¾çÇé)
--ÔË³ïá¡á¢  »Ø²ÔÃ£É½ÕÒÒ®ÂÉºé»ù,°ÑÒ®ÂÉÓà¶ÃtoÕ ğµ ×÷Õ½¼Æ»®¸æËßËû.

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200035_g_ScriptId = 200035

--ÈÎÎñºÅ
x200035_g_MissionId = 30

--Ç°ĞøÈÎÎñºÅ
x200035_g_PreMissionId = 29

--Ä¿±êNPC
x200035_g_Name = "Tiêu Phong"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200035_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x200035_g_MissionLevel = 50

--ÈÎÎñ¹éÀà
x200035_g_MissionKind = 52

--ÈÎÎñÎÄ±¾ÃèÊö
x200035_g_MissionName="TÑ Di®n S· Ca"
x200035_g_MissionInfo="#{Mis_juqing_0030}"
x200035_g_MissionTarget="#{Mis_juqing_Tar_0030}"	--Møc tiêu nhi®m vø
x200035_g_MissionComplete="  Ra khöi? Không th¬ nào! TÕi hÕ không ği ğßşc næa, lúc tÕi hÕ và nghîa huynh kªt bái kim lang, và ğã th« r¢ng, có phúc cùng hß·ng, có h÷a cùng chia, trong lúc nguy c¤p th¤y h÷a không giúp, Tiêu Phong tôi ğây nh¤t quyªt không làm. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x200035_g_MoneyBonus=1800
x200035_g_exp=1200

x200035_g_Custom	= { {id="Ğã tìm ğßşc Tiêu Phong",num=1} }
--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200035_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200035_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200035_g_MissionId) > 0)  then
		-- ¼ì²âĞúng²»ĞúngTÕi ¸±±¾,ÔÙ¼ì²âĞúng²»Ğúng,Èç¹ûĞúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
			-- ¼ì²âÏÂTên,°²È« ği¬m ği¬m
			if GetName(sceneId, targetId) == x200035_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200035_g_MissionName)
				AddText(sceneId,x200035_g_MissionComplete)
				AddMoneyBonus( sceneId, x200035_g_MoneyBonus )
		    EndEvent( )
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200035_g_ScriptId,x200035_g_MissionId)
			end
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200035_CheckAccept(sceneId, selfId, targetId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
		AddText(sceneId,x200035_g_MissionName)
		AddText(sceneId,x200035_g_MissionInfo)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200035_g_MissionTarget)
		AddText(sceneId,"#{M_SHOUHUO}#r")
		AddMoneyBonus( sceneId, x200035_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200035_g_ScriptId,x200035_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200035_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200035_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200035_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		if GetName(sceneId, targetId) == x200035_g_Name    then
			AddNumText(sceneId, x200035_g_ScriptId,x200035_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200035_CheckAccept(sceneId,selfId,targetId) > 0 then	
		AddNumText(sceneId,x200035_g_ScriptId,x200035_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200035_CheckAccept( sceneId, selfId, targetId )
	--ÅĞ¶¨Ìõ¼ş
	--1,Ç°ĞøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200035_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200035_g_MissionId) > 0  then
		return 0
	end
	
	--2,µÈc¤p´ïµ½50
	if GetLevel(sceneId, selfId) < x200035_g_MissionLevel   then
		return 0
	end
	
	--¼ì²âĞúng²»Ğúng»ÊµÛ
	if GetName(sceneId, targetId) ~= "Gia Lu§t H°ng C½ "    then
		return 0
	end
	
	return 1
end


--**********************************
--Tiªp thø
--**********************************
function x200035_OnAccept( sceneId, selfId, targetId )

	if x200035_CheckAccept(sceneId, selfId, targetId) ~= 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200035_g_MissionId, x200035_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: TÑ Di®n S· Ca",MSG2PLAYER_PARA )

	-- ÕâÀïÓĞº°»°toÕ ğµ ¾çÇé,C¥n Ìí¼Ó
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200035_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)

end

--**********************************
--·ÅÆú
--**********************************
function x200035_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200035_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x200035_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200035_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200035_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ¿ÉÒÔÌá½»toÕ ğµ Ìõ¼şÅĞ¶¨
	-- 1,ÓĞCái này ÈÎÎñ,
	if( IsHaveMission(sceneId,selfId,x200035_g_MissionId) > 0)  then
		AddMoney(sceneId,selfId,x200035_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200035_g_exp)
		DelMission( sceneId,selfId,  x200035_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId,  x200035_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: TÑ Di®n S· Ca",MSG2PLAYER_PARA )
		
		-- µÚmµt ¶Î¾çÇé,³şÍõº°»°ºó,°´ÕÕÂ·Ïß×ß.
		if LuaFnGetCopySceneData_Param(sceneId, 8) < 1  then
			LuaFnSetCopySceneData_Param(sceneId, 8, 1)
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
		end
		
	end
end

--**********************************
--¶¨Ê±ÊÂ¼ş
--**********************************
function x200035_OnTimer(sceneId,selfId)

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200035_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200035_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200035_OnItemChanged( sceneId, selfId, itemdataId )
	
end

