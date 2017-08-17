--Ñ­»·ÈÎÎñ
--Ñ°ÕÒ±¦²Ø
--´ýÔöÇ¿toÕ ðµ ²¿·Ö:	Ñ°±¦·½Ê½toÕ ðµ ÔöÇ¿,1ÏÖÓÐtoÕ ðµ Ö±½Ó¸æËßÍæ¼Ò¾àÀë2ÏÞÖÆÌ½²âÆ÷Ê¹ÓÃ
--				´ÎÊý3Ê¹ÓÃÌ½²âÆ÷ºóÓÃÉùÒôÀ´ÌáÊ¾¾àÀë4Ê¹ÓÃÌ½²âÆ÷ºóÓÃ·½ÏòÀ´
--				ÌáÊ¾5Ê¹ÓÃÌ½²âÆ÷ºóÓÃÍæ¼ÒtoÕ ðµ Ç°ºó×óÓÒÀ´ÌáÊ¾6ÕÒµ½µÚmµt cáiÎ»ÖÃ
--				ÐúngÖ¸Ê¾±¦²ØÎ»ÖÃtoÕ ðµ Ö½Ìõ7ÕÒµ½µÚmµt cáiÎ»ÖÃ»¹ÒªÓÐÃÔÌâ²ÅÄÜÖªµÀ
--				¾ßÌåÎ»ÖÃ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x500500_g_ScriptId = 500500

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
--g_MissionIdPre =

--ÈÎÎñºÅ
x500500_g_MissionId = 700

--Møc tiêu nhi®m vønpc
x500500_g_Name	="Hà Ch¤p Trung" 

--ÈÎÎñµÀ¾ß±àºÅ
x500500_g_ItemId = 40002106

--ÈÎÎñµÀ¾ßÐèÇóÊýÁ¿
x500500_g_ItemNeedNum = 1

--ÈÎÎñ¹éÀà
x500500_g_MissionKind = 1

--ÐÆng c¤p nhi®m vø 
x500500_g_MissionLevel = 20

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x500500_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
x500500_g_IsMissionOkFail = 0					--±äÁ¿toÕ ðµ µÚ0Î»
x500500_g_DemandItem={{id=40002106,num=1}}		--±äÁ¿µÚ1Î»,ÈÎÎñC¥n  ði¬mµ½toÕ ðµ ÎïÆ·
x500500_g_MissionRound = 3						--Ñ­»·ÈÎÎñtoÕ ðµ Êý¾ÝË÷Òý,ÀïÃæ´æ×ÅÒÑ×ötoÕ ðµ »·Êý MD_WABAO_HUAN
--**********************************ÒÔÉÏÐúng¶¯Ì¬****************************


--ÈÎÎñÎÄ±¾ÃèÊö
x500500_g_MissionName="T¥m bäo"
x500500_g_MissionInfo="#{M_700_TEXT1}"  --ÈÎÎñÃèÊö
x500500_g_MissionTarget="Tìm ðßþc bäo tàng giao cho Hà Ch¤p Trung"		--Møc tiêu nhi®m vø
x500500_g_ContinueInfo="Các hÕ ðã tìm ðßþc bäo tàng chßa? Hãy dùng Tham Tr¡c Khí trong ph¥n ð° nhi®m vø thì có th¬ tìm ðßþc v¸ trí cüa bäo tàng r°i"		--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x500500_g_MissionComplete="Làm t¯t l¡m"					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x500500_g_MoneyBonus=100
x500500_g_ItemBonus={{id=30002001,num=1}}

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿Ë ði¬m÷
--0ºÅ: ÈÎÎñ×´Ì¬
--1ºÅ: ÈÎÎñC¥n toÕ ðµ ÎïÆ·(Cái này ÈÎÎñÖ»ÓÐmµt cái)
--2ºÅ: ±¦ÎïËùTÕi ³¡¾°±àºÅ
--3ºÅ: ±¦Îïx×ø±ê
--4ºÅ: ±¦Îïz×ø±ê
--5ºÅ: Î´ÓÃ
--6ºÅ: Î´ÓÃ
--7ºÅ: Î´ÓÃ

