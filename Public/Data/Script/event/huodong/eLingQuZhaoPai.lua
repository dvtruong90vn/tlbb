--------------------------------------------
--Îåmµt Lînh Chiêu bài»î¶¯½Å±¾
--Created By ÐÅµÂ·å
--------------------------------------------

--½Å±¾ºÅ
x808090_g_ScriptId = 808090

--»î¶¯²ÎÓëÍæ¼ÒµÈc¤pÏÂÏÞ
x808090_g_LowerLimitLevel = 30

--·¢ËÍ»î¶¯Í¨ÖªÓÊ¼þÊ±¼äÓò
x808090_g_MailStartDayTime = 8121		--·¢ËÍÓÊ¼þ¿ªÊ¼Ê±¼ä 2008-05-01
x808090_g_MailEndDayTime = 8127			--·¢ËÍÓÊ¼þ½áÊøÊ±¼ä 2008-05-07

--Chiêu bàiID±í
x808090_g_ZhaoPaiIDT = {
													{30008021,	"Chiêu bài: Nghê h°ng ðång"},
													{30008022,	"Chiêu bài: Ðao kiªm tranh phong"},
													{30008023,	"Chiêu bài: Thiªt giáp ð°ng bích"},
													{30008024,	"Chiêu bài: Trân c¥m d¸ thú"},
													{30008025,	"Chiêu bài: Kim tñ chiêu bài"}
												}

--¿É¹©Lînh Chiêu bàiÖÖÀà
x808090_g_ZhaoPaiType = 5												

--Ã¿´ÎLînh Chiêu bàitoÕ ðµ ÊýÁ¿
x808090_g_ZhaoPaiCount = 1

