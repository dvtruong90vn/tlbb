-- 	ÇÚÍõ   °ÑLinh¹ú»ÊµÛtoÕ ğµ Ê¥Ö¼½»¸øNhÕn B¡ctoÕ ğµ Ò®ÂÉÓà¶Ã.

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200032_g_ScriptId = 200032

--ÈÎÎñºÅ
x200032_g_MissionId = 28

--Ç°ĞøÈÎÎñºÅ
x200032_g_PreMissionId = 27

--Tiªp thøÈÎÎñNPCÊôĞÔ
x200032_g_Position_X=195
x200032_g_Position_Z=41
x200032_g_SceneID=19
x200032_g_AccomplishNPC_Name="Gia Lu§t Dß Ğ²"

--Ä¿±êNPC
x200032_g_Name = "Gia Lu§t Dß Ğ² "

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200032_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x200032_g_MissionLevel = 50

--ÈÎÎñ¹éÀà
x200032_g_MissionKind = 52

--ÈÎÎñÎÄ±¾ÃèÊö
x200032_g_MissionName="C¥n Vß½ng"
x200032_g_MissionInfo="#{Mis_juqing_0028}"
x200032_g_MissionTarget="#{Mis_juqing_Tar_0028}"	--Møc tiêu nhi®m vø
x200032_g_MissionComplete="  MÕt tß¾ng tiªp chï, nh¤t ğ¸nh không phø Hoàng ğª tr÷ng thác. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x200032_g_MoneyBonus=21600
x200032_g_exp=22000

x200032_g_Custom	= { {id="Ğã ğÕt ğßşc thánh chï hoàng ğª Li­u qu¯c",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200032_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200032_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200032_g_MissionId) > 0)  then
		-- ¼ì²âÏÂTên,°²È« ği¬m ği¬m
		if GetName(sceneId, targetId) == x200032_g_Name  then
	    BeginEvent(sceneId)
			AddText(sceneId,x200032_g_MissionName)
			AddText(sceneId,x200032_g_MissionComplete)
			AddMoneyBonus( sceneId, x200032_g_MoneyBonus )
	    EndEvent( )
	    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200032_g_ScriptId,x200032_g_MissionId)
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200032_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
		AddText(sceneId,x200032_g_MissionName)
		AddText(sceneId,x200032_g_MissionInfo)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200032_g_MissionTarget)
		AddText(sceneId,"#{M_SHOUHUO}#r")
		AddMoneyBonus( sceneId, x200032_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200032_g_ScriptId,x200032_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200032_OnEnumerate( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200032_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200032_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		if GetName(sceneId, targetId) == x200032_g_Name  then
			AddNumText(sceneId, x200032_g_ScriptId,x200032_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200032_CheckAccept(sceneId,selfId) > 0 then	
		AddNumText(sceneId,x200032_g_ScriptId,x200032_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200032_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒĞúng²»ĞúngÒÑ¾­×ö¹ı
	if (IsMissionHaveDone(sceneId,selfId,x200032_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200032_g_MissionLevel then
		return 0
	end
	
	-- Ç°ĞøÈÎÎñtoÕ ğµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x200032_g_PreMissionId) < 1  then
		return 0
	end
	
	--3,³¡¾°²»Ğúng¸±±¾
	local sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType ~= 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
		return 0
	end
	
	return 1
end


--**********************************
--Tiªp thø
--**********************************
function x200032_OnAccept( sceneId, selfId, targetId )

	if x200032_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	-- C¥n ÍøÍæ¼ÒÉíÉÏ¶ªmµt cáiÎïÆ·
	BeginAddItem( sceneId )
		AddItem( sceneId, 40001008, 1 )
	local ret = EndAddItem( sceneId, selfId )

	if ret <= 0 then 
		--ÌáÊ¾²»ÄÜ½ÓÈÎÎñÁË
		Msg2Player(  sceneId, selfId,"#Yhành Trang nhi®m vø#W cüa các hÕ ğã ğ¥y", MSG2PLAYER_PARA )
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		local ret = AddMission( sceneId,selfId, x200032_g_MissionId, x200032_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
			return
		end
		AddItemListToHuman(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: C¥n Vß½ng",MSG2PLAYER_PARA )
		local misIndex = GetMissionIndexByID(sceneId,selfId,x200032_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	end

end

--**********************************
--·ÅÆú
--**********************************
function x200032_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200032_g_MissionId )
	DelItem( sceneId, selfId, 40001008, 1 )	
 
end

--**********************************
--¼ÌĞø
--**********************************
function x200032_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200032_CheckSubmit( sceneId, selfId, selectRadioId )

end

--**********************************
--Ìá½»
--**********************************
function x200032_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ¿ÉÒÔÌá½»toÕ ğµ Ìõ¼şÅĞ¶¨
	-- 1,ÓĞCái này ÈÎÎñ,
	if( IsHaveMission(sceneId,selfId,x200032_g_MissionId) > 0)  then
		--Ìí¼ÓÈÎÎñ½±Àø
		DelItem( sceneId, selfId, 40001008, 1 )	
		AddMoney(sceneId,selfId, x200032_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200032_g_exp)

		DelMission( sceneId, selfId,  x200032_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId, selfId,  x200032_g_MissionId )
		Msg2Player( sceneId, selfId,"#YNhi®m vø hoàn thành#W: C¥n Vß½ng",MSG2PLAYER_PARA )

		-- µ÷ÓÃºóĞøÈÎÎñ
		CallScriptFunction((200033), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200032_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200032_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200032_OnItemChanged( sceneId, selfId, itemdataId )
	
end


