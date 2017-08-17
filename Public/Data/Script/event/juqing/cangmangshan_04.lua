-- ÔË³ïá¡á¢  »Ø²ÔÃ£É½ÕÒÒ®ÂÉºé»ù,°ÑÒ®ÂÉÓà¶ÃtoÕ ğµ ×÷Õ½¼Æ»®¸æËßËû.


--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200033_g_ScriptId = 200033

--ÈÎÎñºÅ
x200033_g_MissionId = 29

--Ç°ĞøÈÎÎñºÅ
x200033_g_PreMissionId = 28

--Ä¿±êNPC
x200033_g_Name = "Gia Lu§t H°ng C½ "

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200033_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x200033_g_MissionLevel = 50

--ÈÎÎñ¹éÀà
x200033_g_MissionKind = 52

--ÈÎÎñÎÄ±¾ÃèÊö
x200033_g_MissionName="Bày mßu tính kª"
x200033_g_MissionInfo="#{Mis_juqing_0029}"
x200033_g_MissionTarget="#{Mis_juqing_Tar_0029}"	--Møc tiêu nhi®m vø
x200033_g_MissionComplete="  Quä không h± doanh nh¤t phiªn trung thành, còn là tß¾ng quân thiên tài. Nªu nhß l¥n này th§t sñ có th¬ giäi tr× phän loÕn, trçm nh¤t ğ¸nh s¨ phong cho quan chÑc ğô ğ¯c. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x200033_g_MoneyBonus=18000
x200033_g_exp=20000

x200033_g_Custom	= { {id="Ğã tìm ğßşc Gia Lu§t H°ng C½",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200033_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200033_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200033_g_MissionId) > 0)  then
		-- ¼ì²âĞúng²»ĞúngTÕi ¸±±¾,ÔÙ¼ì²âĞúng²»Ğúng,Èç¹ûĞúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
			-- ¼ì²âÏÂTên,°²È« ği¬m ği¬m
			if GetName(sceneId, targetId) == x200033_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200033_g_MissionName)
				AddText(sceneId,x200033_g_MissionComplete)
				AddMoneyBonus( sceneId, x200033_g_MoneyBonus )
		    EndEvent( )
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200033_g_ScriptId,x200033_g_MissionId)
			end
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200033_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
		AddText(sceneId,x200033_g_MissionName)
		AddText(sceneId,x200033_g_MissionInfo)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200033_g_MissionTarget)
		AddText(sceneId,"#{M_SHOUHUO}#r")
		AddMoneyBonus( sceneId, x200033_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200033_g_ScriptId,x200033_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200033_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200033_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200033_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		local sceneType = LuaFnGetSceneType(sceneId) ;
		if sceneType == 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
			AddNumText(sceneId, x200033_g_ScriptId,x200033_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200033_CheckAccept(sceneId,selfId) > 0 then	
		AddNumText(sceneId,x200033_g_ScriptId,x200033_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200033_CheckAccept( sceneId, selfId )
	--ÅĞ¶¨Ìõ¼ş
	--1,Ç°ĞøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200033_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200033_g_MissionId) > 0  then
		return 0
	end
	
	--2,µÈc¤p´ïµ½20
	if GetLevel(sceneId, selfId) < x200033_g_MissionLevel   then
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
function x200033_OnAccept( sceneId, selfId, targetId )

	if x200033_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200033_g_MissionId, x200033_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Bày mßu tính kª",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200033_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x200033_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200033_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x200033_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200033_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200033_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ¿ÉÒÔÌá½»toÕ ğµ Ìõ¼şÅĞ¶¨
	-- 1,ÓĞCái này ÈÎÎñ,
	if( IsHaveMission(sceneId,selfId,x200033_g_MissionId) > 0)  then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x200033_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200033_g_exp)

		DelMission( sceneId,selfId,  x200033_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId,  x200033_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Bày mßu tính kª",MSG2PLAYER_PARA )

		-- µ÷ÓÃºóĞøÈÎÎñ
		CallScriptFunction((200035), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200033_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200033_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200033_OnItemChanged( sceneId, selfId, itemdataId )
	
end

