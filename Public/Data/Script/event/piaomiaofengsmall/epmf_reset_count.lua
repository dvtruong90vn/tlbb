--ÖØÖÃçÎç¿·å¸±±¾ÌôÕ½´ÎÊı....

--£¡£¡£¡×¢Òâ£¡£¡£¡
--ÖØÖÃ´ÎÊıºÍÈÕÆÚÊÇÊ¹ÓÃÒ»¸öINTÀ´±£´æµÄ....
--INTµÄµÍ2Î»±íÊ¾´ÎÊı....Òò´ËÃ¿Ìì×î¶àÖ»Ö§³ÖÖØÖÃ99´Î....
--²»¹ıÓÉÓÚÃ¿´ÎÏûºÄµÄÎïÆ·ÊıÁ¿ÊÇÉÏ´ÎµÄ2±¶....ËùÒÔµÚ99´ÎĞèÒªµÄÊıÁ¿ÊÇÌìÎÄÊı×Ö....2^99


--½Å±¾ºÅ
x402289_g_ScriptId = 402289


--**********************************
--ÈÎÎñÈë¿Úº¯Êı....
--**********************************
function x402289_OnDefaultEvent( sceneId, selfId, targetId )

	local NumText = GetNumText()

	if NumText == 1	then

		x402289_CheckCanReset( sceneId, selfId, targetId )

	elseif NumText == 2	then

		BeginEvent(sceneId)
			AddText(sceneId,"#{XPMCZ_81106_6}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 3	then

		x402289_ResetPMFCount( sceneId, selfId, targetId )

	elseif NumText == 4	then

		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)

	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x402289_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x402289_g_ScriptId, "#{INTERFACE_XML_1183}", 9, 1 )
	AddNumText( sceneId, x402289_g_ScriptId, "#{INTERFACE_XML_1184}", 11, 2 )

end

--**********************************
--ÅĞ¶ÏÊÇ·ñ¿ÉÒÔÔÙÕ½çÎç¿·å....
--**********************************
function x402289_CheckCanReset( sceneId, selfId, targetId )

	--»ñÈ¡½ñÌìÌôÕ½Ğ¡çÎç¿µÄ´ÎÊı....
	local CurDayTime = GetDayTime()
	local lastTime = GetMissionData( sceneId, selfId, MD_PIAOMIAOFENG_SMALL_LASTTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	--Èç¹û»¹Ã»ÌôÕ½¹ıĞ¡çÎç¿·å....Ôò²»ĞèÒªÖØÖÃ´ÎÊı....
	if lastDayCount <= 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XPMCZ_81106_1}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--»ñÈ¡ ½ñÌìÖØÖÃÌôÕ½´ÎÊı µÄ´ÎÊı....
	local lastTime2 = GetMissionData( sceneId, selfId, MD_RESET_PMFSMALL_COUNT_LASTTIME )
	local lastDayTime2 = floor( lastTime2 / 100 )
	local lastDayCount2 = mod( lastTime2, 100 )
	if CurDayTime > lastDayTime2 then
		lastDayTime2 = CurDayTime
		lastDayCount2 = 0
	end

	--¶ş¼¶È·ÈÏ²Ëµ¥....
	local NeedNum = 2^lastDayCount2
	local NeedNum2 = 2^(lastDayCount2+1)
	BeginEvent(sceneId)
		AddText( sceneId, "#{CZPMF_90212_1}"..NeedNum.."#{CZPMF_90212_2}"..NeedNum2.."#{CZPMF_90212_3}" )
		AddNumText( sceneId, x402289_g_ScriptId, "Ğ°ng ı", 8, 3 )
		AddNumText( sceneId, x402289_g_ScriptId, "Hüy bö", 8, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÖØÖÃĞ¡çÎç¿·åÌôÕ½´ÎÊı....
--**********************************
function x402289_ResetPMFCount( sceneId, selfId, targetId )

	--»ñÈ¡½ñÌìÌôÕ½Ğ¡çÎç¿µÄ´ÎÊı....
	local CurDayTime = GetDayTime()
	local lastTime = GetMissionData( sceneId, selfId, MD_PIAOMIAOFENG_SMALL_LASTTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	--Èç¹û»¹Ã»ÌôÕ½¹ıĞ¡çÎç¿·å....Ôò²»ĞèÒªÖØÖÃ´ÎÊı....
	if lastDayCount <= 0 then
		return
	end

	--»ñÈ¡ ½ñÌìÖØÖÃÌôÕ½´ÎÊı µÄ´ÎÊı....
	local lastTime2 = GetMissionData( sceneId, selfId, MD_RESET_PMFSMALL_COUNT_LASTTIME )
	local lastDayTime2 = floor( lastTime2 / 100 )
	local lastDayCount2 = mod( lastTime2, 100 )
	if CurDayTime > lastDayTime2 then
		lastDayTime2 = CurDayTime
		lastDayCount2 = 0
	end

	--ÊÇ·ñÓĞ×ã¹»µÄÎïÆ·....
	local NeedNum = 2^lastDayCount2
	if LuaFnGetAvailableItemCount( sceneId, selfId, 30501170 ) < NeedNum then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XPMCZ_81106_4}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--¿ÛÎïÆ·....
	if 1 ~= LuaFnDelAvailableItem(sceneId, selfId, 30501170, NeedNum ) then
		return
	end

	--ÖØÖÃĞ¡çÎç¿·åÌôÕ½´ÎÊı....
	lastTime = lastDayTime * 100 + 0 --lastDayCount
	SetMissionData( sceneId, selfId, MD_PIAOMIAOFENG_SMALL_LASTTIME, lastTime )

	--ÉèÖÃ½ñÌìÖØÖÃ´ÎÊı....
	lastDayCount2 = lastDayCount2 + 1
	lastTime2 = lastDayTime2 * 100 + lastDayCount2
	SetMissionData( sceneId, selfId, MD_RESET_PMFSMALL_COUNT_LASTTIME, lastTime2 )

	--Í³¼Æ....
	LuaFnAuditResetPMFCountSmall( sceneId, selfId, lastDayCount2 )

	--¹§Ï²ÄãÓÖ¿ÉÒÔÈ¥ÁË....
	BeginEvent(sceneId)
		AddText(sceneId,"#{XPMCZ_81106_5}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end