--±¦²ØÎ»ÖÃ
x500500_g_TreasureAddress = {	{scene=0,x=105,z=88},
						{scene=0,x=146,z=60},
						{scene=0,x=99,z=114},
						{scene=0,x=80,z=85},
						{scene=0,x=55,z=134},
						{scene=0,x=203,z=45},
						{scene=0,x=24,z=67},
						{scene=0,x=219,z=109},
						{scene=0,x=222,z=62},
						{scene=0,x=227,z=196},
						{scene=0,x=168,z=224},
						{scene=0,x=88,z=226},
						{scene=0,x=34,z=111}}


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x500500_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if IsHaveMission(sceneId,selfId,x500500_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x500500_g_MissionName)
			AddText(sceneId,x500500_g_ContinueInfo)
			AddText(sceneId," ")
			AddText(sceneId,"V§t ph¦m c¥n: ")
			for i, item in x500500_g_DemandItem do
				AddItemDemand( sceneId, item.id, item.num )
			end
		EndEvent( )
		bDone = x500500_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x500500_g_ScriptId,x500500_g_MissionId,bDone)
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x500500_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x500500_g_MissionName)
			AddText(sceneId,x500500_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x500500_g_MissionTarget)
			AddMoneyBonus( sceneId, x500500_g_MoneyBonus )
			AddText(sceneId,"#{M700_6}")
			for i, item in x500500_g_ItemBonus do
				AddItemBonus( sceneId, item.id, item.num )
			end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x500500_g_ScriptId,x500500_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x500500_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    --else

    if IsHaveMission(sceneId,selfId,x500500_g_MissionId) > 0 then
		AddNumText(sceneId,x500500_g_ScriptId,x500500_g_MissionName,3,-1);
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x500500_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x500500_g_ScriptId,x500500_g_MissionName,4,-1);
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x500500_CheckAccept( sceneId, selfId )
	--C¥n 10c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 10 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x500500_OnAccept( sceneId, selfId )

	if x500500_CheckAccept(sceneId, selfId )<=0 then
		return
	end
	
	x500500_g_sequence = random(13)					--¸ù¾Ý±¦ÎïµØ ði¬m×ÜÊý ðÕt ðßþcmµt cáiËæ»úÊý
	SceneNum = x500500_g_TreasureAddress[x500500_g_sequence].scene
	X		 = x500500_g_TreasureAddress[x500500_g_sequence].x
	Z		 = x500500_g_TreasureAddress[x500500_g_sequence].z
	--Ìí¼Ó±¦²ØÌ½²âÆ÷
	BeginAddItem(sceneId)
		ret = AddItem( sceneId,40002104, 1 )
	EndAddItem(sceneId,selfId)
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	ret = AddMission( sceneId,selfId, x500500_g_MissionId, x500500_g_ScriptId, 0, 0, 1 )

	--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïtoÕ ðµ ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
	misIndex = GetMissionIndexByID(sceneId,selfId,x500500_g_MissionId)		-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚmµt Î»ÖÃ0	µÚmµt Î»ÐúngÍê³É/th¤t bÕiÇé¿ö
	SetMissionByIndex(sceneId,selfId,misIndex,1,x500500_g_DemandItem[1].id)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ2Î»ÖÃÎªV§t ph¦m c¥n thiªt toÕ ðµ ±àºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,2,SceneNum)			--°ÑµÚÈýÎ»ÖÃÎª±¦ÎïtoÕ ðµ ³¡¾°±àºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,3,X)					--°ÑµÚËÄÎ»ÖÃÎª±¦ÎïtoÕ ðµ X×ø±ê
	SetMissionByIndex(sceneId,selfId,misIndex,4,Z)					--°ÑµÚÎåÎ»ÖÃÎª±¦ÎïtoÕ ðµ Z×ø±ê
	
	AddItemListToHuman(sceneId,selfId)

	-- ði¬mµ½»·Êý
	local huan = GetMissionData(sceneId,selfId,x500500_g_MissionRound)
	--»·ÊýÔö¼Ó1
	huan = huan + 1
	SetMissionData(sceneId,selfId,x500500_g_MissionRound,huan)
	Msg2Player( sceneId,selfId,"Nh§n nhi®m vø: t¥m bäo",MSG2PLAYER_PARA)
	Msg2Player( sceneId,selfId,"Trß¾c m¡t thÑ"..huan.."ThÑ",MSG2PLAYER_PARA)	

end

--**********************************
--·ÅÆú
--**********************************
function x500500_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    DelMission( sceneId, selfId, x500500_g_MissionId )
	DelItem (sceneId,selfId,40002104,1)
	SetMissionData(sceneId,selfId,12,0)	--»·ÊýÇå0
end

--**********************************
--¼ÌÐø
--**********************************
function x500500_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x500500_g_MissionName)
		AddText(sceneId,x500500_g_MissionComplete)
		AddMoneyBonus( sceneId, x500500_g_MoneyBonus )
		for i, item in x500500_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
		--for i, item in g_RadioItemBonus do
		--	AddRadioItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x500500_g_ScriptId,x500500_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x500500_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x500500_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	for i, item in x500500_g_DemandItem do
		itemCount = GetItemCount( sceneId, selfId, item.id )
		if itemCount < item.num then
			return 0
		end
	end
	return 1
