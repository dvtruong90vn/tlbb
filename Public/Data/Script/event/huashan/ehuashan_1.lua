--001230

-- ±¨Ãû½øÈëHoa S½n Lu§n KiªmµÄ³¡¾°

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x001230_g_ScriptId = 1230

--ÊÂ¼ş
x001230_g_Update = {

    ["id01"] = 0,
    ["id02"] = 20,
    ["id03"] = 30,

}

--ÌáÊ¾ĞÅÏ¢
x001230_g_msg = {

    ["cj"]	= "Tham gia Hoa S½n lu§n kiªm",
    ["jl"]	= "Nh§n lînh ph¥n thß·ng Lu§n Kiªm Hoa S½n",
    ["Mail"]	= "Các giäi thß·ng",

}

--»î¶¯±àºÅ,Õâ¸öÊı×ÖĞèÒªºÍ»î¶¯±íÖĞµÄ¶ÔÓ¦
--ÆäÖĞµÄÊı¾İµÄµÚ0Î»Î»ÖÃÓÃÀ´±íÊ¾»î¶¯ÊÇ·ñ¿ªÆô
x001230_g_nActivityId = 9

-- Õâ¸ö»î¶¯ÆäÊµ²»ĞèÒª´´½¨¸±±¾£¬Ö±½Ó°ÑËùÓĞµÄÈË£¬·ÅÈëÒ»¸ö³¡¾°¾Í¿ÉÒÔÁË 
x001230_g_nScnenId = 125

-- ÏÖÔÚÊÇ²»ÊÇ»î¶¯¼ÆÊıÊ±¼äµÄ±êÖ¾
x001230_g_bHuashaning = 0

-- 9¸öÃÅÅÉµÄÉ±ÈËÊı
x001230_g_nMenpaikills = {{id=0,kill=0},
													{id=1,kill=0},
													{id=2,kill=0},
													{id=3,kill=0},
													{id=4,kill=0},
													{id=5,kill=0},
													{id=6,kill=0},
													{id=7,kill=0},
													{id=8,kill=0},}

-- [ QUFEI 2007-07-27 17:27 UPDATE ]
-- 9¸öÃÅÅÉÇ°ÈıÃûµÄÍæ¼ÒID		
-- ²ÎÊı take ±íÊ¾¸ÃÍæ¼ÒÊÇ·ñÁì¹ı½±Àø
x001230_g_nMenpaiQiansan = {{id=0,player01="",player02="",player03="",playerid01=0,playerid02=0,playerid03=0},
													  {id=1,player01="",player02="",player03="",playerid01=0,playerid02=0,playerid03=0},
													  {id=2,player01="",player02="",player03="",playerid01=0,playerid02=0,playerid03=0},
													  {id=3,player01="",player02="",player03="",playerid01=0,playerid02=0,playerid03=0},
												    {id=4,player01="",player02="",player03="",playerid01=0,playerid02=0,playerid03=0},
													  {id=5,player01="",player02="",player03="",playerid01=0,playerid02=0,playerid03=0},
													  {id=6,player01="",player02="",player03="",playerid01=0,playerid02=0,playerid03=0},
													  {id=7,player01="",player02="",player03="",playerid01=0,playerid02=0,playerid03=0},
													  {id=8,player01="",player02="",player03="",playerid01=0,playerid02=0,playerid03=0},}

-- [ QUFEI 2007-07-27 17:27 UPDATE ]
-- ÃÅÅÉ¸ß¼¶Ê±×°½±Àø
x001230_g_nMenpaiShiZhuang = {{id=10141155,name="Không S¡c"},
															{id=10124010,name="Thánh Höa"},
															{id=10124011,name="Bích M£c"},
															{id=10124013,name="HÕc Tuyªt"},
															{id=10124012,name="Kh¤p Änh"},
															{id=10124014,name="Hung LÕc"},
															{id=10124017,name="Dß½ng Tiêu"},
															{id=10124015,name="Nguy®t MÕn"},
															{id=10124016,name="Huy«n Thß½ng"},}
															
-- ²ÄÁÏ½±Àø
x001230_g_nCailiaoJiangli	 = {{id=20500007,name="Tinh Thiªt Toái Phiªn"},
															{id=20501000,name="Miªng Väi Bông Vøn"},
															{id=20502000,name="Bí Ngân Toái Phiªn"},}

x001230_g_bEndTime = 0
x001230_g_bMenpai = ""

x001230_g_WorldGlobal = 21

x001230_g_PlayerKc = {}				-- Ã¿¸öÍæ¼ÒÉ±ÈËµÄÊıÄ¿
x001230_g_PlayerName = {}			-- Ã¿¸öÍæ¼ÒµÄÃû×Ö
x001230_g_PlayerNum = 0				-- Íæ¼ÒÊıÄ¿

--[ QUFEI 2007-07-27 15:04 UPDATE ]
x001230_g_PlayerMenpai = {}		-- Ã¿¸öÍæ¼ÒµÄÃÅÅÉ
x001230_g_PlayerId = {}

x001230_g_PreTime = 0


--³¡¾°ÖĞÑëµÄ2¸öÃØ¼®Ë¢ĞÂµã....
x001230_g_MJPosA = {
	{x=135, y=125},{x=141, y=123}
}

--³¡¾°ËÄÖÜµÄ6¸öÃØ¼®Ë¢ĞÂµã....
x001230_g_MJPosB = {
	{x=143, y=140, rand=-1},
	{x=153, y=121, rand=-1},
	{x=150, y=110, rand=-1},
	{x=138, y=104, rand=-1},
	{x=125, y=107, rand=-1},
	{x=120, y=111, rand=-1},
	{x=122, y=132, rand=-1},
	{x=131, y=138, rand=-1}
}

--ÃØ¼®±í....
x001230_g_MJTblA = {
	5009,5010
}

--ÃØ¼®±í....
x001230_g_MJTblB = {
	5004,5005,5006,5007,5008
}

x001230_g_MJNameTbl = {
	"TØ S¡c Bí Kíp",
	"Hoàng S¡c Bí Kíp",
	"Løc S¡c Bí Kíp",
	"BÕch S¡c Bí Kíp",
	"H¡c S¡c Bí Kíp",
	"Lam S¡c Bí Kíp",
	"H°ng S¡c Bí Kíp"
}

--ÃØ¼®½Å±¾....
x001230_g_MJScript = 001235


