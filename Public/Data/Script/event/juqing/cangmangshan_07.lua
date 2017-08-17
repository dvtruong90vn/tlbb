-- 200036 ½ğ¸êµ´¿Ü÷é±ø
-- ²ÔÃ£É½toÕ ğµ ÖØÒª¾çÇé

-- ÔÙTÕi ¸±±¾ÄÚÍê³ÉÉ±¹ÖÈÎÎñ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200036_g_ScriptId = 200036

--¸±±¾Ãû³Æ
x200036_g_CopySceneName="Thß½ng Mang S½n "

--ÈÎÎñºÅ
x200036_g_MissionId = 31

--Ç°ĞøÈÎÎñ
x200036_g_PreMissionId = 30

--Ä¿±êNPC
x200036_g_Name = "Tiêu Phong"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200036_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x200036_g_MissionLevel = 50

--ÈÎÎñ¹éÀà
x200036_g_MissionKind = 52

--ÈÎÎñÎÄ±¾ÃèÊö
x200036_g_MissionName="Kim Qua Ğãng Kh¤u Ngao Binh"
x200036_g_MissionInfo="#{Mis_juqing_0031}"
x200036_g_MissionTarget="#{Mis_juqing_Tar_0031}"	--Møc tiêu nhi®m vø
x200036_g_MissionComplete="    $N, l¥n này thì quân tình cüa phän quân ğã löng l¨o r°i, không c¥n vµi, chúng ta tiªn t×ng bß¾c vào doanh, tri®t ğ¬ giäi tr× hªt b÷n phän loÕn. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x200036_g_MissionContinue="  S· Vß½ng ğã b¸ giªt, Hoàng Thái Thúc cûng ğã r½i vào tay chúng ta"

x200036_g_MoneyBonus=36000
x200036_g_exp=34000

x200036_g_RadioItemBonus={{id=10423012 ,num=1},{id=10423013,num=1},{id=10423014,num=1}}

x200036_g_Custom	= { {id="Ğã giªt chªt S· Vß½ng",num=1},{id="Ğã vào ngân kh¯ riêng cüa Hoàng Thái Thúc",num=1} }
--x200036_g_Custom	= { {id="ÒÑ½øÈë»ÊÌ«ÊåÓùÕÊ",num=1} }
x200036_g_IsMissionOkFail = 0

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200036_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200036_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200036_g_MissionName)
			AddText(sceneId,x200036_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200036_g_MoneyBonus )
		EndEvent( )
		bDone = x200036_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200036_g_ScriptId,x200036_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x200036_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200036_g_MissionName)
			AddText(sceneId,x200036_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200036_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			for i, item in x200036_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x200036_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200036_g_ScriptId,x200036_g_MissionId)
  end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200036_OnEnumerate( sceneId, selfId, targetId )
  --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200036_g_MissionId) > 0 then
		return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200036_g_MissionId) > 0 then
		AddNumText(sceneId,x200036_g_ScriptId,x200036_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200036_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x200036_g_ScriptId,x200036_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200036_CheckAccept( sceneId, selfId )

	-- 1,¼ì²âÍæ¼ÒĞúng²»ĞúngÒÑ¾­×ö¹ı
	if (IsMissionHaveDone(sceneId,selfId,x200036_g_MissionId) > 0 ) then
		return 0
	end
	
	--C¥n 4c¤p²ÅÄÜ½Ó
		if GetLevel( sceneId, selfId ) < x200036_g_MissionLevel then
		return 0
	end
	
	if IsMissionHaveDone(sceneId,selfId,x200036_g_PreMissionId) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200036_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200036_g_MissionId, x200036_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200036_g_MissionId)			-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Kim Qua Ğãng Kh¤u Ngao Binh",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x200036_g_SignPost.x, x200036_g_SignPost.z, x200036_g_SignPost.tip )

	SetMissionEvent(sceneId, selfId, x200036_g_MissionId, 0)
	SetMissionEvent(sceneId, selfId, x200036_g_MissionId, 1)

	-- b¡t ğ¥uµÚ¶ş¶Î¾çÇé
	if LuaFnGetCopySceneData_Param(sceneId, 8) < 3  then
		LuaFnSetCopySceneData_Param(sceneId, 8, 3)
		LuaFnSetCopySceneData_Param(sceneId, 10, 1)
	end
	
