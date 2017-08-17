 
--²¹Áì¸ÉÀ¤´ü
----------------
--½Å±¾ºÅ
x808129_g_ScriptId = 808129;
x808129_g_PlayerSlow_LVH = 70;   --×î¸ßLînh µÈc¤p
x808129_g_QianKunDaiBuLingLv1 = 30008059 --mµt c¤p¸ÉÀ¤´ü
x808129_g_QianKunDaiBuLing = 30504118  --²¹ÁìtoÕ ðµ 70c¤p¸ÉÀ¤´ü

 
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808129_OnDefaultEvent( sceneId, selfId, targetId )
	local id = GetNumText();
	if id == 1 then 
		BeginEvent(sceneId)
			AddText(sceneId, "#{XRLB_090417_02}");	
			AddNumText(sceneId, x808129_g_ScriptId, "#{XRLB_090417_03}", 6, 2);		-- "Lînh "
			EndEvent()
		DispatchEventList(sceneId, selfId, targetId);

	elseif id == 2 then

		--·ÀÖ¹Íæ¼Ò²»Í¨¹ý ði¬m»÷ÊÂ¼þ½øÈë
		local bCanSee = x808129_canSeeGainMenu(sceneId, selfId)
		if ( bCanSee == 0  ) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{XRLB_090417_04}");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId);
			return 
		end

		--¼ì²é±³°ü¿Õ¼ä
		BeginAddItem(sceneId)
		AddItem(sceneId, x808129_g_QianKunDaiBuLing, 1)
		local bBagOk = EndAddItem(sceneId, selfId)
		if bBagOk < 1 then
		  x808129_NotifyTips( sceneId, selfId, "#{XRLB_090417_05}" )
			return
		end

		-- ²¹¸ø¸ÉÀ¤´ü,Ð¡ÓÚ70c¤ptoÕ ðµ ¸ømµt c¤p´ü,´óÓÚµÈÓÚ70c¤ptoÕ ðµ ¸ømµt cái70c¤pÌØÊâ´ü
		local nBagIndex = -1
		if LuaFnGetLevel( sceneId, selfId ) < x808129_g_PlayerSlow_LVH then
		  nBagIndex = TryRecieveItem( sceneId, selfId, x808129_g_QianKunDaiBuLingLv1, 1 );
		else
		  nBagIndex = TryRecieveItem( sceneId, selfId, x808129_g_QianKunDaiBuLing, 1 );
		end
		
		if nBagIndex == -1 then
		 return
		end

		--Ôö¼ÓLînh ±êÖ¾
		SetMissionFlag(sceneId, selfId, MF_GetQianKunDai, 1)

		local guid = LuaFnObjId2Guid(sceneId, selfId)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_QIANKUNDAI_BULING_LEVEL1, guid)--ÕâÀï¸øtoÕ ðµ Ðúng70c¤ptoÕ ðµ ¶ø²»Ðúngmµt c¤ptoÕ ðµ , Ö»ÐúngÓÃtoÕ ðµ ´óÂ½toÕ ðµ Õ¼Î».

--		BeginEvent(sceneId)
--			AddText(sceneId,"#{XRLB_090417_07}");
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
    x808129_NotifyTips( sceneId, selfId, "#{XRLB_090417_07}" )
    x808129_NotifyMsg( sceneId, selfId,  targetId, "#{XRLB_090417_07}" )
		return

	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808129_OnEnumerate( sceneId, selfId, targetId )

	if ( x808129_canSeeGainMenu(sceneId, selfId) == 0  ) then
		return 0
	end

	-- "²¹Áì"
  AddNumText(sceneId, x808129_g_ScriptId, "#{XRLB_090417_01}", 6, 1 ) --²¹Áì½­ºþ¸ÉÀ¤´ü
end

function x808129_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x808129_NotifyMsg( sceneId, selfId,  targetId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¸øÐÂÍæ¼Ò·¢ÓÊ¼þ
--**********************************
function x808129_OnPlayerLogin( sceneId, selfId )

	if x808129_canSeeGainMenu(sceneId, selfId) == 1 then
		LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), "#{XRLB_090417_08}" )
	end

end

--**********************************
--ÅÐ¶ÏÍæ¼Ò´´½¨Ê±¼äÐúng·ñTÕi 2009-03-26 00: 00: 00 Ç°  ¶øÇÒµÈc¤p²»¸ßÓÚ45c¤p
--**********************************
function x808129_canSeeGainMenu( sceneId, selfId )

	--¼ì²âµÈc¤p
--  if LuaFnGetLevel( sceneId, selfId ) < x808129_g_PlayerSlow_LVH then
--		return 0
--  end

  --¼ì²éÐúng·ñÁì¹ýÁË
  if GetMissionFlag(sceneId, selfId, MF_GetQianKunDai)==1 then
    return 0
  end
    
	return 1;

end