--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x001230_OnDefaultEvent( sceneId, selfId, targetId )
	
    local	key	= GetNumText()

	if key == x001230_g_Update["id01"] then
		if LuaFnHasTeam( sceneId, selfId ) ~= 0  then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHoa S½n Lu§n Kiªm");
				AddText(sceneId,"Xin hãy r¶i khöi t± ğµi r°i hãy báo danh tham gia.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			return 0
		end
    
        -- 0£¬´¦ÓÚË«ÈËÆï³Ë×´Ì¬µÄÈË£¬²»ÄÜ±¨Ãû
        if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
            BeginEvent(sceneId)
                AddText(sceneId,"#BHoa S½n Lu§n Kiªm");
                AddText(sceneId,"Trong trÕng thái cßŞi thú cßŞi 2 ngß¶i, không th¬ báo danh tham gia Lu§n Kiªm Hoa S½n.");
            EndEvent(sceneId)
            DispatchEventList(sceneId,selfId,targetId)
            
            return 0
        end

        -- 1,ÈËÎïµÈ¼¶¸ßÓÚ30
        if GetLevel(sceneId, selfId) < 30  then
            BeginEvent(sceneId)
                AddText(sceneId,"#BHoa S½n Lu§n Kiªm");
                AddText(sceneId,"Tham gia Hoa S½n lu§n kiªm nh¤t thiªt phäi t× c¤p 30 tr· lên, các hÕ không ğü, xin ğşi sau khi ğÕt t¾i c¤p 30 lÕi t¾i tìm ta");
            EndEvent(sceneId)
            DispatchEventList(sceneId,selfId,targetId)
            
            return 0
        end

        -- 2,¼ì²â»î¶¯ÊÇ²»ÊÇÒÑ¾­¿ªÊ¼ÁË£¬Èç¹ûÒÑ¾­¿ªÊ¼£¬¾Í²»ÄÜÔÙ½øÈ¥ÁË
        local nWeek = GetTodayWeek()
        if (nWeek==0 or nWeek==4 or nWeek==2) ~= 1  then
            BeginEvent(sceneId)
                AddText(sceneId,"#BHoa S½n Lu§n Kiªm");
                AddText(sceneId,"  ÏÖÔÚ²»ÊÇ²Î¼ÓHoa S½n Lu§n KiªmµÄ±¨ÃûÊ±¼ä£¬ÇëÓÚÖÜ¶ş¡¢ÖÜËÄºÍÖÜÈÕÔÙÀ´¡£");
            EndEvent(sceneId)
            DispatchEventList(sceneId,selfId,targetId)
            
            return
        end
        
        -- 3,Ê±¼ä¼ì²â£¬½ÓÊÜ±¨ÃûµÄÊ±¼ä£¬8µãµ½8µã30·Ö
        --begin modified by zhangguoxin 090207
        --local nHour = GetHourTime()
        --local temp = floor(nHour/100)*100
        --PrintNum(nHour-temp)
        --if ((nWeek==0) and (nHour-temp<60 or nHour-temp>=62)) or 
        --     ( (nWeek==2 or nWeek==4) and (nHour-temp<76 or nHour-temp>=78))  then		--±¨ÃûÊ±¼ä2 4µÄ19:00-19:30£¬ÈÕµÄ15:00-15:30
        local nQuarter = mod(GetQuarterTime(),100);
        if ((nWeek==0) and (nQuarter < 60 or nQuarter >= 62 )) or 
             ( (nWeek==2 or nWeek==4) and (nQuarter < 76 or nQuarter >= 78))  then		--±¨ÃûÊ±¼ä2 4µÄ19:00-19:30£¬ÈÕµÄ15:00-15:30
        --end modified by zhangguoxin 090207
            BeginEvent(sceneId)
                AddText(sceneId,"#BHoa S½n Lu§n Kiªm");
                AddText(sceneId,"Hi®n không phäi là th¶i gian báo danh Lu§n Kiªm Hoa S½n, xin hãy ğşi ğªn thÑ 3, thÑ 5 và chü nh§t hãy ğªn ğây.");
            EndEvent(sceneId)
            DispatchEventList(sceneId,selfId,targetId)
            
            return
        end

        -- 4,ÈËÊı¼ì²â,Ê¹ÓÃ»î¶¯Êı¾İÇøµÄÊı¾İÀ´±£´æÕâĞ©Êı¾İ
        local nMenpai = LuaFnGetMenPai(sceneId, selfId)
        
        if nMenpai == 9   then
            BeginEvent(sceneId)
                AddText(sceneId,"#BHoa S½n Lu§n Kiªm");
                AddText(sceneId,"Xin l²i, ngß½i không có môn phái, sao lÕi kiªm ğßşc t¾i c¤p 30!!");
            EndEvent(sceneId)
            DispatchEventList(sceneId,selfId,targetId)
            return 0
        end
        
        local nPeopleNum = GetActivityParam(sceneId, x001230_g_nActivityId, nMenpai)
        -- a,¼ì²âÍæ¼ÒËùÔÚÃÅÅÉÊÇ²»ÊÇÒÑ¾­ÓĞ10ÈËÁË£¬
        if nPeopleNum < 10 then
            -- Ëû¿ÉÒÔ½øÈë
        elseif nPeopleNum >=10 and nPeopleNum < 30  then
            -- ÅĞ¶ÏÊÇ²»ÊÇÈËÊı×î¶àµÄÃÅÅÉ£¬
            for i=0, 8   do
                if nMenpai ~= i   then
                    if GetActivityParam(sceneId, x001230_g_nActivityId, nMenpai) >= nPeopleNum  then
                        --¿ÉÒÔ½øÈë
                    end
                end
            end
            -- ĞèÒªµÈ´ı±ğµÄÃÅÅÉ£«ÈËºó½øÈë
            BeginEvent(sceneId)
                AddText(sceneId,"#BHoa S½n Lu§n Kiªm");
                AddText(sceneId,"Xin l²i, lßşng ngß¶i tham dñ quı môn phái cüa Hoa S½n lu§n kiªm l¥n này quá ğông. Phäi ğşi các môn phái khác vào xong m¾i ğßşc vào");
            EndEvent(sceneId)
            DispatchEventList(sceneId,selfId,targetId)
            return 0
            
        elseif nPeopleNum >= 30  then
            BeginEvent(sceneId)
                AddText(sceneId,"#BHoa S½n Lu§n Kiªm");
                AddText(sceneId,"Xin l²i, lßşng ngß¶i tham dñ quı môn phái ğã ğ¥y 30 mÕng");
            EndEvent(sceneId)
            DispatchEventList(sceneId,selfId,targetId)
            return 0
        end
        -- ÆäËûµÄÒ»Ğ©¿ÉÒÔ½øÈëHoa S½n Lu§n KiªmµÄÅĞ¶¨
        -- PrintNum(selfId)
        -- local Name = GetName(sceneId, selfId)
        -- LuaFnSendSystemMail( sceneId, Name, "mail test" )
        -- ×¢Òâ£¬Õâ¸öÏµÍ³ÊÇ²»´´½¨¸±±¾µÄ£¬Ö±½Ó½øÈë³¡¾°¾Í¿ÉÒÔÁË
        local nPos_X;
        local nPos_Z;
        
        if nMenpai == 0  then
            nPos_X = 134
            nPos_Z = 18
        elseif nMenpai == 1   then
            nPos_X = 22
            nPos_Z = 123
        elseif nMenpai == 2   then
            nPos_X = 236
            nPos_Z = 108
        elseif nMenpai == 3   then
            nPos_X = 193
            nPos_Z = 233
        elseif nMenpai == 4   then
            nPos_X = 93
            nPos_Z = 236
        elseif nMenpai == 5   then
            nPos_X = 236
            nPos_Z = 174
        elseif nMenpai == 6   then
            nPos_X = 23
            nPos_Z = 182
        elseif nMenpai == 7   then
            nPos_X = 48
            nPos_Z = 34
        elseif nMenpai == 8   then
            nPos_X = 228
            nPos_Z = 38
        elseif nMenpai == 9   then
            nPos_X = 100
            nPos_Z = 100
        end
        
        -- [ QUFEI 2007-07-30 18:31 UPDATE ]
        -- Çå¿Õ½±Àø±ê¼Ç
        -- PrintNum(selfId)
        SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 0 )
        SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 0 )
        SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 0 )
        
        CallScriptFunction((400900), "TransferFunc",sceneId, selfId, x001230_g_nScnenId, nPos_X, nPos_Z)
        --»î¶¯Í³¼Æ
        LuaFnAuditQuest(sceneId, selfId, "Hoa S½n Lu§n Kiªm")
   
   elseif key == x001230_g_Update["id02"] then
        -- Hoa S½n Lu§n Kiªm½±Àø ÖÜÈÕ£º16:00-17:00 ÖÜ2¡¢ÖÜ4£º20:00-21:00
        local nWeek = GetTodayWeek()
        --begin modified by zhangguoxin 090207
				--local nHour = GetHourTime()
				--local temp = floor(nHour/100)*100
				--if ((nWeek==0) and (nHour-temp<68 and nHour-temp>=64)) or 
        --    ( (nWeek==2 or nWeek==4) and (nHour-temp<84 and nHour-temp>=80))  then
        local nQuarter = mod(GetQuarterTime(),100);
        if ( (nWeek==0) and (nQuarter < 68 and nQuarter >= 64) ) 
        	or( (nWeek==2 or nWeek==4) and (nQuarter < 84 and nQuarter >= 80) )  then
        --end modified by zhangguoxin 090207
            x001230_OnHuashanJiangli( sceneId, selfId, targetId )
            return 0
        else            
            x001230_MyMsgBox( sceneId, selfId, "Ğã qua th¶i gian nhân lînh ph¥n thß·ng Lu§n Kiªm Hoa S½n, hãy ğşi khi ğşi hoÕt ğµng kªt thúc trong vòng 1 gi¶ hãy ğªn tìm ta." )
            return 0		
        end
   elseif key == x001230_g_Update["id03"] then
   			
   			local index01 =	GetMissionFlag( sceneId, selfId, MF_LunjianJiangli01 )
				local index02 =	GetMissionFlag( sceneId, selfId, MF_LunjianJiangli02 )
				local index03 =	GetMissionFlag( sceneId, selfId, MF_LunjianJiangli03 )
   			   			
   			if ( index01 == 1 and index02 == 1 and index03 == 1 ) then
					BeginEvent(sceneId)
					local strText = "Các hÕ mu¯n nh§n thß·ng thì hãy c¯ g¡ng h½n. L¥n sau ğoÕt giäi nh¤t ğªn tìm ta s¨ ğßşc nh§n thß·ng ğó."
					AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)	
					
					return 0
   			end
   			
   			-- ¼ì²âSelfIdÊÇ·ñÓĞĞ§
   			if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
					return 0
				end
				if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
					return 0
				end
   			
   			LuaFnAskNpcScriptMail(sceneId, selfId, MAIL_HUASHANJIANGLI)
   			
   			local strLogCheck = format(	"HuaShanLunJian_AskNpcScriptMail    id=%X, Param01=%d, Param02=%d, Param03=%d", LuaFnGetGUID(sceneId, selfId), index01, index02, index03 )
				LuaFnLogCheck(strLogCheck)
				
				return 0
   end
end


--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x001230_OnEnumerate( sceneId, selfId, targetId )	
    AddNumText( sceneId, x001230_g_ScriptId, x001230_g_msg["cj"], 6, x001230_g_Update["id01"] )        
    
    --[ QUFEI 2007-07-27 11:13 UPDATE ]	
    --Hoa S½n Lu§n Kiªm½áÊøºóÒ»Ğ¡Ê±ÄÚÁìÈ¡½±Àø	ÖÜÈÕ£º16:00-17:00 ÖÜ2¡¢ÖÜ4£º20:00-21:00
    local nWeek = GetTodayWeek()
    
    --begin modified by zhangguoxin 090207
    --local nHour = GetHourTime()
    --local temp = floor(nHour/100)*100
        
    --if ((nWeek==0) and (nHour-temp<68 and nHour-temp>=64)) or 
    --    ( (nWeek==2 or nWeek==4) and (nHour-temp<84 and nHour-temp>=80))  then
    local nQuarter = mod(GetQuarterTime(),100);    
    if ((nWeek==0) and (nQuarter < 68 and nQuarter >= 64)) or 
        ( (nWeek==2 or nWeek==4) and (nQuarter < 84 and nQuarter >= 80))  then
    --begin modified by zhangguoxin 090207
        AddNumText( sceneId, x001230_g_ScriptId, x001230_g_msg["Mail"], 6, x001230_g_Update["id03"] )
        AddNumText( sceneId, x001230_g_ScriptId, x001230_g_msg["jl"], 6, x001230_g_Update["id02"] )        
    end
    
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x001230_CheckAccept( sceneId, selfId )
	
end

--**********************************
--½ÓÊÜ
--**********************************
function x001230_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x001230_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x001230_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x001230_OnAbandon( sceneId, selfId )
	
end

--**********************************
--¼ÌĞø
--**********************************
function x001230_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x001230_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x001230_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x001230_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x001230_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x001230_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x001230_OnCopySceneTimer( sceneId, nowTime )
	
end