--	--¼ì²â³¡¾°ÖĞĞúng²»ĞúngÓĞ³şÍõ,Èç¹ûÃ»ÓĞ,·Åmµt cái³öÀ´
--	local nMonsterNum = GetMonsterCount(sceneId)
--	
--	local ii = 0
--	local bHaveMonster = 0
--	for ii=0, nMonsterNum-1 do
--		local nMonsterId = GetMonsterObjID(sceneId,ii)
--		
--		if GetName(sceneId, nMonsterId)  == "Ò®ÂÉÄùÂ³¹Å"  then
--			return
--		end
--	end
--	-- ´´½¨¹ÖÎï
--	--PrintStr("´´½¨³şÍõ")
--	local nNpcId = LuaFnCreateMonster(sceneId, 406, 77, 44, 1, 0, -1)
--	SetCharacterName(sceneId, nNpcId, "Ò®ÂÉÄùÂ³¹Å")
--	SetCharacterTitle(sceneId, nNpcId, "³şÍõ")
--	
--	local nNpcId1 = LuaFnCreateMonster(sceneId, 422, 45, 105, 1, 0, -1)
--	SetCharacterName(sceneId, nNpcId1, "Ò®ÂÉÖØÔª")
--	SetCharacterTitle(sceneId, nNpcId1, "»ÆÌ«Êå")
	
end

--**********************************
--·ÅÆú
--**********************************
function x200036_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
  DelMission( sceneId, selfId, x200036_g_MissionId )
--	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x200036_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x200036_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200036_g_MissionName)
		AddText(sceneId,x200036_g_MissionComplete)
		AddMoneyBonus( sceneId, x200036_g_MoneyBonus )
		for i, item in x200036_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200036_g_ScriptId,x200036_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200036_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200036_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200036_g_MissionId)
	if GetMissionParam(sceneId,selfId, misIndex, 0) < 1  then
		return 0
	end

	if LuaFnGetCopySceneData_Param(sceneId, 8) > 7  then
		return 1
	end
	
	return 0

end

