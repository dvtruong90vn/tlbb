
--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x050015_g_ScriptId	= 050015

--MisDescEnd
--************************************************************************


x050015_ScoreMin = 100

x050015_TitleLevel1 = 131
x050015_TitleLevel2 = 132
x050015_TitleLevel3 = 133
x050015_TitleLevel4 = 134
x050015_TitleLevel5 = 135

--ÌÌ½ðÃûÌûID	--add by xindefeng
x050015_g_TangJinMingTieID = 30505205
--mµt ´ÎÉ¾³ýÌÌ½ðÃûÌûÊýÁ¿	--add by xindefeng
x050015_g_DelMingTieCount = 1

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x050015_OnDefaultEvent( sceneId, selfId, targetId )
	local SelNum = GetNumText()		
	if SelNum == 1 then	
		x050015_DuiHuan( sceneId, selfId, targetId )
	elseif SelNum == 2 then
		x050015_ChaXun( sceneId, selfId, targetId )
	elseif SelNum == 3 then	--¶mµt »°ï»á×Ô¶¨Òå³ÆºÅ--add by xindefeng
		x050015_ZiDingYi(sceneId, selfId, targetId)
	elseif SelNum == 22 then	--¹ØÓÚLînh °ï»á×Ô¶¨Òå³ÆºÅ--add by xindefeng
		x050015_MsgBox(sceneId, selfId, targetId, "#{TangJinMingTie_Help}")
	elseif SelNum == 255 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050015_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId,x050015_g_ScriptId,"Ta phäi ð±i danh xßng cüa ta",6,1)
	AddNumText(sceneId,x050015_g_ScriptId,"Ta mu¯n tra ði¬m tích lûy cüa ta",6,2)	
	AddNumText(sceneId,x050015_g_ScriptId,"Nh§n lînh danh hi®u bang hµi tñ l§p",6,3)--add by  xindefeng
	AddNumText(sceneId,x050015_g_ScriptId,"Liên quan nh§n lînh danh hi®u bang hµi tñ l§p", 11, 22 )--add by xindefeng
  AddNumText(sceneId,x050015_g_ScriptId,"R¶i bö........",8, 255 )
end

function x050015_GetCurTitle( sceneId, selfId )    --¸ù¾Ý»ý·ÖÈ¡ ði¬m³ÆºÅ(³ÆºÅ±àºÅ)
    local Score = GetMissionData( sceneId, selfId, MD_ThiefSoldierInvade )
    
    
    local Title = 0
    
    if Score >= 100 and Score < 500 then
        Title = x050015_TitleLevel1
        
    end
    
    if Score >= 500 and Score < 5000 then
        Title = x050015_TitleLevel2
    end
    
    if Score >= 5000 and Score < 30000 then
        Title = x050015_TitleLevel3
    end
    
    if Score >= 30000 and Score < 65000 then
        Title =  x050015_TitleLevel4
    end
    
    if Score >= 65000 then
        Title =  x050015_TitleLevel5
    end
  
    return Title
     
end

function x050015_GetTitleName( Title )    --¸ù¾Ý³ÆºÅ±àºÅÈ¡ ði¬m³ÆºÅÃû³Æ

    local TitleName = ""

    if Title == x050015_TitleLevel1 then
        TitleName = "Bình T£c Binh SÛ"
    elseif Title == x050015_TitleLevel2 then
        TitleName = "Bình T£c Ðµi Trß·ng"
    elseif Title == x050015_TitleLevel3 then
        TitleName = "Bình T£c Th¯ng Lînh"
    elseif Title == x050015_TitleLevel4 then
        TitleName = "Ðãng Kh¤u Tß¾ng Quân"
    elseif Title == x050015_TitleLevel5 then
        TitleName = "Ðãng Kh¤u Nguyên Soái"
    elseif Title > x050015_TitleLevel5 then
        TitleName = "Ðãng Kh¤u Nguyên Soái"
    else
        TitleName = "Bình T£c Binh SÛ"
    end

    return TitleName
end


--**********************************
--Ta phäi ð±i danh xßng cüa ta
--**********************************
function x050015_DuiHuan( sceneId, selfId, targetId )
	local score = GetMissionData( sceneId, selfId, MD_ThiefSoldierInvade )	--»ñÈ¡°ï¹±ÊýÁ¿
  if score < 100 then
   x050015_MsgBox( sceneId, selfId, targetId,"  C¯ng hiªn cüa các hÕ vçn không ðü v¾i danh xßng ðÕt ðßþc. Xin tiªp tøc n² lñc" )
   return
  end  
  
  local OldTitle = GetTitle(sceneId, selfId, 6)
  local CurTitle = x050015_GetCurTitle( sceneId, selfId )
  
  local strText = ""
  if OldTitle == x050015_TitleLevel5 then
      strText = format( "  Ngß½i ðã có danh hi®u cao nh¤t r°i!" )
  elseif( CurTitle > OldTitle  ) then
      AwardTitle( sceneId, selfId,  6, CurTitle )  --°ÑÔ­À´toÕ ðµ ³ÆºÅÌæ»»
      DispatchAllTitle( sceneId, selfId )          --Ë¢ÐÂ¿Í»§¶Ë³ÆºÅ
      local TitleName = x050015_GetTitleName( CurTitle )
      strText = format( "  Khá l¡m, Tri«u ðình cûng ðßþc an üi vì c¯ng hiªn cüa Vu chí sî, ð£c bi®t üy thác ta nh§n danh xßng %s. Hy v÷ng các hÕ có th¬ tiªp tøc ra sÑc c¯ng hiªn d©p t£c",  TitleName )      
  else
      strText = format( "  C¯ng hiªn cüa các hÕ vçn không ðü v¾i danh xßng ðÕt ðßþc. Xin tiªp tøc n² lñc" )
  end
  
  x050015_MsgBox( sceneId, selfId, targetId, strText )	