--[ QUFEI 2007-07-27 11:13 UPDATE ]
--Hoa S½n Lu§n Kiªm½±ÀøÊÂ¼ş
function x001230_OnHuashanJiangli( sceneId, selfId, targetId )
	--[ QUFEI 2007-07-27 11:18 UPDATE ]
	
	-- PrintStr(GetName(sceneId, selfId))	
	local name   	= GetName(sceneId, selfId)
	--ÏòselfIdËùÔÚµÄÃÅÅÉ·¢ËÍ¹«¸æ
	local strText = ""
	local menpai  = GetMenPai(sceneId, selfId)	
	menpai = menpai+1
	local temp		=	-1	
	local idx			= {}
	idx[1] = 0
	idx[2] = 0
	idx[3] = 0
	
	local strLogCheck = ""
		
	local	timeidx = GetMissionData( sceneId, selfId, MD_HUASHANJIANGLI_TIME )
	
	local nMonth = LuaFnGetThisMonth()
	local nDay   = LuaFnGetDayOfThisMonth()
	local nData  = (nMonth+1)*100+nDay
	local	timenow = LuaFnGetCurrentTime()
		
	if nData ~= 0 and nData ~= timeidx	then
		-- ¸ÃÍæ¼ÒÁì½±Æ·³¬Ê±
		SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 0 )
		SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 0 )
		SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 0 )
	end
	
	local index01 =	GetMissionFlag( sceneId, selfId, MF_LunjianJiangli01 )
	local index02 =	GetMissionFlag( sceneId, selfId, MF_LunjianJiangli02 )
	local index03 =	GetMissionFlag( sceneId, selfId, MF_LunjianJiangli03 )
	
	-- PrintNum(menpai)
	-- PrintNum(index01)
	-- PrintNum(index02)
	-- PrintNum(index03)
	
	-- ½±Àø±ê¼Ç	index01	index02	index03
	-- ½±ÀøÎ´È¡		0				0				0				(Ä¬ÈÏ)
	-- »ı·ÖµÚÒ»		0				0				1	
	-- »ı·ÖµÚ¶ş		0				1				0
	-- »ı·ÖµÚÈı		0				1				1
	-- ÃÅÅÉµÚÒ»		1				0				0
	-- ÃÅÅÉµÚ¶ş		1				0				1
	-- ÃÅÅÉµÚÈı		1				1				0
	-- ½±ÀøÒÑÈ¡		1				1				1
	
	if ( index01 == 0 and index02 == 0 and index03 == 1 )
		 or ( index01 == 0 and index02 == 1 and index03 == 0 )
		 or ( index01 == 0 and index02 == 1 and index03 == 1 )
		 or ( index01 == 1 and index02 == 0 and index03 == 0 )
		 or ( index01 == 1 and index02 == 0 and index03 == 1 )
		 or ( index01 == 1 and index02 == 1 and index03 == 0 )
		 or ( index01 == 1 and index02 == 1 and index03 == 1 ) then
		 		if index01 == 1 and index02 == 1 and index03 == 1 then		 			
			 		BeginEvent(sceneId) 
					strText = "Các hÕ ğã t×ng nh§n lînh ph¥n thß·ng, hãy tiªp tøc c¯ g¡ng, l¥n sau th¡ng m¾i tìm ta."
					AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)	
				else			 		
		 				if index01 == 0 and index02 == 0 and index03 == 1 then						 				
		 						BeginAddItem( sceneId )
								AddItem( sceneId, x001230_g_nMenpaiShiZhuang[menpai].id, 1 )
								ret1 = EndAddItem( sceneId, selfId )
								
								BeginAddItem( sceneId )
								AddItem( sceneId, x001230_g_nCailiaoJiangli[1].id, 3 )
								ret2 = EndAddItem( sceneId, selfId )
								
								if ret1 > 0 and ret2 > 0 then
								
										idx[1] = 0
										idx[2] = 0
										idx[3] = 0
										
										local	itemInfo	=	{}
										itemInfo[1]	=	""
										itemInfo[2]	=	""
										itemInfo[3]	=	""
										
										-- ½±ÀøÊ±×°
										local bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nMenpaiShiZhuang[menpai].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										local itemInfo01 = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nMenpaiShiZhuang[menpai].id, 1)
										LuaFnLogCheck(strLogCheck)
																				
										-- Ç¿ÖÆ°ó¶¨																													
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
										
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										-- ½±Àø²ÄÁÏ
										temp = random(3)																								
										-- PrintNum(temp)
										-- PrintStr(x001230_g_nCailiaoJiangli[temp].name)
										bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
																				
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										-- PrintNum(idx[temp])
										
										temp = random(3)																				
										-- PrintNum(temp)
										-- PrintStr(x001230_g_nCailiaoJiangli[temp].name)
										bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )								
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
																				
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										-- PrintNum(idx[temp])
										
										temp = random(3)																											
										-- PrintNum(temp)
										-- PrintStr(x001230_g_nCailiaoJiangli[temp].name)
										bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )	
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)							
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
																				
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										-- PrintNum(idx[temp])
										
										-- ¸ÃÍæ¼ÒÁì¹ı½±Æ·
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 1 )
										
										--ÏòselfIdËùÔÚµÄÃÅÅÉ·¢ËÍ¹«¸æ
										if idx[1] > 0 and idx[2] > 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[1], itemInfo[1], idx[2], itemInfo[2], idx[3], itemInfo[3] )
											-- PrintStr(strText)
										elseif idx[1] > 0 and idx[2] > 0 and idx[3] == 0 then
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[1], itemInfo[1], idx[2], itemInfo[2] )
											-- PrintStr(strText)
										elseif idx[1] > 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[1], itemInfo[1], idx[3], itemInfo[3] )
											-- PrintStr(strText)
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[2], itemInfo[2], idx[3], itemInfo[3] )
											-- PrintStr(strText)
										elseif idx[1] > 0 and idx[2] == 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[1], itemInfo[1] )
											-- PrintStr(strText)
										elseif idx[1] == 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[3], itemInfo[3] )
											-- PrintStr(strText)
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[2], itemInfo[2] )
											-- PrintStr(strText)
										end
										BroadMsgByChatPipe(sceneId,selfId, strText, 7)				 																			
								
								else
						 				BeginEvent(sceneId)
										strText = "Cµt v§t ph¦m ho£c cµt nguyên li®u không ğü ch± tr¯ng, vui long s¡p xªp lÕi r°i hãy ğªn nh§n lînh."
										AddText(sceneId,strText);
										EndEvent(sceneId)
										DispatchMissionTips(sceneId,selfId)
								end			 				
		 				elseif index01 == 0 and index02 == 1 and index03 == 0 then						 				
		 						BeginAddItem( sceneId )
								AddItem( sceneId, x001230_g_nMenpaiShiZhuang[menpai].id, 1 )
								ret1 = EndAddItem( sceneId, selfId )
								
								BeginAddItem( sceneId )
								AddItem( sceneId, x001230_g_nCailiaoJiangli[1].id, 2 )
								ret2 = EndAddItem( sceneId, selfId )
								
								if ret1 > 0 and ret2 > 0 then
										idx[1] = 0
										idx[2] = 0
										idx[3] = 0
										
										local	itemInfo	=	{}
										itemInfo[1]	=	""
										itemInfo[2]	=	""
										itemInfo[3]	=	""
										
										-- ½±ÀøÊ±×°
										local bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nMenpaiShiZhuang[menpai].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										local itemInfo01 = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nMenpaiShiZhuang[menpai].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨																													
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
																				
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										-- ½±Àø²ÄÁÏ
										temp = random(3)												
										bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
																				
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										
										temp = random(3)												
										bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
																				
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 1 )
																		
										--ÏòselfIdËùÔÚµÄÃÅÅÉ·¢ËÍ¹«¸æ
										if idx[1] > 0 and idx[2] > 0 and idx[3] == 0 then
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[1], itemInfo[1], idx[2], itemInfo[2] )
										elseif idx[1] > 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[1], itemInfo[1], idx[3], itemInfo[3] )
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[2], itemInfo[2], idx[3], itemInfo[3] )
										elseif idx[1] > 0 and idx[2] == 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[1], itemInfo[1] )
										elseif idx[1] == 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[3], itemInfo[3] )
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[2], itemInfo[2] )
										end
										BroadMsgByChatPipe(sceneId,selfId, strText, 7)				 											
						 		else
						 				BeginEvent(sceneId)
										strText = "Cµt v§t ph¦m ho£c cµt nguyên li®u không ğü ch± tr¯ng, vui long s¡p xªp lÕi r°i hãy ğªn nh§n lînh."
										AddText(sceneId,strText);
										EndEvent(sceneId)
										DispatchMissionTips(sceneId,selfId)
								end							 						 						 				 				
		 				elseif index01 == 0 and index02 == 1 and index03 == 1 then						 				
		 						BeginAddItem( sceneId )
								AddItem( sceneId, x001230_g_nMenpaiShiZhuang[menpai].id, 1 )
								ret1 = EndAddItem( sceneId, selfId )
								
								BeginAddItem( sceneId )
								AddItem( sceneId, x001230_g_nCailiaoJiangli[1].id, 1 )
								ret2 = EndAddItem( sceneId, selfId )
								
								if ret1 > 0 and ret2 > 0 then
										idx[1] = 0
										idx[2] = 0
										idx[3] = 0
										
										local	itemInfo	=	{}
										itemInfo[1]	=	""
										itemInfo[2]	=	""
										itemInfo[3]	=	""
										
										-- ½±ÀøÊ±×°
										local bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nMenpaiShiZhuang[menpai].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										local itemInfo01 = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nMenpaiShiZhuang[menpai].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨																													
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
										
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										-- ½±Àø²ÄÁÏ
										temp = random(3)												
										bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
										
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
					
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 1 )
																					
										--ÏòselfIdËùÔÚµÄÃÅÅÉ·¢ËÍ¹«¸æ
										if idx[1] > 0 and idx[2] == 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[1], itemInfo[1] )
										elseif idx[1] == 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[3], itemInfo[3] )
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL01}#{_INFOMSG%s}#{HSJL02}%d¸ö#{_INFOMSG%s}#{HSJL03}", name, itemInfo01, idx[2], itemInfo[2] )
										end
										BroadMsgByChatPipe(sceneId,selfId, strText, 7)				 											
						 		else
						 				BeginEvent(sceneId)
										strText = "Cµt v§t ph¦m ho£c cµt nguyên li®u không ğü ch± tr¯ng, vui long s¡p xªp lÕi r°i hãy ğªn nh§n lînh."
										AddText(sceneId,strText);
										EndEvent(sceneId)
										DispatchMissionTips(sceneId,selfId)
								end								 								 			 				
		 				elseif index01 == 1 and index02 == 0 and index03 == 0 then						 				
		 						BeginAddItem( sceneId )
								AddItem( sceneId, x001230_g_nCailiaoJiangli[1].id, 3 )
								ret = EndAddItem( sceneId, selfId )
								
								if ret > 0 then
										idx[1] = 0
										idx[2] = 0
										idx[3] = 0
										
										local	itemInfo	=	{}
										itemInfo[1]	=	""
										itemInfo[2]	=	""
										itemInfo[3]	=	""
										
										-- ½±Àø²ÄÁÏ
										temp = random(3)												
										local bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
										
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										
										temp = random(3)												
										bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )								
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
										
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										
										temp = random(3)												
										bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )	
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)							
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
										
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 1 )
										
										--ÏòselfIdËùÔÚµÄÃÅÅÉ·¢ËÍ¹«¸æ
										if idx[1] > 0 and idx[2] > 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[1], itemInfo[1], idx[2], itemInfo[2], idx[3], itemInfo[3] )
										elseif idx[1] > 0 and idx[2] > 0 and idx[3] == 0 then
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[1], itemInfo[1], idx[2], itemInfo[2] )
										elseif idx[1] > 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[1], itemInfo[1], idx[3], itemInfo[3] )
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[2], itemInfo[2], idx[3], itemInfo[3] )
										elseif idx[1] > 0 and idx[2] == 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[1], itemInfo[1] )
										elseif idx[1] == 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[3], itemInfo[3] )
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[2], itemInfo[2] )
										end
										BroadMsgByChatPipe(sceneId,selfId, strText, 7)				 											
						 		else
						 				BeginEvent(sceneId)
										strText = "Cµt v§t ph¦m ho£c cµt nguyên li®u không ğü ch± tr¯ng, vui long s¡p xªp lÕi r°i hãy ğªn nh§n lînh."
										AddText(sceneId,strText);
										EndEvent(sceneId)
										DispatchMissionTips(sceneId,selfId)
								end							 											 				
		 				elseif index01 == 1 and index02 == 0 and index03 == 1 then						 				
		 						BeginAddItem( sceneId )
								AddItem( sceneId, x001230_g_nCailiaoJiangli[1].id, 2 )
								ret = EndAddItem( sceneId, selfId )
								
								if ret > 0 then
										idx[1] = 0
										idx[2] = 0
										idx[3] = 0
										
										local	itemInfo	=	{}
										itemInfo[1]	=	""
										itemInfo[2]	=	""
										itemInfo[3]	=	""
										
										-- ½±Àø²ÄÁÏ
										temp = random(3)												
										local bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
										
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										
										temp = random(3)												
										bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
										
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
													
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 1 )
													
										--ÏòselfIdËùÔÚµÄÃÅÅÉ·¢ËÍ¹«¸æ
										if idx[1] > 0 and idx[2] > 0 and idx[3] == 0 then
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[1], itemInfo[1], idx[2], itemInfo[2] )
										elseif idx[1] > 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[1], itemInfo[1], idx[3], itemInfo[3] )
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}£¬%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[2], itemInfo[2], idx[3], itemInfo[3] )
										elseif idx[1] > 0 and idx[2] == 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[1], itemInfo[1] )
										elseif idx[1] == 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[3], itemInfo[3] )
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[2], itemInfo[2] )
										end
										BroadMsgByChatPipe(sceneId,selfId, strText, 7)				 											
						 		else
						 				BeginEvent(sceneId)
										strText = "Cµt v§t ph¦m ho£c cµt nguyên li®u không ğü ch± tr¯ng, vui long s¡p xªp lÕi r°i hãy ğªn nh§n lînh."
										AddText(sceneId,strText);
										EndEvent(sceneId)
										DispatchMissionTips(sceneId,selfId)
								end							 									 				 				
		 				elseif index01 == 1 and index02 == 1 and index03 == 0 then
		 						BeginAddItem( sceneId )
								AddItem( sceneId, x001230_g_nCailiaoJiangli[1].id, 1 )
								ret = EndAddItem( sceneId, selfId )
					
								if ret > 0 then
										idx[1] = 0
										idx[2] = 0
										idx[3] = 0
										
										local	itemInfo	=	{}
										itemInfo[1]	=	""
										itemInfo[2]	=	""
										itemInfo[3]	=	""
										
										-- ½±Àø²ÄÁÏ
										temp = random(3)												
										local bagpos = TryRecieveItem( sceneId, selfId, x001230_g_nCailiaoJiangli[temp].id, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
										itemInfo[temp] = GetBagItemTransfer( sceneId, selfId, bagpos )
										
										--²éÑ¯×éÈÕÖ¾
										strLogCheck = format("HuaShanLunJian_GetPrize	userId:%X, itemId:%d, count:%d", LuaFnGetGUID(sceneId, selfId), x001230_g_nCailiaoJiangli[temp].id, 1)
										LuaFnLogCheck(strLogCheck)
										
										-- Ç¿ÖÆ°ó¶¨										
										local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos )
										
										if bindidx ~= 1 then
											local bindmsg = "V§t ph¦m này ğã ğßşc c¯ ğ¸nh"													
											BeginEvent( sceneId )
												AddText( sceneId, bindmsg )
											EndEvent( sceneId )
											DispatchMissionTips( sceneId, selfId )
										end
										
										idx[temp] = idx[temp]+1
										
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 1 )
										SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 1 )
													
										--ÏòselfIdËùÔÚµÄÃÅÅÉ·¢ËÍ¹«¸æ
										if idx[1] > 0 and idx[2] == 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[1], itemInfo[1] )
										elseif idx[1] == 0 and idx[2] == 0 and idx[3] > 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[3], itemInfo[3] )
										elseif idx[1] == 0 and idx[2] > 0 and idx[3] == 0 then																
											strText = format("#{_INFOUSR%s}#P#{HSJL04}%d¸ö#{_INFOMSG%s}#{HSJL05}", name, idx[2], itemInfo[2] )
										end
										BroadMsgByChatPipe(sceneId,selfId, strText, 7)				 											
						 		else
						 				BeginEvent(sceneId)
										strText = "Cµt v§t ph¦m ho£c cµt nguyên li®u không ğü ch± tr¯ng, vui long s¡p xªp lÕi r°i hãy ğªn nh§n lînh."
										AddText(sceneId,strText);
										EndEvent(sceneId)
										DispatchMissionTips(sceneId,selfId)
								end							 							 				
		 				end				 		
				end				 
	else
		BeginEvent(sceneId)
		strText = "Xin l²i, l¥n này các hÕ không ğÕt ğßşc thành tích 3 thÑ hÕng ğ¥u r°i l¥n sau hãy c¯ g¡ng h½n næa."
		AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)						
	end		
			
