-- ÌìÊ±²»ÈçµØÀû
-- È¥²ÔÃ£É½Õ½³¡Ì½Ë÷»ÊÌ«ÊåÓùÕÊ¡¢³þÍõ´óÓª¡¢²ÔÃ£É½×óÉ½µÀ,²ÔÃ£É½ÓÒÉ½µÀ.

--MisDescBegin
--½Å±¾ºÅ
x200031_g_ScriptId = 200031

--ÈÎÎñºÅ
x200031_g_MissionId = 27

x200031_g_Name=""

--Ç°ÐøÈÎÎñ
x200031_g_PreMissionId = 26

--ÈÎÎñ¹éÀà
x200031_g_MissionKind = 52

--ÐÆng c¤p nhi®m vø 
x200031_g_MissionLevel = 50

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200031_g_IfMissionElite = 0

--ÈÎÎñÃû
x200031_g_MissionName="Thiên th¶i không b¢ng ð¸a lþi"
x200031_g_MissionInfo="#{Mis_juqing_0027}"
x200031_g_MissionTarget="#{Mis_juqing_Tar_0027}"
x200031_g_MissionComplete="  Có trong tay tình báo này, chúng ta chï có th¬ ch¶ ðþi quân phän loÕn phÕm sai l¥m"
x200031_g_MissionContinue="  Ngß½i ðã thåm dò ngân kh¯ riêng Hoàng Thái Thúc, ðÕi doanh S· Vß½ng, ðß¶ng núi Thß½ng Mang bên trái, ðß¶ng núi Thß½ng Mang bên phäi chßa?"

x200031_g_MoneyBonus=16200
x200031_g_exp=19920

x200031_g_RadioItemBonus={{id=10414009 ,num=1},{id=10414010,num=1},{id=10414011,num=1},{id=10414012,num=1}}

x200031_g_Custom	= { {id="Ðã løc soát S· Vß½ng ðÕi doanh",num=1}
										 ,{id="Ðã løc soát ngân kh¯ riêng cüa Hoàng TháiThúc",num=1} 
										 ,{id="Ðã løc soát ðß¶ng phía Ðông núi Thß½ng Mang",num=1} 
										 ,{id="Ðã løc soát ðß¶ng phía Tây núi Thß½ng Mang",num=1} }

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200031_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200031_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200031_g_MissionId) > 0)  then
		--x200031_OnContinue( sceneId, selfId, targetId )
 		local done = x200031_CheckSubmit( sceneId, selfId )
 		
		BeginEvent(sceneId)
			AddText(sceneId,x200031_g_MissionName);
			AddText(sceneId,x200031_g_MissionContinue);
		EndEvent(sceneId)
 		
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200031_g_ScriptId,x200031_g_MissionId,done)

	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200031_CheckAccept(sceneId,selfId) > 0 then
		--if GetName(sceneId,targetId) ~= x200031_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x200031_g_MissionName)
				AddText(sceneId,x200031_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200031_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r") -- Äã½« ði¬mµ½
				for i, item in x200031_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x200031_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200031_g_ScriptId,x200031_g_MissionId)
		--end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200031_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200031_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200031_g_MissionId) > 0 then
		AddNumText(sceneId, x200031_g_ScriptId,x200031_g_MissionName,2,-1);
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200031_CheckAccept(sceneId,selfId) > 0 then
		--if GetName(sceneId,targetId) ~= x200031_g_Name then
			AddNumText(sceneId,x200031_g_ScriptId,x200031_g_MissionName,1,-1);
		--end
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200031_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200031_g_MissionId) > 0 ) then
		return 0
	end
		
	-- µÈc¤p¼ì²â
	if GetLevel( sceneId, selfId ) < x200031_g_MissionLevel then
		return 0
	end
	
	-- Ç°ÐøÈÎÎñtoÕ ðµ Íê³ÉÇé¿ö
	if IsMissionHaveDone(sceneId,selfId,x200031_g_PreMissionId) < 1  then
		return 0
	end
	
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x200031_OnAccept( sceneId, selfId )
	if x200031_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200031_g_MissionId, x200031_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	Msg2Player( sceneId, selfId,"#YNh§n nhi®m vø#W: Thiên th¶i không b¢ng ð¸a lþi",MSG2PLAYER_PARA )
	
	-- Í¨Öª¹ØÏµ½øÈëÇøÓò
	-- 0 KillObj, 1 EnterArea, 2 ItemChanged, 3 PetChanged, 4 LockedTarget
	SetMissionEvent(sceneId, selfId, x200031_g_MissionId, 1)
	
	-- Ê¹ÓÃÈÎÎñtoÕ ðµ Ç°4Î»À´¼ÇÂ¼Ì½Ë÷toÕ ðµ 4cáiÇøÓò
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200031_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)
	
