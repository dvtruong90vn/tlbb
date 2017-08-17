-- 200053 Bày ti®c rßþu höi Quân Tam Ngæ
-- ½«Lý Thu ThüyÈ¥ÊÀtoÕ ðµ ÏûÏ¢Í¨ÖªLÕc Dß½ng³ÇtoÕ ðµ Hách Liên Thiªt Thø.

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200053_g_ScriptId = 200053

--ÈÎÎñºÅ
x200053_g_MissionId = 43

--Ç°ÐøÈÎÎñºÅ
x200053_g_PreMissionId = 42

--Ä¿±êNPC
x200053_g_Name = "Hi¬u Lôi"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200053_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200053_g_MissionLevel = 70

--ÈÎÎñ¹éÀà
x200053_g_MissionKind = 49

--ÈÎÎñÎÄ±¾ÃèÊö
x200053_g_MissionName="Bày ti®c rßþu höi Quân Tam Ngæ"
x200053_g_MissionInfo="#{Mis_juqing_0043}"
x200053_g_MissionTarget="#{Mis_juqing_Tar_0043}"	--Møc tiêu nhi®m vø
x200053_g_MissionComplete="  Huynh không phäi là $N sao? Công chúa chúng ta luôn nh¡c t¾i huynh. Mau ng°i ði"

x200053_g_MoneyBonus=48600
x200053_g_exp=86400

x200053_g_RadioItemBonus={{id=10414017 ,num=1},{id=10414018,num=1},{id=10414019,num=1}}

x200053_g_Custom	= { {id="Ðã tìm ðßþc Hi¬u Lôi",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200053_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200053_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200053_g_MissionId) > 0)  then
		-- ¼ì²âÐúng²»ÐúngTÕi ¸±±¾,ÔÙ¼ì²âÐúng²»Ðúng,Èç¹ûÐúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
			-- ¼ì²âÏÂTên,°²È« ði¬m ði¬m
		if GetName(sceneId, targetId) == x200053_g_Name  then
	    BeginEvent(sceneId)
				AddText(sceneId,x200053_g_MissionName)
				AddText(sceneId,x200053_g_MissionComplete)
				AddMoneyBonus( sceneId, x200053_g_MoneyBonus )
				for i, item in x200053_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
	    EndEvent( )
			DispatchMissionContinueInfo(sceneId,selfId,targetId,x200053_g_ScriptId,x200053_g_MissionId)
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200053_CheckAccept(sceneId, selfId, targetId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200053_g_MissionName)
			AddText(sceneId,x200053_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200053_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200053_g_MoneyBonus )
			for i, item in x200053_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200053_g_ScriptId,x200053_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200053_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200053_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200053_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		if GetName(sceneId, targetId) == x200053_g_Name    then
			AddNumText(sceneId, x200053_g_ScriptId,x200053_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200053_CheckAccept(sceneId,selfId,targetId) > 0 then	
		if GetName(sceneId, targetId) == "Hách Liên Thiªt Thø"    then
			AddNumText(sceneId,x200053_g_ScriptId,x200053_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200053_CheckAccept( sceneId, selfId, targetId )

	--ÅÐ¶¨Ìõ¼þ
	--1,Ç°ÐøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200053_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200053_g_MissionId) > 0  then
		return 0
	end
	
	--2,µÈc¤p´ïµ½50
	if GetLevel(sceneId, selfId) < 70   then
		return 0
	end
	
	return 1
end


--**********************************
--Tiªp thø
--**********************************
function x200053_OnAccept( sceneId, selfId, targetId )

	if x200053_CheckAccept(sceneId, selfId, targetId) ~= 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200053_g_MissionId, x200053_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#Ynh§n nhi®m vø#W: bày ti®c rßþu höi Quân Tam Ngæ",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200053_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)

end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200053_OnTimer(sceneId,selfId)
end

--**********************************
--·ÅÆú
--**********************************
function x200053_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200053_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x200053_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200053_CheckSubmit( sceneId, selfId, selectRadioId )

	--1, Ðúng·ñÓÐCái này ÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200053_g_MissionId) < 1 then
		return 0;
	end
	
	--2, Ðúng·ñÒÑ¾­Íê³ÉCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200053_g_MissionId) > 0  then
		return 0;
	end
	
	--3,µÈc¤p´ïµ½70
	if GetLevel(sceneId, selfId) < 70   then
		return 0;
	end

	--4,ÈÎÎñÍê³É±ê¼Ç
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200053_g_MissionId)
	if GetMissionParam(sceneId, selfId, misIndex, 0) ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200053_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--1, µ±Ç°Íæ¼ÒÐúng·ñÓëÕýÈ·toÕ ðµ NPC¶Ô»°
	if GetName(sceneId, targetId) ~= x200053_g_Name  then
		return
	end

	--2, ¿ÉÒÔÌá½»toÕ ðµ Ìõ¼þÅÐ¶¨
	if x200053_CheckSubmit( sceneId, selfId, selectRadioId ) ~= 1 then
		return
	end

	--3,Ðúng·ñ¿ÉÌí¼ÓÎïÆ·
  	BeginAddItem(sceneId)
		for i, item in x200053_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
	ret = EndAddItem(sceneId,selfId)

	if ret < 1 then
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
		BeginEvent(sceneId)
			strText = "Không th¬ Hoàn t¤t nhi®m vø"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--4,É¾³ýÈÎÎñ
	MissionCom( sceneId, selfId, x200053_g_MissionId )
	if DelMission( sceneId, selfId, x200053_g_MissionId ) ~= 1 then
		return
	end

	--5,Ìí¼ÓÈÎÎñ½±Àø
	AddItemListToHuman(sceneId,selfId)
	AddMoney(sceneId,selfId, x200053_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId, x200053_g_exp)

	--6,ÌáÊ¾
	Msg2Player( sceneId, selfId, "#YHoàn t¤t nhi®m vø#W: bày ti®c rßþu höi Quân Tam Ngæ", MSG2PLAYER_PARA )

	--7,¾çÇé
	LuaFnSetCopySceneData_Param(sceneId, 8, 1)
	LuaFnSetCopySceneData_Param(sceneId, 10, 0)
	LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
	LuaFnSetCopySceneData_Param(sceneId, 30, 1)

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200053_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200053_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200053_OnItemChanged( sceneId, selfId, itemdataId )
	
end


