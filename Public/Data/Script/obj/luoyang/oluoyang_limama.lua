-- Áì½±NPC

x000044_g_scriptId = 000044
x000044_g_MaxBagSize	= 60
x000044_g_shoptableindex=235
--½±Àø±ê¼Ç
x000044_g_flag = {

    [80]	= MF_LINGQUYUANBAO80,
    [90]	= MF_LINGQUYUANBAO90,
    [100]	= MF_LINGQUYUANBAO100,
    [110]	= MF_LINGQUYUANBAO110,
    [120]	= MF_LINGQUYUANBAO120,
    
}
x000044_g_Title		={}
x000044_g_Title[1] = "Sß Phø S½ C¤p"

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000044_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText = "Gi¾i thi®u:#r#W ngoÕn gia rØa sÕch túi  th¶i ði¬m thïnh trß¾c ðem #G Bao Bây Lan #W cùng #G Tài Li®u Lan #W cùng nhæng  tr÷ng yªu v§t ph¦m ð¬ vào bên cÕnh  kho hàng quän lý viên, tái ði¬m ðánh rØa sÕch nªu không v§t ph¦m b¸ rØa sÕch tñ hành phø trách.#r#G ð« cØ:#W bän phøc sáng tÕo ðµc ðáo cá tính danh hi®u ngoÕn gia mi­n phí lînh, cho ngß½i cûng có cá tính."		
		AddText( sceneId, strText )
             AddNumText( sceneId, x000044_g_scriptId, "#GTr¸ li®u", 5, 860 )
             AddNumText( sceneId, x000044_g_scriptId, "#GBao Vây Phª Ph¦m #W thanh lý", 5, 301 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000044_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 301 then

		BeginEvent( sceneId )
			AddText( sceneId, "#YHoan nghênh sØ døng [B¯i Bao Thanh Lý],#cFF0000SØ døng nên công nång sau, v§t ph¦m bao vây cùng tài li®u bao vây trung s· hæu v§t ph¦m ðem b¸ toàn bµ rõ ràng!#Y thïnh xác nh§n trên ngß¶i tr÷ng yªu v§t ph¦m hay không ðã t°n kho hàng." )
			AddNumText( sceneId, x000044_g_ScriptId, "#GXác nh§n thanh lý", 5, 302 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 302 then
		local ClearCount = 0
		for i = 0, x000044_g_MaxBagSize - 1 do
			if LuaFnEraseItem(sceneId, selfId, i) > 0 then
				ClearCount = ClearCount + 1
			end
		end
		x000044_NotifyFailTips(sceneId, selfId, "#YT±ng cµng có #effc9d8#cf30768"..ClearCount.."#Y cái trang b¸ thanh lý.")

      elseif GetNumText() == 450 then

			DispatchShopItem( sceneId, selfId,targetId, x000044_g_shoptableindex )
	elseif GetNumText() == 800 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14017, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Thanh lý thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 810 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14018, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Thanh lý thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 820 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14019, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Thanh lý thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 830 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 14020, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Thanh lý thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

       elseif GetNumText() == 850 then
             	BeginEvent( sceneId )
		AddText( sceneId, "#cFF0000Hãy lña ch÷n loÕi hình biªn thân sao cho phù hþp v¾i các hÕ nh¤t." )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y Th¯ Gia",7,8501 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y Ng÷c Th¯",7,8502 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y H¡c Hùng",7,8503 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y Ðång M­",7,8504 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y Cây thông Noel",7,8505 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y Chuông l¾n",7,8506 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y Ðß¶ng Quä HÕp",7,8507 )
		AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y Ph¤n H°ng Hùng",7,8508 )
		--AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#YÐ¡ºüÏÉ",7,8509 )
		--AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y´ó±¿ÐÜ",7,8510 )
		--AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y¹¦·òÐÜÃ¨",7,8511 )
		--AddNumText( sceneId, x000044_g_ScriptId, "#GSiêu c¤p biªn thân #W--#Y³¬ÈËÐÜÃ¨",7,8512 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 8501 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4878, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8502 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4867, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8503 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4828, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8504 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5723, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8505 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4863, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8506 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4864, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8507 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4865, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8508 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4866, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8509 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5710, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8510 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5006, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8511 then
             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5708, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 8512 then
              LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5709, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Biªn thân thành công...")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

      elseif GetNumText() == 860 then
              x000044_Restore_hpmp( sceneId, selfId, targetId )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Tr¸ li®u thành công.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

      elseif GetNumText() == 870 then
	       if GetItemCount(sceneId, selfId, 39910008) < 10 then
                 TryRecieveItem( sceneId, selfId, 10305007, 10)

		   LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		   BeginEvent(sceneId)
		   AddText(sceneId,"Lînh nh§n thành công.")
		   EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
              else
               	BeginEvent( sceneId ) 
					strText = "C¥n gì ðã có Giang H° Chï Nam, không c¥n ðªn ta..."
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
	        end

      elseif GetNumText() == 104 then

             LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30150, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Lînh quang hoàn thành công, thuµc tính tång mÕnh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
       elseif GetNumText() == 501 then
             	BeginEvent( sceneId )
		AddText( sceneId, "#cFF0000Hãy lña ch÷n danh hi®u cá tính cho riêng mình." )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Không Ngoan ÐÑng Không Væng",7,1500 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Th¥n Mã Ðô Phù Vân",7,1501 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Ðiên N£ng",7,1502 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Khu Vñc C¤m",7,1503 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Kiêu Cång",7,1504 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Khí Phách",7,1505 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Ti¬u Tình Thú",7,1506 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Si Tâm V÷ng Tß·ng",7,1507 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Không D§y N±i",7,1508 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Thüy Tinh",7,1509 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Buôn L§u",7,1510 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Trµm Gà",7,1511 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Forever Alone",7,1512 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Cñc Ph¦m",7,1513 )
		AddNumText( sceneId, x000044_g_ScriptId, "#G³ÆºÅ-#cFF0000Tâm C¦u PhÕn Mu²i",7,1514 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1500 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Không Ngoan ÐÑng Không Væng" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Không Ngoan ÐÑng Không Væng" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 1501 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Th¥n Mã Ðô Phù Vân" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Th¥n Mã Ðô Phù Vân" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1502 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Ðiên N£ng" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Ðiên N£ng" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1503 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Khu Vñc C¤m" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Khu Vñc C¤m" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1504 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Kiêu Cång" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Kiêu Cång" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1505 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Khí Phách" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Khí Phách" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1506 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Ti¬u Tình Thú" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Ti¬u Tình Thú" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1507 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Si Tâm V÷ng Tß·ng" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Si Tâm V÷ng Tß·ng#G³ÆºÅ" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1508 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Không D§y N±i" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Không D§y N±i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1509 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Thüy Tinh" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Thüy Tinh" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1510 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Buôn L§u" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Buôn L§u" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1511 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Trµm Gà" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Trµm Gà" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1512 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Forever Alone" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Forever Alone" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1513 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Cñc Ph¦m" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Cñc Ph¦m" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1514 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#cFF0000Tâm C¦u PhÕn Mu²i" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GNh§n thành công danh hi®u #cFF0000Tâm C¦u PhÕn Mu²i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
      elseif GetNumText() == 106 then
	local	lev	= GetLevel( sceneId, selfId )
	if lev < 30 then
		BeginEvent( sceneId )
		AddText( sceneId, "#b#YC¤p ðµ cüa ngß½i không ðü c¤p 30, sau khi ðÕt c¤p 30 hãy quay lÕi." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end
          --local CurTime = GetHourTime()
        local CurTime = mod(GetQuarterTime(),100);
		local iTime = GetMissionData( sceneId, selfId, MF_LINGQUYUANBAOEXP1 )
		if iTime+2 >= CurTime then
			BeginEvent( sceneId )
			AddText( sceneId, "Nh§n 10000 ði¬m t£ng" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
           for i = 0,0 do
          --AddExp(sceneId,selfId,700000)
	      local result =	ZengDian(sceneId,selfId,targetId,1,10000)
	             local str = format("#YÐi¬m t£ng mi­n phí #cff99cc£º#effc9d8#cf30768#b#W#{_INFOUSR%s}#cff99cctÕi#GLÕc Dß½ng#cff99cc.#W Lînh#cFF0000 10000 ði¬m t£ng#W, 1 gi¶ có th¬ lînh mµt l¥n, ", GetName(sceneId,selfId) )
	             BroadMsgByChatPipe(sceneId, selfId, str, 4)
               end

			
			SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOEXP1, CurTime)
			BeginEvent( sceneId )
				AddText( sceneId, "Nh§n thành công 10000 Ði¬m t£ng, mµt gi¶ sau có th¬ nh§n tiªp." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end


             elseif GetNumText() == 107 then
                
-- Ç§·ðÁ«µÆµÄID
	       local nStoneId = 30505022
            if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=5 then
                        BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,5)
			TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        AddText( sceneId, "Nh§n thành công, hãy ðªn NPC chÑc nång tß½ng Ñng tiªn hành thång c¤p." )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "Hãy sßu t§p 5 cái Thiên Ph§t Liên Ðång ð¬ tiªn hành ð±i, sau c¤p 129 có th¬ dùng bang c¯ng ð¬ ð±i." )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 
          elseif GetNumText() == 108 then
                
-- Ç§·ðÁ«µÆµÄID
	       local nStoneId = 30505155
            if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=6 then
                        BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,6)
			TryRecieveItem( sceneId, selfId, 30505156, 1 )
                       TryRecieveItem( sceneId, selfId, 30505156, 1 )
                       TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        TryRecieveItem( sceneId, selfId, 30505156, 1 )
                        AddText( sceneId, "Nh§n thành công, ðªn ch² NPC tß½ng Ñng tiªn hành thång c¤p." )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "Hãy sßu t§p ðü 6 cái VÕn Thiên T¥n Sa ð±i 5 cái H°i Mµng ThÕch. Sau c¤p 129 dùng H°i Mµng ThÕch · ch² ta ð¬ thång c¤p." )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 
elseif GetNumText() == 109 then
local cityguildid = GetCityGuildID(sceneId, selfId)
if cityguildid ~=-1 then
AddText( sceneId, "Xin l²i ngß½i chßa gia nh§p bang phái, h½n næa bang phái cûng c¥n phäi có thành th¸ m¾i có ði¬m Bang C¯ng." )
		return
	end
	      local    bg = CityGetAttr( sceneId, selfId, GUILD_CONTRIB_POINT )

            if bg >= 50  then
                        BeginEvent( sceneId ) 
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -100 )
			TryRecieveItem( sceneId, selfId, 30008019, 1 )
                   
                        AddText( sceneId, "Nh§n thành công." )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "Hãy ki¬m tra ðü 100 ði¬m bang c¯ng m¾i có th¬ tiªn hành ð±i" )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 