end

--**********************************
--Hoa S½n Lu§n Kiªm³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x001230_OnHuashanSceneTimer( sceneId, selfId )

	local nNowTimeEX = LuaFnGetCurrentTime()
	if x001230_g_bEndTime ~= 0 and nNowTimeEX > x001230_g_bEndTime+60    then
		
		BroadMsgByChatPipe(sceneId,0,"@*;SrvMsg;SCA:" .. "#PTrong l¥n Lu§n Kiªm Hoa S½n này, #Y" .. x001230_g_bMenpai .. "#P träi qua nhæng n± lñc, cu¯i cùng ğã ğÕt ğßşc vinh quang,#Y Lu§n Kiªm Hoa S½n hÕng nh¤t#P, ğ¬ khích l®, t¤t cä ğ® tØ môn hÕ m²i ngày s¨ ğßşc t£ng thß·ng #Yg¤p 3 l¥n kinh nhi®m#W khi làm vòng nhi®m vø sß môn ğ¥u tiên cho ğªn kÏ Lu§n Kiªm Hoa S½n l¥n sau kªt thúc.",4)
		
		local mingci = 1
		local str = ""
		local MenpaiTbl = {	"Thiªu Lâm",
												"Minh Giáo",
												"Cái Bang",
												"Võ Ğang",
												"Nga My",
												"Tiêu Dao",
												"Thiên Long",
												"Thiên S½n",
												"Tinh Túc"	}
		
		-- ÔÚËùÓĞÑ¡ÊÖÖĞÕÒµ½Ç°5Ãû
		for i=1, x001230_g_PlayerNum  do				
			if mingci == 1  then
					str = "Giäi nh¤t: " .. x001230_g_PlayerName[i] .. "#Y[" .. MenpaiTbl[x001230_g_PlayerMenpai[i]+1] .. "]"
					mingci = 2					
			elseif mingci == 2  then
					str = "Giäi nhì: " .. x001230_g_PlayerName[i]	.. "#Y[" .. MenpaiTbl[x001230_g_PlayerMenpai[i]+1] .. "]"					
					mingci = 3											
			elseif mingci == 3  then
					str = "Giäi ba: " .. x001230_g_PlayerName[i] .. "#Y[" .. MenpaiTbl[x001230_g_PlayerMenpai[i]+1] .. "]"
					mingci = 4
			elseif mingci == 4  then
					str = "Giäi tß: " .. x001230_g_PlayerName[i] .. "#Y[" .. MenpaiTbl[x001230_g_PlayerMenpai[i]+1] .. "]"
					mingci = 5					
			elseif mingci == 5  then
					str = "Giäi nåm: " .. x001230_g_PlayerName[i] .. "#Y[" .. MenpaiTbl[x001230_g_PlayerMenpai[i]+1] .. "]"
					mingci = 6							
			elseif mingci == 6  then
					break
			end
			
			-- ÏòÈ«×é·şÎñÆ÷·¢ËÍĞÂÎÅ¹«¸æ
			AddGlobalCountNews ( sceneId, str )
		end
		
		x001230_g_PlayerNum = 0
		x001230_g_bEndTime = 0
	end
		
	-- ¼ì²âÕâ¸ö³¡¾°ÄÚÊÇ²»ÊÇÓĞÍæ¼Ò£¬Èç¹ûÃ»ÓĞ£¬Ö±½Ó·µ»Ø
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	if nHumanNum == 0  then
		return
	end
	
	--¼ì²âµ±Ç°ÊÇ²»ÊÇHoa S½n Lu§n KiªmµÄ»î¶¯Ê±¼ä£¬Èç¹û²»ÊÇ£¬¾Í°Ñ³¡¾°ÄÚµÄËùÓĞÍæ¼Ò¶¼T³öÈ¥
	local bIsTime = 1
	
	local nWeek = GetTodayWeek()
	if (nWeek==0 or nWeek==4 or nWeek==2) ~= 1  then
		bIsTime = 0
	end
	
	--begin modified by zhangguoxin 090207
	--local nHour = GetHourTime()
	--local temp = floor(nHour/100)*100
	
	--	if nHour - temp < 60  or nHour - temp >= 64   then
	--  ÕıÊ½»î¶¯Ê±¼ä ÖÜÈÕ£º15:00-16:00 ÖÜ2¡¢ÖÜ4£º19:00-20:00
	--if ((nWeek==0) and (nHour-temp<60 or nHour-temp>=64)) or 
	--	 ( (nWeek==2 or nWeek==4) and (nHour-temp<76 or nHour-temp>=80))  then
	local nQuarter = mod(GetQuarterTime(),100);
		 
	if ((nWeek==0) and (nQuarter < 60 or nQuarter >= 64)) or 
		 ( (nWeek==2 or nWeek==4) and (nQuarter < 76 or nQuarter >= 80))  then
	--begin modified by zhangguoxin 090207
		bIsTime = 0
	end
	
	if bIsTime == 1   then
		if x001230_g_bHuashaning == 0   then
			x001230_g_bHuashaning = 1
			-- ¿ªÊÇÒ»´ÎĞÂµÄ»î¶¯Ç°£¬ĞèÒªÇåÀíÉ±ÈË¼ÆÊıÆ÷
			
			for i=1 ,400  do
				x001230_g_PlayerKc[i] = 0
				x001230_g_PlayerName[i] = ""
				
				--[ QUFEI 2007-07-27 15:04 UPDATE ]
				x001230_g_PlayerMenpai[i] = -1
				x001230_g_PlayerId[i] = 0
			end
			x001230_g_PlayerNum = 0
			-- PrintNum(selfId)
			-- Çå¿ÕÏà¹ØµÄÊıÖµ
			for i=1, 9  do
				x001230_g_nMenpaiQiansan[i].id = (i-1)
				x001230_g_nMenpaiQiansan[i].player01=""
				x001230_g_nMenpaiQiansan[i].player02=""
				x001230_g_nMenpaiQiansan[i].player03=""				
				x001230_g_nMenpaiQiansan[i].playerid01=0
				x001230_g_nMenpaiQiansan[i].playerid02=0
				x001230_g_nMenpaiQiansan[i].playerid03=0				
			end			
			
			-- [ QUFEI 2007-07-30 18:31 UPDATE ]
			-- Çå¿Õ½±Àø±ê¼Ç
			if LuaFnIsObjValid(sceneId, selfId) == 1 and LuaFnIsCanDoScriptLogic(sceneId,selfId) == 1 then
				SetMissionFlag( sceneId, selfId, MF_LunjianJiangli01, 0 )
				SetMissionFlag( sceneId, selfId, MF_LunjianJiangli02, 0 )
				SetMissionFlag( sceneId, selfId, MF_LunjianJiangli03, 0 )
			end
			
		end
		
		if x001230_g_bHuashaning == 1   then
			-- »ñµÃµ±Ç°µÄÊ±¼ä
			local nNowTime = LuaFnGetCurrentTime()
			if x001230_g_PreTime == 0    then
				x001230_g_PreTime = nNowTime
				return
			end
			-- 1£¬Ã¿¼ä¸ô5·ÖÖÓ£¬ĞèÒªÍ¨ÖªÍæ¼Ò£¬Ç°3ÃûµÄÃÅÅÉ£¬·¢ËÍ¸øÈ«ÊÀ½ç
			if nNowTime > x001230_g_PreTime+300    then
			
				x001230_g_PreTime = nNowTime
				
				--Ë¢ĞÂÃØ¼®....
				x001230_GiveMJ( sceneId )
				
				-- ×öÒ»´ÎÅÅĞò£¬
				for i=1, 9    do
					for j=1, i   do
						if x001230_g_nMenpaikills[i].kill > x001230_g_nMenpaikills[j].kill   then
							local nTempMenpai = x001230_g_nMenpaikills[j].id
							local nKills = x001230_g_nMenpaikills[j].kill
							x001230_g_nMenpaikills[j].id = x001230_g_nMenpaikills[i].id
							x001230_g_nMenpaikills[j].kill = x001230_g_nMenpaikills[i].kill
							
							x001230_g_nMenpaikills[i].id = nTempMenpai
							x001230_g_nMenpaikills[i].kill = nKills
						end
					end
				end
				
				-- ·¢µ±Ç°µÄÏà¹Ø¹«¸æ
				local nMingci = 1
				
				local szStr = "#{HSJL_090113_01}" --"»ªÉ½Ö®µß£¬ÌìÏÂÃÅÅÉ¸÷³ÊĞÛ·ç£¬Ä¿Ç°´ÓÊµÁ¦ÉÏÅÅÃûÔÚµÚÒ»µÚ¶şÓëµÚÈıÃûµÄÃÅÅÉ£º·Ö±ğÎª" zchw

				szStr = szStr .. x001230_Id2Menpai(x001230_g_nMenpaikills[1].id) .. x001230_g_nMenpaikills[1].kill .. "#{HSJL_090113_02}"
				szStr = szStr .. x001230_Id2Menpai(x001230_g_nMenpaikills[2].id) .. x001230_g_nMenpaikills[2].kill .. "#{HSJL_090113_02}"
				szStr = szStr .. x001230_Id2Menpai(x001230_g_nMenpaikills[3].id) .. x001230_g_nMenpaikills[3].kill .. "#{HSJL_090113_03}"
				
				AddGlobalCountNews(sceneId, szStr)
				
			end
		end
	end
	
	-- Èç¹û bIsTime == 0 ,¾Í°ÑËùÓĞµÄÍæ¼ÒT³öÈ¥
	if bIsTime == 0   then
		
		if x001230_g_bHuashaning == 1   then
			-- »î¶¯½áÊøµÄÊ±¿Ì£¬ÕâÊÇÊ±ºòÒª´¦Àí±È½Ï¶à¶«Î÷£¬×¢Òâ£¡£¡£¡
			-- 1£¬¿´ÏÂË­ÊÇ½ñÌìµÄÊ¤ÀûÕß£¬Èç¹ûÓĞ¶à¸ö²¢ÁĞµÚÒ»£¬¾Í¡°Ëæ»ú¡±³öÒ»¸öÊ¤ÀûÕß
			--  a£¬ÏÖÅÅĞòËùÓĞµÄÉ±ÈËÊı
				x001230_g_bHuashaning = 0
				x001230_g_bEndTime = LuaFnGetCurrentTime()
				
				for i=1, 9    do
					for j=1, i   do
						if x001230_g_nMenpaikills[i].kill > x001230_g_nMenpaikills[j].kill   then
							local nTempMenpai = x001230_g_nMenpaikills[j].id
							local nKills = x001230_g_nMenpaikills[j].kill
							x001230_g_nMenpaikills[j].id = x001230_g_nMenpaikills[i].id
							x001230_g_nMenpaikills[j].kill = x001230_g_nMenpaikills[i].kill
							
							x001230_g_nMenpaikills[i].id = nTempMenpai
							x001230_g_nMenpaikills[i].kill = nKills
						end
					end
				end
				
				local nMax = 0
				
				for i=1, 9   do
					if x001230_g_nMenpaikills[i].kill == x001230_g_nMenpaikills[1].kill   then
						nMax = nMax+1
					end
				end

				-- ÔÚµÃµ½µÄÉ±ÈËÊı1µÄÃÅÅÉÖĞÈ¥Ëæ»úÒ»¸ö£¬ºÇºÇ£¬´«ËµÖĞµÄÇ¿X
				local nVMenpai = random(nMax)

				if x001230_g_nMenpaikills[nVMenpai].kill < 1  then
					-- ±¾´Î»î¶¯ÎŞĞ§£¬¶¼Ã»ÓĞÉ±ÈË£¬ÄÄÀïÀ´µÄÊ¤ÀûÕß
					return
				end
				
				-- ÉèÖÃÈ«¾ÖµÄÊı¾İ£¬Ê¤Àû×ÅÃÅÅÉ£¬×¢Òâ£¬ÕâÀï+ÊÇÌØ±ğĞèÒªµÄ£¬ÒòÎª0ÊÇÒ»¸ö³õÊ¼Öµ
				LuaFnSetWorldGlobalData(x001230_g_WorldGlobal, x001230_g_nMenpaikills[nVMenpai].id + 10)

				-- ·¢Ïà¹ØÃÅÅÉµÄÍ¨¸æ
				local szMenpai = ""
				if x001230_g_nMenpaikills[nVMenpai].id == 0  then
					szMenpai = "Thiªu Lâm"
				elseif x001230_g_nMenpaikills[nVMenpai].id == 1  then
					szMenpai = "Minh Giáo"
				elseif x001230_g_nMenpaikills[nVMenpai].id == 2  then
					szMenpai = "Cái Bang"
				elseif x001230_g_nMenpaikills[nVMenpai].id == 3  then
					szMenpai = "Võ Ğang"
				elseif x001230_g_nMenpaikills[nVMenpai].id == 4  then
					szMenpai = "Nga My"
				elseif x001230_g_nMenpaikills[nVMenpai].id == 5  then
					szMenpai = "Tinh Túc"
				elseif x001230_g_nMenpaikills[nVMenpai].id == 6  then
					szMenpai = "Thiên Long"
				elseif x001230_g_nMenpaikills[nVMenpai].id == 7  then
					szMenpai = "Thiên S½n"
				elseif x001230_g_nMenpaikills[nVMenpai].id == 8  then
					szMenpai = "Tiêu Dao"
				end
				--AddGlobalCountNews( sceneId, "#PÔÚ±¾½ìHoa S½n Lu§n Kiªmµ±ÖĞ£¬#W" .. szMenpai .. "#P¾­¹ıÉÏÏÂÒ»ĞÄµÄÅ¬Á¦£¬ÖÕÓÚ»ñµÃHoa S½n Lu§n KiªmµÚÒ»µÄÈÙÓş£¬×÷Îª½±Àø£¬ÆäÃÅÏÂËùÓĞµÜ×ÓÔÚÏÂ½ìHoa S½n Lu§n Kiªm»î¶¯½áÊøÇ°£¬Ã¿ÌìµÄµÚÒ»ÂÖÊ¦ÃÅÈÎÎñ½«»á±äÎª#Y3±¶#P¾­Ñé¡£" )
				
				x001230_g_bMenpai = szMenpai
				-- BroadMsgByChatPipe(sceneId,0,"@*;SrvMsg;SCA:" .. "#PÔÚ±¾½ìHoa S½n Lu§n Kiªmµ±ÖĞ£¬#Y" .. szMenpai .. "#P¾­¹ıÉÏÏÂÒ»ĞÄµÄÅ¬Á¦£¬ÖÕÓÚ»ñµÃHoa S½n Lu§n KiªmµÚÒ»µÄÈÙÓş£¬×÷Îª½±Àø£¬ÆäÃÅÏÂËùÓĞµÜ×ÓÔÚÏÂ½ìHoa S½n Lu§n Kiªm»î¶¯½áÊøÇ°£¬Ã¿ÌìµÄµÚÒ»ÂÖÊ¦ÃÅÈÎÎñ½«»á±äÎª#Y3±¶¾­Ñé¡£",4)

				-- ¼ÇÂ¼ÃÅÅÉÉ±ÈËÊılog
				for i=1, 9   do
					local strLog = "[huashan end]: menpai=" .. tostring(x001230_g_nMenpaikills[i].id) .. "   KillNum=" .. tostring(x001230_g_nMenpaikills[i].kill)
					MissionLog(sceneId,strLog)
				end
				
				-- Çå¿ÕÏà¹ØµÄÊıÖµ
				for i=1, 9  do
					x001230_g_nMenpaikills[i].id = i-1
					x001230_g_nMenpaikills[i].kill = 0
				end
				
				-- ÅÅĞòËùÓĞµÄÍæ¼ÒÉ±ÈËÊı
				for i=1, x001230_g_PlayerNum   do
					for j=1, i   do
						-- local	objid = LuaFnGuid2ObjId( sceneId, x001230_g_PlayerId[i] )
						
						-- if objid == -1 then											-- ÕÒ²»µ½¸ÃÍæ¼Ò
							-- PrintNum(i)
						-- end
						if x001230_g_PlayerKc[i] > x001230_g_PlayerKc[j]  then
							local Killcount = x001230_g_PlayerKc[i]
							local KillName  = x001230_g_PlayerName[i]
							local KillMenpai  = x001230_g_PlayerMenpai[i]
							local UserId  = x001230_g_PlayerId[i]
							
							x001230_g_PlayerKc[i] = x001230_g_PlayerKc[j]
							x001230_g_PlayerName[i] = x001230_g_PlayerName[j]
							x001230_g_PlayerMenpai[i] = x001230_g_PlayerMenpai[j]
							x001230_g_PlayerId[i] = x001230_g_PlayerId[j]
							
							x001230_g_PlayerKc[j] = Killcount
							x001230_g_PlayerName[j] = KillName
							x001230_g_PlayerMenpai[j] = KillMenpai
							x001230_g_PlayerId[j] = UserId
						end
					end
				end
				
				-- [ QUFEI 2007-07-27 17:24 UPDATE ]
				-- »ñµÃÃÅÅÉÇ°ÈıÃûµÄÍæ¼ÒÃû×Ö
				local num = {}
				for i=0 ,8  do
					num[i] = 0
				end

				for i=1, x001230_g_PlayerNum   do
					for j=0, 8   do
						if x001230_g_PlayerMenpai[i] == j then
								if num[j] == 0 then
									x001230_g_nMenpaiQiansan[j+1].player01 = x001230_g_PlayerName[i]
									x001230_g_nMenpaiQiansan[j+1].playerid01 = x001230_g_PlayerId[i]
									num[j] = 1
								elseif num[j] == 1 then
									x001230_g_nMenpaiQiansan[j+1].player02 = x001230_g_PlayerName[i]
									x001230_g_nMenpaiQiansan[j+1].playerid02 = x001230_g_PlayerId[i]
									num[j] = 2
								elseif num[j] == 2 then
									x001230_g_nMenpaiQiansan[j+1].player03 = x001230_g_PlayerName[i]
									x001230_g_nMenpaiQiansan[j+1].playerid03 = x001230_g_PlayerId[i]
									num[j] = 3
								end																							
						end					
					end
				end
				
				--²éÑ¯×éÈÕÖ¾
				local strLogCheck = format(	"HuaShanLunJian_Rank_All    no.1=(id=%X, name=%s), no.2=(id=%X, name=%s), no.3=(id=%X, name=%s), ",
											LuaFnGetGUID(sceneId, x001230_g_PlayerId[1]),x001230_g_PlayerName[1],
											LuaFnGetGUID(sceneId, x001230_g_PlayerId[2]),x001230_g_PlayerName[2],
											LuaFnGetGUID(sceneId, x001230_g_PlayerId[3]),x001230_g_PlayerName[3]
											)
				LuaFnLogCheck(strLogCheck)
				for i=1, 9  do					
					strLogCheck = format(	"HuaShanLunJian_Rank_MenPai(%s)    no.1=(id=%X, name=%s), no.2=(id=%X, name=%s), no.3=(id=%X, name=%s), ",
											x001230_Id2Menpai(x001230_g_nMenpaiQiansan[i].id),
											LuaFnGetGUID(sceneId, x001230_g_nMenpaiQiansan[i].playerid01),x001230_g_nMenpaiQiansan[i].player01,
											LuaFnGetGUID(sceneId, x001230_g_nMenpaiQiansan[i].playerid02),x001230_g_nMenpaiQiansan[i].player02,
											LuaFnGetGUID(sceneId, x001230_g_nMenpaiQiansan[i].playerid03),x001230_g_nMenpaiQiansan[i].player03
											)
					LuaFnLogCheck(strLogCheck)	
					AuditHuashanThreeWinners(sceneId,x001230_g_nMenpaiQiansan[i].playerid01)
				  AuditHuashanThreeWinners(sceneId,x001230_g_nMenpaiQiansan[i].playerid02)
          AuditHuashanThreeWinners(sceneId,x001230_g_nMenpaiQiansan[i].playerid03)
				end		
								
				-- ÅÅĞòÍê³É£¬¿ªÊ¼¹«¸æ
				local mingci = 1
				local KillCounts = 0
				local str = ""
				local mailStr = ""
				for i=1, x001230_g_PlayerNum  do
				
					if mingci == 1 and x001230_g_PlayerName[i] ~= "" then
						-- str = "µÚÒ»Ãû£º" .. x001230_g_PlayerName[i]
						mailStr = "Chúc m×ng các hÕ tham gia Hoa S½n Lu§n Kiªm và giành thÑ hÕng s¯ 1. Có th¬ tìm ngß¶i chü trì Hoa S½n Lu§n Kiªm tÕi Tô Châu - Tô Kiªm Lînh (294,234) lînh thß·ng.#r#YChú ı: #GSau 1 gi¶ các hÕ không nh§n thß·ng thì s¨ không còn c½ hµi nh§n thß·ng næa!"
						
						local StartTime = LuaFnGetCurrentTime()
												
						x001230_g_bMenpai = szMenpai
						
						local nMonth = LuaFnGetThisMonth()
						local nDay   = LuaFnGetDayOfThisMonth()
						local nData  = (nMonth+1)*100+nDay						
						-- ·¢¿ÉÖ´ĞĞÓÊ¼ş¸øÇ°ÈıÃûÍæ¼Ò
						LuaFnSendScriptMail( sceneId, x001230_g_PlayerName[i], MAIL_HUASHANJIANGLI, nData, 1, 1)
						
						strLogCheck = format(	"HuaShanLunJian_ScriptMail    FULL_NO.1=(id=%X, name=%s, Param01=%d, Param02=%d, Param03=%d)", LuaFnGetGUID(sceneId, x001230_g_PlayerId[i]), x001230_g_PlayerName[i], nData, 1, 1 )
						LuaFnLogCheck(strLogCheck)

						LuaFnSendSystemMail( sceneId, x001230_g_PlayerName[i], mailStr )

						strLogCheck = format(	"HuaShanLunJian_SystemMail    FULL_NO.1=(id=%X, name=%s)", LuaFnGetGUID(sceneId, x001230_g_PlayerId[i]), x001230_g_PlayerName[i] )
						LuaFnLogCheck(strLogCheck)
						
						mingci = 2
						if x001230_g_PlayerKc[i] ~= x001230_g_PlayerKc[i+1]  then
							mingci = 2
						end
					elseif mingci == 2 and x001230_g_PlayerName[i] ~= "" then
						-- str = "µÚ¶şÃû£º" .. x001230_g_PlayerName[i]
						mailStr = "Chúc m×ng các hÕ tham gia Hoa S½n Lu§n Kiªm và giành thÑ hÕng s¯ 2. Có th¬ tìm ngß¶i chü trì Hoa S½n Lu§n Kiªm tÕi Tô Châu - Tô Kiªm Lînh (294,234) lînh thß·ng.#r#YChú ı: #GSau 1 gi¶ các hÕ không nh§n thß·ng thì s¨ không còn c½ hµi nh§n thß·ng næa!"
						
						local StartTime = LuaFnGetCurrentTime()
						
						local nMonth = LuaFnGetThisMonth()
						local nDay   = LuaFnGetDayOfThisMonth()
						local nData  = (nMonth+1)*100+nDay						
						-- ·¢¿ÉÖ´ĞĞÓÊ¼ş¸øÇ°ÈıÃûÍæ¼Ò
						LuaFnSendScriptMail( sceneId, x001230_g_PlayerName[i], MAIL_HUASHANJIANGLI, nData, 1, 2)

						strLogCheck = format(	"HuaShanLunJian_ScriptMail    FULL_NO.2=(id=%X, name=%s, Param01=%d, Param02=%d, Param03=%d)", LuaFnGetGUID(sceneId, x001230_g_PlayerId[i]), x001230_g_PlayerName[i], nData, 1, 2 )
						LuaFnLogCheck(strLogCheck)

						LuaFnSendSystemMail( sceneId, x001230_g_PlayerName[i], mailStr )
						
						strLogCheck = format(	"HuaShanLunJian_SystemMail    FULL_NO.2=(id=%X, name=%s)", LuaFnGetGUID(sceneId, x001230_g_PlayerId[i]), x001230_g_PlayerName[i] )
						LuaFnLogCheck(strLogCheck)

						mingci = 3
						if x001230_g_PlayerKc[i] ~= x001230_g_PlayerKc[i+1]  then
							mingci = 3
						end
						
					elseif mingci == 3 and x001230_g_PlayerName[i] ~= "" then
						-- str = "µÚÈıÃû£º" .. x001230_g_PlayerName[i]
						mailStr = "Chúc m×ng các hÕ tham gia Hoa S½n Lu§n Kiªm và giành thÑ hÕng s¯ 3. Có th¬ tìm ngß¶i chü trì Hoa S½n Lu§n Kiªm tÕi Tô Châu - Tô Kiªm Lînh (294,234) lînh thß·ng.#r#YChú ı: #GSau 1 gi¶ các hÕ không nh§n thß·ng thì s¨ không còn c½ hµi nh§n thß·ng næa!"
						
						local StartTime = LuaFnGetCurrentTime()
						
						local nMonth = LuaFnGetThisMonth()
						local nDay   = LuaFnGetDayOfThisMonth()
						local nData  = (nMonth+1)*100+nDay						
						-- ·¢¿ÉÖ´ĞĞÓÊ¼ş¸øÇ°ÈıÃûÍæ¼Ò
						LuaFnSendScriptMail( sceneId, x001230_g_PlayerName[i], MAIL_HUASHANJIANGLI, nData, 1, 3)
						
						strLogCheck = format(	"HuaShanLunJian_ScriptMail    FULL_NO.3=(id=%X, name=%s, Param01=%d, Param02=%d, Param03=%d)", LuaFnGetGUID(sceneId, x001230_g_PlayerId[i]), x001230_g_PlayerName[i], nData, 1, 3 )
						LuaFnLogCheck(strLogCheck)

						LuaFnSendSystemMail( sceneId, x001230_g_PlayerName[i], mailStr )
						
						strLogCheck = format(	"HuaShanLunJian_SystemMail    FULL_NO.3=(id=%X, name=%s)", LuaFnGetGUID(sceneId, x001230_g_PlayerId[i]), x001230_g_PlayerName[i] )
						LuaFnLogCheck(strLogCheck)

						mingci = 4
						if x001230_g_PlayerKc[i] ~= x001230_g_PlayerKc[i+1]  then
							mingci = 4
						end
						
					elseif mingci == 4  then
						-- str = "µÚËÄÃû£º" .. x001230_g_PlayerName[i]
						mingci = 5
						if x001230_g_PlayerKc[i] ~= x001230_g_PlayerKc[i+1]  then
							mingci = 5
						end
						
					elseif mingci == 5  then
						-- str = "µÚÎåÃû£º" .. x001230_g_PlayerName[i]
						mingci = 6
						if x001230_g_PlayerKc[i] ~= x001230_g_PlayerKc[i+1]  then
							mingci = 6
							break
						end
					end
					-- PrintStr(str)
					-- AddGlobalCountNews( sceneId, str)

				end

				for i=1, 9  do
					--ÏòÃ¿¸öÃÅÅÉ·¢ËÍÇ°ÈıÃûµÄÃÅÅÉ¹«¸æ
					str = "#PLu§n Kiªm Hoa S½n l¥n này ğã kªt thúc, các ğ°ng môn trß¾c sau ğã d¯c sÑc vì môn phái, ğã th¬ hi®n sñ dûng cäm trong chiªn ğ¤u, trong s¯ h÷ ngß¶i ğßşc xªp cao nh¤t là: #W"
					-- PrintNum(x001230_g_nMenpaiQiansan[i].playerid01)
					-- PrintNum(x001230_g_nMenpaiQiansan[i].playerid02)
					-- PrintNum(x001230_g_nMenpaiQiansan[i].playerid03)
					if x001230_g_nMenpaiQiansan[i].playerid01 ~= 0 and x001230_g_nMenpaiQiansan[i].player01 ~= "" then
						BroadMsgByChatPipe(sceneId,x001230_g_nMenpaiQiansan[i].playerid01, str, 7)
						str = "Giäi nh¤t: " .. x001230_g_nMenpaiQiansan[i].player01
						BroadMsgByChatPipe(sceneId,x001230_g_nMenpaiQiansan[i].playerid01, str, 7)	
					end
					
					if x001230_g_nMenpaiQiansan[i].playerid02 ~= 0 and x001230_g_nMenpaiQiansan[i].player02 ~= "" then
						str = "Giäi nhì: " .. x001230_g_nMenpaiQiansan[i].player02
						BroadMsgByChatPipe(sceneId,x001230_g_nMenpaiQiansan[i].playerid02, str, 7)			
					end
					
					if x001230_g_nMenpaiQiansan[i].playerid03 ~= 0 and x001230_g_nMenpaiQiansan[i].player03 ~= "" then
						str = "Giäi ba: " .. x001230_g_nMenpaiQiansan[i].player03
						BroadMsgByChatPipe(sceneId,x001230_g_nMenpaiQiansan[i].playerid03, str, 7)							
					end
					
					if x001230_g_nMenpaiQiansan[i].player01 ~= ""
						and x001230_g_nMenpaiQiansan[i].player01 ~= x001230_g_PlayerName[1] 
						and x001230_g_nMenpaiQiansan[i].player01 ~= x001230_g_PlayerName[2] 
						and x001230_g_nMenpaiQiansan[i].player01 ~= x001230_g_PlayerName[3] then
						mailStr = "Chúc m×ng môn phái cüa các hÕ tham gia Hoa S½n Lu§n Kiªm và giành thÑ hÕng s¯ 1. Có th¬ tìm ngß¶i chü trì Hoa S½n Lu§n Kiªm tÕi Tô Châu - Tô Kiªm Lînh (294,234) lînh thß·ng.#r#YChú ı: #GSau 1 gi¶ các hÕ không nh§n thß·ng thì s¨ không còn c½ hµi nh§n thß·ng næa!"
																
						local StartTime = LuaFnGetCurrentTime()
						
						local nMonth = LuaFnGetThisMonth()
						local nDay   = LuaFnGetDayOfThisMonth()
						local nData  = (nMonth+1)*100+nDay						
						--·¢¿ÉÖ´ĞĞÓÊ¼ş¸øÇ°ÈıÃûÍæ¼Ò																		
						LuaFnSendScriptMail( sceneId, x001230_g_nMenpaiQiansan[i].player01, MAIL_HUASHANJIANGLI, nData, 2, 1)

						strLogCheck = format(	"HuaShanLunJian_ScriptMail    MenPai_NO.1=(id=%X, name=%s, Param01=%d, Param02=%d, Param03=%d)", LuaFnGetGUID(sceneId, x001230_g_nMenpaiQiansan[i].playerid01), x001230_g_nMenpaiQiansan[i].player01, nData, 2, 1 )
						LuaFnLogCheck(strLogCheck)

						LuaFnSendSystemMail( sceneId, x001230_g_nMenpaiQiansan[i].player01, mailStr )

						strLogCheck = format(	"HuaShanLunJian_SystemMail    MenPai_NO.1=(id=%X, name=%s)", LuaFnGetGUID(sceneId, x001230_g_nMenpaiQiansan[i].playerid01), x001230_g_nMenpaiQiansan[i].player01 )
						LuaFnLogCheck(strLogCheck)

					end
					if x001230_g_nMenpaiQiansan[i].player02 ~= ""
						and x001230_g_nMenpaiQiansan[i].player02 ~= x001230_g_PlayerName[1] 
						and x001230_g_nMenpaiQiansan[i].player02 ~= x001230_g_PlayerName[2] 
						and x001230_g_nMenpaiQiansan[i].player02 ~= x001230_g_PlayerName[3] then						
						mailStr = "Chúc m×ng môn phái cüa các hÕ tham gia Hoa S½n Lu§n Kiªm và giành thÑ hÕng s¯ 2. Có th¬ tìm ngß¶i chü trì Hoa S½n Lu§n Kiªm tÕi Tô Châu - Tô Kiªm Lînh (294,234) lînh thß·ng.#r#YChú ı: #GSau 1 gi¶ các hÕ không nh§n thß·ng thì s¨ không còn c½ hµi nh§n thß·ng næa!"
						
						local StartTime = LuaFnGetCurrentTime()
						
						local nMonth = LuaFnGetThisMonth()
						local nDay   = LuaFnGetDayOfThisMonth()
						local nData  = (nMonth+1)*100+nDay						
						--·¢¿ÉÖ´ĞĞÓÊ¼ş¸øÇ°ÈıÃûÍæ¼Ò												
						LuaFnSendScriptMail( sceneId, x001230_g_nMenpaiQiansan[i].player02, MAIL_HUASHANJIANGLI, nData, 2, 2)
						
						strLogCheck = format(	"HuaShanLunJian_ScriptMail    MenPai_NO.2=(id=%X, name=%s, Param01=%d, Param02=%d, Param03=%d)", LuaFnGetGUID(sceneId, x001230_g_nMenpaiQiansan[i].playerid02), x001230_g_nMenpaiQiansan[i].player02, nData, 2, 2 )
						LuaFnLogCheck(strLogCheck)

						LuaFnSendSystemMail( sceneId, x001230_g_nMenpaiQiansan[i].player02, mailStr )
						
						strLogCheck = format(	"HuaShanLunJian_SystemMail    MenPai_NO.2=(id=%X, name=%s)", LuaFnGetGUID(sceneId, x001230_g_nMenpaiQiansan[i].playerid02), x001230_g_nMenpaiQiansan[i].player02 )
						LuaFnLogCheck(strLogCheck)

					end				
					if x001230_g_nMenpaiQiansan[i].player03 ~= ""
						and	x001230_g_nMenpaiQiansan[i].player03 ~= x001230_g_PlayerName[1] 
						and x001230_g_nMenpaiQiansan[i].player03 ~= x001230_g_PlayerName[2] 
						and x001230_g_nMenpaiQiansan[i].player03 ~= x001230_g_PlayerName[3] then						
						mailStr = "Chúc m×ng môn phái cüa các hÕ tham gia Hoa S½n Lu§n Kiªm và giành thÑ hÕng s¯ 3. Có th¬ tìm ngß¶i chü trì Hoa S½n Lu§n Kiªm tÕi Tô Châu - Tô Kiªm Lînh (294,234) lînh thß·ng.#r#YChú ı: #GSau 1 gi¶ các hÕ không nh§n thß·ng thì s¨ không còn c½ hµi nh§n thß·ng næa!"
						
						local StartTime = LuaFnGetCurrentTime()
						
						local nMonth = LuaFnGetThisMonth()
						local nDay   = LuaFnGetDayOfThisMonth()
						local nData  = (nMonth+1)*100+nDay						
						--·¢¿ÉÖ´ĞĞÓÊ¼ş¸øÇ°ÈıÃûÍæ¼Ò
						LuaFnSendScriptMail( sceneId, x001230_g_nMenpaiQiansan[i].player03, MAIL_HUASHANJIANGLI, nData, 2, 3)
						
						strLogCheck = format(	"HuaShanLunJian_ScriptMail    MenPai_NO.3=(id=%X, name=%s, Param01=%d, Param02=%d, Param03=%d)", LuaFnGetGUID(sceneId, x001230_g_nMenpaiQiansan[i].playerid03), x001230_g_nMenpaiQiansan[i].player03, nData, 2, 3 )
						LuaFnLogCheck(strLogCheck)

						LuaFnSendSystemMail( sceneId, x001230_g_nMenpaiQiansan[i].player03, mailStr )
						
						strLogCheck = format(	"HuaShanLunJian_SystemMail    MenPai_NO.3=(id=%X, name=%s)", LuaFnGetGUID(sceneId, x001230_g_nMenpaiQiansan[i].playerid03), x001230_g_nMenpaiQiansan[i].player03 )
						LuaFnLogCheck(strLogCheck)

					end									
				end						

				-- Çå¿ÕÏà¹ØÄÚÈİ
				for i=1, x001230_g_PlayerNum   do
					x001230_g_PlayerKc[i] = 0										
				end				
				
		end
		
		local i
		for i=0, nHumanNum-1  do

			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if LuaFnIsObjValid( sceneId, nHumanId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, nHumanId ) == 1 then
			  BeginEvent(sceneId)
			  	AddText(sceneId, "#PKªt thúc Lu§n Kiªm Hoa S½n.")
			  EndEvent()
			  DispatchMissionTips(sceneId, nHumanId)
		
				local nMenpaiScene
				local nPos_X
				local nPos_Z
				local nMempai = LuaFnGetMenPai(sceneId, nHumanId)
				if 		 nMempai == 0    then
					nMenpaiScene = 9
					nPos_X			 = 62
					nPos_Z			 = 63
				elseif nMempai == 1    then
					nMenpaiScene = 11
					nPos_X			 = 82
					nPos_Z			 = 57
				elseif nMempai == 2    then
					nMenpaiScene = 10
					nPos_X			 = 42
					nPos_Z			 = 145
				elseif nMempai == 3    then
					nMenpaiScene = 12
					nPos_X			 = 99
					nPos_Z			 = 69
				elseif nMempai == 4    then
					nMenpaiScene = 15
					nPos_X			 = 97
					nPos_Z			 = 74
				elseif nMempai == 5    then
					nMenpaiScene = 16
					nPos_X			 = 126
					nPos_Z			 = 77
				elseif nMempai == 6    then
					nMenpaiScene = 13
					nPos_X			 = 37
					nPos_Z			 = 86
				elseif nMempai == 7    then
					nMenpaiScene = 17
					nPos_X			 = 100
					nPos_Z			 = 46
				elseif nMempai == 8    then
					nMenpaiScene = 14
					nPos_X			 = 61
					nPos_Z			 = 69
				elseif nMempai == 9    then
					--Ã»ÓĞÃÅÅÉµÄÈËÓ¦¸ÃÊÇ²»³öÏÖµÄ£¬±ÜÃâ´íÎó³öÏÖ£¬ÉèÖÃ¸öÎ»ÖÃ
					nMenpaiScene = 1
					nPos_X			 = 191
					nPos_Z			 = 138
					--PrintStr("ÄãÕâ¸ö¼Ò»ï£¬±»ÈËKµÄ¶¼²»ÖªµÀ×Ô¼ºÃÅÅÉÁË£¿£¿£¿")
				end
				CallScriptFunction((400900), "TransferFunc",sceneId, nHumanId, nMenpaiScene, nPos_X, nPos_Z)
			end

		end --END for i=0, nHumanNum-1  do

	end --END if bIsTime == 0

