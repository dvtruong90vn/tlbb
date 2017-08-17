-- Bi Tô Thanh Phong   Ó¢ÐÛ¾ÈÃÀ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200016_g_ScriptId = 200016

--ÈÎÎñºÅ
x200016_g_MissionId = 15

--ÈÎÎñºÅ
x200016_g_PreMissionId = 14

--Ä¿±êNPC
x200016_g_Name = "Vß½ng Ngæ Yên"

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200016_g_IfMissionElite = 1

--ÐÆng c¤p nhi®m vø 
x200016_g_MissionLevel = 30

--ÈÎÎñ¹éÀà
x200016_g_MissionKind = 48

--ÈÎÎñÎÄ±¾ÃèÊö
x200016_g_MissionName="Bi Tô Thanh Phong"
x200016_g_MissionInfo="#{Mis_juqing_0015}"
x200016_g_MissionTarget="#{Mis_juqing_Tar_0015}"	--Møc tiêu nhi®m vø
x200016_g_MissionComplete="  A... cánh tay cüa tÕi hÕ ðã cØ ðµng ðßþc r°i. Ðµc cüa tÕi hÕ ðã giäi ðßþc r°i. $N, Ðoàn công tØ, chúng ta mau ðªn Tô Châu ði tìm bi¬u ca thôi. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°
x200016_g_MissionContinue="  Mau t¾i giúp Ðoàn công tØ"

x200016_g_MoneyBonus=27000
x200016_g_exp=32000

x200016_g_RadioItemBonus={{id=10414005 ,num=1},{id=10414006,num=1},{id=10414007,num=1},{id=10414008,num=1}}

x200016_g_DemandItem={{id=40001005,num=1}}		--´Ó±³°üÖÐ¼ÆËã

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200016_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200016_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200016_g_MissionName)
			AddText(sceneId,"  Ngß½i ðã l¤y ðßþc thu¯c giäi chßa?")
			--AddMoneyBonus( sceneId, x200016_g_MoneyBonus )
		EndEvent( )
		bDone = x200016_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200016_g_ScriptId,x200016_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x200016_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200016_g_MissionName)
			AddText(sceneId,x200016_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200016_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200016_g_MoneyBonus )
			for i, item in x200016_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200016_g_ScriptId,x200016_g_MissionId)
  end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200016_OnEnumerate( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200016_g_MissionId) > 0 then
		return
	end

  --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200016_g_MissionId) > 0 then
		AddNumText(sceneId,x200016_g_ScriptId,x200016_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200016_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200016_g_ScriptId,x200016_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200016_CheckAccept( sceneId, selfId )
	-- ¿´¿´ÓÐÃ»ÓÐÍê³É¸ÃÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, x200016_g_MissionId) > 0 then
		return
	end

	-- Íæ¼ÒC¥n ÏÈÍê³ÉÇ°ÐøÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200016_g_PreMissionId) < 1 then
		return 0
	end
	
	-- C¥n ³¡¾°½øÐÐµ½µÚ¶þ²½²ÅÄÜ½Ó
	if LuaFnGetCopySceneData_Param(sceneId, 10) < 2   then
		return 0
	end
	
	--C¥n 30c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 30 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x200016_OnAccept( sceneId, selfId )
	if x200016_CheckAccept( sceneId, selfId ) < 1 then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200016_g_MissionId, x200016_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200016_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#Ynh§n nhi®m vø#W: Bi Tô Thanh Phong",MSG2PLAYER_PARA )

	local nStep = LuaFnGetCopySceneData_Param(sceneId, 10)
	
	if nStep < 3 then
		LuaFnSetCopySceneData_Param(sceneId, 10, 3) --¿ØÖÆËµ»°
		LuaFnSetCopySceneData_Param(sceneId, 11, LuaFnGetCurrentTime())	--Ê±¼ä
		LuaFnSetCopySceneData_Param(sceneId, 13, 1)	--Ê±¼ä
	end

