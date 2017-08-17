--É±¹Ö,TÕi ½ÓÈÎÎñtoÕ ğµ Í¬Ê±,´´½¨ÒªÉ±toÕ ğµ ¹Ö
--ËÕ·ÉtoÕ ğµ ÊÀ½ç

--MisDescBegin
--½Å±¾ºÅ
x212100_g_ScriptId = 212100

--ÈÎÎñºÅ
x212100_g_MissionId = 648

--Ä¿±êNPC
x212100_g_Name	="Tô Phi"

--ÈÎÎñ¹éÀà
x212100_g_MissionKind = 41

--ĞÆng c¤p nhi®m vø 
x212100_g_MissionLevel = 25

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x212100_g_IfMissionElite = 0

--ÈÎÎñÃû
x212100_g_MissionName="Thª gi¾i hoa cö"
--ÈÎÎñÃèÊö
x212100_g_MissionInfo="#{Mis_K_Xihu_1000042}"
--Møc tiêu nhi®m vø
x212100_g_MissionTarget="#{MIS_TAR_ADD_010}"		
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x212100_g_ContinueInfo="  Ngß½i ğã giªt chªt #RMÕch Hæu Nhân#W r°i?"
--Ìá½»Ê±npctoÕ ğµ »°
x212100_g_MissionComplete="  Ğa tÕ ngß½i, 1 thª gi¾i m¾i nhß phäng ph¤t trß¾c m£t ta"		

x212100_g_MoneyBonus=1800
x212100_g_exp=18000
--x212100_g_ItemBonus={{id=10111008,num=1}}


x212100_g_Custom	= { {id="Ğã giªt chªt MÕch Hæu Nhân",num=1} }
x212100_g_IsMissionOkFail = 0

x212100_g_RadioItemBonus={{id=10412063 ,num=1},{id=10413065,num=1},{id=10402065,num=1}}

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x212100_OnDefaultEvent( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
  if (IsMissionHaveDone(sceneId,selfId,x212100_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x212100_g_MissionId) > 0)  then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId, x212100_g_MissionName)
			AddText(sceneId, x212100_g_ContinueInfo)
		EndEvent( )
		local bDone = x212100_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212100_g_ScriptId,x212100_g_MissionId,bDone)
				
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x212100_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x212100_g_MissionName)
			AddText(sceneId,x212100_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x212100_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}")
			AddMoneyBonus( sceneId, x212100_g_MoneyBonus )
			for i, item in x212100_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212100_g_ScriptId,x212100_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x212100_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212100_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212100_g_MissionId) > 0 then
		AddNumText(sceneId, x212100_g_ScriptId, x212100_g_MissionName, 2, -1);
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x212100_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x212100_g_ScriptId, x212100_g_MissionName, 1, -1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x212100_CheckAccept( sceneId, selfId )

	--ÒªÇóÍê³ÉtoÕ ğµ Ç°ĞøÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,645) <= 0 then		--¶ÏÇÅ»¨Ñı
		return 0
	elseif IsMissionHaveDone(sceneId,selfId,646) <= 0 then	--°×µÌÁø¹í
		return 0
	elseif IsMissionHaveDone(sceneId,selfId,647) <= 0 then--¹éÔÆ×¯
		return 0
	end
	
	--C¥n 1c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= x212100_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x212100_OnAccept( sceneId, selfId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212100_g_MissionId) > 0 then
		return 
	end
	
	-- 1,¼ì²âµ±Ç°Ğúng²»ĞúngÒÑ¾­TÕi ³¡¾°ÖĞÓĞ ÂóÓÑÈË ÁË,Èç¹ûÓĞ,ÌáÊ¾Íæ¼ÒÏÖTÕi ²»ÄÜ½ÓCái này ÈÎÎñ
	local nMonsterNum = GetMonsterCount(sceneId)
	
	local ii = 0
	local bHaveMonster = 0
	for ii=1, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		
		if GetName(sceneId, nMonsterId)  == "MÕch Hæu Nhân"  then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i hi®n không th¬ nh§n nhi®m vø này");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			return
		end
	end
		
	-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x212100_g_MissionId, x212100_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	
	--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïtoÕ ğµ ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
	local misIndex = GetMissionIndexByID(sceneId, selfId, x212100_g_MissionId)-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚmµt Î»ÖÃ0	µÚmµt Î»ĞúngÍê³É/th¤t bÕiÇé¿ö

	Msg2Player(  sceneId, selfId,"#YTiªp nh§n#W" .. x212100_g_MissionName, MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTiªp nh§n#W " .. x212100_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
	-- ´´½¨Cái này ¹Ö³öÀ´,Í¬Ê±º°»°
	local nMonsterId = LuaFnCreateMonster(sceneId, 509, 161, 262, 5, 0, -1)
	LuaFnSendSpecificImpactToUnit(sceneId,nMonsterId,nMonsterId,nMonsterId,44,3)
	CallScriptFunction((200060), "Duibai",sceneId, "MÕch Hæu Nhân", "Tây H°", "Tô Phi, ğ° sâu b÷, ngß½i còn m½ tß·ng làm lung lay v¸ trí th¯ng tr¸ cüa th¥y ta sao? Tô Phi, ngày này nåm sau chính là ngày gi² cüa ngß½i." )
	
	SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
	SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 0)

	--ÉèÖÃCái này ¹ÖtoÕ ğµ ÏûÊ§Ê±¼ä
	SetCharacterDieTime(sceneId, nMonsterId, 600000)

