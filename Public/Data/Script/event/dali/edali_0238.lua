
--ÃÅÅÉÒıµ¼ÈÎÎñ

--MisDescBegin
--½Å±¾ºÅ
x210238_g_ScriptId = 210238

--½ÓÊÜÈÎÎñNPCÊôĞÔ
x210238_g_Position_X=160.0895
x210238_g_Position_Z=156.9309
x210238_g_SceneID=2
x210238_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÈÎÎñºÅ
x210238_g_MissionId = 718

--Ä¿±êNPC
x210238_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210238_g_MissionKind = 13

--ÈÎÎñµÈ¼¶
x210238_g_MissionLevel = 1

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x210238_g_IfMissionElite = 0
x210238_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»
--ÈÎÎñÃû
x210238_g_MissionName="10 nåm"
--ÈÎÎñÃèÊö
x210238_g_MissionInfo  = "M¤y lão già TÑ ĞÕi Thi®n Nhân chúng ta v×a g£p các hÕ, Li«n cäm th¤y các hÕ ğúng là 1 võ h÷c kÏ tài ngàn nåm m¾i g£p. Nªu ğßşc danh sß truy«n thø, ti«n ğ° t¤t không th¬ lß¶ng."
x210238_g_MissionInfo1 = "Nhßng gi¶ ğây vi®c quan tr÷ng nh¤t cüa các hÕ, là phäi n¡m væng cån c¾ võ h÷c. Sau khi n¡m væng cån c¾, có th¬ tìm mµt v¸ danh sß, h÷c võ công uyên thâm h½n. Sau này tr· thành mµt ğÕi anh hùng, ğÕi hi®p sÛ!"
x210238_g_MissionInfo2 = "Nhß thª này, ğşi các hÕ ğÕt t¾i c¤p 10, hãy t¾i tìm Tri®u Thiên Sß ta. M¤y lão già chúng ta s¨ chu¦n b¸ mµt ph¥n quà ğ£c bi®t cho các hÕ."
--ÈÎÎñÄ¿±ê
x210238_g_MissionTarget="#{MIS_dali_ZTS_002}"		
--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x210238_g_ContinueInfo="Các hÕ ğã ğÕt t¾i c¤p 10 chßa?"
--Ìá½»Ê±npcµÄ»°
x210238_g_MissionComplete="T¯t quá, các hÕ có th¬ gia nh§p môn phái r°i!"		


x210238_g_exp=0
x210238_g_ItemBonus={}

x210238_g_Custom	= { {id="Ğã ğÕt ğÆng c¤p ",num=10} }--±äÁ¿µÄµÚ1Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210238_OnDefaultEvent( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
  if (IsMissionHaveDone(sceneId,selfId,x210238_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x210238_g_MissionId) > 0)  then
		--·¢ËÍÈÎÎñĞèÇóµÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId, x210238_g_MissionName)
			AddText(sceneId, x210238_g_ContinueInfo)
		EndEvent( )
		local bDone = x210238_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210238_g_ScriptId,x210238_g_MissionId,bDone)
				
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x210238_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210238_g_MissionName)
			AddText(sceneId,x210238_g_MissionInfo)
			AddText(sceneId,x210238_g_MissionInfo1)			
			AddText(sceneId,x210238_g_MissionInfo2)
			
			--AddText(sceneId,"#{M_MUBIAO}")
			--AddText(sceneId,x210238_g_MissionTarget)
			--AddText(sceneId,"#{M_SHOUHUO}")
			--AddMoneyBonus( sceneId, x210238_g_MoneyBonus )
			--for i, item in x210238_g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210238_g_ScriptId,x210238_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210238_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210238_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x210238_g_MissionId) > 0 then
	    
	    local bDone = x210238_CheckSubmit( sceneId, selfId ) 
	    if( 1 == bDone ) then
	        AddNumText(sceneId, x210238_g_ScriptId, x210238_g_MissionName, 2, -1);
	    else
	        AddNumText(sceneId, x210238_g_ScriptId, x210238_g_MissionName, 1, -1);
	    end	
	    			
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210238_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x210238_g_ScriptId, x210238_g_MissionName, 1, -1);
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x210238_CheckAccept( sceneId, selfId )

	--ÒªÇóÍê³ÉµÄÇ°ĞøÈÎÎñ
	--if IsMissionHaveDone(sceneId,selfId,645) <= 0 then
	--	return 0

	--ĞèÒª1¼¶²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= x210238_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x210238_OnAccept( sceneId, selfId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210238_g_MissionId) > 0 then
		return 
	end
		
	-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x210238_g_MissionId, x210238_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø#W cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	
	--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïµÄ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
	--local misIndex = GetMissionIndexByID(sceneId, selfId, x210238_g_MissionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
	--SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿µÄµÚÒ»Î»ÖÃ0	µÚÒ»Î»ÊÇÍê³É/Ê§°ÜÇé¿ö

	--Msg2Player(  sceneId, selfId,"#Y½ÓÊÜÈÎÎñ" .. x210238_g_MissionName, MSG2PLAYER_PARA )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: #G" .. x210238_g_MissionName, MSG2PLAYER_PARA )
	local misIndex = GetMissionIndexByID(sceneId, selfId, x210238_g_MissionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖĞµÄĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,1,1)
	
end

--**********************************
--·ÅÆú
--**********************************
function x210238_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
	DelMission( sceneId, selfId, x210238_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x210238_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x210238_g_MissionName)
		AddText(sceneId,x210238_g_MissionComplete)

		for i, item in x210238_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x210238_g_ScriptId,x210238_g_MissionId)
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210238_CheckSubmit( sceneId, selfId )

    local Level = GetLevel( sceneId, selfId )
    
    if( Level < 10 ) then
        return 0
    end

	return 1

end

--**********************************
--Ìá½»
--**********************************
function x210238_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		-- °²È«ĞÔ¼ì²â
		-- 1¡¢¼ì²âÍæ¼ÒÊÇ²»ÊÇÓĞÕâ¸öÈÎÎñ
		if IsHaveMission(sceneId,selfId,x210238_g_MissionId) <= 0 then
			return
		end
		
		-- 2¡¢Íê³ÉÈÎÎñµÄÇé¿ö¼ì²â
		if x210238_CheckSubmit(sceneId, selfId) <= 0    then
			return
		end
		
		-- ½ğÇ®ºÍ¾­Ñé
		

		
		if( x210238_g_exp > 0 ) then
		    LuaFnAddExp( sceneId, selfId, x210238_g_exp)
		end
								
		DelMission( sceneId,selfId, x210238_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId, x210238_g_MissionId )
		
		
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210238_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210238_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210238_OnItemChanged( sceneId, selfId, itemdataId )
end







