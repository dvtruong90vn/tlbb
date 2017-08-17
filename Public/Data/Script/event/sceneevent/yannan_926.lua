--NhÕn Nam Ë½Í¨Linh¹ú
--212120

--MisDescBegin
--½Å±¾ºÅ
x212120_g_ScriptId = 212120

--Tiªp thøÈÎÎñNPCÊôÐÔ
x212120_g_Position_X=129
x212120_g_Position_Z=50
x212120_g_SceneID=18
x212120_g_AccomplishNPC_Name="Gia Lu§t MÕc Ca"

--ÈÎÎñºÅ
x212120_g_MissionId = 926

--Ä¿±êNPC
x212120_g_Name	="Gia Lu§t MÕc Ca"

--ÈÎÎñ¹éÀà
x212120_g_MissionKind = 29

--ÐÆng c¤p nhi®m vø 
x212120_g_MissionLevel = 31

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x212120_g_IfMissionElite = 0

--ÈÎÎñÃû
x212120_g_MissionName="Tß thông Liêu Qu¯c"
x212120_g_MissionInfo="#{Mis_30_60_desc_001}"
x212120_g_MissionTarget="    Mang m§t hàm cüa Mã Th×a Sänh ðßa cho Gia Lu§t MÕc Ca ½ Nhan Nam #{_INFOAIM128,50,18, Gia Lu§t MÕc Ca}. "
x212120_g_MissionContinue="  Ta nghe nói quan viên cüa ÐÕi T¯ng r¤t tham lam, không biªt có th§t hay không ?"
x212120_g_MissionComplete="  Ðây là lá thß Mã Th×a Sänh ðßa cho ta ß ? Mau mang cho ta xem., à... ... à thì ra là v§y, v§y là quá t¯t r°i. ÐÕi T¯ng có quan viên nhß thª dù có thêm bao nhiêu tß¾ng sî ÐÕi T¯ng dûng cäm chiªn ð¤u cûng không ðáng sþ. Haha ðúng là tr¶i giúp nß¾c ÐÕi Liêu ta! #R<Gia Lu§t MÕc Ca lµ ra vë ð¡c ý trên khuôn m£t.>"

x212120_g_MoneyBonus=6000
x212120_g_exp=7000

x212120_g_Custom	= { {id="Ðã l¤y ðßþc m§t hàm cüa Mã Th×a Sänh",num=1} }
x212120_g_IsMissionOkFail = 0

x212120_g_MisItemId = 40004416 --Âí³ÐÙ»ÃÜº¯

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212120_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x212120_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212120_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212120_g_Name then
			--x212120_OnContinue( sceneId, selfId, targetId )
			BeginEvent(sceneId)
				AddText(sceneId,x212120_g_MissionName)
				AddText(sceneId,x212120_g_MissionContinue)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212120_g_ScriptId,x212120_g_MissionId,1)		
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212120_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212120_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x212120_g_MissionName)
				AddText(sceneId,x212120_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212120_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212120_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212120_g_ScriptId,x212120_g_MissionId)
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212120_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212120_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212120_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212120_g_Name then
			AddNumText(sceneId, x212120_g_ScriptId,x212120_g_MissionName,2,-1);
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212120_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212120_g_Name then
			AddNumText(sceneId,x212120_g_ScriptId,x212120_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x212120_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212120_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel(sceneId, selfId) < x212120_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x212120_OnAccept( sceneId, selfId, targetId )
	if x212120_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- ¼ì²éÍæ¼ÒtoÕ ðµ ÐÄ·¨Ðúng²»Ðúng´ïµ½ÁËÒªÇó(Ç°ÁùÖÖÐÆng c¤p tâm pháp ´óÓÚµÈÓÚ30c¤p)
	--if x212120_CheckAllXinfaLevel(sceneId, selfId, 30) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("Tâm pháp cüa các hÕ ð«u phäi ðÕt ðªn 30 nm¾i có th¬ tiªp nh§n nhi®m vø này.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end

	-- C¥n ¸øÍæ¼ÒÉíÉÏ¶ªmµt cáiÎïÆ·
	BeginAddItem( sceneId )
		AddItem( sceneId, x212120_g_MisItemId, 1 )
	local ret = EndAddItem( sceneId, selfId )

	if ret <= 0  then
		--ÌáÊ¾²»ÄÜ½ÓÈÎÎñÁË
		local strText = "YÔ nhi®m vø cüa các hÕ ðã ð¥y."
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
		
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		ret = AddMission(sceneId,selfId, x212120_g_MissionId, x212120_g_ScriptId, 0, 0, 0)
		if ret <= 0 then
			local strText = "#YDanh sách nhi®m vø#W: cüa các hÕ ðã ð¥y r°i"
			Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
	   	BeginEvent(sceneId)
				AddText(sceneId, strText)
		  EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
			return
		end
		local strText = "#Y Tiªp nh§n nhi®m vø: Tß Thông Liêu Qu¯c."
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
	
		local misIndex = GetMissionIndexByID(sceneId,selfId,x212120_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		AddItemListToHuman(sceneId,selfId)
	end

end

--**********************************
--·ÅÆú
--**********************************
function x212120_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x212120_g_MissionId )
	DelItem( sceneId, selfId, x212120_g_MisItemId, 1 )	
end

--**********************************
--¼ÌÐø
--**********************************
function x212120_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
		AddText(sceneId,x212120_g_MissionName)
		AddText(sceneId,x212120_g_MissionComplete)
		AddMoneyBonus( sceneId, x212120_g_MoneyBonus )
  EndEvent()
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212120_g_ScriptId,x212120_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212120_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212120_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x212120_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212120_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		-- É¾³ýÈÎÎñµÀ¾ß
		DelItem( sceneId, selfId, x212120_g_MisItemId, 1 )	
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x212120_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212120_g_exp)
		DelMission( sceneId, selfId, x212120_g_MissionId )
		MissionCom( sceneId, selfId, x212120_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Hoàn thanh nhi®m vø: Tß Thông Liêu Qu¯c",MSG2PLAYER_PARA )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212120_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212120_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212120_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¼ì²âÐÄ·¨Ðúng²»¹»½ÓÈÎÎñ
--**********************************
function x212120_CheckAllXinfaLevel(sceneId, selfId, level)
	local nMenpai = GetMenPai(sceneId, selfId)
	if nMenpai<0 or nMenpai>8   then
		return 0
	end
	
	for i=1, 6 do
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, nMenpai*6 + i)
		if nXinfaLevel < level    then
			return 0
		end
	end
	return 1
end
