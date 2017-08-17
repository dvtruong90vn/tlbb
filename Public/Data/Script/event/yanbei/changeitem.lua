-- 212220
-- ¶Ò»»ÎïÆ·
x212220_g_scriptId = 212220

x212220_g_Stone = {	{level=50,id=20310000,num=15},
										{level=60,id=20310000,num=30},
										{level=70,id=20310000,num=60},}
										
x212220_g_Stone2 = {	{level=50,id=20310003,num=15},
										{level=60,id=20310003,num=30},
										{level=70,id=20310003,num=60},}


x212220_g_Item = {
	{level=50,id=10410001},{level=50,id=10422013},{level=50,id=10420004},{level=50,id=10423021},
	{level=60,id=10410002},{level=60,id=10422014},{level=60,id=10420005},{level=60,id=10423022},
	{level=70,id=10410003},{level=70,id=10422015},{level=70,id=10420006},{level=70,id=10423023},
}

x212220_g_BossItem = {
	{item=10401002,boss="#{_BOSS33}",scene=0},
	{item=10403002,boss="#{_BOSS33}",scene=0},
	{item=10405001,boss="#{_BOSS33}",scene=0},
	{item=10404002,boss="#{_BOSS33}",scene=0},
				
	{item=10401003,boss="#{_BOSS37}",scene=0},
	{item=10403003,boss="#{_BOSS37}",scene=0},
	{item=10405002,boss="#{_BOSS37}",scene=0},
	{item=10404003,boss="#{_BOSS37}",scene=0},
	
	{item=10401004,boss="#{_BOSS41}",scene=0},
	{item=10403004,boss="#{_BOSS41}",scene=0},
	{item=10405003,boss="#{_BOSS41}",scene=0},
	{item=10404004,boss="#{_BOSS41}",scene=0},
}

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212220_OnDefaultEvent( sceneId, selfId, targetId )

	local nNum = GetNumText()
	if nNum == 50 or nNum == 60 or nNum == 70   then
		
		local str
		
		if nNum == 50  then
			str = "Các hÕ nªu ch¤p nh§n dùng 15 cái Yªn Huy«n Ng÷c giao cho ta là có th¬ ch÷n 1 món trang b¸ dß¾i ðây:"
		elseif nNum == 60  then
			str = "Các hÕ nªu ch¤p nh§n dùng 30 cái Yªn Huy«n Ng÷c giao cho ta là có th¬ ch÷n 1 món trang b¸ dß¾i ðây:"
		elseif nNum == 70  then
			str = "Các hÕ nªu ch¤p nh§n dùng 60 cái Yªn Huy«n Ng÷c giao cho ta là có th¬ ch÷n 1 món trang b¸ dß¾i ðây:"
	
		end
		BeginEvent(sceneId)
			AddText(sceneId,str);
			for i, temp in x212220_g_Item do
				if temp.level == nNum  then
					AddRadioItemBonus( sceneId, temp.id, 1 )
				end
			end
		EndEvent( )
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x212220_g_scriptId,0)
	end
	

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212220_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x212220_g_scriptId, "Ð±i l¤y bµ trang b¸ c¤p 50", 0, 50 )
	AddNumText( sceneId, x212220_g_scriptId, "Ð±i l¤y bµ trang b¸ c¤p 60", 0, 60 )
	AddNumText( sceneId, x212220_g_scriptId, "Ð±i l¤y bµ trang b¸ c¤p 70", 0, 70 )
	
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x212220_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x212220_OnAccept( sceneId, selfId )

end