--Lînh Chiêu bàiÊ±ºòÐ§¹ûID(¸ÃÐ§¹û°üº¬ÒôÐ§)
x808090_g_GetZhaoPaiImpactID = 49


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808090_OnDefaultEvent( sceneId, selfId, targetId )
	local ItemID = GetNumText()
	if(ItemID == 10) then	--´ó¼Òmµt ÆðÀ´°ÚÌ¯
		BeginEvent(sceneId)
			AddText(sceneId,"#{LQZP_INTRO}")
			AddNumText( sceneId, x808090_g_ScriptId, "Lînh Chiêu bài", 6, 12 )
			AddNumText( sceneId, x808090_g_ScriptId, "HuÖ bö", 6, 13 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)		
	elseif(ItemID == 11) then	--°ïÖú
		BeginEvent(sceneId)
			AddText(sceneId,"#{LQZP_HELP}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif(ItemID == 12) then
		--·¢·ÅChiêu bài
		x808090_GeiZhaoPai(sceneId, selfId, targetId)
	elseif(ItemID == 13) then	--"ÎÒÔÙÏëÏë"
		--¹Ø±Õ½çÃæ
		DispatchUICommand(sceneId, selfId, 1000)
	end	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808090_OnEnumerate( sceneId, selfId, targetId )
	if x808090_CheckRightTime() == 1 then	--ÕýÈ·toÕ ðµ »î¶¯Ê±¼ä
		AddNumText(sceneId, x808090_g_ScriptId, "M÷i ngß¶i cùng ðªn bày bán", 6, 10 )
		AddNumText(sceneId, x808090_g_ScriptId, "V« hoÕt ðµng M÷i ngß¶i cùng ðªn bày bán", 11, 11 )
	end
end

--**********************************
--¼ì²âµ±Ç°Ðúng·ñÐúng»î¶¯Ê±¼ä
--**********************************
function x808090_CheckRightTime()
	if GetDayTime() >= x808090_g_MailStartDayTime then
		return 1
	else
		return 0
	end
end

--**********************************
--·¢·ÅChiêu bài
--**********************************
function x808090_GeiZhaoPai(sceneId, selfId, targetId)	
	--¼ì²âµÈc¤pÐúng·ñ´ïµ½ÒªÇó
	if GetLevel( sceneId, selfId ) < x808090_g_LowerLimitLevel then
		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_LOWERLIMITLEVEL}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )		
		return
	end
	
	--¼ì²âµ±ÌìÐúng·ñLînh ¹ý"Chiêu bài":Ã¿ÌìÖ»ÄÜÁì1´Î.	
	local LastDayValue = GetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_LASTDATE)--ÉÏ´ÎLînh toÕ ðµ ÈÕÆÚÖµ(ÒÔÌìÎªµ¥Î»)
	local CurDayValue = GetDayTime()--µ±Ç°Ê±¼äÖµ(ÒÔÌìÎªµ¥Î»)
	if(CurDayValue <= LastDayValue) then	--Áì¹ýmµt ´ÎÁË
		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_ONCEPERDAY}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end	
	
	--¼ì²â±³°üÐúng·ñÓÐµØ·½
	if (LuaFnGetPropertyBagSpace( sceneId, selfId ) < x808090_g_ZhaoPaiCount) then
		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_BAGFULL}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )--´°¿ÚÏÔÊ¾"¿Õ¼ä²»×ã"

		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_BAGFULLTIP}" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )	--ÐÑÄ¿ÌáÊ¾"¿Õ¼ä²»×ã"
		return
	end	
	
	--Ìõ¼þÍ¨¹ý	
	--¼ÇÂ¼Lînh toÕ ðµ Ê±¼ä,±£Ö¤mµt Ììmµt ´Î
	SetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_LASTDATE, CurDayValue)
	
	--Ëæ»ú·¢·Åmµt cái"Chiêu bài"
	local randValue = random(x808090_g_ZhaoPaiType)							--Ëæ¼´Öµ
	local randZhaoPaiID = x808090_g_ZhaoPaiIDT[randValue][1]		--Ëæ¼´»ñÈ¡toÕ ðµ Chiêu bàiID
	local randZhaoPaiName = x808090_g_ZhaoPaiIDT[randValue][2]	--Ëæ»ú»ñÈ¡toÕ ðµ Chiêu bàiÃû³Æ
	
	BeginAddItem(sceneId)
		AddItem(sceneId, randZhaoPaiID, x808090_g_ZhaoPaiCount)
	EndAddItem(sceneId, selfId)
	AddItemListToHuman(sceneId, selfId)--¼ÓÎïÆ·¸øÍæ¼Ò
	
	--¼Ómµt cái°üº¬ÉùÒôtoÕ ðµ ÌØÐ§
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808090_g_GetZhaoPaiImpactID, 0 )
	
	--ÍêÊÂÁË,ÐÂ½çÃæ:Äú¾ÍÊÕÏÂ°É:)
	local str = format("    Cái này #G%s#W ngß½i nh§n l¤y ði! Khi bày bán sØ døng, s¨ có hi®u quä không tß·ng ðßþc!", randZhaoPaiName)
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )	
	
	--ÐÑÄ¿ÌáÊ¾
	str = format("Äã ðÕt ðßþcmµt cái%s.", randZhaoPaiName)	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
	
	--¹«¸æÍæ¼Ò×Ô¼º
	BroadMsgByChatPipe( sceneId, selfId, str, MSG2PLAYER_PARA )
	
	--Í³¼Æ"Chiêu bài"Lînh ÈË´Î
	AuditGeiZhaoPai(sceneId, selfId, tostring(randZhaoPaiName))
end

--**********************************
--¸øÐÂÍæ¼Ò·¢ÓÊ¼þ
--**********************************
function x808090_OnPlayerLogin( sceneId, selfId )
	local curDayTime = GetDayTime()	
	if curDayTime >= x808090_g_MailStartDayTime and curDayTime <= x808090_g_MailEndDayTime then	--TÕi ·¢ÓÊ¼þÊ±¼ä
	
		local HaveMail = GetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_HAVESENDMAIL)	--»ñÈ¡¼ÇÂ¼Öµ
		if(HaveMail == 0)then		--±£Ö¤Íæ¼ÒTÕi Îåmµt ÆÚ¼äµÇÂ½,Ö»»áÊÕµ½mµt ·âÓÊ¼þ
			LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LQZP_HUODONGMAIL}" )
			SetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_HAVESENDMAIL, 1)	--¼ÇÂ¼ÊÕµ½¹ýÓÊ¼þÁË
		end
	end	
end
