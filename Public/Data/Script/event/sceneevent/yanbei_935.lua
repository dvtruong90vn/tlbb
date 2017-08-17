--NhÕn B¡c Çå³ýÐÜ»¼
--212122

--MisDescBegin
--½Å±¾ºÅ
x212122_g_ScriptId = 212122

--Tiªp thøÈÎÎñNPCÊôÐÔ
x212122_g_Position_X=234
x212122_g_Position_Z=192
x212122_g_SceneID=19
x212122_g_AccomplishNPC_Name="Khúc Ðoan"

--ÈÎÎñºÅ
x212122_g_MissionId = 935

--Ä¿±êNPC
x212122_g_Name	="Khúc Ðoan"

--ÈÎÎñ¹éÀà
x212122_g_MissionKind = 30

--ÐÆng c¤p nhi®m vø 
x212122_g_MissionLevel = 46

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x212122_g_IfMissionElite = 0

--ÈÎÎñÃû
x212122_g_MissionName="Thanh tr× hùng hoÕn"
x212122_g_MissionInfo="#{Mis_30_60_desc_010}"
x212122_g_MissionTarget="    Khúc Ðoan · NhÕn B¡c #{_INFOAIM233,192,19, Khúc Ðoan} yêu c¥u các hÕ ði giªt 20 con H°ng Phong Hùng #{_INFOAIM233,93,19,-1}. "
x212122_g_MissionContinue="  Các hÕ ðã giªt chªt 20 con H°ng Phong Hùng chßa ?"
x212122_g_MissionComplete="  Th§t là quá t¯t r°i, cÑ nhß thª, H°ng Phong Hùng s¨ không dám ðªn ån trµm quân lß½ng næa r°i."

x212122_g_MoneyBonus=10000
x212122_g_exp=12000

x212122_g_Custom	= { {id="Ðã giªt chªt H°ng Phong Hùng",num=20} }
x212122_g_IsMissionOkFail = 0


--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212122_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x212122_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212122_g_MissionId) > 0)  then
		--x212122_OnContinue( sceneId, selfId, targetId )
		local bDone = x212122_CheckSubmit( sceneId, selfId )
		BeginEvent(sceneId)
			AddText(sceneId,x212122_g_MissionName)
			AddText(sceneId,x212122_g_MissionContinue)
		EndEvent( )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212122_g_ScriptId,x212122_g_MissionId,bDone)		
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212122_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		local  PlayerName=GetName(sceneId,selfId)	
		BeginEvent(sceneId)
			AddText(sceneId,x212122_g_MissionName)
			AddText(sceneId,x212122_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212122_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x212122_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212122_g_ScriptId,x212122_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212122_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212122_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212122_g_MissionId) > 0 then
		AddNumText(sceneId, x212122_g_ScriptId,x212122_g_MissionName,2,-1);
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212122_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x212122_g_ScriptId,x212122_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x212122_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212122_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel(sceneId, selfId) < x212122_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x212122_OnAccept( sceneId, selfId, targetId )
	if x212122_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	-- ¼ì²éÍæ¼ÒtoÕ ðµ ÐÄ·¨Ðúng²»Ðúng´ïµ½ÁËÒªÇó(Ç°ÁùÖÖÐÆng c¤p tâm pháp ´óÓÚµÈÓÚ30c¤p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 45 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("Nhi®m vø này yêu c¥u 6 loÕi tâm pháp ð«u ðÕt c¤p 45.")
	--		AddText(sceneId, strText)
	-- EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission(sceneId,selfId, x212122_g_MissionId, x212122_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		Msg2Player(sceneId, selfId,"#YDanh sách nhi®m vø#W: cüa các hÕ ðã ð¥y r°i" , MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, "#YDanh sách nhi®m vø#W: cüa các hÕ ðã ð¥y r°i")
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	Msg2Player(sceneId, selfId,"#Y Tiªp nh§n nhi®m vø: Thanh Tr× Hùng HoÕn.",MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, "#Y Tiªp nh§n nhi®m vø: Thanh Tr× Hùng HoÕn.")
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212122_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 0)
	
	-- Íæ¼Ò¹ØÐÄÉ±¹Ö
	SetMissionEvent( sceneId,selfId,x212122_g_MissionId, 0 )

end

--**********************************
--·ÅÆú
--**********************************
function x212122_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x212122_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x212122_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x212122_g_MissionName)
	AddText(sceneId,x212122_g_MissionComplete)
	AddMoneyBonus( sceneId, x212122_g_MoneyBonus )
  EndEvent()
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212122_g_ScriptId,x212122_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212122_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212122_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212122_g_MissionId)
	if GetMissionParam(sceneId, selfId, misIndex, 0) < 1  then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x212122_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212122_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x212122_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212122_g_exp)
		DelMission( sceneId, selfId, x212122_g_MissionId )
		MissionCom( sceneId, selfId, x212122_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Hoàn thành nhi®m vø: Thanh Tr× Hùng HoÕn",MSG2PLAYER_PARA )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212122_OnKillObject( sceneId, selfId, objdataId, objId )
	local monsterName = GetMonsterNamebyDataId(objdataId)
	if monsterName == "H°ng Phong Hùng"    then
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			if IsHaveMission(sceneId, humanObjId, x212122_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x212122_g_MissionId)
				if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
					local ct = GetMissionParam(sceneId, humanObjId, misIndex, 1)
					if ct < 20    then
						SetMissionByIndex(sceneId, humanObjId, misIndex, 1, ct+1)
						-- Í¨Öª¿Í»§¶Ë
			     	BeginEvent(sceneId)
							local strText = format("Ðã giªt chªt H°ng Phong Hùng: %d/20", ct+1 )
							AddText(sceneId, strText)
					  EndEvent(sceneId)
				  	DispatchMissionTips(sceneId,humanObjId)
						if ct+1 >= 20  then
							SetMissionByIndex( sceneId, humanObjId, misIndex, 0, 1 )
						end
					end
				end
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212122_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212122_OnItemChanged( sceneId, selfId, itemdataId )
end