--**********************************
--·ÅÆú
--**********************************
function x212220_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x212220_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x212220_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x212220_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	-- ¼ì²â´«¹ýÀ´µÄÕâ¸öÖµÊÇ²»ÊÇÓÐÐ§µÄ
	local logNum1 = 0
	local logNum2 = 0
	local item
	local stone
	local stone2
	local bHaveItem = 0
	local bHaveStone = 0
	local temp
	local temp1
	for i, temp in x212220_g_Item do
		if temp.id == selectRadioId  then
			item = temp
			bHaveItem = 1
		end
	end
	
	-- Ìá½»µÄÎïÆ·²»¶ÔÓ¦£¬Ö±½Ó·µ»Ø£¬²»×ö´¦Àí
	if bHaveItem == 0  then
		return
	end
	
	for i, temp1 in x212220_g_Stone do
		if temp1.level == item.level   then
			stone = temp1
			bHaveStone = 1
		end
	end
	
	--¼ì²âÓÐÃ»ÓÐµÚ¶þÖÖÊ¯Í·
	for i, temp1 in x212220_g_Stone2 do
		if temp1.level == item.level   then
			stone2 = temp1
			bHaveStone = 1
		end
	end
	
	-- ÕÒ²»µ½¶ÔÓ¦µÄÊ¯Í·£¬Ö±½Ó·µ»Ø
	if bHaveStone == 0    then
		return
	end
	
	-- 1£¬¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐÎ»ÖÃÄÜ¹»·ÅÏÂÎïÆ·
	BeginAddItem(sceneId)
		AddItem( sceneId, item.id, 1 )
	local ret = EndAddItem(sceneId,selfId)

	if ret < 1 then
		BeginEvent(sceneId)
			strText = "Tay näi ðã ð¥y, không th¬ trao ð±i."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- 2£¬¼ÆËãÊ¯Í·ÊýÁ¿
	local selfStoneCount = GetItemCount(sceneId,selfId, stone.id) + GetItemCount(sceneId,selfId, stone2.id)
	if stone.num > selfStoneCount   then
		BeginEvent(sceneId)
			strText = "Các hÕ không ðü nguyên li®u ð¬ ð±i v§t ph¦m này."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
		
	end
	
	-- 3£¬¼ì²â±³°üÖÐ£¬Èç¹ûÓÐÊ¯Í·ÉÏËø£¬¾Í²»ÈÃÖ´ÐÐÏÂÈ¥
	if LuaFnGetAvailableItemCount( sceneId, selfId, stone.id ) + LuaFnGetAvailableItemCount( sceneId, selfId, stone2.id ) < stone.num  then
		BeginEvent(sceneId)
			strText = "Trao ð±i th¤t bÕi, vui lòng ki¬m tra lÕi v§t ph¦m phäi chång ðã khóa"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end	
	
	-- 4£¬É¾³ýÎïÆ· ÏÈÉ¾³ý°ó¶¨µÄ
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, stone.id );
	if(BangdingNum >= stone.num) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, stone.id, stone.num)
		if ret1 < 1  then
			BeginEvent(sceneId)
				strText = "Xóa bö th¤t bÕi, vui lòng ki¬m tra lÕi v§t ph¦m phäi chång ðã khóa"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		logNum1 = stone.num;
	elseif(BangdingNum == 0) then
		
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, stone2.id, stone2.num)
		if ret1 < 1  then
			BeginEvent(sceneId)
				strText = "Xóa bö th¤t bÕi, vui lòng ki¬m tra lÕi v§t ph¦m phäi chång ðã khóa"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		logNum2 = stone2.num;	
	
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, stone.id, BangdingNum)
		if ret1 < 1  then
			BeginEvent(sceneId)
				strText = "Xóa bö th¤t bÕi, vui lòng ki¬m tra lÕi v§t ph¦m phäi chång ðã khóa"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		logNum1 = BangdingNum;
		
		--É¾Ã»°ó¶¨µÄ
		local Delete = stone.num - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, stone2.id, Delete)
		if ret1 < 1  then
			BeginEvent(sceneId)
				strText = "Xóa bö th¤t bÕi, vui lòng ki¬m tra lÕi v§t ph¦m phäi chång ðã khóa"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		logNum2 = Delete;
	end
	
	-- ¸ø½±Àø
	AddItemListToHuman(sceneId,selfId)

	-- ¼ÇÂ¼Log
	LuaFnAuditYanXuanYuExchange(sceneId, selfId, stone.id, logNum1, item.id)
	LuaFnAuditYanXuanYuExchange(sceneId, selfId, stone2.id, logNum2, item.id)
	
	--¶Ò»»³É¹¦£¬²¥·ÅÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	
	-- ·¢ÊÀ½ç¹«¸æ
	local szItem = GetItemTransfer(sceneId,selfId,0)
	local randMessage = random(3);

	if randMessage == 1 then
   	message = format("#Y Møc Ðäo#cff99cc dùng mûi chÕm vào#Y Yªn Huy«n Ng÷c#cff99cc cüa#{_INFOUSR%s}#cff99cc mang ðªn hít 1 h½i sâu. Mµt lúc sau g§t ð¥u nói: hàng nh¤t ph¦m, cái #{_INFOMSG%s}#cff99cc này thuµc v« các hÕ.", 
   										GetName(sceneId, selfId), szItem);

	elseif randMessage == 2 then		
		message = format("#Y Møc Ðäo#cff99cc l¤y #YYªn Huy«n Ng÷c#W#cff99cc cüa #{_INFOUSR%s}#cff99cc mang ðªn th±i 1 h½i, vào r°i ð¬ lên tai nghe sau ðó g§t ð¥u nói: r¤t thu¥n khiªt, cái #{_INFOMSG%s}#cff99cc này thuµc v« các hÕ.", 
											GetName(sceneId, selfId), szItem);
	else
		message = format("#Y Møc Ðäo#cff99cc l¤y #YYªn Huy«n Ng÷c#W#cff99cc cüa#{_INFOUSR%s}#cff99cc mang ðªn, soi dß¾i ánh n¡ng m£t tr¶i g§t ð¥u nói: là th§t, cái #{_INFOMSG%s}#cff99cc này thuµc v« các hÕ.", 
											GetName(sceneId, selfId), szItem);
	end
	
	AddGlobalCountNews( sceneId, message )
	
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212220_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212220_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212220_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--É±ËÀBOSSÊ°È¡×°±¸µÄÊÀ½ç¹«¸æ
--**********************************
function x212220_ItemBulletin( sceneId, selfId, itemId, bagidx, bGem )
	local bHaveItem = 0
	local bossitem
	for i, temp in x212220_g_BossItem do
		if temp.item == itemId  then
			bossitem = temp
			bHaveItem = 1
		end
	end
	
	if bHaveItem == 0  then
		return
	end
	
	if sceneId ~= 167 then --by hukai 2008.10.06 BugID38192
		return
	end
	
	local szItem = GetBagItemTransfer(sceneId, selfId, bagidx)
	
	local randMessage = random(3);
	
	randMessage =3
	
	
	if randMessage == 1 then
   message = format("#{_INFOUSR%s}#cff99cc ·#G%s#cff99cc dùng \"Oa Tâm Cß¾c\" ðá trúng chân cüa #Y%s#cff99cc,giành ðßþc ph¥n th¡ng, nh§n ðßþc 1 món #{_INFOMSG%s}.", 
   										GetName(sceneId, selfId), GetSceneName(sceneId), bossitem.boss, szItem );

	elseif randMessage == 2 then		
		message = format("#{_INFOUSR%s}#cff99cc ·#G%s#cff99cc xu¤t 1 chiêu \"Løc MÕch Th¥n Kiªm\" hÕ gøc#Y%s#cff99cc, nh£t ðßþc #Y%s#cff99cc ðánh r½i cüa#{_INFOMSG%s}#cff99cc r°i cß¶i to bö ði.", 
											GetName(sceneId, selfId), GetSceneName(sceneId), bossitem.boss, bossitem.boss, szItem);
	else
		message = format("#Y%s#cff99cc ·#G%s#cff99cc b¸#W#{_INFOUSR%s}#cff99cc chß·ng mÕnh t× phía sau, ðành phäi giao nµp 1#{_INFOMSG%s}#cff99cc.", 
											bossitem.boss, GetSceneName(sceneId), GetName(sceneId, selfId), szItem);
	end
	
	AddGlobalCountNews( sceneId, message )
	
end

