-- Áì½±NPC

x899997_g_scriptId = 899997

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x899997_OnDefaultEvent( sceneId, selfId, targetId )
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 10 then
			BeginEvent(sceneId)
	   			AddText( sceneId, "Thiên quan khó khån th§t mÕnh, xin ðþi c¤p ðÕt t¾i c¤p 10 lÕi ðªn!" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
		   		AddText( sceneId, "#YTa là #YChu Tß¾c Các#W truy«n t¯ng sÑ!" )
		   		AddText( sceneId, "#YTrên ngß¶i phäi mang theo chìa khoá#cFF0000TÑ Tuy®t #W--#GHuy«n Vû,#Y ta m¾i có th¬ ngß½i ðßa ðªn TÑ Tuy®t Trang t¥ng tiªp theo --#GHuy«n Vû Các!" )
		   		AddText( sceneId, "Chìa khoá #cFF0000TÑ Tuy®t #W--#GHuy«n Vû#Y có th¬ r¾t ra t× ðánh quái v§t · #YChu Tß¾c Các#W!" )
				AddNumText( sceneId, x899997_g_scriptId, "#c00ff00Ðßa ta qua", 5, 200)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x899997_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 210 then
		BeginEvent( sceneId )
   		local n = GetMonsterCount(sceneId)
		if n>170 then
   		strText = "Trß¾c m£t s¯ lßþng quái v§t là: "..n..", làm giäm s¯ lßþng quái xu¯ng 170 thì nó s¨ h°i sinh con khác."
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
		if MosDataID == 42140 or MosDataID == 42141 or MosDataID == 42142 or MosDataID == 42143 or MosDataID == 42144 or MosDataID == 42145 or MosDataID == 42146 or MosDataID == 42147 or MosDataID == 42148
                 or MosDataID == 42149 or MosDataID == 42150 or MosDataID == 42151 or MosDataID == 42152 or MosDataID == 42153 or MosDataID == 42154 or MosDataID == 42155 or MosDataID == 42156 or MosDataID == 42157
                 or MosDataID == 42158 or MosDataID == 42159 or MosDataID == 42182 then
               	        BeginEvent( sceneId ) 
	        	           AddText( sceneId, "#GChu Tß¾c Các quái v§t còn chßa b¸ tiêu di®t sÕch s¨, xin hãy tiêu di®t toàn bµ r°i ðªn truy«n t¯ng!" )
              	           EndEvent( sceneId )
               	        DispatchEventList( sceneId, selfId, targetId )
			return 
		end
	end

	       	local nStoneId0 = 39901041
		       c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
                          if c0 >=0 then
			         BeginEvent( sceneId ) 
			         LuaFnDelAvailableItem(sceneId,selfId,39901041,300)--É¾³ýÎïÆ·
			         CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 540, 22,16,10 )--´«ËÍ
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
