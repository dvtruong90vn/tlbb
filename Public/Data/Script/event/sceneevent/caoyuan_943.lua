--Thäo Nguyên Thäo NguyêntoÕ ðµ ½Ù·Ë
--212125

--MisDescBegin
--½Å±¾ºÅ
x212125_g_ScriptId = 212125

--Tiªp thøÈÎÎñNPCÊôÐÔ
x212125_g_Position_X=164
x212125_g_Position_Z=159
x212125_g_SceneID=20
x212125_g_AccomplishNPC_Name="Tiêu S¡c"

--ÈÎÎñºÅ
x212125_g_MissionId = 943

--Ä¿±êNPC
x212125_g_Name	="Tiêu S¡c"

--ÈÎÎñ¹éÀà
x212125_g_MissionKind = 31

--ÐÆng c¤p nhi®m vø 
x212125_g_MissionLevel = 59

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x212125_g_IfMissionElite = 0

--ÈÎÎñÃû
x212125_g_MissionName="Thäo Nguyên cß¾p phï"
x212125_g_MissionInfo="#{Mis_30_60_desc_018}"
x212125_g_MissionTarget="    Tiêu S¡c cüa thäo nguyên Lan Lång Qu§n #{_INFOAIM163,158,20, Tiêu S¡c} yêu c¥u ngß½i giªt 30 tên Loan Ðao Mã Phï #{_INFOAIM273,156,20,-1}. "
x212125_g_MissionContinue="  Các hÕ ðã giªt 30 tên Loan Ðao Mã Phï chßa ?"
x212125_g_MissionComplete="  Không ng¶ các hÕ vçn còn 2 lßþt."

x212125_g_MoneyBonus=10000
x212125_g_exp=15000

x212125_g_Custom	= { {id="Ðã giªt chªt Loan Ðao Mã Phï",num=30} }
x212125_g_IsMissionOkFail = 0


--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212125_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x212125_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212125_g_MissionId) > 0)  then
		--x212125_OnContinue( sceneId, selfId, targetId )
		local bDone = x212125_CheckSubmit( sceneId, selfId )
		BeginEvent(sceneId)
			AddText(sceneId,x212125_g_MissionName)
			AddText(sceneId,x212125_g_MissionContinue)
		EndEvent( )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212125_g_ScriptId,x212125_g_MissionId,bDone)		
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212125_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		local  PlayerName=GetName(sceneId,selfId)	
		BeginEvent(sceneId)
			AddText(sceneId,x212125_g_MissionName)
			AddText(sceneId,x212125_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212125_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x212125_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212125_g_ScriptId,x212125_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212125_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212125_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212125_g_MissionId) > 0 then
		AddNumText(sceneId, x212125_g_ScriptId,x212125_g_MissionName,2,-1);
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212125_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x212125_g_ScriptId,x212125_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x212125_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x212125_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel(sceneId, selfId) < x212125_g_MissionLevel then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x212125_OnAccept( sceneId, selfId, targetId )
	if x212125_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	-- ¼ì²éÍæ¼ÒtoÕ ðµ ÐÄ·¨Ðúng²»Ðúng´ïµ½ÁËÒªÇó(Ç°ÁùÖÖÐÆng c¤p tâm pháp ´óÓÚµÈÓÚ60c¤p)
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 60 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("Nhi®m vø này yêu c¥u 6 loÕi tâm pháp ð«u ðÕt c¤p 60.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission(sceneId,selfId, x212125_g_MissionId, x212125_g_ScriptId, 0, 0, 0)
	if ret <= 0 then
		Msg2Player(sceneId, selfId,"#YDanh sách nhi®m vø#W: cüa các hÕ ðã ð¥y r°i" , MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, "#YDanh sách nhi®m vø#W: cüa các hÕ ðã ð¥y r°i")
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	Msg2Player(sceneId, selfId,"#Y Tiªp nh§n nhi®m vø: Cß¾p · Thäo Nguyên",MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, "#Y Tiªp nh§n nhi®m vø: Cß¾p · Thäo Nguyên")
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212125_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 0)
	
	-- Íæ¼Ò¹ØÐÄÉ±¹Ö
	SetMissionEvent( sceneId,selfId,x212125_g_MissionId, 0 )

end

--**********************************
--·ÅÆú
--**********************************
function x212125_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x212125_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x212125_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
  BeginEvent(sceneId)
	AddText(sceneId,x212125_g_MissionName)
	AddText(sceneId,x212125_g_MissionComplete)
	AddMoneyBonus( sceneId, x212125_g_MoneyBonus )
  EndEvent()
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212125_g_ScriptId,x212125_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212125_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212125_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212125_g_MissionId)
	if GetMissionParam(sceneId, selfId, misIndex, 0) < 1  then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x212125_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212125_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x212125_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212125_g_exp)
		DelMission( sceneId, selfId, x212125_g_MissionId )
		MissionCom( sceneId, selfId, x212125_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Hoàn thành nhi®m vø: Cß¾p · Thäo Nguyên",MSG2PLAYER_PARA )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212125_OnKillObject( sceneId, selfId, objdataId, objId )
	local monsterName = GetMonsterNamebyDataId(objdataId)
	if monsterName == "Loan Ðao Mã Phï"    then
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			if IsHaveMission(sceneId, humanObjId, x212125_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x212125_g_MissionId)
				if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
					local ct = GetMissionParam(sceneId, humanObjId, misIndex, 1)
					if ct < 30    then
						SetMissionByIndex(sceneId, humanObjId, misIndex, 1, ct+1)
						-- Í¨Öª¿Í»§¶Ë
			     	BeginEvent(sceneId)
							local strText = format("Ðã giªt chªt Loan Ðao Mã Phï: %d/30", ct+1 )
							AddText(sceneId, strText)
					  EndEvent(sceneId)
				  	DispatchMissionTips(sceneId,humanObjId)
						if ct+1 >= 30  then
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
function x212125_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212125_OnItemChanged( sceneId, selfId, itemdataId )
end

