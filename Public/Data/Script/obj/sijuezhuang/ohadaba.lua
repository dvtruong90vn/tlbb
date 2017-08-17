--çÎç¿·å¸±±¾....
--¹þ´ó°Ô¶Ô»°½Å±¾....

--½Å±¾ºÅ
x893070_g_ScriptId = 893070

--¸±±¾Âß¼­½Å±¾ºÅ....
x893070_g_FuBenScriptId = 893063

--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x893070_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"Phía trß¾c chính là TÑ Tuy®t Trang. Chúng ta phäi ði sâu vào trong m¾i có th¬ tìm ðßþc kho báu. Trß¾c m£t là TÑ Tuy®t Ði®n.")
		AddText(sceneId,"Bên trong TÑ Tuy®t Ði®n có r¤t nhi«u hµ v®. Nhßng mµt khi ðã nghe th¤y tiªng chuông, h÷ s¨ r¶i ði. Ta có th¬ khiªn thành viên c§n chiªn trong ðµi ngû tàng hình vào ðánh chuông. Lúc ðó m¾i có th¬ xông vào.")

		--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½....	
		if 1 == CallScriptFunction( x893070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "MinMo" ) then
		AddText(sceneId,"Hµ v® trong ði®n ðã không còn, ta ðßþc TÑ Tuy®t thß sinh Mçn M£c ðßa t¾i, m÷i ngß¶i ð«u b¸ h¡n b¡t giæ, ð¬ ta t¾i ép höi h¡n kho báu · n½i nào. H¡n thß¶ng thích Lý BÕch  [ Tß½ng Tiªn TØu ], m²i l¥n sØ døng tuy®t kÛ ð«u tång g¤p ðôi lßþng sát thß½ng. M÷i ngß¶i chï c¥n chú ý né tránh h¡n khi h¡n phát ra Tß½ng Tiªn TØu, sau ðó thoäi mái b¡t giæ h¡n không là v¤n ð«!")
		    AddNumText( sceneId, x893070_g_ScriptId, "Khiêu chiªn Mçn M£c", 10, 1 )
		end
		--ÅÐ¶Ïµ±Ç°ÊÇ·ñÌôÕ½Íê±ÏÖ®ºó´«ËÍ....	
		if 0 ~= CallScriptFunction( x893070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "QinYun" ) then
		    AddNumText( sceneId, x893070_g_ScriptId, "Ði tiªp vào trong", 10, 2 )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x893070_OnEventRequest( sceneId, selfId, targetId, eventId )

   if GetNumText() == 1 then

	--Èç¹ûÕýÔÚ¼¤»îBOSSÔò·µ»Ø....
	if 1 == CallScriptFunction( x893070_g_FuBenScriptId, "IsSJZTimerRunning", sceneId ) then
		return
	end

	--ÊÇ²»ÊÇ¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--Èç¹ûÕýÔÚºÍ±ðµÄBOSSChiªn ð¤u Ôò·µ»Ø....
	local ret, msg = CallScriptFunction( x893070_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½É£ÍÁ¹«....	
	if 1 ~= CallScriptFunction( x893070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "MinMo" ) then
		BeginEvent(sceneId)
			AddText( sceneId, "Ngß½i ðã khiêu chiªn." )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
	CallScriptFunction( x893070_g_FuBenScriptId, "OpenSJZTimer", sceneId, 7, x893070_g_ScriptId, -1 ,-1 )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
  end

   if GetNumText() == 2 then
	SetPos(sceneId, selfId, 101, 52)

  end

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x893070_OnSJZTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x893070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 5 giây sau b¡t ð¥u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x893070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 4 giây sau b¡t ð¥u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x893070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 3 giây sau b¡t ð¥u." )
		return
	end

	if 4 == step then
		CallScriptFunction( x893070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 2 giây sau b¡t ð¥u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x893070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u 1 giây sau b¡t ð¥u." )
		return
	end

	if 2 == step then
		--ÌáÊ¾Chiªn ð¤u b¡t ð¥u.....
		CallScriptFunction( x893070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chiªn ð¤u b¡t ð¥u." )
		--É¾³ýNPC....
		--CallScriptFunction( x893070_g_FuBenScriptId, "DeleteBOSS", sceneId, "MinMo_NPC" )
		return
	end

	if 1 == step then
		--½¨Á¢BOSS....
		CallScriptFunction( x893070_g_FuBenScriptId, "CreateBOSS", sceneId, "MinMo_BOSS", -1, -1 )
		return
	end

end
