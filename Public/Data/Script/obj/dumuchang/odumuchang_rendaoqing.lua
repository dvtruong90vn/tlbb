--¶¾ÕÏÔóµØNPC
--ÈÎµÀÇå
--ÆÕÍ¨

x050112_g_ScriptId	= 050112

--²Ù×÷¼¯
x050112_g_Key				=
{
		["zhu"]					= 100,	--ÎÒÏëÉ¾³ýËùÓÐµÄÈÎÎñ
		["itm"]					= 101,	--ÎÒÏëÉ¾³ýÈÎÎñµÀ¾ß
		["do"]					= 102,	--È·ÈÏÉ¾³ýËùÓÐµÄÈÎÎñ
}

-- ÐèÒªÔÚÉ¾³ýËùÓÐÈÎÎñµÄÊ±ºò£¬Í¬Ê±É¾³ýµÄÈÎÎñÎïÆ·µÄÁÐ±í
x050112_g_MisItemList = {	40004000,40004451,40004452,40004461,
		40004453,40004456,40004459,40004458,40004455,40004457,30505062,											
}

x050112_g_YinMoZhuList = {	40004455,40004456,40004457,40004458,40004459											
}

--******************************************************
--ÊÂ¼þ½»»¥Èë¿Ú
--******************************************************
function x050112_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta có th¬ giúp các v¸ anh hùng huÖ bö nhi®m vø ðÕo cø dß th×a. Nªu nhi®m vø ðÕo cø làm cho ngß½i cäm th¤y bu°n phi«n, hãy ðªn tìm ta!" )
		AddNumText( sceneId, x050112_g_ScriptId, "Ta mu¯n huÖ bö Dçn Ma châu", 6, x050112_g_Key["zhu"] )
		AddNumText( sceneId, x050112_g_ScriptId, "Ta mu¯n huÖ bö nhi®m vø ðÕo cø", 6, x050112_g_Key["itm"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x050112_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	local	key	= GetNumText()

	if key == x050112_g_Key["zhu"]	then
		local iHave = 0;
		for i, nItemId in x050112_g_YinMoZhuList do
			-- »ñµÃÕâ¸öÎïÆ·µÄÊýÁ¿
			local nItemCount = GetItemCount(sceneId, selfId, nItemId)
			
			if nItemCount > 0  then
				iHave = 1
			end
		end
		
		if (iHave == 0) then
			BeginEvent( sceneId )
				AddText( sceneId, "Không th¬ huÖ bö Dçn Ma châu!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ có mu¯n huÖ bö Dçn Ma Châu?" )
				AddNumText( sceneId, x050112_g_ScriptId, "È·ÈÏ", 6, x050112_g_Key["do"] )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	elseif key == x050112_g_Key["itm"]	then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 42 )

	elseif key == x050112_g_Key["do"]	then
		for i, nItemId in x050112_g_YinMoZhuList do
			-- »ñµÃÕâ¸öÎïÆ·µÄÊýÁ¿
			local nItemCount = GetItemCount(sceneId, selfId, nItemId)
			
			if nItemCount > 0  then
				DelItem(sceneId, selfId, nItemId, nItemCount)
			end
		end
		BeginEvent( sceneId )
		AddText( sceneId, "HuÖ bö Dçn Ma châu thành công!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
end

--******************************************************
--Ïú»ÙÈÎÎñÎïÆ·
--ÓÉClient\Interface\MissionObjDel\MissionObjDel.lua·¢³ö
--******************************************************
function x050112_OnDestroy( sceneId, selfId, posItem )
	if posItem < 0 then
		return
	end

	EraseItem( sceneId, selfId, posItem )
end