end

--**********************************
-- É±ÈË¼ÆÊı
--**********************************
function x001230_KillPlayer(sceneId, killerId, diedId)
	-- Ö»ÓĞÔÚ»î¶¯Ê±¼äÄÚÉ±µÄÈË²ÅÊÇÓĞĞ§µÄ
	if x001230_g_bHuashaning == 0  then
		return
	end
	
	local IsAddCnt = 1	
	local killerLvl = GetLevel(sceneId, killerId)
	local diedLvl = GetLevel(sceneId, diedId)
	
	local lastplayer = GetMissionData( sceneId, killerId, MD_LASTPLAYER_ID )
	
	if killerLvl - diedLvl >= 40 or lastplayer == diedId then
		IsAddCnt = 0		
	end
	SetMissionData( sceneId, killerId, MD_LASTPLAYER_ID, diedId )
	
	if IsAddCnt == 0 then
		
		BeginEvent(sceneId)
			AddText(sceneId, "Khi các hÕ l£p ği l£p lÕi vi®c giªt chªt 1 ngß¶i ch½i c¤p ğµ nhö h½n c¤p 40, các hÕ s¨ không th¬ nh§n ğßşc ğóng góp và lînh nh§n ph¥n thß·ng.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, killerId)
			
		return 0
	end
	
	-- ´Óehuashan_4.luaÖĞÅ²¹ıÀ´ changed by xindfeng
	local nMenpaiPoint = GetHumanMenpaiPoint(sceneId, killerId)
	SetHumanMenpaiPoint(sceneId, killerId, nMenpaiPoint+1)		--ÃÅÅÉ¹±Ï×¶È+1
		
	
	local nKillerMenpai = GetMenPai(sceneId, killerId)
	local nKillCount = 0
	
	for i=1, 9  do
		if x001230_g_nMenpaikills[i].id == nKillerMenpai   then
			x001230_g_nMenpaikills[i].kill = x001230_g_nMenpaikills[i].kill + 1
			nKillCount = x001230_g_nMenpaikills[i].kill
		end
	end
	
	-- ¸øËùÓĞ³¡¾°ÖĞÉ±ÊÖÃÅÅÉµÄÈË·¢ÏûÏ¢£¬¸æËßËûÃÇµÃ·ÖÁË
	--1£¬»ñµÃ³¡¾°ÖĞµÄËùÓĞÈË£¬
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)

	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then

			if nKillerMenpai == GetMenPai(sceneId, PlayerId)    then
				BeginEvent(sceneId)
						AddText(sceneId, "Hi®n gi¶ b±n môn phái ğÕt ği¬m : " .. nKillCount)
				EndEvent(sceneId)
				DispatchMissionTips(sceneId, PlayerId)
			end

		end
	end
	
	-- ¼ÇÂ¼ÃÅÅÉÉ±ÈËÊılog
	local strLog = "[huashan]: menpai=" .. tostring(nKillerMenpai) .. "   KillNum=" .. tostring(nKillCount)
	MissionLog(sceneId,strLog)

	-- ¸øÍæ¼ÒµÄÉ±ÈËÊı¼ÆÊı
	local KillerName = GetName(sceneId, killerId)
	local nIndex = 0
	for i=0, x001230_g_PlayerNum  do
		if KillerName == x001230_g_PlayerName[i]  then
			-- ÕÒµ½ÈËÁË
			x001230_g_PlayerKc[i] = x001230_g_PlayerKc[i]+1
			BeginEvent(sceneId)
				AddText(sceneId, "#{HSLJJF_1}" .. x001230_g_PlayerKc[i].."#{HSLJJF_2}")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, killerId)
			return
		end
	end
	
	x001230_AddPlayer(sceneId, KillerName, killerId)

