--°Ë±¦ÖàÈÎÎñ
--Ñ°Îï
--MisDescBegin
--½Å±¾ºÅ
x210234_g_ScriptId = 210234

--½ÓÊÜÈÎÎñNPCÊôĞÔ
x210234_g_Position_X=282
x210234_g_Position_Z=220
x210234_g_SceneID=2
x210234_g_AccomplishNPC_Name="Lı Công Bµ"

--Ç°ÌáÈÎÎñ
--g_MissionIdPre =

--ÈÎÎñºÅ
x210234_g_MissionId = 714

--ÈÎÎñÄ¿±ênpc
x210234_g_Name	="Lı Công Bµ"

--ÈÎÎñ¹éÀà
x210234_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210234_g_MissionLevel = 4

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210234_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É
x210234_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»

--ÈÎÎñĞèÒªµÃµ½µÄÎïÆ·
x210234_g_DemandItem={{id=20309002,num=1},{id=20309006,num=1}}		--´Ó±³°üÖĞ¼ÆËã
--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚÒ»Î»ÓÃÀ´´æ´¢Ëæ»úµÃµ½µÄ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x210234_g_MissionName="Ngñ TÑ Tinh Xäo Hài"
x210234_g_MissionInfo="#{event_dali_0047}"  --ÈÎÎñÃèÊö
x210234_g_MissionTarget="Tìm ğßşc Nh¤t Ph¦m Quª Viên và Nh¤t Ph¦m Hoa Sinh, sau ğó v« #GNgû Hoa Ğàn thành ĞÕi Lı#W tìm 1 trong TÑ ğÕi thi®n nhân #RLı Công Bµ #W#{_INFOAIM282,220,2,Lı Công Bµ}."		--ÈÎÎñÄ¿±ê
x210234_g_ContinueInfo="Nh¤t Ph¦m Quª Viên và Nh¤t Ph¦m Hoa Sinh các hÕ ğã tìm ğßşc chßa?"		--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x210234_g_MissionComplete="Ngß¶i trë tu±i, làm t¯t l¡m."					--Íê³ÉÈÎÎñnpcËµ»°µÄ»°

--ÈÎÎñ½±Àø
x210234_g_ItemBonus={{id=10411047,num=1}}
x210234_g_MoneyBonus=0
--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210234_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	--·¢ËÍÈÎÎñĞèÇóµÄĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x210234_g_MissionName)
		AddText(sceneId,x210234_g_MissionInfo)
		for i, item in x210234_g_DemandItem do
			AddItemDemand( sceneId, item.id, item.num )
		end
	EndEvent( )
	bDone = x210234_CheckSubmit( sceneId, selfId )
	DispatchMissionDemandInfo(sceneId,selfId,targetId,x210234_g_ScriptId,x210234_g_MissionId,bDone)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210234_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210234_g_MissionId) > 0 then
    	return
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210234_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210234_g_ScriptId,x210234_g_MissionName,1,-1);
    end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210234_CheckAccept( sceneId, selfId )
	return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x210234_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x210234_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
    DelMission( sceneId, selfId, x210234_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x210234_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x210234_g_MissionName)
    AddText(sceneId,x210234_g_MissionComplete)
    AddMoneyBonus( sceneId, x210234_g_MoneyBonus )
    for i, item in x210234_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210234_g_ScriptId,x210234_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210234_CheckSubmit( sceneId, selfId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
    if IsMissionHaveDone( sceneId, selfId, x210234_g_MissionId ) > 0 then
		return 0
	end

	for i, item in x210234_g_DemandItem do
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
function x210234_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210234_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		BeginAddItem(sceneId)
			for i, item in x210234_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			--¿Û³ıÈÎÎñÎïÆ·
			for i, item in x210234_g_DemandItem do
				ret = DelItem( sceneId, selfId, item.id, item.num )
			end
			if	ret > 0 then
				AddMoney(sceneId,selfId,x210234_g_MoneyBonus );
				LuaFnAddExp( sceneId, selfId,450)
				ret = DelMission( sceneId, selfId, x210234_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210234_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Ngñ TÑ Tinh Xäo Hài",MSG2PLAYER_PARA )
				end
			else
				--É¾³ıÎïÆ·²»³É¹¦
				BeginEvent(sceneId)
					strText = "Không ğü nguyên li®u"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
		else
			--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Nhi®m vø th¤t bÕi"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210234_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊıÒâË¼£º³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210234_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210234_OnItemChanged( sceneId, selfId, itemdataId )
end
