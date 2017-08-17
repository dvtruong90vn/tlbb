--²Ø¾­¸óNPC
--ÎŞÃûÀÏÉ®
--ÆÕÍ¨

x122001_g_ScriptId	= 122001



--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x122001_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "A Di Ğà Ph§t, thi®n tai thi®n tai. #r#rT¤t cä ğ«u tr· thành Ph§t pháp, ğ«u tr· thành bong bóng mµng äo mà thôi. #r#rNhß sß½ng cûng nhß ği®n, cûng chï ğ¬ nhìn nhß thª mà thôi. #r#rNhæng n½i $N ğã t×ng ği, ğ«u là hß äo cä, không b¢ng ğ¬ lão tång chï giáo cho ngß½i th¤y." )
		AddNumText( sceneId, x122001_g_ScriptId, "Thành th¸ - Tô Châu", 9, 1001 )
		AddNumText( sceneId, x122001_g_ScriptId, "Thành th¸ - ĞÕi Lı", 9, 1002 )
		AddNumText( sceneId, x122001_g_ScriptId, "Thành th¸ - LÕc Dß½ng", 9, 1003 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x122001_OnEventRequest( sceneId, selfId, targetId, eventId )
	--¶ÓÎéÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x122001_MsgBox( sceneId, selfId, targetId, "Thành viên trong nhóm ngß½i có ngß¶i có nhi®m vø ch· hàng b¢ng ğß¶ng thuÖ, d¸ch trÕm chúng ta không th¬ cung c¤p d¸ch vø cho ngß½i" )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x122001_MsgBox( sceneId, selfId, targetId, "Ngß½i có nhi®m vø ch· hàng b¢ng ğß¶ng thuÖ, d¸ch trÕm chúng ta không th¬ cung c¤p d¸ch vø cho ngß½i." )
		return
	end

	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()

	if arg == 1001 then		--ËÕÖİ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162 )
		return
	end
	if arg == 1002 then		--´óÀí
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 141 )
		return
	end
	if arg == 1003 then		--ÂåÑô
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183 )
		return
	end

end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x122001_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