end

--**********************************
--Ìá½»
--**********************************
function x500500_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	local huan = GetMissionData(sceneId,selfId,x500500_g_MissionRound)

	--¼ÆËã½±Àø½ðÇ®toÕ ðµ ÊýÁ¿
	if mod(huan,10) == 0 then
		x500500_g_Money = 1000 * 15
	else
		x500500_g_Money = 1000 * mod(huan,10)
	end
	
	if x500500_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x500500_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
			--for i, item in g_RadioItemBonus do
			--	if item.id == selectRadioId then
			--		AddItem( sceneId,item.id, item.num )
			--	end
			--end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			
			ret = DelMission( sceneId, selfId, x500500_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId,selfId, x500500_g_MissionId )
				local bDelItem = true
				--¿Û³ýÈÎÎñÎïÆ·
				for i, item in x500500_g_DemandItem do
					if 0== DelItem( sceneId, selfId, item.id, item.num ) then
						bDelItem = bDelItem and false
					end
				end
				--É¾³ýÌ½²âÆ÷
				if 0==DelItem( sceneId, selfId, 40002104, 1 ) then
					bDelItem = bDelItem and false
				end
				if(true==bDelItem) then
					AddItemListToHuman(sceneId,selfId)
					--¸øÇ®½±Àø
					AddMoney(sceneId,selfId,x500500_g_Money )
					--¸øKinh nghi®mÖµ½±Àø
					AddExp( sceneId,selfId,x500500_g_Money)	
	
					Msg2Player( sceneId,selfId,"Các hÕ ðã ðÕt ðßþc "..x500500_g_Money.." Ð°ng vàng",MSG2PLAYER_PARA)
				end
			end
		else
			--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Không th¬ Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end      
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x500500_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x500500_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x500500_OnItemChanged( sceneId, selfId, itemdataId )
	if itemdataId == x500500_g_ItemId then
		x500500_g_ItemNum = GetItemCount(sceneId,selfId,x500500_g_ItemId)
		if x500500_g_ItemNum < x500500_g_ItemNeedNum then
			BeginEvent(sceneId)
				strText = format("Ðã ðßþc %d/1 bäo v§t", x500500_g_ItemNum )
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				strText = format("Ðã ðßþc %d/1 bäo v§t", x500500_g_ItemNeedNum )
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--µÀ¾ßÊ¹ÓÃ
--**********************************
function x500500_OnUseItem( sceneId, selfId, BagIndex )
	misIndex = GetMissionIndexByID(sceneId,selfId,x500500_g_MissionId)
	x500500_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		-- ðÕt ðßþcÈÎÎñ×´Ì¬
	scene = GetMissionParam(sceneId,selfId,misIndex,2)					-- ðÕt ðßþc±¦Îï³¡¾°ºÅ
	treasureX = GetMissionParam(sceneId,selfId,misIndex,3)				-- ðÕt ðßþc±¦ÎïX×ø±ê
	treasureZ = GetMissionParam(sceneId,selfId,misIndex,4)				-- ðÕt ðßþc±¦ÎïZ×ø±ê	
	--Èç¹ûÈÎÎñÒÑ¾­Íê³É
	if x500500_g_MissionCondition == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ðã tìm ðßþc r°i, quay v« giao trä nhi®m vø ði")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--È¡ ði¬mÍæ¼Òµ±Ç°×ø±ê
	PlayerX = GetHumanWorldX(sceneId,selfId)
	PlayerZ = GetHumanWorldZ(sceneId,selfId)
	--¼ÆËãÍæ¼ÒÓë±¦²ØtoÕ ðµ ¾àÀë
	Distance = floor(sqrt((treasureX-PlayerX)*(treasureX-PlayerX)+(treasureZ-PlayerZ)*(treasureZ-PlayerZ)))
	if sceneId ~= scene then
		BeginEvent(sceneId)
			AddText(sceneId,"Hình nhß bäo tàng không n¢m trong cänh này")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	if Distance >1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Cñ ly cách bäo tàng còn "..Distance.." GÕo")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif Distance <= 1 then
		BeginAddItem(sceneId)
			AddItem( sceneId,x500500_g_DemandItem[1].id, 1 )
		ret = EndAddItem(sceneId,selfId)
		if ret > 0 then
			AddItemListToHuman(sceneId,selfId)
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--°ÑÈÎÎñ×´Ì¬±äÁ¿ÉèÖÃÎª1,±íÊ¾ÒÑ¾­Íê³É
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ô nhi®m vø tay näi ðã ð¥y")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end