end

--**********************************
--·ÅÆú
--**********************************
function x200031_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200031_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200031_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200031_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200031_g_MissionName)
		AddText(sceneId,x200031_g_MissionComplete)
		AddMoneyBonus( sceneId, x200031_g_MoneyBonus )
		for i, item in x200031_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200031_g_ScriptId,x200031_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200031_CheckSubmit( sceneId, selfId )

	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200031_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	-- ²éÑ¯4cáiÖµÐúng²»Ðúng¶¼ÖµÎª1ÁË
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200031_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	if GetMissionParam(sceneId, selfId, misIndex, 0) < 1 then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 1) < 1 then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 2) < 1 then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 3) < 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200031_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x200031_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		
		-- 
  	BeginAddItem(sceneId)
		for i, item in x200031_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret < 1 then
			--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Nhi®m vø th¤t bÕi!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200031_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200031_g_exp)

		DelMission( sceneId,selfId,  x200031_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x200031_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Thiên th¶i không b¢ng ð¸a lþi",MSG2PLAYER_PARA )
		
		-- ÉèÖÃ¾çÇé²½Öè1
		LuaFnSetCopySceneData_Param(sceneId, 8, 1)
		LuaFnSetCopySceneData_Param(sceneId, 10, 0)
		LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
	end
end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200031_OnTimer(sceneId,selfId)
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200031_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200031_OnEnterArea( sceneId, selfId, zoneId )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200031_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	
	if zoneId == 0 and
		 LuaFnGetCopySceneData_Param(sceneId, 0) == FUBEN_JUQING_CANGMANGSHAN then
		if GetMissionParam(sceneId, selfId, misIndex, 0) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ðã løc soát S· Vß½ng ÐÕi Doanh: 1/1")
	  	EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		end
		
	elseif zoneId == 1 and
	 	 LuaFnGetCopySceneData_Param(sceneId, 0) == FUBEN_JUQING_CANGMANGSHAN then
		if GetMissionParam(sceneId, selfId, misIndex, 1) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ðã løc soát ngân kh¯ riêng cüa Hoàng Thái Thúc: 1/1")
	  	EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			SetMissionByIndex(sceneId,selfId,misIndex,1,1)
		end
		
	elseif zoneId == 2 and
		 LuaFnGetCopySceneData_Param(sceneId, 0) == FUBEN_JUQING_CANGMANGSHAN then
		if GetMissionParam(sceneId, selfId, misIndex, 2) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ðã løc soát ðß¶ng phía Ðông núi Thß½ng Mang: 1/1")
	  	EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			SetMissionByIndex(sceneId,selfId,misIndex,2,1)
		end
		
	elseif zoneId == 3 and
		 LuaFnGetCopySceneData_Param(sceneId, 0) == FUBEN_JUQING_CANGMANGSHAN then
		if GetMissionParam(sceneId, selfId, misIndex, 3) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ðã løc soát ðß¶ng phía Tây núi Thß½ng Mang: 1/1")
	  	EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			SetMissionByIndex(sceneId,selfId,misIndex,3,1)
		end
		
	end

end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200031_OnItemChanged( sceneId, selfId, itemdataId )
end
