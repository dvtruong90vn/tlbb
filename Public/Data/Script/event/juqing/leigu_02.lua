-- ¾²ºò¼ÑÒô ËÕĞÇºÓ £­£­>¸±±¾ÖĞtoÕ ğµ  ËÕĞÇºÓ
-- 200041

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200041_g_ScriptId = 200041

--ÈÎÎñºÅ
x200041_g_MissionId = 34

--Ç°ĞøÈÎÎñºÅ
x200041_g_PreMissionId = 33

--Tiªp thøÈÎÎñNPCÊôĞÔ
x200041_g_Position_X=152
x200041_g_Position_Z=153
x200041_g_SceneID=14
x200041_g_AccomplishNPC_Name="PhÕm Bách Linh"

--Ä¿±êNPC
x200041_g_Name = "Tô Tinh Hà"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200041_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x200041_g_MissionLevel = 60

--ÈÎÎñ¹éÀà
x200041_g_MissionKind = 53

--ÈÎÎñÎÄ±¾ÃèÊö
x200041_g_MissionName="T¸nh h¥u quª âm"
x200041_g_MissionInfo="#{Mis_juqing_0034}"
x200041_g_MissionTarget="#{Mis_juqing_Tar_0034}"
x200041_g_MissionComplete="  TÕi hÕ cung h¥u ğã lâu r°i, m¶i ğÕi hi®p ng°i vào c¶"

x200041_g_MoneyBonus=7200
x200041_g_exp=6800

x200041_g_RadioItemBonus={{id=10415008 ,num=1},{id=10415009,num=1},{id=10415010,num=1},{id=10415011,num=1}}

x200041_g_Custom	= { {id="Ğã tìm ğßşc Tô Tinh Hà",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200041_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200041_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200041_g_MissionId) > 0)  then
		-- ¼ì²âĞúng²»ĞúngTÕi ¸±±¾,ÔÙ¼ì²âĞúng²»Ğúng,Èç¹ûĞúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
			-- ¼ì²âÏÂTên,°²È« ği¬m ği¬m
			if GetName(sceneId, targetId) == x200041_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200041_g_MissionName)
				AddText(sceneId,x200041_g_MissionComplete)
				AddMoneyBonus( sceneId, x200041_g_MoneyBonus )
				for i, item in x200041_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
		    EndEvent( )
		    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200041_g_ScriptId,x200041_g_MissionId)
			end
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200041_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200041_g_MissionName)
			AddText(sceneId,x200041_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200041_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200041_g_MoneyBonus )
			for i, item in x200041_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200041_g_ScriptId,x200041_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200041_OnEnumerate( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200041_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200041_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		local sceneType = LuaFnGetSceneType(sceneId)
		if sceneType == 1 then --³¡¾°ÀàĞÍĞúng¸±±¾
			AddNumText(sceneId, x200041_g_ScriptId,x200041_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200041_CheckAccept(sceneId,selfId) > 0 then	
		AddNumText(sceneId,x200041_g_ScriptId,x200041_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200041_CheckAccept( sceneId, selfId )
	--ÅĞ¶¨Ìõ¼ş
	--1,Ç°ĞøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200041_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200041_g_MissionId) > 0  then
		return 0
	end
	
	--2,µÈc¤p´ïµ½60
	if GetLevel(sceneId, selfId) < 60   then
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
function x200041_OnAccept( sceneId, selfId, targetId )

	if x200041_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200041_g_MissionId, x200041_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: T¸nh h¥u quª âm",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200041_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x200041_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200041_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x200041_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200041_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200041_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ¿ÉÒÔÌá½»toÕ ğµ Ìõ¼şÅĞ¶¨
	-- 1,ÓĞCái này ÈÎÎñ,
	if( IsHaveMission(sceneId,selfId,x200041_g_MissionId) > 0)  then
  	BeginAddItem(sceneId)
		for i, item in x200041_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret < 1 then
			--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Không th¬ Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId,x200041_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,x200041_g_exp)
		
		DelMission( sceneId,selfId,  x200041_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId,  x200041_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: T¸nh h¥u quª âm",MSG2PLAYER_PARA )
		
		LuaFnSetCopySceneData_Param(sceneId, 8, 1)
		LuaFnSetCopySceneData_Param(sceneId, 10, 0)
		LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
		
		-- µ÷ÓÃºóĞøÈÎÎñ
		CallScriptFunction((200042), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200041_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200041_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200041_OnItemChanged( sceneId, selfId, itemdataId )
	
end



