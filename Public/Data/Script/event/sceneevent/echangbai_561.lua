--³¤°× ×½ÃÔ²Ø
--MisDescBegin
--½Å±¾ºÅ
x212110_g_ScriptId = 212110

--ÈÎÎñºÅ
x212110_g_MissionId = 561

--ÈÎÎñ¹éÀà
x212110_g_MissionKind = 33

--ÐÆng c¤p nhi®m vø 
x212110_g_MissionLevel = 88

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x212110_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÐúng·ñÒÑ¾­Íê³É
x212110_g_IsMissionOkFail = 0		--±äÁ¿toÕ ðµ µÚ0Î»

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñC¥n  ði¬mµ½toÕ ðµ ÎïÆ·
--x212110_g_DemandItem={{id=40002112,num=1}}		--±äÁ¿µÚ1Î»

--ÈÎÎñÎÄ±¾ÃèÊö
x212110_g_MissionName="Tr¯n tìm"
x212110_g_MissionInfo="#{Lua_changbai_001}"
x212110_g_MissionTarget="  Hoàn Nhan Ngµt Thu§t · #GTrß¶ng BÕch S½n Hoàn Nhan Bµ #W#{_INFOAIM118,107,22, Hoàn Nhan Ngµt Thu§t} yêu c¥u ngß½i tìm #RHoàn Nhan Niêm Mµt Hát #W#{_INFOAIM147,120,22, Hoàn Nhan Niêm Mµt Hát}, #RHoàn Nhan Cát Ly B¤t #W#{_INFOAIM166,94,22, Hoàn Nhan Cát Ly B¤t}, #RHoàn Nhan Ngoa Lý Ðóa #W#{_INFOAIM178,113,22, Hoàn Nhan Ngoa Lý Ðóa}. "
x212110_g_ContinueInfo="  Ngß½i tìm th¤y các ca ca cüa ta r°i sao?"
x212110_g_MissionComplete="  Ngß½i quä là lþi hÕi, tìm th¤y h÷ nhanh ðªn v§y. Ta luôn không tìm ra, l¨ nào ta là 1 ðÑa trë ng¯c?"

--½±Àø
x212110_g_MoneyBonus=54500
x212110_g_Exp = 36000
--x212110_g_ItemBonus={{id=30004020,num=1}}

x212110_g_Custom	= { {id="Ðã tìm th¤y Niêm Mµt Khát cüa bµ lÕc Hoàn Nhan",num=1},{id="Ðã tìm th¤y Cát Ly B¤t cüa bµ lÕc Hoàn Nhan",num=1},{id="Ðã tìm th¤y Ngoa Ly Ðóa cüa bµ lÕc Hoàn Nhan",num=1} }
x212110_g_IsMissionOkFail = 0

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212110_OnDefaultEvent( sceneId, selfId, targetId )
	
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsMissionHaveDone( sceneId, selfId, x212110_g_MissionId ) > 0 then
		return 
	elseif IsHaveMission(sceneId,selfId,x212110_g_MissionId) > 0 then
