--É±¹Ö,TÕi ½ÓÈÎÎñtoÕ ğµ Í¬Ê±,´´½¨ÒªÉ±toÕ ğµ ¹Ö
--Mai Lînh ×ï¿ı»öÊ×

--MisDescBegin
--½Å±¾ºÅ
x212113_g_ScriptId = 212113

--ÈÎÎñºÅ
x212113_g_MissionId = 678

--Ç°ĞøÈÎÎñºÅ
x212113_g_PreMissionId1 = 673
x212113_g_PreMissionId2 = 674
x212113_g_PreMissionId3 = 675

--Ä¿±êNPC
x212113_g_Name	="Nguy®t Quı"

--ÈÎÎñ¹éÀà
x212113_g_MissionKind = 44

--ĞÆng c¤p nhi®m vø 
x212113_g_MissionLevel = 70

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x212113_g_IfMissionElite = 0

--ÈÎÎñÃû
x212113_g_MissionName="Ğ¥u sö tµi ác"
--ÈÎÎñÃèÊö
x212113_g_MissionInfo="#{Mis_K_Meiling_1000183}"
--Møc tiêu nhi®m vø
x212113_g_MissionTarget="    Nguy®t Quı · Mai Lînh #{_INFOAIM192,70,33, Nguy®t Quı} yêu c¥u ngß½i giªt chªt Nghiêm BÕch H±. C¦n th§n, chï c¥n Nguy®t Quı b¡t ğ¥u cúng tª, #RNghiêm BÕch H±#W s¨ xu¤t hi®n ngay."		
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x212113_g_ContinueInfo="  Ngß½i ğã giªt chªt Nghiêm BÕch H± chßa?"
--Ìá½»Ê±npctoÕ ğµ »°
x212113_g_MissionComplete="  Ğa tÕ ngß½i, ğa tÕ. Ha ha... ta không sao. CÑ m²i l¥n cúng tª lÕi t±n hao ít chân khí.."		

x212113_g_MoneyBonus=51700
x212113_g_exp=37000

x212113_g_szMonsterName = "Nghiêm BÕch H±"
x212113_g_MonsterID = 525

x212113_g_Custom	= { {id="Ğã giªt chªt Nghiêm BÕch H±",num=1} }
x212113_g_IsMissionOkFail = 0

x212113_g_RadioItemBonus={{id=10412072 ,num=1},{id=10403056,num=1}}

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x212113_OnDefaultEvent( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
  if (IsMissionHaveDone(sceneId,selfId,x212113_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x212113_g_MissionId) > 0)  then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId, x212113_g_MissionName)
			AddText(sceneId, x212113_g_ContinueInfo)
		EndEvent( )
		local bDone = x212113_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212113_g_ScriptId,x212113_g_MissionId,bDone)
				
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x212113_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x212113_g_MissionName)
			AddText(sceneId,x212113_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x212113_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}")
			AddMoneyBonus( sceneId, x212113_g_MoneyBonus )
			for i, item in x212113_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent()
		DispatchMissionInfo(sceneId,selfId,targetId,x212113_g_ScriptId,x212113_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x212113_OnEnumerate( sceneId, selfId, targetId )
	
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212113_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212113_g_MissionId) > 0 then
		AddNumText(sceneId, x212113_g_ScriptId, x212113_g_MissionName, 2, -1);
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x212113_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x212113_g_ScriptId, x212113_g_MissionName, 1, -1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x212113_CheckAccept( sceneId, selfId )

	--ÒªÇóÍê³ÉtoÕ ğµ 3cáiÇ°ĞøÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212113_g_PreMissionId1) <= 0 then
			return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x212113_g_PreMissionId2) <= 0 then
			return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x212113_g_PreMissionId3) <= 0 then
			return 0
	end
	
	--C¥n 1c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) < x212113_g_MissionLevel then
		return 0
	end
	
	return 1
	
end

