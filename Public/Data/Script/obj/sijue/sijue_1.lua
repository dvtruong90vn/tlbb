-- Áì½±NPC

x899995_g_scriptId = 899995

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x899995_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 10 then
			BeginEvent(sceneId)
	   			AddText( sceneId, "Thiên quan khó khån th§t mÕnh, xin ðþi c¤p ðÕt t¾i c¤p 10 lÕi ðªn!" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		AddText( sceneId, "#YTa là #YThanh Long các #W truy«n t¯ng sÑ!" )
		   		AddText( sceneId, "#YTrên ngß¶i phäi mang theo chìa khoá#cFF0000TÑ Tuy®t #W--#G BÕch H±,#Y ta m¾i có th¬ ngß½i ðßa ðªn TÑ Tuy®t Trang t¥ng tiªp theo --#G BÕch H± Các!" )
		   		AddText( sceneId, "Chìa khoá #cFF0000TÑ Tuy®t #W--#G BÕch H± #Y có th¬ r¾t ra t× ðánh quái v§t · #YThanh Long Các#W!" )
				AddNumText( sceneId, x899995_g_scriptId, "#c00ff00Ðßa ta qua", 5, 200)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x899995_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 210 then
		BeginEvent( sceneId )
   		local n = GetMonsterCount(sceneId)
		if n>170 then
   		strText = "Trß¾c m£t s¯ lßþng quái v§t là: "..n..", làm giäm s¯ lßþng quái xu¯ng 170 thì nó s¨ h°i sinh con khác,!"
  		AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
   		else 
		BeginEvent( sceneId )
		LuaFnCreateMonster(531, 39339, 30, 30, 17, 0, 402030)
                AddText( sceneId, "G÷i quái v§t m¾i thành công! B±n quan cùng quái v§t t±ng s¯ lßþng là: "..n.."." )
           	AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		end
          elseif GetNumText() == 200 then

	local nCount = GetMonsterCount(sceneId)
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		--if MosDataID == 42100 then
		if MosDataID == 42100 or MosDataID == 42101 or MosDataID == 42102 or MosDataID == 42103 or MosDataID == 42104 or MosDataID == 42105 or MosDataID == 42106 or MosDataID == 42107 or MosDataID == 42108
                 or MosDataID == 42109 or MosDataID == 42110 or MosDataID == 42111 or MosDataID == 42112 or MosDataID == 42113 or MosDataID == 42114 or MosDataID == 42115 or MosDataID == 42116 or MosDataID == 42117
                 or MosDataID == 42118 or MosDataID == 42119 or MosDataID == 42180 then
               	        BeginEvent( sceneId ) 
	        	           AddText( sceneId, "#GThanh long Các quái v§t còn chßa b¸ tiêu di®t sÕch s¨, xin hãy tiêu di®t toàn bµ r°i ðªn truy«n t¯ng!" )
              	           EndEvent( sceneId )
               	        DispatchEventList( sceneId, selfId, targetId )
			return 
		end
	end

	       	local nStoneId0 = 39901039
		       c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
                          if c0 >=0 then
			         BeginEvent( sceneId ) 
			         LuaFnDelAvailableItem(sceneId,selfId,39901039,300)--É¾³ýÎïÆ·
			         CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 540, 36,86,10 )--´«ËÍ
			         EndEvent( sceneId )
               	         DispatchEventList( sceneId, selfId, targetId )
                          else
               	        BeginEvent( sceneId ) 
	        	           AddText( sceneId, "#GÐ×ng tùy tùy ti®n ðªn l×a d¯i ta! Ngß½i trên ngß¶i cån bän không có s· hæu v§t ph¦m, c¦n th§n ta ðó!" )
              	           EndEvent( sceneId )
               	        DispatchEventList( sceneId, selfId, targetId )
       	            end
	    end
end