end

--**********************************
-- Ôö¼ÓÒ»¸öÍæ¼Òµ½É±ÊÖÁĞ±íÖĞÈ¥
--**********************************
function x001230_AddPlayer(sceneId, Name, PlayerId)
	
	for i=1, x001230_g_PlayerNum  do
		if Name == x001230_g_PlayerName[i]  then
			return
		end
	end
	
	x001230_g_PlayerNum = x001230_g_PlayerNum + 1;
	x001230_g_PlayerKc[x001230_g_PlayerNum] = 1
	BeginEvent(sceneId)
		AddText(sceneId, "#{HSLJJF_1}1#{HSLJJF_2}")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, PlayerId)
	x001230_g_PlayerName[x001230_g_PlayerNum] = Name
	x001230_g_PlayerId[x001230_g_PlayerNum] = PlayerId
	
	--[ QUFEI 2007-07-27 15:04 UPDATE ]
	--»ñµÃÍæ¼ÒµÄÃÅÅÉID
	x001230_g_PlayerMenpai[x001230_g_PlayerNum] = GetMenPai(sceneId, PlayerId)

end

--**********************************
-- Ôö¼ÓÒ»¸öÍæ¼Òµ½É±ÊÖÁĞ±íÖĞÈ¥
--**********************************
function x001230_Id2Menpai(nMenpaiId)
	local szMenpai = ""
	if nMenpaiId == 0  then
		szMenpai = "Thiªu Lâm"
	elseif nMenpaiId == 1  then
		szMenpai = "Minh Giáo"
	elseif nMenpaiId == 2  then
		szMenpai = "Cái Bang"
	elseif nMenpaiId == 3  then
		szMenpai = "Võ Ğang"
	elseif nMenpaiId == 4  then
		szMenpai = "Nga My"
	elseif nMenpaiId == 5  then
		szMenpai = " Tinh Túc"
	elseif nMenpaiId == 6  then
		szMenpai = "Thiên Long"
	elseif nMenpaiId == 7  then
		szMenpai = "Thiên S½n"
	elseif nMenpaiId == 8  then
		szMenpai = "Tiêu Dao"
	end
	
	return szMenpai
	