--**********************************
--Ìá½»
--**********************************
function x200036_OnSubmit( sceneId, selfId, targetId,selectRadioId )

	if x200036_CheckSubmit(sceneId, selfId) == 1  then
		--Ìí¼ÓÈÎÎñ½±Àø
  	BeginAddItem(sceneId)
		for i, item in x200036_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret < 1 then
			--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Nhi®m vø th¤t bÕi!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return			
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId, x200036_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200036_g_exp)

		DelMission( sceneId, selfId, x200036_g_MissionId )
		MissionCom( sceneId, selfId, x200036_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Kim Qua Ğãng Kh¤u Ngao Binh",MSG2PLAYER_PARA )
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200036_OnKillObject( sceneId, selfId, objdataId ,objId)
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200036_OnEnterArea( sceneId, selfId, zoneId )
	if 1==1  then
		return
	end
	local misIndex = GetMissionIndexByID(sceneId,selfId,x200036_g_MissionId)
	
	if GetMissionParam(sceneId,selfId,misIndex,4) == 0  then
	
		if zoneId == 1 or zoneId == 2  then
			
			-- ¼ì²â³¡¾°ÖĞĞúng²»ĞúngÓĞ³şÍõ,Èç¹ûÃ»ÓĞ,·Åmµt cái³öÀ´
			local nMonsterNum = GetMonsterCount(sceneId)
			local bHave = 0
			
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				if GetName(sceneId, nMonsterId)  == "Gia Lu§t Niªt L² C±"  then
					bHave = 1
				end
			end
			
			if bHave == 1    then
				-- ÉèÖÃ¸÷cái½ÇÉ«toÕ ğµ ÊÆÁ¦ÉùÍû
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					
					if GetName(sceneId, nMonsterId)  == "Gia Lu§t Niªt L² C±"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 18)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
	
						-- ³şÍõTÕi ¸Ä±äÕóÓª¿ÉÒÔ¹¥»÷ºó,°´ÕÕ2ºÅÂ·ÏßÍù»ØÅÜ,
						SetPatrolId(sceneId, nMonsterId, 2)
						--PrintStr("³şÍõÅÜ")
					end
					
					if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
						-- Í¬Ê±Tiêu Phong°´ÕÕ3ºÅÂ·ÏßÅÜ,
						SetPatrolId(sceneId, nMonsterId, 1)
						--PrintStr("Tiêu Phong×·")
	
					end
				end
				
				SetMissionByIndex(sceneId,selfId,misIndex,1,1)
				SetMissionByIndex(sceneId,selfId,misIndex,4,1)
			end
		end	
	end
	
	-- Íæ¼Ò½øÈëÊÂ¼şÇø1,ÈÎÎñÍê³É
	if zoneId == 3  then
		if GetMissionParam(sceneId,selfId,misIndex,3) == 0  then
			if GetMissionParam(sceneId,selfId,misIndex,1) == 1  then
				-- Íæ¼Ò½øÈëÁËÇøÓò3,ÕâÊ±ºò,¼ì²âTiêu Phong,É¾³ı,È»ºóTÕi Î»ÖÃ´´½¨Tiêu Phong×¥×¡
				-- ËùÓĞtoÕ ğµ Ê¿±ø²»ÔÙCuµc chiªn ,
				SetMissionByIndex(sceneId,selfId,misIndex,3,1)
				local nMonsterNum = GetMonsterCount(sceneId)
				local bHave = 0
				local ii = 0
				local bHaveMonster = 0
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					
					if GetName(sceneId, nMonsterId)  == "Tiêu Phong"  then
						-- É¾³ıTiêu Phong
						LuaFnDeleteMonster(sceneId, nMonsterId)
						
						--TÕi ĞÂtoÕ ğµ Î»ÖÃ´´½¨Ä£ĞÍ
						local nNpcId = LuaFnCreateMonster(sceneId, 423, 50,106, 0, 0, 120007)
						SetUnitReputationID(sceneId, selfId, nNpcId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nNpcId, 0)
						SetCharacterName(sceneId, nNpcId, "Tiêu Phong")
						
					end
					
					if GetName(sceneId, nMonsterId)  == "Gia Lu§t Trùng Nguyên"  then
						-- Ò®ÂÉÖØÔª
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
					
					if GetName(sceneId, nMonsterId)  == "Gia Lu§t Niªt L² C±"  then
						-- Ò®ÂÉÖØÔª
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
					
					
					-- ËùÓĞtoÕ ğµ Ê¿±øÏÖTÕi ±ä³É²»¿ÉCuµc chiªn 
					if GetName(sceneId, nMonsterId)  == "Thü v® Tây s½n kh¦u"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					end
					if GetName(sceneId, nMonsterId)  == "S· Vß½ng tinh anh v® sÛ"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					end
					if GetName(sceneId, nMonsterId)  == "Thü v® Ğông s½n kh¦u"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					end
					if GetName(sceneId, nMonsterId)  == "Thü v® Hoàng thái thúc"  then
						SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
						SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)
					end
					
					SetMissionByIndex(sceneId,selfId,misIndex,0,1)
					
					-- ¾çÇéº°»°
					LuaFnSetCopySceneData_Param(sceneId, 8, 4)
					LuaFnSetCopySceneData_Param(sceneId, 13, 0)
					LuaFnSetCopySceneData_Param(sceneId, 20, selfId)
					
					
				end
			end
		end
	end
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200036_OnItemChanged( sceneId, selfId, itemdataId )
end

