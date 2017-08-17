-- 200051 Y tiªu nhân gian vÕn sñ
-- ±£»¤Thiên S½nÍ¯ÀÏÐÞÁ·,ÆäÊµÖ»Ðúng¿´Ï·,¿´Íê¾ÍÍê³É

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200051_g_ScriptId = 200051

--ÈÎÎñºÅ
x200051_g_MissionId = 41

--Ç°ÐøÈÎÎñºÅ
x200051_g_PreMissionId = 40

--Ä¿±êNPC
x200051_g_Name = "Hß Trúc"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200051_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200051_g_MissionLevel = 70

--ÈÎÎñ¹éÀà
x200051_g_MissionKind = 49

--ÈÎÎñÎÄ±¾ÃèÊö
x200051_g_MissionName="Y tiªu nhân gian vÕn sñ"
x200051_g_MissionInfo="#{Mis_juqing_0041}"
x200051_g_MissionTarget="#{Mis_juqing_Tar_0041}"	--Møc tiêu nhi®m vø
x200051_g_MissionComplete="  Chúng ta mau r¶i khöi ðây, A di ðà Ph§t, ð¡c tµi ð¡c tµi.."

x200051_g_MoneyBonus=9000
x200051_g_exp=17280

x200051_g_RadioItemBonus={{id=10415013 ,num=1},{id=10415014,num=1},{id=10415015,num=1}}

x200051_g_Custom	= { {id="Y tiªu nhân gian vÕn sñ",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200051_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200051_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200051_g_MissionId) > 0)  then
		-- ¼ì²âÐúng²»ÐúngTÕi ¸±±¾,ÔÙ¼ì²âÐúng²»Ðúng,Èç¹ûÐúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
		local sceneType = LuaFnGetSceneType(sceneId) 
		if sceneType == 1 then --³¡¾°ÀàÐÍÐúng¸±±¾
			-- ¼ì²âÏÂTên,°²È« ði¬m ði¬m
			if GetName(sceneId, targetId) == x200051_g_Name  then
		    BeginEvent(sceneId)
				AddText(sceneId,x200051_g_MissionName)
				AddText(sceneId,x200051_g_MissionComplete)
				AddMoneyBonus( sceneId, x200051_g_MoneyBonus )
		    EndEvent( )
				bDone = x200051_CheckSubmit( sceneId, selfId )
				DispatchMissionDemandInfo(sceneId,selfId,targetId,x200051_g_ScriptId,x200051_g_MissionId,bDone)
		    --DispatchMissionContinueInfo(sceneId,selfId,targetId,x200051_g_ScriptId,x200051_g_MissionId)
			end
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200051_CheckAccept(sceneId, selfId, targetId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200051_g_MissionName)
			AddText(sceneId,x200051_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200051_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200051_g_MoneyBonus )
			for i, item in x200051_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200051_g_ScriptId,x200051_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200051_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200051_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200051_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		if GetName(sceneId, targetId) == x200051_g_Name    then
			AddNumText(sceneId, x200051_g_ScriptId,x200051_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200051_CheckAccept(sceneId,selfId,targetId) > 0 then	
		AddNumText(sceneId,x200051_g_ScriptId,x200051_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200051_CheckAccept( sceneId, selfId, targetId )
	--ÅÐ¶¨Ìõ¼þ
	--1,Ç°ÐøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200051_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200051_g_MissionId) > 0  then
		return 0
	end
	
	--2,µÈc¤p´ïµ½50
	if GetLevel(sceneId, selfId) < 70   then
		return 0
	end

	--¼ì²âÐúng²»ÐúngThiên S½n Ð°ng Lão
	if GetName(sceneId, targetId) ~= "Thiên S½n Ð°ng Lão"    then
		return 0
	end
	
	return 1
end


--**********************************
--Tiªp thø
--**********************************
function x200051_OnAccept( sceneId, selfId, targetId )

	if x200051_CheckAccept(sceneId, selfId, targetId) ~= 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200051_g_MissionId, x200051_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#Ynh§n nhi®m vø#W: y tiªu nhân gian vÕn sñ",MSG2PLAYER_PARA )

	-- ¾çÇéÅÝÅÝ
	LuaFnSetCopySceneData_Param(sceneId, 8, 1)
	LuaFnSetCopySceneData_Param(sceneId, 10, 0)
	LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200051_OnTimer(sceneId,selfId)
	
	if 1==1  then 
		return
	end

	-- ÀûÓÃ¼ÆÊ±Æ÷,¿ØÖÆ¾çÇé
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200051_g_MissionId)-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
	
	local bDone = GetMissionParam( sceneId,selfId,misIndex,0 )
	local NowTime = LuaFnGetCurrentTime()
	local OldTime = GetMissionParam( sceneId,selfId,misIndex,1 )

	local nSceneId = GetMissionParam( sceneId,selfId,misIndex,3 )
	if 	nSceneId ~= sceneId    then
		-- Íæ¼ÒÀë¿ªÁËCái này ³¡¾°,¹Ø±ÕÖ®
		StopMissionTimer(sceneId,selfId,x200051_g_MissionId)
		return
	end
	
	if bDone == 1   then
		-- ¹Ø±Õ¼ÆÊ±Æ÷
		StopMissionTimer(sceneId, selfId, x200051_g_MissionId)
		return
	end
	
	-- ÀûÓÃÊ±¼ä¿ØÖÆNPCÐÐÎª
	if NowTime - OldTime > 10   then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi®m vø hoàn thành 1/1");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end