--		if GetName(sceneId,targetId) == x212110_g_Name then
			--·¢ËÍ½»ÈÎÎñÇ°toÕ ðµ ÐèÇóÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x212110_g_MissionName);
				AddText(sceneId,x212110_g_ContinueInfo);
			EndEvent(sceneId)
    		done = x212110_CheckSubmit( sceneId, selfId );
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212110_g_ScriptId,x212110_g_MissionId,done)
--		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif GetLevel( sceneId, selfId ) >= 88 then
	
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x212110_g_MissionName);
			AddText(sceneId,x212110_g_MissionInfo);
			AddText(sceneId,"#{M_MUBIAO}");
			AddText(sceneId,x212110_g_MissionTarget);
			AddMoneyBonus( sceneId, x212110_g_MoneyBonus )
			--for i, item in x212110_g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x212110_g_ScriptId,x212110_g_MissionId)

	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212110_OnEnumerate( sceneId, selfId, targetId )

	if IsHaveMission(sceneId,selfId,x212110_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x212110_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	
		--ÏÈ¿´Ðúng²»ÐúngÕÒ¶ÔÈËÁË,Èç¹ûÕÒ¶Ô,¾Í¸øcáiÌáÊ¾,Èç¹ûÐúngµÚ¶þ´Î,¾Í¸ø²»Í¬toÕ ðµ ÌáÊ¾
		if  GetName(sceneId, targetId) == "Hoàn Nhan Niêm Mµt Khát"   then
			if GetMissionParam(sceneId, selfId, misIndex, 1) == 0  then
				SetMissionByIndex(sceneId,selfId,misIndex,1,1)		--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
				BeginEvent(sceneId)
					strText = "Tìm th¤y Niêm Mµt Khát cüa bµ lÕc Hoàn Nhan"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				
				local n1 = GetMissionParam(sceneId, selfId, misIndex, 1)
				local n2 = GetMissionParam(sceneId, selfId, misIndex, 2)
				local n3 = GetMissionParam(sceneId, selfId, misIndex, 3)
				
				if n1==1 and n2==1 and n3==1   then
					SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				end
				return
			end
		end
		
		if  GetName(sceneId, targetId) == "Hoàn Nhan Cát Ly B¤t"   then
			if GetMissionParam(sceneId, selfId, misIndex, 2) == 0  then
				SetMissionByIndex(sceneId,selfId,misIndex,2,1)		--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
				BeginEvent(sceneId)
					strText = "Tìm th¤y Cát Ly B¤t cüa bµ lÕc Hoàn Nhan"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
		
				local n1 = GetMissionParam(sceneId, selfId, misIndex, 1)
				local n2 = GetMissionParam(sceneId, selfId, misIndex, 2)
				local n3 = GetMissionParam(sceneId, selfId, misIndex, 3)
				
				if n1==1 and n2==1 and n3==1   then
					SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				end
				return
			end
		end
		
		if  GetName(sceneId, targetId) == "Hoàn Nhan Ngoa Lý Ðóa"   then
			if GetMissionParam(sceneId, selfId, misIndex, 3) == 0  then
				SetMissionByIndex(sceneId,selfId,misIndex,3,1)		--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
				BeginEvent(sceneId)
					strText = "Tìm th¤y Ngoa Ly Ðoá cüa bµ lÕc Hoàn Nhan"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
		
				local n1 = GetMissionParam(sceneId, selfId, misIndex, 1)
				local n2 = GetMissionParam(sceneId, selfId, misIndex, 2)
				local n3 = GetMissionParam(sceneId, selfId, misIndex, 3)
				
				if n1==1 and n2==1 and n3==1   then
					SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				end
				return
			end
		end
	end

	if IsMissionHaveDone( sceneId, selfId, x212110_g_MissionId ) > 0 then
		return 

	elseif IsHaveMission(sceneId,selfId,x212110_g_MissionId) > 0 then
		if  GetName(sceneId, targetId) == "Hoàn Nhan Ngµt Thu§t"   then
			AddNumText(sceneId, x212110_g_ScriptId,x212110_g_MissionName, 2, -1)
		end	

	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x212110_CheckAccept(sceneId,selfId) > 0 then
		if  GetName(sceneId, targetId) == "Hoàn Nhan Ngµt Thu§t"   then
			AddNumText(sceneId, x212110_g_ScriptId, x212110_g_MissionName, 1, -1);
		end
	end

end

--**********************************
--¼ì²â´¥·¢Ìõ¼þ
--**********************************
function x212110_CheckAccept( sceneId, selfId )
	--C¥n 60c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 88 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x212110_OnAccept( sceneId, selfId )

	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­Íê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, x212110_g_MissionId) > 0   then
		return
	end
	
	if x212110_CheckAccept(sceneId, selfId)  <= 0   then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x212110_g_MissionId, x212110_g_ScriptId, 0, 0, 0 )
	-- C¥n ¿¼ÂÇÍæ¼ÒÐúng²»ÐúngÄÜ¹»Tiªp thøµ½Cái này ÈÎÎñ
	if ret <= 0      then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212110_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)		--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
	SetMissionByIndex(sceneId,selfId,misIndex,2,0)		--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
	SetMissionByIndex(sceneId,selfId,misIndex,3,0)		--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
	
	-- ÏûÏ¢Í¨Öª¿Í»§¶Ë
	Msg2Player(  sceneId, selfId,"#YTiªp nh§n#W ".. x212110_g_MissionName, MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTiªp nh§n#W ".. x212110_g_MissionName
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)


end

--**********************************
--·ÅÆú
--**********************************
function x212110_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	DelMission( sceneId, selfId, x212110_g_MissionId )
end

--**********************************
--ÒÑ¾­½ÓÁËÈÎÎñÔÙ¸ø³ötoÕ ðµ ÌáÊ¾
--**********************************
function x212110_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x212110_g_MissionName)
		AddText(sceneId,x212110_g_MissionComplete)
		AddMoneyBonus( sceneId, x212110_g_MoneyBonus )
		--for i, item in x212110_g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x212110_g_ScriptId,x212110_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212110_CheckSubmit( sceneId, selfId )
	--¼ì²âÌõ¼þÐúng¿´ÈÎÎñÖÐtoÕ ðµ ±ê¼ÇÐúng²»Ðúng±»¸ÄÎª1ÁË
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212110_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	
	if GetMissionParam(sceneId, selfId, misIndex, 1) <= 0  then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 2) <= 0  then
		return 0
	end
	if GetMissionParam(sceneId, selfId, misIndex, 3) <= 0  then
		return 0
	end
	
	return 1
end

--**********************************
--Ìá½»(Íê³É)
--**********************************
function x212110_OnSubmit( sceneId, selfId,targetId,selectRadioID )
	-- °²È«ÐÔ¼ì²â
	-- 1¡¢¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐCái này ÈÎÎñ
	if IsHaveMission(sceneId,selfId,x212110_g_MissionId) <= 0 then
		return
	end
	-- 2¡¢ÆäËû¼ì²â
	if x212110_CheckSubmit( sceneId, selfId )  <= 0  then
		return
	end
	
--	BeginAddItem(sceneId)
--		for i, item in x212110_g_ItemBonus do
--			AddItem( sceneId,item.id, item.num )
--		end
		
--	ret = EndAddItem(sceneId,selfId)
	--Ìí¼ÓÈÎÎñ½±Àø
--	if ret > 0 then		
		AddExp(sceneId,selfId,x212110_g_Exp)
		AddMoney(sceneId,selfId,x212110_g_MoneyBonus );

		DelMission( sceneId, selfId, x212110_g_MissionId )
		MissionCom( sceneId, selfId, x212110_g_MissionId )
		AddItemListToHuman(sceneId,selfId)
--	else
--	--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
--		BeginEvent(sceneId)
--			strText = "±³°üÒÑÂú,ÎÞ·¨Hoàn t¤t nhi®m vø"
--			AddText(sceneId,strText);
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
--	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212110_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212110_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212110_OnItemChanged( sceneId, selfId, itemdataId )
end