elseif GetNumText() == 110 then
    local cityguildid = GetCityGuildID(sceneId, selfId)
if cityguildid ~=-1 then
AddText( sceneId, "Xin l²i ngß½i chßa gia nh§p bang phái, h½n næa bang phái cûng c¥n phäi có thành th¸ m¾i có ði¬m Bang C¯ng." )
		return
	end            


	      local    bg = CityGetAttr( sceneId, selfId, GUILD_CONTRIB_POINT )

              local nStoneId = 30505156
            if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=10 then
                        BeginEvent( sceneId ) 
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, 10 )
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,10)
                   
                        AddText( sceneId, "Ð±i 10 ði¬m Bang C¯ng thành công." )
 
                    EndEvent( sceneId )
              DispatchEventList( sceneId, selfId, targetId )

                    else
                BeginEvent( sceneId ) 
			
	       AddText( sceneId, "Hãy ki¬m tra trong bao có ðü 10 cái H°i Mµng ThÕch hãy ðªn ð±i "..cityguildid.."" )
               EndEvent( sceneId )

           DispatchEventList( sceneId, selfId, targetId )
  
               end 


	end	
end
--**********************************
--¶Ô»°ÌáÊ¾
--**********************************
function x000044_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x000044_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--»Ö¸´ÑªºÍÆø
--**********************************
function x000044_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	RestoreRage( sceneId, selfId )
end
--**********************************
--ÁìÈ¡Ôª±¦
--**********************************
function x000044_lingquyuanbao( sceneId, selfId, targetId )
  local mylevel = GetLevel( sceneId, selfId )
  if mylevel <  GetNumText() then
  local strText = format("Ngß½i c¤p b§c không ðü, ðÕt ðªn c¤p %d hãy ðªn tìm ta, ", GetNumText() )
  x000044_TalkMsg( sceneId, selfId, targetId, strText )
  return
  end
  if GetNumText()==80 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO80 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n r°i nh§n l¡m thª..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,50000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO80, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n thành công 50000 Kim Nguyên Bäo." )
  elseif GetNumText()==90 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO90 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n r°i nh§n l¡m thª..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,100000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO90, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n thành công 100000 Kim Nguyên Bäo." )
    elseif GetNumText()==100 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO100 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n r°i nh§n l¡m thª..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,150000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO100, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n thành công 150000 Kim Nguyên Bäo." )
    elseif GetNumText()==110 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO110 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n r°i nh§n l¡m thª..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,200000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO110, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n thành công 200000 Kim Nguyên Bäo." )
    elseif GetNumText()==120 then
    local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO120 )
      if index == 1 then
        x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n r°i nh§n l¡m thª..." )	
        return
      end
    YuanBao(sceneId,selfId,targetId,1,300000)
    SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAO120, 1 )
    x000044_TalkMsg( sceneId, selfId, targetId, "Nh§n thành công 300000 Kim Nguyên Bäo." )
   end
end