end
--**********************************
--Ta mu¯n tra ði¬m tích lûy cüa ta
--**********************************
function x050015_ChaXun( sceneId, selfId, targetId )
	score = GetMissionData( sceneId, selfId, MD_ThiefSoldierInvade )
	local strText = format( " Ði¬m tích lûy cüa các hÕ hi®n là %d, Xin tiªp tøc n² lñc", score )
	x050015_MsgBox( sceneId, selfId, targetId, strText )
end

--**************************************************
--¶mµt »ÎÒtoÕ ðµ ×Ô¶¨Òå°ï»á³ÆºÅ	--add by xindefeng
--**************************************************
function x050015_ZiDingYi( sceneId, selfId, targetId )
  --¼ì²âÍæ¼ÒÐúng·ñ¼ÓÈë°ïÅÉ
  local guildid	= GetHumanGuildID(sceneId, selfId)  
  if(guildid == -1)then
  	x050015_MsgBox(sceneId, selfId, targetId, "    Trao ð±i th¤t bÕi, các hÕ vçn chßa gia nh§p b¤t kÏ bang phái nào.#W")
  	return
  end
	
	--¼ì²âÍæ¼ÒÐúng·ñÓÐ"ÌÌ½ðÃûÌû"
  local count = GetItemCount(sceneId, selfId, x050015_g_TangJinMingTieID)
  if(count < 1)then
  	x050015_MsgBox(sceneId, selfId, targetId, "    Ð±i th¤t bÕi, c¥n #YNång kim danh thiªp#W")
  	return
  end
  count = LuaFnGetAvailableItemCount(sceneId, selfId, x050015_g_TangJinMingTieID)
  if(count < 1)then
  	x050015_MsgBox(sceneId, selfId, targetId, "    Ð±i th¤t bÕi, ki¬m tra #YNång kim danh thiªp #Wcó b¸ khoá hay không!")
  	return
  end
  
  --Í¨ÖªServer¿ÉÒÔLînh ³ÆºÅÁË
  LuaFnDrawGuildPositionName(sceneId, selfId, targetId)
end

--**************************************************
--¹©ServerÖ±½Óµ÷ÓÃ	--add by xindefeng
--**************************************************
function x050015_OnDrawPositonName_Succ( sceneId, selfId )  
  --É¾³ý"ÌÌ½ðÃûÌû"
  local ret = LuaFnDelAvailableItem(sceneId, selfId, x050015_g_TangJinMingTieID, x050015_g_DelMingTieCount)
	if ret < 1  then
		x050015_MsgBox(sceneId, selfId, -1, "    Ð±i th¤t bÕi, ki¬m tra #YNång kim danh thiªp #Wcó b¸ khoá hay không!")
		return 0
	end
	
	return 1
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x050015_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		x050015_DuiHuan( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		x050015_ChaXun( sceneId, selfId, targetId )
	elseif GetNumText() == 3 then	--¶mµt »°ï»á×Ô¶¨Òå³ÆºÅ--add by xindefeng
		x050015_ZiDingYi(sceneId, selfId, targetId)
	elseif GetNumText() == 22 then	--¹ØÓÚLînh °ï»á×Ô¶¨Òå³ÆºÅ--add by xindefeng
		x050015_MsgBox(sceneId, selfId, targetId, "#{TangJinMingTie_Help}")	
	elseif GetNumText() == 255 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end	
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x050015_CheckAccept( sceneId, selfId )

	return
end

--**********************************
--Tiªp thø
--**********************************
function x050015_OnAccept( sceneId, selfId )


end

--**********************************
--·ÅÆú
--**********************************
function x050015_OnAbandon( sceneId, selfId )


end

--**********************************
--´´½¨¸±±¾
--**********************************
function x050015_MakeCopyScene( sceneId, selfId, nearmembercount )


end

--**********************************
--¼ÌÐø
--**********************************
function x050015_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x050015_CheckSubmit( sceneId, selfId, selectRadioId )


end

--**********************************
--Ìá½»
--**********************************
function x050015_OnSubmit( sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050015_OnKillObject( sceneId, selfId, objdataId, objId )


end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x050015_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x050015_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x050015_OnCopySceneReady( sceneId, destsceneId )


end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x050015_OnPlayerEnter( sceneId, selfId )

end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x050015_OnHumanDie( sceneId, selfId, killerId )
--	x = LuaFnGetCopySceneData_Param( sceneId, x050015_g_keySD["x"] )
--	z = LuaFnGetCopySceneData_Param( sceneId, x050015_g_keySD["z"] )
--	NewWorld( sceneId, selfId, oldsceneId, x, z )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x050015_OnCopySceneTimer( sceneId, nowTime )

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x050015_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x050015_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
		AddNumText(sceneId,x050015_g_ScriptId,"R¶i bö........",8, 255 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end