end

--**********************************
--³¡¾°¼ÆÊ±Æ÷
--**********************************
function x212100_OnSceneTimer( sceneId, selfId )

end

--**********************************
--·ÅÆú
--**********************************
function x212100_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	DelMission( sceneId, selfId, x212100_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x212100_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x212100_g_MissionName)
		AddText(sceneId,x212100_g_MissionComplete)
		AddMoneyBonus( sceneId, x212100_g_MoneyBonus )
		for i, item in x212100_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212100_g_ScriptId,x212100_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212100_CheckSubmit( sceneId, selfId )

	--local missionId = GetMissionIdByIndex(x212100_g_ScriptId)
	local missionId = x212100_g_MissionId
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
function x212100_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		-- °²È«ĞÔ¼ì²â
		-- 1¡¢¼ì²âÍæ¼ÒĞúng²»ĞúngÓĞCái này ÈÎÎñ
		if IsHaveMission(sceneId,selfId,x212100_g_MissionId) <= 0 then
			return
		end
		
		-- 2¡¢Hoàn t¤t nhi®m vøtoÕ ğµ Çé¿ö¼ì²â
		if x212100_CheckSubmit(sceneId, selfId) <= 0    then
			return
		end
		
		BeginAddItem(sceneId)
		for i, item in x212100_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		local ret = EndAddItem(sceneId,selfId)
		
		if ret > 0 then
			AddItemListToHuman(sceneId,selfId)
			-- ½ğÇ®ºÍKinh nghi®m
			AddMoney(sceneId,selfId,x212100_g_MoneyBonus )
			LuaFnAddExp( sceneId, selfId, x212100_g_exp)
			
			DelMission( sceneId,selfId, x212100_g_MissionId )
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
			MissionCom( sceneId,selfId, x212100_g_MissionId )
			
		else
			--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
			BeginEvent(sceneId)
				AddText(sceneId, "Nhi®m vø th¤t bÕi!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
		
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212100_OnKillObject( sceneId, selfId, objdataId ,objId )

	--local missionId = TGetMissionIdByIndex(x212100_g_ScriptId)
	local missionId = x212100_g_MissionId
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
	local monsterName = GetMonsterNamebyDataId(objdataId)
	
	if monsterName == "MÕch Hæu Nhân"   then
		
		CallScriptFunction((200060), "Duibai",sceneId, "Tô Phi ", "Tây H°", "HŞi các anh em thuÖ quÖ, hôm nay, chính hôm nay, chúng ta ğã tñ do, chúng ta không còn là nô l® næa." )

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
						local strText = format("Ğã giªt chªt MÕch Hæu Nhân: 1/1" )
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
function x212100_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212100_OnItemChanged( sceneId, selfId, itemdataId )
end