end

--**********************************
--·ÅÆú
--**********************************
function x200051_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200051_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x200051_OnContinue( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,x200051_g_MissionName)
		AddText(sceneId,x200051_g_MissionComplete)
		AddMoneyBonus( sceneId, x200051_g_MoneyBonus )
		for i, item in x200051_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x200051_g_ScriptId,x200051_g_MissionId)
	
end	

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200051_CheckSubmit( sceneId, selfId )
	
	--1, Ðúng·ñÓÐCái này ÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200051_g_MissionId) < 1 then
		return 0;
	end
	
	--2, Ðúng·ñÒÑ¾­Íê³ÉCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200051_g_MissionId) > 0  then
		return 0;
	end
	
	--3,µÈc¤p´ïµ½70
	if GetLevel(sceneId, selfId) < 70 then
		return 0;
	end

	--4,ÈÎÎñÌØ¶¨toÕ ðµ Ìõ¼þ
	local bDone = LuaFnGetCopySceneData_Param( sceneId, 15 )
	if bDone ~= 1 then
		return 0
	end

	return 1
	
end

--**********************************
--Ìá½»
--**********************************
function x200051_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--1,¿ÉÒÔÌá½»toÕ ðµ Ìõ¼þÅÐ¶¨
	if x200051_CheckSubmit( sceneId, selfId) == 1  then

		--2,Ðúng·ñ¿ÉÌí¼ÓÎïÆ·
	  	BeginAddItem(sceneId)
			for i, item in x200051_g_RadioItemBonus do
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

		--3,É¾³ýÈÎÎñ
		MissionCom( sceneId, selfId, x200051_g_MissionId )
		if DelMission( sceneId, selfId, x200051_g_MissionId ) ~= 1 then
			return
		end

		--4,Ìí¼ÓÈÎÎñ½±Àø
		AddItemListToHuman(sceneId,selfId)
		AddMoney(sceneId,selfId, x200051_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200051_g_exp)
		
		--5,ÌáÊ¾
		Msg2Player( sceneId, selfId, "#YHoàn t¤t nhi®m vø#W: y tiªu nhân gian vÕn sñ", MSG2PLAYER_PARA )

		--6,µ÷ÓÃºóÐøÈÎÎñ
		CallScriptFunction((200052), "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200051_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200051_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200051_OnItemChanged( sceneId, selfId, itemdataId )
	
end