end

--**********************************
--¶Ô»°¿òÌáÊ¾
--**********************************
function x001230_MyMsgBox( sceneId, selfId, str )
	BeginEvent(sceneId)    
    AddText(sceneId,str);
    EndEvent(sceneId)
    DispatchMissionTips(sceneId,selfId)	
end

--**********************************
--Ë¢ĞÂÃØ¼®
--**********************************
function x001230_GiveMJ( sceneId )

	-- ÏÈÉ¾³ı¾ÉµÄÃØ¼®....
	local nCount = GetMonsterCount(sceneId)
	for i=0, nCount-1 do
		local nMonsterId = GetMonsterObjID(sceneId, i)
		local szName = GetName(sceneId, nMonsterId)
		for j=1, getn(x001230_g_MJNameTbl)  do
			if szName == x001230_g_MJNameTbl[j]  then
				LuaFnDeleteMonster(sceneId, nMonsterId)
			end
		end
	end

	--³¡¾°ÖĞÑëË¢ĞÂ2¸ö....
	for i=1, getn(x001230_g_MJPosA)  do
		local Rand = random(getn(x001230_g_MJTblA))
		LuaFnCreateMonster(sceneId, x001230_g_MJTblA[Rand],
																x001230_g_MJPosA[i].x, x001230_g_MJPosA[i].y,
																3, 0, x001230_g_MJScript )

	end

	--³¡¾°ËÄÖÜË¢ĞÂ4¸ö....

		--ÖØÖÃÈ¨Öµ....
	for i=1, getn(x001230_g_MJPosB) do
		x001230_g_MJPosB[i].rand = random(100)
	end

		--Ñ¡³öÈ¨Öµ×î´óµÄ4¸öµã×÷ÎªÍ¶·ÅÃØ¼®µÄµã....
	for i=1, 4 do

		local MaxVal = -1
		local index = 1

		for j=1, getn(x001230_g_MJPosB) do
			if x001230_g_MJPosB[j].rand > MaxVal then
				MaxVal = x001230_g_MJPosB[j].rand
				x001230_g_MJPosB[j].rand = -1
				index = j
			end
		end

		--Í¶·ÅÃØ¼®....
		local Rand = random(getn(x001230_g_MJTblB))
		LuaFnCreateMonster(sceneId, x001230_g_MJTblB[Rand],
																x001230_g_MJPosB[index].x, x001230_g_MJPosB[index].y,
																3, 0, x001230_g_MJScript )

	end


end
