-- ÁùºÏÍþÎä 20090512
-- Ð»ãp

x889058_g_ScriptId = 889058;


-- ÐèÇóÎïÆ·ID
x889058_g_NeedItemID		= {
													30504101,		-- ÁùºÏÁîÅÆ(¶«)
													30504102,		-- ÁùºÏÁîÅÆ(±±)
													30504103,		-- ÁùºÏÁîÅÆ(Î÷)
													30504104,		-- ÁùºÏÁîÅÆ(ÄÏ)
													30504105,		-- ÁùºÏÁîÅÆ(ÉÏ)
													30504106,		-- ÁùºÏÁîÅÆ(ÏÂ)
													}

-- ½±ÀøÏà¹Ø
x889058_g_AwradInfo		=	{
	{ItemId = 10422016, LackItemMsg = "#{LHZD_090513_03}", RetDlg = "#{LHZD_090513_04}", Notice = "#{LHZD_090513_05}", BagFullDlg = "#{LHZD_090513_06}"},	-- ÖØÂ¥½ä
--	{ItemId = 10423024, LackItemMsg = "#{LHZD_090513_07}", RetDlg = "#{LHZD_090513_08}", Notice = "#{LHZD_090513_09}", BagFullDlg = "#{LHZD_090513_17}"}	-- ÖØÂ¥Óñ
}


--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x889058_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText( sceneId, x889058_g_ScriptId, "#{LHZD_090513_13}", 6, 10 )					-- °´Å¥:  ÁùºÏÍþÎä
	AddNumText( sceneId, x889058_g_ScriptId, "#{LHZD_090513_14}", 11, 11 )				-- °´Å¥:  ÁùºÏÍþÎä½éÉÜ
	
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x889058_OnDefaultEvent( sceneId, selfId, targetId )

	local nNumText = GetNumText( )
	
	if( nNumText == 10 ) then
		--  ði¬m»÷ ÁùºÏÍþÎä
		-- BeginEvent( sceneId )
		-- AddText( sceneId, "#{LHZD_090513_01}#r" )
		-- for i, item in x889058_g_AwradInfo do
		-- 	AddRadioItemBonus( sceneId, item.ItemId, 1 )
		-- end
		-- EndEvent(sceneId)
		-- DispatchEventList( sceneId, selfId, targetId )
		-- DispatchMissionContinueInfo( sceneId, selfId, targetId, x889058_g_ScriptId, 0 )
		x889058_GiveGift( sceneId, selfId, targetId, 10422016 )
	elseif( nNumText == 11 ) then
		--  ði¬m»÷ ÁùºÏÍþÎä½éÉÜ
		BeginEvent( sceneId )	
			AddText( sceneId, "#{LHZD_090513_12}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	end
		
end


--**********************************
--Tr· v«¶Ô»°
--**********************************
function x889058_ReturnDlg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ReturnTips
--**********************************
function x889058_Tips(sceneId, selfId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--Tiªp thø
--**********************************
function x889058_OnAccept( sceneId, selfId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x889058_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x889058_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x889058_CheckSubmit( sceneId, selfId )
	

	
end

--**********************************
--Ìá½»
--**********************************
function x889058_GiveGift( sceneId, selfId, targetId, selectRadioId )
	
	
	local LackItemMsg, RetDlg, Notice, BagFullDlg

	for i, ItemInfo in x889058_g_AwradInfo do
		if( ItemInfo.ItemId == selectRadioId ) then
			LackItemMsg		= ItemInfo.LackItemMsg
			RetDlg 				= ItemInfo.RetDlg
			Notice 				= ItemInfo.Notice
			BagFullDlg		= ItemInfo.BagFullDlg
			break
		end
	end
	
	-- ÅÐ¶ÏÎïÆ·Ðúng·ñ¹»
	for i, itemId in x889058_g_NeedItemID do
		if( LuaFnGetAvailableItemCount( sceneId, selfId, itemId ) < 1 ) then
			x889058_ReturnDlg( sceneId, selfId, targetId, LackItemMsg )
			return
		end
	end
	
	-- ¿ÛÎïÆ·
	for i, itemId in x889058_g_NeedItemID do
		if( LuaFnDelAvailableItem( sceneId, selfId, itemId, 1) < 1 ) then
			x889058_ReturnDlg( sceneId, selfId, targetId, LackItemMsg )
			return
		end
	end
	
	-- ¼ì²é±³°ü¿Õ¼ä
	BeginAddItem(sceneId)
	AddItem(sceneId, selectRadioId, 1)
	local bBagOk = LuaFnEndAddItemIgnoreFatigueState(sceneId, selfId)
	if bBagOk < 1 then
		x889058_ReturnDlg( sceneId, selfId, targetId, BagFullDlg )
		return
	else
		-- Ìí¼ÓÎïÆ·
		LuaFnAddItemListToHumanIgnoreFatigueState( sceneId, selfId )
		
		-- Í¨Öª
		x889058_Tips( sceneId, selfId, Notice )
		x889058_ReturnDlg( sceneId, selfId, targetId, RetDlg )
		
		-- ¹«¸æ
		local playerName = GetName(sceneId,selfId)
		local itemTransInfo = GetItemTransfer( sceneId, selfId, 0 )
		broadcastMsg	=	"#{_INFOUSR"..playerName.."}".."#{LHZD_090513_10}".."#{_INFOMSG"..itemTransInfo.."}".."#{LHZD_090513_11}"
	end
	
	BroadMsgByChatPipe( sceneId, selfId, broadcastMsg, 4 )
end
	

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x889058_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x889058_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x889058_OnItemChanged( sceneId, selfId, itemdataId )
end