--**********************************
--Tiªp thø
--**********************************
function x212113_OnAccept( sceneId, selfId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212113_g_MissionId) > 0 then
		return 
	end
		
	-- ÏÈ¼ì²âµØÍ¼ÉÏĞúng²»ĞúngÓĞCái này ¹Ö,Èç¹ûÓĞ¾Í²»ÔÙ·Å³öÀ´
	local nMonsterNum = GetMonsterCount(sceneId)
	local ii = 0
	local bHaveMonster = 0
	for ii=1, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		if GetName(sceneId, nMonsterId)  == "Nghiêm BÕch H±"  then
			BeginEvent(sceneId)
				strText = "Hi®n không th¬ nh§n nhi®m vø này"
				AddText(sceneId, strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	end

	-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x212113_g_MissionId, x212113_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	
	--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïtoÕ ğµ ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
	local misIndex = GetMissionIndexByID(sceneId, selfId, x212113_g_MissionId)-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚmµt Î»ÖÃ0	µÚmµt Î»ĞúngÍê³É/th¤t bÕiÇé¿ö
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)					--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚmµt Î»ÖÃ0	µÚmµt Î»ĞúngÍê³É/th¤t bÕiÇé¿ö

	Msg2Player(  sceneId, selfId,"#YTiªp nh§n#W" .. x212113_g_MissionName, MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTiªp nh§n#W ".. x212113_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
	-- ´´½¨¹ÖÎï
	local nMonstrId = LuaFnCreateMonster(sceneId, x212113_g_MonsterID, 189, 71, 1, 0, -1)
	CallScriptFunction((200060), "Paopao",sceneId, "Nghiêm BÕch H±", "Mai Lînh ", "Ğ° phàm nhân ğáng thß½ng. Ngß½i tß·ng chï dña vào sÑc lñc bé m÷n cüa các ngß½i là có th¬ phän lÕi ı chí cüa Tu La Vß½ng sao? Ngß½i s¨ phäi trä giá cho sñ nông n±i cüa mình. Tu La Vß½ng s¨ ch¶ ğşi ân h§n cüa ngß½i!")
	SetCharacterDieTime(sceneId, nMonstrId, 600000)
	
end

--**********************************
--·ÅÆú
--**********************************
function x212113_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	DelMission( sceneId, selfId, x212113_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x212113_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x212113_g_MissionName)
		AddText(sceneId,x212113_g_MissionComplete)
		AddMoneyBonus( sceneId, x212113_g_MoneyBonus )
		for i, item in x212113_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212113_g_ScriptId,x212113_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212113_CheckSubmit( sceneId, selfId )

	local missionId = x212113_g_MissionId
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
	
	local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)	
	if bComplete > 0 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x212113_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- °²È«ĞÔ¼ì²â
	-- 1¡¢¼ì²âÍæ¼ÒĞúng²»ĞúngÓĞCái này ÈÎÎñ
	if IsHaveMission(sceneId,selfId,x212113_g_MissionId) <= 0 then
		return
	end
	
	-- 2¡¢Hoàn t¤t nhi®m vøtoÕ ğµ Çé¿ö¼ì²â
	if x212113_CheckSubmit(sceneId, selfId) <= 0    then
		return
	end
	
	BeginAddItem(sceneId)
		for i, item in x212113_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
	local ret = EndAddItem(sceneId,selfId)

	if ret > 0  then
		-- ½ğÇ®ºÍKinh nghi®m
		AddMoney(sceneId,selfId,x212113_g_MoneyBonus )
		LuaFnAddExp( sceneId, selfId, x212113_g_exp)
	
		DelMission( sceneId,selfId, x212113_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId, x212113_g_MissionId )
		AddItemListToHuman(sceneId,selfId)
		
	else
		--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
		BeginEvent(sceneId)
			strText = "Nhi®m vø th¤t bÕi!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212113_OnKillObject( sceneId, selfId, objdataId ,objId )

	local missionId = x212113_g_MissionId
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
	local monsterName = GetMonsterNamebyDataId(objdataId)
	
	if monsterName == x212113_g_szMonsterName   then

		--È¡ ği¬mCái này ¹ÖÎïËÀºóÓµÓĞ·ÖÅäÈ¨toÕ ğµ ÈËÊı
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			--È¡ ği¬mÓµÓĞ·ÖÅäÈ¨toÕ ğµ ÈËtoÕ ğµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ¿´Cái này ÈËĞúng²»ĞúngÓĞCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, missionId) > 0 then
				-- ÏÈÅĞ¶ÏĞúng²»ĞúngÒÑ¾­Thöa mãnÁËÍê³É±êÖ¾
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,missionId)

				if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
		     	BeginEvent(sceneId)
						local strText = format("Ğã chiªn th¡ng Nghiêm BÕch H±: 1/1" )
						AddText(sceneId, strText)
				  EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
					-- ÉèÖÃÈÎÎñÍê³É
					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
					SetMissionByIndex(sceneId,humanObjId,misIndex,1,1)
				end
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x212113_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212113_OnItemChanged( sceneId, selfId, itemdataId )
end







