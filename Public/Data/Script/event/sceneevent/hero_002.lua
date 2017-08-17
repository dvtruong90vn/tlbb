-- 212129
-- ¹ÅÀ´Ó¢ÐÛ½Ô¼ÅÄ¯

--MisDescBegin
--½Å±¾ºÅ
x212129_g_ScriptId = 212129

--Tiªp thøÈÎÎñNPCÊôÐÔ
x212129_g_Position_X=274
x212129_g_Position_Z=381
x212129_g_SceneID=0
x212129_g_AccomplishNPC_Name="Tß Mã Quang"

--ÈÎÎñºÅ
x212129_g_MissionId = 251

--Ä¿±êNPC
x212129_g_Name	="Tß Mã Quang"

--ÈÎÎñ¹éÀà
x212129_g_MissionKind = 55

--ÐÆng c¤p nhi®m vø 
x212129_g_MissionLevel = 75

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x212129_g_IfMissionElite = 0

--ÈÎÎñÃû
x212129_g_MissionName="Cô lai anh hùng ð«u cô ðµc"
x212129_g_MissionInfo="#{Mis_75_desc_002}"
x212129_g_MissionTarget="    Tìm Tß Mã Quang · LÕc Dß½ng #{_INFOAIM274,381,0, Tß Mã Quang}. "
--x212129_g_MissionContinue="  ÉúÃüÈç¹ûÄÜ¹»ÖØÀ´mµt ´Î,Îmµt áÔõÃ´Ñ¡ÔñÄØ?¼ÈÈ»ÕæÊµºÍÐé»ÃÎÞ´Ó·Ö±æ,ÎªºÎ²»Ìý´ÓÐÄLinhtoÕ ðµ ÕÙ»½×ö³ö¾ñÔñÄØ."
x212129_g_MissionComplete="  L¸ch sØ là 1 d°ng sông dài, Ba ðào c±n c±n, Bôn lßu b¤t tÑc. Nhæng v¸ anh hùng hào ki®t, oanh oanh li®t li®t ra ði và s¨ không bao gi¶ quay v«...."

x212129_g_MoneyBonus=5000
x212129_g_exp=50000

x212129_g_Custom	= { {id="Ðã tìm th¤y Tß Mã Quang",num=1} }
x212129_g_IsMissionOkFail = 0


--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212129_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x212129_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212129_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212129_g_Name then
			x212129_OnContinue( sceneId, selfId, targetId )
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212129_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212129_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212129_g_MissionName)
				AddText(sceneId,x212129_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212129_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212129_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212129_g_ScriptId,x212129_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212129_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212129_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212129_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212129_g_Name then
			AddNumText(sceneId, x212129_g_ScriptId,x212129_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212129_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212129_g_Name then
			AddNumText(sceneId,x212129_g_ScriptId,x212129_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x212129_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212129_g_MissionId) > 0 ) then
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
function x212129_CheckAcceptEx( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212129_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel(sceneId, selfId) < x212129_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x212129_OnAccept( sceneId, selfId, targetId )
	if x212129_CheckAcceptEx(sceneId, selfId) < 1   then
		BeginEvent(sceneId)
			AddText( sceneId, "  Nhi®m vø này yêu c¥u ðÆng c¤p nhân v§t ðÕt c¤p 75, và 6 loÕi tâm pháp ð«u ðÕt c¤p 70 m¾i có th¬ tiªp nh§n." )
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ¼ì²éÍæ¼ÒtoÕ ðµ ÐÄ·¨Ðúng²»Ðúng´ïµ½ÁËÒªÇó(Ç°ÁùÖÖÐÆng c¤p tâm pháp ´óÓÚµÈÓÚ30c¤p)
	
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 70 ) == 0  then
   --	BeginEvent(sceneId)
	--		local strText = format("Nhi®m vø này yêu c¥u 6 loÕi tâm pháp ð«u ðÕt c¤p 70.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	-- C¥n ÍøÍæ¼ÒÉíÉÏ¶ªmµt cáiÎïÆ·
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission(sceneId,selfId, x212129_g_MissionId, x212129_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		local strText = format("#YDanh sách nhi®m vø#W: cüa các hÕ ðã ð¥y r°i")
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = format("#Y Tiªp nh§n nhi®m vø: C± lai anh hùng ð«u cô ðµc.")
	Msg2Player(sceneId, selfId, strText,MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212129_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
	
end

--**********************************
--·ÅÆú
--**********************************
function x212129_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x212129_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x212129_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x212129_g_MissionName)
	AddText(sceneId,x212129_g_MissionComplete)
	AddMoneyBonus( sceneId, x212129_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212129_g_ScriptId,x212129_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212129_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212129_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x212129_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212129_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x212129_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212129_g_exp)
		DelMission( sceneId, selfId, x212129_g_MissionId )
		MissionCom( sceneId, selfId, x212129_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Hoàn thành nhi®m vø: C± lai anh hùng ð«u cô ðµc",MSG2PLAYER_PARA )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212129_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212129_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212129_OnItemChanged( sceneId, selfId, itemdataId )
end