end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200016_OnTimer(sceneId,selfId)
	--Ê±¼ä¿ØÖÆ¶Ô°×
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200016_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	local nTime = LuaFnGetCurrentTime()
	local nStartTime = GetMissionParam(sceneId,selfId,misIndex,1)

	local nSceneId = GetMissionParam( sceneId,selfId,misIndex,3 )
	if 	nSceneId ~= sceneId    then
		-- Íæ¼ÒÀë¿ªÁËCái này ³¡¾°,¹Ø±ÕÖ®
		StopMissionTimer(sceneId,selfId,x200016_g_MissionId)
		return
	end
	
	--¶Ô°×²¿·Ö(ÏÈÃ¿3 giâymµt ¾ä»°)
	local nTimes = GetMissionParam(sceneId,selfId,misIndex,4) -- ´ÎÊý

	if nTime - nStartTime > 5  then
		if nTimes == 1  then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Yªn TØ ‘", "#{JQ_PaoPao_70}")
			--PrintStr("Ðoàn Dñ")
		elseif nTimes == 2  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "#{JQ_PaoPao_71}")
			--PrintStr("Lý Diên Tông")
		elseif nTimes == 3  then
			CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Yªn TØ ‘", "#{JQ_PaoPao_72}")
			--PrintStr("Ðoàn Dñ")
		elseif nTimes == 4  then
			CallScriptFunction((200060), "Paopao",sceneId, "Vß½ng Ngæ Yên", "Yªn TØ ‘", "#{JQ_PaoPao_73}")
			--PrintStr("Vß½ng Ngæ Yên")
		elseif nTimes == 5  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "#{JQ_PaoPao_74}")
			--PrintStr("Lý Diên Tông")
		elseif nTimes == 6  then
			CallScriptFunction((200060), "Paopao",sceneId, "Vß½ng Ngæ Yên", "Yªn TØ ‘", "#{JQ_PaoPao_75}")
			--PrintStr("Vß½ng Ngæ Yên")
		elseif nTimes == 7  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "#{JQ_PaoPao_76}")
			--PrintStr("Lý Diên Tông")
		elseif nTimes == 8  then
			CallScriptFunction((200060), "Paopao",sceneId, "Vß½ng Ngæ Yên", "Yªn TØ ‘", "#{JQ_PaoPao_77}")
			--PrintStr("Vß½ng Ngæ Yên")
		elseif nTimes == 9  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lý Diên Tông", "Yªn TØ ‘", "#{JQ_PaoPao_78}")
			--PrintStr("Lý Diên Tông")
		elseif nTimes == 10  then
			-- Lý Diên Tông ÏûÊ§,Í¬Ê±Íæ¼Ò ði¬mµ½½âÒ©
			local nMonsterNum = GetMonsterCount(sceneId)
			local bHave = 0
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Lý Diên Tông"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					ItemBoxEnterScene(62,74,-1,sceneId,1,1,40001005)
				end
			end
		end
		
		SetMissionByIndex(sceneId,selfId,misIndex,4,nTimes+1)
		SetMissionByIndex(sceneId,selfId,misIndex,1,nTime)
	end
	
	if nTimes == 11  then
		BeginEvent(sceneId)
		AddText(sceneId,"Nhi®m vø hoàn thành");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		
		--¹Ø±Õ¼ÆÊ±Æ÷
		StopMissionTimer(sceneId,selfId,x200016_g_MissionId)
		
	end
	
end

--**********************************
--·ÅÆú
--**********************************
function x200016_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x200016_g_MissionId )
	DelItem( sceneId, selfId, 40001005, 1 )	

--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200016_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x200016_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x200016_g_MissionName)
		AddText(sceneId,x200016_g_MissionComplete)
		AddMoneyBonus( sceneId, x200016_g_MoneyBonus )
		for i, item in x200016_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x200016_g_ScriptId,x200016_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200016_CheckSubmit( sceneId, selfId )
--	local misIndex = GetMissionIndexByID(sceneId,selfId,x200016_g_MissionId)
	
--	local bOk = GetMissionParam(sceneId,selfId,misIndex,0)
--	if bOk == 0    then
--		return 0
--	end

	--1, Ðúng·ñÓÐCái này ÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200016_g_MissionId) < 1 then
		return 0;
	end
	
	--2, Ðúng·ñÒÑ¾­Íê³ÉCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200016_g_MissionId) > 0  then
		return 0;
	end

	--3,¼ì²âÍæ¼ÒÉíÉÏÐúng²»ÐúngÓÐÈÎÎñÎïÆ·
	if GetItemCount( sceneId, selfId, 40001005 ) < 1    then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x200016_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x200016_CheckSubmit( sceneId, selfId ) == 1 then

  	BeginAddItem(sceneId)
		for i, item in x200016_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret < 1 then
			--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Không th¬ Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end

		if DelMission( sceneId, selfId, x200016_g_MissionId ) ~= 1 then
			return
		end

		MissionCom( sceneId, selfId, x200016_g_MissionId )

		if DelItem( sceneId, selfId, 40001005, 1 ) ~= 1 then
			return
		end
		
		AddItemListToHuman(sceneId,selfId)

		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200016_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200016_g_exp)

		Msg2Player( sceneId, selfId, "#YHoàn t¤t nhi®m vø#W: Bi Tô Thanh Phong", MSG2PLAYER_PARA )

	
		Msg2Player( sceneId, selfId,"Các hÕ ðã hoàn t¤t nhi®m vø#G Yªn TØ ‘ #Wh® th¯ng nhi®m vø",MSG2PLAYER_PARA )
		local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
		LuaFnSendMailToGUID(sceneId, selfGuid, "Các hÕ ðã hoàn t¤t nhi®m vø#G Yªn TØ ‘ #Wh® th¯ng nhi®m vø. Sau khi ðÕt c¤p 40, mau tìm Tri®u Thiên Sß · ÐÕi Lý, kh·i ðµng#G Tø Hi«n Trang #Wh® th¯ng nhi®m vø")
		
		-- Íê³ÉÑà×ÓÎë¾çÇé,¸ø10 ði¬m¾çÇé ði¬m
		local nPoint = GetHumanJuqingPoint(sceneId, selfId)
		SetHumanJuqingPoint(sceneId, selfId, nPoint+10)
		
		-- Í¨ÖªÍæ¼Ò,¿ÉÒÔ×ö¾çÇéÑ­»·ÈÎÎñÁË
		-- ÄúÏÖTÕi ¿ÉÒÔÈ¥AA³ÇtoÕ ðµ [bb,cc]ÕÒµ½DD,Tiªp thøDDÑ­»·ÈÎÎñ.
		local strText1 = "#{LOOTMISSION_MAIL_05}#r#{LOOTMISSION_MAIL_06}#r#{LOOTMISSION_MAIL_07}"		
		LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
		
		BeginEvent(sceneId)
			AddText(sceneId,"#{LOOTMISSION_INFO_02}");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200016_OnKillObject( sceneId, selfId, objdataId ,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x200016_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200016_OnItemChanged( sceneId, selfId, itemdataId )

end







